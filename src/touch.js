document.addEventListener('DOMContentLoaded', function() {
  document.querySelectorAll('.hover').forEach(function(el) {
    el.addEventListener('touchstart', function() {
      this.classList.toggle('hover_effect');
    });
    el.addEventListener('touchend', function() {
      this.classList.toggle('hover_effect');
    });
  });
});
