Vanilla Sundae
===

This Javascript library uses Bower to manage external third-party dependencies. Although a component.json file is defined, this library is not registered with Bower itself.

Bower Installation
=

Requires NodeJS and its accompanying package manager, NPM. Installation guides here:

* *NodeJS:* https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
* *Bower:* http://twitter.github.com/bower/

Coffeelint Installation
=

We use Coffeelint to ensure that our codebase style, stays clean and consistent. Coffeelint itself requires NodeJS and NPM as pre-requisites for installation. See above.

To install coffeelint, simply run `npm install -g coffeelint` (Installs coffeelint globally)

Pre-commit Hook Installation
=

We have provided a pre-commit (`./pre-commit`) git hook file to help ensure coffeelint tests pass before any code is committed. Usage of this git hook is optional, however all coffeelint tests must pass before any commits are accepted. To use the hook, simply follow the instructions below.

1. From the project root..
2. `cp pre-commit .git/hooks/`
3. `chmod +x .git/hooks/pre-commit`

When committing any changes, you should notice the inclusion of the coffeelint tests.

Usage
=

Once Bower has been successfully installed, you can grab the project dependencies by running `bower install` from the root folder of this project.

We also use Coffeelint (http://www.coffeelint.org/) and the configuration file can be found at `./coffeelint.json`. 

