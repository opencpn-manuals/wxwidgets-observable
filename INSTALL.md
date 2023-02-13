## Rebuilding and using code

This is designed to be included as a library in a complete project,
typically something like

    find_package(wxWidgets ... )
    ...
    add_subdirectory(wxwidgets-observable)
    target_link_libraries(${PACKAGE_NAME} PRIVATE observable::observable)

## Rebuilding documentation

Building documentation requires that doxygen is installed. Docs are generated
by running `doxygen` in the top directory. Resulting docs entrypoint is
_docs/index.html_

Publishing on Github Pages requires modifying Settings | Pages in the Github
UI. Set project to deploy from branch  _gh-pages_ and use the output in
directory _docs/_. When done, trigger a build using

    $ git push -f origin main:build

This triggers a build job which normally completes in a minute or two.
Resulting docs are available in
https://opencpn-manuals.github.io/wxwidgets-observable in the original 
repository.
