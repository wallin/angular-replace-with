'use strict'

describe 'Directive: replaceWith', ->
  beforeEach module 'ui.replaceWith'
  element = {}

  describe 'input tag', ->
    beforeEach inject ($rootScope, $compile) ->
      $rootScope.condition = no
      element = angular.element '<input type="submit" replace-with="Sending..." replace-when="condition" value="Send">'
      element = $compile(element) $rootScope
      $rootScope.$apply()

    it 'updates input value when "replace-when" evaluates to true', inject ($rootScope) ->
      expect(element.val()).toBe 'Send'
      $rootScope.condition = yes
      $rootScope.$apply()
      expect(element.val()).toBe 'Sending...'

    it 'sets back the original input value when "replace-when" evaluates to false', inject ($rootScope) ->
      $rootScope.condition = yes
      $rootScope.$apply()
      expect(element.val()).toBe 'Sending...'
      $rootScope.condition = no
      $rootScope.$apply()
      expect(element.val()).toBe 'Send'

  describe 'button tag', ->
    beforeEach inject ($rootScope, $compile) ->
      $rootScope.condition = no
      element = angular.element '<button replace-with="Sending..." replace-when="condition">Send</button>'
      element = $compile(element) $rootScope
      $rootScope.$apply()

    it 'updates button text when "replace-when" evaluates to true', inject ($rootScope) ->
      expect(element.html()).toBe 'Send'
      $rootScope.condition = yes
      $rootScope.$apply()
      expect(element.html()).toBe 'Sending...'