###*
# @version 0.1.0
# @copyright TWY GmbH [All Rights Reserved]
# @license MIT License (see LICENSE.txt)
###
angular.module('twygmbh.auto-height', []).
  directive 'autoHeight', [ '$window', '$timeout', ($window, $timeout) ->
    link: ($scope, $element, $attrs) ->
      observe = (observedEleId) ->
        if (!observedEleId)
          return
        $timeout ->
          observee = if observedEleId == 'document' then $window.document else $('#' + observedEleId).get(0)
          $observee = $(observee);
          oldHeight = 0;
          observer = new MutationObserver ->
            currentHeight = $observee.height();
            if (currentHeight != oldHeight)
              angular.element($window).triggerHandler('resize');
            oldHeight = currentHeight
          if observee
            options = {attributes: true,attributeFilter: ['class'], subtree: true}
            observer.observe observee, options;

      combineHeights = (collection) ->
        heights = 0
        heights += node.offsetHeight for node in collection
        heights

      siblings = ($elm) ->
        elm for elm in $elm.parent().children() when elm != $elm[0]

      observe($attrs.observeHeightOf)
      angular.element($window).bind 'resize', ->
        additionalHeight = $attrs.additionalHeight || 0
        parentHeight = $window.innerHeight - $element.parent()[0].getBoundingClientRect().top
        $element.css('height', (parentHeight - combineHeights(siblings($element)) - additionalHeight) + "px")

      $timeout ->
        angular.element($window).triggerHandler('resize')
      , 1000
  ]