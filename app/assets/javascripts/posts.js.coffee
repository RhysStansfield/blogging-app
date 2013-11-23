# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('footer .votes .button_to').on 'ajax:success', (event, response) ->
    # [data-id=#{response.id}]
    $(".total-votes").text(response.votes)
    $(".total-ups").text(response.up)
    $(".total-downs").text(response.down)

  $('.button_to').on 'ajax:error', ->
    window.location.href = "/users/sign_in"

$ ->
  $('.post-comments .votes .button_to').on 'ajax:success', (event, response) ->
    $(".total-votes[data-id=#{response.id}]").text(response.votes)
    $(".total-ups[data-id=#{response.id}]").text(response.up)
    $(".total-downs[data-id=#{response.id}]").text(response.down)

  $('.post-comments .votes .button_to').on 'ajax:error', ->
    window.location.href = "/users/sign_in"