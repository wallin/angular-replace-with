angular.module('ui.replaceWith', [])
.directive('replaceWith', [
  ->
    link: (scope, elm, attrs) ->
      return unless attrs.replaceWhen?
      tagname = elm[0].tagName.toLowerCase()
      method = if tagname in ['input', 'select', 'textarea']
        'val'
      else
        'html'
      previousVal = elm[method]()
      scope.$watch attrs.replaceWhen, (val) ->
        elm[method](if !!val then attrs.replaceWith else previousVal)
])
