angular-replace-with
====================

Simple Angular JS directive primary for use when you temporarily need to replace button texts depending on a certain condition. For instance when sending a message you can temporarily replace the button text with "Sending..." (see example below)

However, it is not limited to input elements but can be used on any element (innerHTML will be replaced instead of value attribute).

This directive is inpired by the "data-disable-with" functionality in [https://github.com/rails/jquery-ujs/wiki/Unobtrusive-scripting-support-for-jQuery](jquery-ujs)

Usage
-----
Include angular-replace-with.js in your application.

```html
<script src="components/angular-replace-with/build/angular-replace-with.js"></script>
```

Add the module `ui.replaceWith` as a dependency to your app:

```js
var app = angular.module('app', ['ui.replaceWith']);
```

Then use the directive on a button or input tag and it will automatically set the text entered in the `replace-with` attribute when the condition in the `replace-when` attribute evaulates to true

```html
<input type="submit" replace-with="Sending..." replace-when="isSending" value="Send">
```



