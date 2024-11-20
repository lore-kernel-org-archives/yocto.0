Return-Path: <Ankita.AN@exaleapsemi.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A935D63928
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 10:52:03 +0000 (UTC)
Subject: gnome desktop with kirkstone  #kirkstone #gnome
To: yocto@lists.yoctoproject.org
From: Ankita.AN@exaleapsemi.com
X-Originating-Location: IN (49.249.95.238)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 20 Nov 2024 02:51:53 -0800
Message-ID: <DFqh.1732099913660193870.SnUS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="pKT6YkY1r79oxrUOI3SJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 10:52:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64304

--pKT6YkY1r79oxrUOI3SJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

HI,
I am trying to launch gnome desktop with kirkstone for riscv64(custom distr=
o).

For trial purpose I used poky to build qemu image with gnome.

in local.conf

MACHINE ?=3D "qemux86-64"
DISTRO_FEATURES:append =3D " x11 wayland pam systemd gnome"
IMAGE_INSTALL:append =3D " gnome-session gnome-terminal gnome-control-cente=
r gnome-shell"
DISTRO_FEATURES +=3D "polkit opengl"

and vi=C2=A0 meta-openembedded/meta-gnome/recipes-core/images/core-image-gn=
ome.bb

SUMMARY =3D "Minimal GNOME Desktop Image"
LICENSE =3D "MIT"
IMAGE_FEATURES +=3D "ssh-server-dropbear"
IMAGE_INSTALL =3D "\
gnome-session \
gnome-terminal \
gnome-shell \
gnome-control-center \
gdm \
"
inherit core-image

The error I am facing is,
ERROR: Task (/home/vitthal/ankita/poky/meta/recipes-sato/webkit/webkitgtk_2=
.36.8.bb:do_compile) failed with exit code '1'

Any suggestions for this?

Thanks,
Ankita

--pKT6YkY1r79oxrUOI3SJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>HI,</div>
<div>I am trying to launch gnome desktop with kirkstone for riscv64(custom =
distro).</div>
<div>&nbsp;</div>
<div>For trial purpose I used poky to build qemu image with gnome.</div>
<div>&nbsp;</div>
<div>in local.conf</div>
<div>&nbsp;</div>
<div>MACHINE ?=3D "qemux86-64"<br />DISTRO_FEATURES:append =3D " x11 waylan=
d pam systemd gnome"<br />IMAGE_INSTALL:append =3D " gnome-session gnome-te=
rminal gnome-control-center gnome-shell"<br />DISTRO_FEATURES +=3D "polkit =
opengl"</div>
<div>&nbsp;</div>
<div>and vi&nbsp; meta-openembedded/meta-gnome/recipes-core/images/core-ima=
ge-gnome.bb</div>
<div>&nbsp;</div>
<div>
<div>SUMMARY =3D "Minimal GNOME Desktop Image"<br />LICENSE =3D "MIT"</div>
<div>IMAGE_FEATURES +=3D "ssh-server-dropbear"</div>
<div>IMAGE_INSTALL =3D "\<br />&nbsp; &nbsp; gnome-session \<br />&nbsp; &n=
bsp; gnome-terminal \<br />&nbsp; &nbsp; gnome-shell \<br />&nbsp; &nbsp; g=
nome-control-center \<br />&nbsp; &nbsp; gdm \<br />&nbsp; &nbsp; "</div>
<div>inherit core-image</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>The error I am facing is,</div>
<div>ERROR: Task (/home/vitthal/ankita/poky/meta/recipes-sato/webkit/webkit=
gtk_2.36.8.bb:do_compile) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>Any suggestions for this?</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>Ankita</div>
</div>

--pKT6YkY1r79oxrUOI3SJ--

