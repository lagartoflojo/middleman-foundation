#= require "vendor/jquery"

# Foundation Javascript
#=require foundation
#=require foundation.alerts
#=require foundation.clearing
#=require foundation.cookie
#=require foundation.dropdown
#=require foundation.forms
#=require foundation.joyride
#=require foundation.magellan
#=require foundation.orbit
#=require foundation.reveal
#=require foundation.section
#=require foundation.tooltips
#=require foundation.topbar
#=require foundation.interchange
#=require foundation.placeholder

(($, window, undefined_) ->
  "use strict"
  $doc = $(document)
  Modernizr = window.Modernizr
  $(document).ready ->
    $(document).foundation()

  # UNCOMMENT THE LINE YOU WANT BELOW IF YOU WANT IE8 SUPPORT AND ARE USING .block-grids
  # $('.block-grid.two-up>li:nth-child(2n+1)').css({clear: 'both'});
  # $('.block-grid.three-up>li:nth-child(3n+1)').css({clear: 'both'});
  # $('.block-grid.four-up>li:nth-child(4n+1)').css({clear: 'both'});
  # $('.block-grid.five-up>li:nth-child(5n+1)').css({clear: 'both'});

  # Hide address bar on mobile devices (except if #hash present, so we don't mess up deep linking).
  if Modernizr.touch and not window.location.hash
    $(window).load ->
      setTimeout (->
        window.scrollTo 0, 1
      ), 0

) jQuery, this