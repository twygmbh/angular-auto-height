###*
# @version 0.0.4
# @copyright TWY GmbH [All Rights Reserved]
# @license MIT License (see LICENSE.txt)
###
angular.module('twygmbh.auto-height', []).
  directive 'autoHeight', [ '$window', '$timeout', ($window, $timeout) ->
    link: ($scope, $element, $attrs) ->
      combineHeights = (collection) ->
        heights = 0
        heights += node.offsetHeight for node in collection
        heights

      siblings = ($elm) ->
        elm for elm in $elm.parent().children() when elm != $elm[0]

      angular.element($window).bind 'resize', ->
        additionalHeight = $attrs.additionalHeight || 0
        parentHeight = $window.innerHeight - $element.parent()[0].getBoundingClientRect().top
        property = if $attrs.autoHeight == 'min-height' then 'min-height' else 'height'
        $element.css(property, (parentHeight - combineHeights(siblings($element)) - additionalHeight) + "px")

      $timeout ->
        angular.element($window).triggerHandler('resize')
      , 1000
  ]
