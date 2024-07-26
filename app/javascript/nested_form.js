document.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.remove_fields').forEach(button => {
      button.addEventListener('click', function(event) {
        event.preventDefault();
        let field = button.closest('.nested-fields');
        field.querySelector('input[name*="_destroy"]').value = '1';
        field.style.display = 'none';
      });
    });
  
    document.querySelectorAll('.add_fields').forEach(button => {
      button.addEventListener('click', function(event) {
        event.preventDefault();
        let time = new Date().getTime();
        let regexp = new RegExp(button.dataset.id, 'g');
        button.insertAdjacentHTML('beforebegin', button.dataset.fields.replace(regexp, time));
      });
    });
  });
  