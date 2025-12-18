document.getElementById("form").addEventListener("submit", function (e) {
    e.preventDefault(); // stop page reload
    ValidateForm();
});

function ValidateForm() {
    let passwordInputEl = document.getElementById("pass")
    let emailInputEl = document.getElementById("email")
    let emailError = document.getElementById("email-error")
    let passError = document.getElementById("pass-error")

    emailError.textContent = ""
    passError.textContent = ""

    emailInputEl.classList.remove("success", "error")
    passwordInputEl.classList.remove("success", "error")

    let isValid = true

    // Email validation
    if (emailInputEl.value === "" || !emailInputEl.checkValidity()) {
        emailError.textContent = "Please enter a valid email address."
        emailError.style.color = "red"
        emailInputEl.classList.add("error")
        isValid = false
    } else {
        emailInputEl.classList.add("success")
    }

    // Password empty
    if (passwordInputEl.value === "") {
        passError.textContent = "Password is required."
        passError.style.color = "red"
        passwordInputEl.classList.add("error")
        isValid = false
    }
    // Password length < 6
    else if (passwordInputEl.value.length < 6) {
        passError.textContent = "Password must be at least 6 characters long."
        passError.style.color = "red"
        passwordInputEl.classList.add("error")
        isValid = false
    }
    // Password valid
    else {
        passwordInputEl.classList.add("success")
    }

    // Success popup
    if(isValid){
        alert("Login Successful!")
        window.location.href = "register.html"
    }
}