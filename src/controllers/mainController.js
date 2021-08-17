
const controller = {
    index: (req, res) => {
        res.status(200).render("index");
    },
    login: (req, res) => {
        res.status(200).render("login");
    },
    register: (req, res) => {
        res.status(200).render("register");
    },
};

module.exports = controller;