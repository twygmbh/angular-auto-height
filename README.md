# AngularJS auto-height directive

## Usage:

### bower:

```
$ bower install m43nu/angular-auto-height
```

Include it in your angular-app:

```
angular.module('myApp', [
  // ...
  'm43nu.auto-height'
]).
config(function () {
  // ...
```

### npm:

```
$ npm install angular-auto-height
```

Include it in your angular-app:

```
angular.module('myApp', [
  // ...
  require('angular-auto-height')
]).
config(function () {
  // ...
```

### NuGet:

```
$ Install-Package AngularAutoHeight
```

Include it in your angular-app:

```
angular.module('myApp', [
  // ...
  'm43nu.auto-height'
]).
config(function () {
  // ...
```

##Use it in your html:
###Basic
```
<div class="parent">
    <div class="sibling">I need some space too</div>
    <div auto-height>
        I stretch to the available height,
        calculated from the height available from .parent and my siblings.
    </div>
</div>
```

###Automatic recalculation of height:
 ```
 <div id="parent">
     <div id="sibling">I need some space too</div>
     <div auto-height="recalculate-on-css-class-changes">
         I stretch to the available height,
         calculated from the height available from parent and my siblings.
         Also, if the document changes height because of css class changes, I recalculate my height!
     </div>
 </div>
 ```
 
This is useful when dynamically changing the height of elements (e.g. when collapsing/expanding sections using http://angular-ui.github.io/bootstrap/#/collapse)

_Note: This feature requires support of MutationObserver - see http://caniuse.com/#feat=mutationobserver_
 

## Community

### Got a question?

Just send me a message and I'll try to get to you as soon as possible.

### Found a bug?

Please submit a new issue.

### Fixed something?

1. Fork angular-auto-height
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Send me a pull-request for your topic branch
5. That's it!

### License

Released Under [MIT License](https://github.com/m43nu/angular-auto-height/blob/master/LICENSE).
