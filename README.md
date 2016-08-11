Diff Toggle
===========

Diff Toggle is a Vim plugin to speed up editing diff files.

Pressing `<Space>` in diff buffers on a single line or visual selection will:

* delete `+` lines under the cursor
* replace the `-` on removed lines with spaces, turning them into a context
  lines
* replace the space at the start of context lines with a `-`, marking them for
  removal

What is this useful for you ask? Try use it next time you are adding files to
Git with `git add --edit`.

Contributors
------------

Thanks.

* [Jason Weathered](http://jasoncodes.com)
* [Nathanael Kane](http://twitter.com/nathanaelkane)
* [Ingo Karkat](https://github.com/inkarkat)

License
-------

Distributed under the same terms as Vim itself. See `:help license` for info.

Links
-----

* http://usevim.com/2012/03/26/plugin-roundup/
