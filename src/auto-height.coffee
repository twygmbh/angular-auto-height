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
        property = $attrs.autoHeight === 'min-height' ? 'min-height' : 'height'
        $element.css(property, (parentHeight - combineHeights(siblings($element)) - additionalHeight))

      $timeout ->
        angular.element($window).triggerHandler('resize')
      , 1000
  ]