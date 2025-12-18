function registration(){
    let passInputEl = document.getElementById("pass")
    let nameInputEl = document.getElementById("name")
    let emailInputEl = document.getElementById("email")
    let numberInputEl = document.getElementById("number")

    let passError = document.getElementById("pass-error")
    let nameError = document.getElementById("name-error")
    let emailError = document.getElementById("email-error")
    let numberError = document.getElementById("phone-number-error")

    passError.textContent = ""
    nameError.textContent = ""
    emailError.textContent = ""
    numberError.textContent = ""

    document.querySelectorAll(".input").forEach(input => {
        input.classList.remove("error", "success")
    })

    let isInfoValid = true

    //name
    if(nameInputEl.value === ""){
        nameError.textContent = "Please enter your name."
        nameError.style.color = "red"
        nameInputEl.classList.add("error")
        isInfoValid = false
    }
    else{
        nameInputEl.classList.add("success")
    }

    //email
    if(emailInputEl.value === "" || !emailInputEl.checkValidity()){
        emailError.textContent = "Please enter a valid email address."
        emailError.style.color = "red"
        emailInputEl.classList.add("error")
        isInfoValid = false
    }
    else{
        emailInputEl.classList.add("success")
    }

    //password
    if(passInputEl.value === ""){
        passError.textContent = "Password is required."
        passError.style.color = "red"
        passInputEl.classList.add("error")
        isInfoValid = false
    }
    else if(passInputEl.value.length < 6){
        passError.textContent = "Password must be at least 6 characters long."
        passError.style.color = "red"
        passInputEl.classList.add("error")
        isInfoValid = false
    }
    else{
        passInputEl.classList.add("success")
    }

    //phone number
    if(numberInputEl.value === ""){
        numberError.textContent = "Please enter a valid phone number."
        numberError.style.color = "red"
        numberInputEl.classList.add("error")
        isInfoValid = false
    }
    else if(numberInputEl.value.length < 10){
        numberError.textContent = "Phone number must be exactly 10 digits."
        numberError.style.color = "red"
        numberInputEl.classList.add("error")
        isInfoValid = false
    }
    else{
        numberInputEl.classList.add("success")
    }

    //success popup
    if(isInfoValid){
        alert("Registration Successful!")
    }

    return isInfoValid
}