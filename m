Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCB7CC83F27
	for <webhook@archiver.kernel.org>; Wed, 16 Jul 2025 12:40:35 +0000 (UTC)
Subject: Re: [yocto] [scarthgap] Setting image feature dev-pkgs bring ptest package of libgpiod
To: "Ross Burton" <ross.burton@arm.com>, yocto@lists.yoctoproject.org
From: "Jairo Mejia Aponte" <jairo.mejiaaponte@belden.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (217.111.97.134)
X-Originating-Platform: Linux Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 16 Jul 2025 05:40:32 -0700
References: <B2AA36EC-743E-4DA5-B022-9F037BB42072@arm.com>
In-Reply-To: <B2AA36EC-743E-4DA5-B022-9F037BB42072@arm.com>
Message-ID: <24418.1752669632403386029@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5FvpRBMyaC5mU1rsFkHR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Jul 2025 12:40:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65666

--5FvpRBMyaC5mU1rsFkHR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I was looking the code in more deep and I found out that even though there =
is a ptest and ptest-dev defined on the recipe and the folders are created =
as such in package-split folder, at the end the package name *change* to a =
package that is named after a shared library that is added in the ptest pac=
kage. This is the line that makes the RPM package to change the name:

FILES:${PN}-ptest +=3D "${libdir}/libgpiosim.so.*"

This seems to trigger a change of name for the ptest package to the name of=
 the library. Because the new package name contains the *-dev,* this is add=
ed when setting the *dev-pkgs* in the IMAGE_FEATURES. If I remove that line=
 for the ptest, the name of the package is the ptest expected and it is not=
 added to the image at the end.

This is how the directories looks like:

ls -l tmp/work/core2-64-poky-linux/libgpiod/2.1.2/packages-split
drwxr-xr-x libgpiod
drwxr-xr-x libgpiod-dbg
drwxr-xr-x libgpiod-dev
drwxr-xr-x libgpiod-doc
drwxr-xr-x libgpiod-locale
*drwxr-xr-x libgpiod-ptest*
*drwxr-xr-x libgpiod-ptest-dev*
.rw-r--r-- libgpiod-ptest.shlibdeps
drwxr-xr-x libgpiod-src
drwxr-xr-x libgpiod-staticdev
drwxr-xr-x libgpiod-tools
.rw-r--r-- libgpiod-tools.shlibdeps
.rw-r--r-- libgpiod.shlibdeps
drwxr-xr-x libgpiodcxx
.rw-r--r-- libgpiodcxx.shlibdeps

ls -l tmp/work/core2-64-poky-linux/libgpiod/2.1.2/deploy-rpms/core2_64
.rw-r--r-- libgpiod-dbg-2.1.2-r0.core2_64.rpm
.rw-r--r-- libgpiod-dev-2.1.2-r0.core2_64.rpm
.rw-r--r-- libgpiod-src-2.1.2-r0.core2_64.rpm
.rw-r--r-- libgpiod-tools-2.1.2-r0.core2_64.rpm
.rw-r--r-- libgpiod3-2.1.2-r0.core2_64.rpm
.rw-r--r-- libgpiodcxx2-2.1.2-r0.core2_64.rpm
*.rw-r--r-- libgpiosim-dev-2.1.2-r0.core2_64.rpm*
*.rw-r--r-- libgpiosim1-2.1.2-r0.core2_64.rpm*

--5FvpRBMyaC5mU1rsFkHR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,&nbsp;</div>
<div>&nbsp;</div>
<div>I was looking the code in more deep and I found out that even though t=
here is a ptest and ptest-dev defined on the recipe and the folders are cre=
ated as such in package-split folder, at the end the package name&nbsp;<str=
ong>change&nbsp;</strong>to a package that is named after a shared library =
that is added in the ptest package. This is the line that makes the RPM pac=
kage to change the name:&nbsp;<br /><br />FILES:${PN}-ptest +=3D "${libdir}=
/libgpiosim.so.*"</div>
<div>&nbsp;</div>
<div>This seems to trigger a change of name for the ptest package to the na=
me of the library. Because the new package name contains the&nbsp;<strong>-=
dev,&nbsp;</strong>this is added when setting the&nbsp;<strong>dev-pkgs&nbs=
p;</strong>in the IMAGE_FEATURES. If I remove that line for the ptest, the =
name of the package is the ptest expected and it is not added to the image =
at the end.</div>
<div><br />This is how the directories looks like:<br /><br />
<div>ls -l tmp/work/core2-64-poky-linux/libgpiod/2.1.2/packages-split<br />=
drwxr-xr-x libgpiod<br />drwxr-xr-x libgpiod-dbg<br />drwxr-xr-x libgpiod-d=
ev<br />drwxr-xr-x libgpiod-doc<br />drwxr-xr-x libgpiod-locale<br /><stron=
g>drwxr-xr-x libgpiod-ptest</strong><br /><strong>drwxr-xr-x libgpiod-ptest=
-dev</strong><br />.rw-r--r-- libgpiod-ptest.shlibdeps<br />drwxr-xr-x libg=
piod-src<br />drwxr-xr-x libgpiod-staticdev<br />drwxr-xr-x libgpiod-tools<=
br />.rw-r--r-- libgpiod-tools.shlibdeps<br />.rw-r--r-- libgpiod.shlibdeps=
<br />drwxr-xr-x libgpiodcxx<br />.rw-r--r-- libgpiodcxx.shlibdeps</div>
<div>&nbsp;</div>
<div>ls -l tmp/work/core2-64-poky-linux/libgpiod/2.1.2/deploy-rpms/core2_64=
<br />.rw-r--r-- libgpiod-dbg-2.1.2-r0.core2_64.rpm<br />.rw-r--r-- libgpio=
d-dev-2.1.2-r0.core2_64.rpm<br />.rw-r--r-- libgpiod-src-2.1.2-r0.core2_64.=
rpm<br />.rw-r--r-- libgpiod-tools-2.1.2-r0.core2_64.rpm<br />.rw-r--r-- li=
bgpiod3-2.1.2-r0.core2_64.rpm<br />.rw-r--r-- libgpiodcxx2-2.1.2-r0.core2_6=
4.rpm<br /><strong>.rw-r--r-- libgpiosim-dev-2.1.2-r0.core2_64.rpm</strong>=
<br /><strong>.rw-r--r-- libgpiosim1-2.1.2-r0.core2_64.rpm</strong></div>
<br /><br /><br /></div>

--5FvpRBMyaC5mU1rsFkHR--

