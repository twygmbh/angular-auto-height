###*
# @version 0.1.0
# @copyright Emanuel Imhof [All Rights Reserved]
# @license MIT License (see LICENSE.txt)
###
angular.module('m43nu.auto-height', []).
  directive 'autoHeight', [ '$window', '$timeout', ($window, $timeout) ->
    link: ($scope, $element, $attrs) ->
      if($attrs.autoHeight == 'recalculate-on-css-class-changes')
        $timeout ->
          oldHeight = 0;
          observer = new MutationObserver ->
            $timeout ->
              doc = $window.document;
              docEle = $window.document.documentElement;
              currentHeight = Math.max(
                doc.body["scrollHeight"], docEle["scrollHeight"],
                doc.body["offsetHeight"], docEle["offsetHeight"],
                docEle["clientHeight"] );
              if (currentHeight != oldHeight)
                angular.element( $window ).triggerHandler( 'resize' );
              oldHeight = currentHeight
          options = {attributes: true, attributeFilter: ['class'], subtree: true}
          observer.observe $window.document.body, options;

      combineHeights = (collection) ->
        heights = 0
        heights += node.offsetHeight for node in collection
        heights

      siblings = ($elm) ->
        elm for elm in $elm.parent().children() when elm != $elm[0]

      angular.element($window).bind 'resize', ->
        additionalHeight = $attrs.additionalHeight || 0
        parentHeight = $window.innerHeight - $element.parent()[0].getBoundingClientRect().top
        $element.css('height', (parentHeight - combineHeights(siblings($element)) - additionalHeight) + "px")

      $timeout ->
        angular.element($window).triggerHandler('resize')
      , 1000
  ]