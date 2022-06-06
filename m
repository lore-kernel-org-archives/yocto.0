Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7263C43334
	for <webhook@archiver.kernel.org>; Mon,  6 Jun 2022 18:24:25 +0000 (UTC)
Subject: Extra files to kernel module package #kernel
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Boston, Massachusetts, US (136.226.72.85)
X-Originating-Platform: Windows Chrome 102
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 06 Jun 2022 11:24:24 -0700
Message-ID: <0TQ4.1654539864871394169.WHxi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NUbkiWtXf8GIoLhzL8li"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Jun 2022 18:24:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57274

--NUbkiWtXf8GIoLhzL8li
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This was asked a while back with no answer that I could find, but I am runn=
ing into the same issue where I can't use FILES:${PN} - to get a kernel ude=
v source file into my build and am wondering if anyone has a suggestion on =
how best to accomplish it. I have found some links where it is agreed that =
FILES:${PN} doesn't work but no solution that works for me anyway has been =
provided.

I have recipe that compiles kernel module. It works fine ie. the
module ends up to image.

I also have few configuration files that I'd like to add with the
package. Earlier version (I'm currently using thud-branch) that was
done by adding this line to recipe:

FILES_${PN} +=3D "${sysconfdir}/udev/*"

Then when image - recipe I had
IMAGE_INSTALL +=3D "<recipe-name>"  all would be installed to image.

Now the sysconfdir files ends up to recipe-name - package and module
itself ends up to kernel-module-<recipe-name> - package and although
I"m installing <recipe-name>  - package the one with module ends up to
image and the <recipe-name> - package is not.

I know that when inheriting module.class it'll rename the package to
kernel-module-${PN} yet you use the recipe name for installing the
package.  I tried adding the files to kernel-module-${PN} - package
instead, but didn't work.

What's the proper way adding extra files to kernel-module-package or
is it not recommended and I should use separate package instead?

(I have also unsuccessfully tried FILES:kernel-base) - which I found in a s=
eparate post

the "meat" of my recipe is as follows:

inherit module

SRC_URI +=3D " file://99-mtx.rules "

# Modify these as desired
PV =3D "1.0+git${SRCPV}"
SRCREV =3D "${AUTOREV}"

S =3D "${WORKDIR}/git/modules/mtx"

do_install:append() {
install -d ${D}${sysconfdir}/udev/rules.d/
install -m 0644 ${WORKDIR}/99-mtx.rules ${D}${sysconfdir}/udev/rules.d/99-m=
tx.rules
}

FILES:${PN} +=3D "=C2=A0 ${sysconfdir}/udev/rules.d/99-mtx.rules "
RPROVIDES:${PN} +=3D " kernel-module-mtx"

--NUbkiWtXf8GIoLhzL8li
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

This was asked a while back with no answer that I could find, but I am runn=
ing into the same issue where I can't use FILES:${PN} - to get a kernel ude=
v source file into my build and am wondering if anyone has a suggestion on =
how best to accomplish it. I have found some links where it is agreed that =
FILES:${PN} doesn't work but no solution that works for me anyway has been =
provided.<br /><br />
<div>
<pre style=3D"white-space: pre-wrap; color: #000000;">
I have recipe that compiles kernel module. It works fine ie. the
module ends up to image.

I also have few configuration files that I'd like to add with the
package. Earlier version (I'm currently using thud-branch) that was
done by adding this line to recipe:

FILES_${PN} +=3D "${sysconfdir}/udev/*"

Then when image - recipe I had
IMAGE_INSTALL +=3D "&lt;recipe-name&gt;"  all would be installed to image.

Now the sysconfdir files ends up to recipe-name - package and module
itself ends up to kernel-module-&lt;recipe-name&gt; - package and although
I"m installing &lt;recipe-name&gt;  - package the one with module ends up t=
o
image and the &lt;recipe-name&gt; - package is not.

I know that when inheriting module.class it'll rename the package to
kernel-module-${PN} yet you use the recipe name for installing the
package.  I tried adding the files to kernel-module-${PN} - package
instead, but didn't work.

What's the proper way adding extra files to kernel-module-package or
is it not recommended and I should use separate package instead?
</pre>
</div>
<div><br /><span style=3D"color: #800000; font-size: 12pt;">(I have also un=
successfully tried FILES:kernel-base) - which I found in a separate post</s=
pan><br /><br />the "meat" of my recipe is as follows:<br /><br />
<div>inherit module</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D " file://99-mtx.rules "</div>
<div>&nbsp;</div>
<div># Modify these as desired</div>
<div>PV =3D "1.0+git${SRCPV}"</div>
<div>SRCREV =3D "${AUTOREV}"</div>
<div>&nbsp;</div>
<div>S =3D "${WORKDIR}/git/modules/mtx"</div>
<div>&nbsp;</div>
<div>do_install:append() {</div>
<div>&nbsp; install -d ${D}${sysconfdir}/udev/rules.d/</div>
<div>&nbsp; install -m 0644 ${WORKDIR}/99-mtx.rules ${D}${sysconfdir}/udev/=
rules.d/99-mtx.rules</div>
<div>}</div>
<div>&nbsp;</div>
<div>FILES:${PN} +=3D "&nbsp; ${sysconfdir}/udev/rules.d/99-mtx.rules "</di=
v>
<div>RPROVIDES:${PN} +=3D " kernel-module-mtx"<br /><br /></div>
</div>

--NUbkiWtXf8GIoLhzL8li--

