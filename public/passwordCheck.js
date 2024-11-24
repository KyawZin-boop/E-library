let formDiv = document.getElementById('registerContainer');
let passwordStrength = document.querySelector('.passwordStrength');
let showStrength = document.querySelector('.showStrength');
let weakPass = document.querySelector('.weakPass');
let mediumPass = document.querySelector('.mediumPass');
let strongPass = document.querySelector('.strongPass');
let nameError = document.querySelector('.nameError');
let passwordError = document.querySelector('.passwordError');
let passwordCheck = document.querySelector(".userPassword");

passwordCheck.addEventListener('keyup', (e) => {
    if (e.key) {
        if (passwordCheck.value.length == 0) {
            passwordStrength.classList.add('d-none');
            passwordCheck.style.marginBottom = '25px';
        } else {
            passwordStrength.classList.remove('d-none');
            passwordCheck.style.marginBottom = '5px';
            if (passwordCheck.value.length < 5) {
                weakPass.style.backgroundColor = '#EF233C';
                mediumPass.style.backgroundColor = 'lavender';
                strongPass.style.backgroundColor = 'lavender';
                showStrength.textContent = "Weak";
                showStrength.style.color = '#EF233C';
            } else if (passwordCheck.value.length >= 6 && passwordCheck.value.length < 8) {
                weakPass.style.backgroundColor = '#fd7e14';
                mediumPass.style.backgroundColor = '#fd7e14';
                strongPass.style.backgroundColor = 'lavender';
                showStrength.textContent = "Medium";
                showStrength.style.color = '#fd7e14';
            } else if (passwordCheck.value.length >= 8 && passwordCheck.value.length < 10) {
                weakPass.style.backgroundColor = '#198754';
                mediumPass.style.backgroundColor = '#198754';
                strongPass.style.backgroundColor = '#198754';
                showStrength.textContent = "Strong";
                showStrength.style.color = '#198754';
            }
        }
    }
})