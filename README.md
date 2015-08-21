This is not a full portage configuration. It contains only those parts that are
necessary to set up a gentoo github mirror based sync system:
* configures portage to sync via https://github.com/gentoo/gentoo.git
* updates metadata-cache (the first update might take long, all subsequent ones not)
* updates the dtd directory
* updates the glsa directory
* updates herds.xml
* updates the news directory

## Notes

Note that typically most repositories other than `gentoo` don't come with a pregenerated cache. It is a good idea to generate/update their cache every time they are synced. One way to do this, is by activating the `example` hook script that portage installs by default in /etc/portage/postsync.d:

```
cp -i /etc/portage/repo.postsync.d/example /etc/portage/repo.postsync.d/gen_cache
chmod +x /etc/portage/repo.postsync.d/gen_cache
```
