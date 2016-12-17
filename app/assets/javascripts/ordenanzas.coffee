# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $( ".select2_dropdown" ).select2({
      theme: "bootstrap"
  });

  $( "#selector_anio" ).on("select2:select", 
    (e)->
      anio_seleccionado = e.params.data.text
      Turbolinks.visit('anios/' + anio_seleccionado)
  )


  $( "#selector_tema" ).on("select2:select", 
    (e)->
      tema_seleccionado = e.params.data.text
      Turbolinks.visit('temas/' + tema_seleccionado)
  )

  