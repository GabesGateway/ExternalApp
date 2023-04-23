// https://websitemaintenance.medium.com/simple-javascript-to-disable-submit-button-until-input-fields-are-filled-in-ee9ec13906be
function enableSubmit() {
    let inputs = document.getElementsByClassName('required');
    let btn = document.querySelector('input[type="submit"]');
    let isValid = true;
    for (var i = 0; i < inputs.length; i++) {
        let changedInput = inputs[i];
        if (changedInput.value.trim() === "" || changedInput.value === null) {
            isValid = false;
            break;
        }
    }
    btn.disabled = !isValid;
}

// https://stackoverflow.com/questions/21727317/how-to-check-confirm-password-field-in-form-without-reloading-page
function onChange() {
    const password = document.querySelector('input[name=password]');
    const confirm = document.querySelector('input[name=confirmPassword]');
    if (confirm.value === password.value) {
        confirm.setCustomValidity('');
    } else {
        confirm.setCustomValidity('Passwords do not match');
    }
}

function onChange2() {
    const newPassword = document.querySelector('input[name=newPassword]');
    const confirmNewPassword = document.querySelector('input[name=confirmNewPassword]');
    if (confirmNewPassword.value === newPassword.value) {
        confirmNewPassword.setCustomValidity('');
    } else {
        confirmNewPassword.setCustomValidity('Passwords do not match');
    }
}

$('#myForm').on('submit', function(e){
    $('#myModal').modal('show');
    e.preventDefault();
  });