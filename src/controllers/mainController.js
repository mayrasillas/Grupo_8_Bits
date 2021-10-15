const fs = require("fs");
const path = require("path");
const toThousand = (n) => n.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
const {validationResult} = require('express-validator');
//const user = require('../models/User.js');
const { Console } = require("console");
const bcryptjs = require('bcryptjs');

const db = require("../database/models");


const controller = {
    index: (req, res) => {
        res.status(200).render("index");
    },
    login: (req, res) => {
        
        res.status(200).render("login");
    },
    logout: (req, res) => {
        req.session.destroy();
        res.redirect("/");
    },
    perfil: (req, res) => {
        console.log(req.cookies.userEmail);
        console.log("estas en login");
        console.log(req.session);
        res.status(200).render("perfil", {
            user: req.session.userLogged
        });
    },
    register: (req, res) => {
        res.status(200).render("register");
    },
    addUser: (req, res) => {
        const resultValidation = validationResult(req);


        //si hasy errores en la validación
        if(resultValidation.errors.length > 0){
            res.status(200).render("register", {
                errors: resultValidation.mapped(),
                oldData: req.body
            });
        }

        //si ya está registrado
        db.User.findOne({
            where:{
                email: req.body.email 
            }
        }).then((userInDB) => {  

                if (userInDB) {
                    console.log(userInDB);
                    return res.render('register', {
                        errors: {
                            email: {
                                msg: 'Este email ya está registrado'
                            }
                        },
                        oldData: req.body
                    });
                }
        }).then((a)=>{
    
            //crear al usuario          
            let imagen;
            if(req.file){
                console.log(req.file.filename);
                imagen = req.file.filename;
            }
            else{
                imagen = "avatar.jpg";
            }

            let usersInfo = {
                ...req.body,
                password: bcryptjs.hashSync(req.body.password, 10),
                image: imagen,
            };

            db.User.create(
                usersInfo
            )
            res.redirect("/login"); 
        });
            
    },
    deleteUser: (req, res) => {
        db.User.destroy({
            where: {id: req.body.id}
        });    
    },

    loginProcess: (req, res) =>{
        db.User.findOne({
            where:{
                email: req.body.email 
            }
        }).then((userToLogin) => { 
           
            if(userToLogin){
                let isPassword = bcryptjs.compareSync(req.body.password, userToLogin.password);
                if(isPassword){ 
                    delete userToLogin.password
                    req.session.userLogged = userToLogin;

                    if(req.body.remember) {
                        res.cookie('userEmail', req.body.email, { maxAge: (1000 * 60)*10})
                    }
                    return res.redirect("/perfil");
                }
                return res.render('login', {
                    errors: {
                        email: {
                            msg: 'Contaseña incorrecta'
                        }
                    },
                    oldData: req.body
                });
            }
            return res.render('login', {
                errors: {
                    email: {
                        msg: 'Este email no está registado'
                    }
                },
                oldData: req.body
            });
        })
    }

};

module.exports = controller;
