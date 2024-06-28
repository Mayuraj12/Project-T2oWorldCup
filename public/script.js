function validateForm() {
  const name = document.getElementById('fname').value();
  const email = document.getElementById('email').value();
  const phonenumber = document.getElementById('phone').value();
  const country = document.getElementById('country').value();

  const emailError = document.getElementById(
    "email-error"
  );
  const nameError = document.getElementById(
   "name-error"
  );
  
  if (name === '') {
    isValid = false;
    document.getElementById('fname').textContent = 'Name is required';
} else {
    document.getElementById('fname').textContent = '';
}
if (email === '') {
    isValid = false;
    document.getElementById('emailError').textContent = 'Email is required';
} else if (!isValidEmail(email)) {
    isValid = false;
    document.getElementById('emailError').textContent = 'Enter a valid email address';
} else {
    document.getElementById('emailError').textContent = '';
}

return isValid;

function isValidEmail(email) {

  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
  }
  
}


function newFunction(){
  var element = document.getElementById("form-reset");
   element.reset()
}
function Submit(){
  alert("Thank you for submission!")
}
function dis() {
  var x = document.getElementById("show");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
   return isValid;
}

localStorage.setItem();
document.getElementById("form-reset").innerHTML = localStorage.getItem();


