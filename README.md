This is not a full portage configuration. It contains only those parts that are
necessary to set up a gentoo github mirror based sync system:

* Configures Portage to sync via https://github.com/gentoo/gentoo.git URL.
* Updates metadata-cache.
* Updates the dtd directory.
* Updates the glsa directory.
* Updates `herds.xml` file.
* Updates the news directory.

## Notes ##

If you want your overlay metadata caches to be automatically regenerated
as well, do:
```sh
chmod +x /etc/portage/repo.postsync.d/sync_overlay_cache
```
