## Building the manual

Local builds requires Nodejs and npm installed. See
https://docs.antora.org/antora/3.0/install/install-antora/,
but note that the antora program does not need to be installed.
Just nodejs and npm is enough.

The preparation step is to install required npm modules:

    $ npm install

After completing this step, documentation is built using

    $ npm run build

The resulting site can  be viewed by directing a browser to
_docs/index.html_.
