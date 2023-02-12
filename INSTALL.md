## Rebuilding and using code

This is designed to be included as a library in a complete project,
typically done like

    find_package(wxWidgets ... )
    ...
    add_subdirectory(observable)
    target_link_libraries(${PACKAGE_NAME} PRIVATE observable::observable)

## Rebuilding documentation

building documentation requires that doxygen is installed. Docs are generated
by running `doxygen` in the top directory. Resulting docs entrypoint is
_docs/index.html_

To rebuild the public documentation in github pages from the main branch:

    $ git push -f origin main:build

This triggers a build job which normally completes in a minute or two.
Resulting docs are available in
https://github.com/opencpn-manuals/wxwidgets-observable

