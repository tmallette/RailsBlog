// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

//= require quill.global
document.addEventListener("turbo:load", () => {
    const quillEditor = document.getElementById("quill_editor");
    const hiddenContentField = document.getElementById("post_content");
  
    if (quillEditor && hiddenContentField) {
      const quill = new Quill(quillEditor, {
        theme: "snow",
      });
  
      quill.root.innerHTML = hiddenContentField.value;
  
      const form = quillEditor.closest("form");
      if (form) {
        form.addEventListener("submit", () => {
          hiddenContentField.value = quill.root.innerHTML;
        });
      }
    }
  });