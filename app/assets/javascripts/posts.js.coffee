# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('.button_to').on 'ajax:success', (event, response) ->
    # [data-id=#{response.id}]
    $(".total-votes").text(response.votes)
    $(".total-ups").text(response.up)
    $(".total-downs").text(response.down)