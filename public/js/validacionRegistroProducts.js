window.addEventListener('load', function(){
    // copia y pega el codigo de la etapa 1 aca 
    let form = document.querySelector('#form')
    let button = document.querySelector('#button')
    let desc = document.querySelector('#descripcion')
    let descError = document.querySelector('#descError')
    let price = document.querySelector('#price')
    let priceError = document.querySelector('#priceError')
    let category = document.querySelector('#category')
    let categoryError = document.querySelector('#categoryError')
    let city = document.querySelector('#city')
    let cityError = document.querySelector('#cityError')
    let address = document.querySelector('#address')
    let addressError = document.querySelector('#addressError')
    let imageError = document.querySelector('#imageError')
    let image = document.querySelector('#image')
    let categorias=["Casa","Departamento", "Local", "Terreno", "Oficina"]
    let acceptedExtensions = ['.jpg', '.png', '.gif', '.jpeg'];
    



    function getFileExtension(fileName){
        return fileName.split('.').pop();
    }
    // desarrolla tu codigo aca 
    button.addEventListener("click", function(event){
        event.preventDefault();
        let errores ={};

        if(desc.value.length < 21){
            errores.desc = 'Debes poner una descripción del producto con más de 20 caracteres';
        }
        if(price.value.length < 1  || Number.isInteger(price.value)){
            errores.price = 'Debe de escribir el precio y debe ser un número entero';
        }
        let fileExtension = getFileExtension(image.value);
        if (!acceptedExtensions.includes(fileExtension) && image.value.length>0) {
            errores.image = 'Debes poner una imagen válida con extensiones permitidas: .jpg .png .gif .jpeg';
        }

       // let b=false;
      //  estados.forEach(element => {
       //     if(element.nombre === city.value){
        //        b=true;
       //     }
       // });
        if(city.value.length < 1){
            errores.city = 'Debes escribir la ciudad';
        }
        
        if(address.value.length < 1){
            errores.address = 'Debes escribir la dirección';
        }
        let a=false;
        categorias.forEach(element => {
            if(element === category.value){
                a=true;
            }
        });
        if(!a){
            errores.category = 'Debes escribir una categpría válida';
        }


      /*  if(password.value.length < 1){
            errores.password='Este campo debe estar completo'
        }
        if(repassword.value.length < 1){
            errores.repassword = 'Este campo debe estar completo'
        }*/
        if(Object.keys(errores).length >= 1){
            descError.innerText = (errores.desc) ? errores.desc : '';
            if(errores.desc){
                desc.classList.add("fill");
            }
            else{
                desc.classList.remove("fill");
            }
            priceError.innerText = (errores.price) ? errores.price : '';
            if(errores.price){
                price.classList.add("fill");
            }
            else{
                price.classList.remove("fill");
            }
            cityError.innerText = (errores.city) ? errores.city : '';
            if(errores.city){
                city.classList.add("fill");
            }
            else{
                city.classList.remove("fill");
            }
            categoryError.innerText = (errores.category) ? errores.category : '';
            if(errores.category){
                category.classList.add("fill");
            }
            else{
                category.classList.remove("fill");
            }
            addressError.innerText = (errores.address) ? errores.address : '';
            if(errores.address){
                address.classList.add("fill");
            }
            else{
                address.classList.remove("fill");
            }
            imageError.innerText = (errores.image) ? errores.image : '';
            if(errores.image){
                image.classList.add("fill");
            }
            else{
                image.classList.remove("fill");
            }
        }
        else{
            form.submit();
        }
    })

})

