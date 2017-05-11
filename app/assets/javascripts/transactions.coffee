# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#client a.add_fields').
    data('association-insertion-position', 'before').
    data('association-insertion-node', 'this')
  $('#client').bind 'cocoon:after-insert', ->
    $('#client_from_list').hide()
    $('#client a.add_fields').hide()
    return
  $('#client').bind 'cocoon:after-remove', ->
    $('#client_from_list').show()
    $('#client a.add_fields').show()
    return
  return