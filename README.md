# AngularJS auto-height directive

## Usage:


Install it with bower:

```
$ bower install twygmbh/angular-auto-height
```

Include it in your angular-app:

```
angular.module('myApp', [
  // ...
  'twygmbh.auto-height'
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

To use the CSS `min-height` property instead of `height` (in order to allow
the container to expand further vertically), include a value of `min-height`:

```
<div class="article" auto-height="min-height">
   This container will be at least as tall as the remaining on-screen space,
   but will grow to fit any contents taller than that.
</article>
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

Released Under [MIT License](https://github.com/twygmbh/angular-auto-height/blob/master/LICENSE).
