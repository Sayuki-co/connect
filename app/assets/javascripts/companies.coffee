# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#5行以上ある場合は追加ボタンを隠す
$('#members').on 'cocoon:before-insert', ->
  if $('#members .nested-fields').length >= 5
     $('#add-link').hide();
  else
     $('#add-link').show();
