Return-Path: <ShohamZarfati@proton.me>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C95FC28B20
	for <webhook@archiver.kernel.org>; Wed,  2 Apr 2025 18:41:15 +0000 (UTC)
Subject: Issue including kernel sources in DEBUGFS image
To: yocto@lists.yoctoproject.org
From: "Shoham Zarfati" <ShohamZarfati@proton.me>
X-Originating-Location: IL (147.235.200.57)
X-Originating-Platform: Linux Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Apr 2025 11:41:07 -0700
Message-ID: <hJb2.1743619267969409361.AdoF@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Apr 2025 18:41:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65064

Hi,

I'm trying to include the kernel sources in the debug image generated when =
using `IMAGE_GEN_DEBUGFS`.

The issue is easily reproducible,
I followed the Yocto Project Quick Build guide I checked out the `scarthgap=
` branch and built `core-image-minimal`.
After successfully building the image, I added the following to my `local.c=
onf` file:

```
IMAGE_GEN_DEBUGFS =3D "1"
IMAGE_FSTYPE_DEBUGFS =3D "tar.gz"
```

This works perfectly and produces the separate "-dbg" tar.gz files in the `=
deploy` directory.
The problem occurs when I add the following line to my `local.conf` file:

```
IMAGE_INSTALL_DEBUGFS:append =3D " kernel-devsrc"
```

This results in the following error:

```
ERROR: core-image-minimal-1.0-r0 do_rootfs: The postinstall intercept hook =
'update_gio_module_cache' failed, details in /home/ubuntu/dev/poky/build/tm=
p/work/qemux86_64-poky-linux/core-image-minimal/1.0/temp/log.do_rootfs
ERROR: Logfile of failure stored in: /home/ubuntu/dev/poky/build/tmp/work/q=
emux86_64-poky-linux/core-image-minimal/1.0/temp/log.do_rootfs.2994391
ERROR: Task (/home/ubuntu/dev/poky/meta/recipes-core/images/core-image-mini=
mal.bb:do_rootfs) failed with exit code '1'
```

The `update_gio_module_cache` seems to be called as part of `glib-2.0`'s po=
stinst script, which is created through this https://web.git.yoctoproject.o=
rg/poky/tree/meta/classes-recipe/gio-module-cache.bbclass?h=3Dscarthgap bbc=
lass being inherited in the `glib-2.0` recipe.

The problem itself appears to be that `gio-querymodules` is not installed i=
n the rootfs, but in `rootfs-dbg`, and the `D` variable points to the rootf=
s directory when executing the postinst script.
I'm unsure how I should proceed from here.

Any help would be greatly appreciated.

