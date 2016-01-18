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

Use it in your html:

```
<div class="parent">
    <div class="sibling">I need some space too</div>
    <div auto-height>
        I stretch to the available height,
        calculated from the height available from .parent and my siblings.
    </div>
</div>
```

Optional automatic re-calculation of height based on changes to other elements:

 ```
 <div id="parent">
     <div id="sibling">I need some space too</div>
     <div auto-height observe-height-of="parent">
         I stretch to the available height,
         calculated from the height available from parent and my siblings.
         Also, if my parent changes height, I recalculate my height!
     </div>
 </div>
 ```

 

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
