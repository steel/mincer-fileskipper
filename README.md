# Mincer File Skipper

Engine for [Mincer](https://github.com/nodeca/mincer) that skips files with certain extensions. e.g. ERB

## Installation

Install from npm registry:

```
$ npm install mincer-fileskipper
```

or add `mincer-fileskipper` to your `package.json`:

```json
"dependencies": {
  "mincer-fileskipper": "0.0.1"
}
```


## Usage

```js
var Mincer = require('mincer');

require('mincer-fileskipper')(Mincer, [".erb", ".skip"]);
```

Now files with `.erb` and `.skip` will return an emtpy string when they are required.