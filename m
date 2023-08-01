Return-Path: <sveyret@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C4AC00528
	for <webhook@archiver.kernel.org>; Tue,  1 Aug 2023 19:17:54 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.21978.1690917464728332450
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Aug 2023 12:17:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NSRVv/gH;
 spf=pass (domain: gmail.com, ip: 209.85.221.44, mailfrom: sveyret@gmail.com)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3174ca258bbso1459601f8f.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Aug 2023 12:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690917463; x=1691522263;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0GNjcHABuMxv3slyznBSUd/tcQEV9TDaSQSCzvXNQJM=;
        b=NSRVv/gH2L3NYnpq3GtnMVgkKCTO+Zt9oMK+Z/m6a+cKEmKBiI/gLMSqaVi7NhA0Tl
         pemzRVKmYw1JfJ7E+cIgizCrvgKgFUtBXNg7aCr4Jf7Lk6Jblfbgpnu1HjFtkj5/upRC
         TR4YAZkvbJB23U7kKrdPzBWO3L3xm/7CoXr5XaYrP5ox8AM6++GrpQ64AvzyCPgTSnfc
         43nsfp/BkKQl0gkmxw14/l3hmP4GOFItSn78IlDhvu6JU4ePxgUe/dt9P9zulB+SPHDf
         lLCCQa+hJ3NqOKx7Bs5YG3lEu17GJfaU7XK6VaOnqgyEPogIvjTT9Vd4hazMJ6BbHNJC
         1Tug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690917463; x=1691522263;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0GNjcHABuMxv3slyznBSUd/tcQEV9TDaSQSCzvXNQJM=;
        b=IkAw1YMbxW8+UjrZDkSzhzYgVZoBPHrwe+XNYc4ShP/Wr3JvywHsfxdxtI+vTpzuq2
         K649QG4eo4CXTY2qwTWT1iTeDr2v6kaXQcRCkMgUx1qaulNf2CM0E/kgmiX+A6Ah5Rix
         2AzY4tt15zIfE2F0NqovXHzhLIba1/p339ots4Ra+lCdRPnJeFaW7bN+X2TW0MQHRjlF
         NFpnihrs0b6PvjdZv6kifjJJprG2uSz2Jm9U48IWOJj88Bto0zJNhUw2Uxd0xwtmgveC
         yrm+u8Y919hE2iWAdCPdX/Sg0oE/MmlOTalXSjJLyRBRJq99/tRK9DxvvMH6WPkkRaK7
         seUg==
X-Gm-Message-State: ABy/qLa5XyFcsabdwUOwjdz+WCEjXYvDmiAbImWba6NJdH4O5blHwUuE
	uinNWr7kq3Lw+l7+9+SFEg14KIMcbo/f2c50XIvjdvIAOnY=
X-Google-Smtp-Source: APBJJlG842+E1pHNyk4AfNIoo+GI+Cwev2iRoQF928nrsH9/tQ110gUk32nJFIN52s+Ri3cC89EuYrGxjOTTXWQDrXY=
X-Received: by 2002:a5d:4ec2:0:b0:317:5f08:32a3 with SMTP id
 s2-20020a5d4ec2000000b003175f0832a3mr8496762wrv.6.1690917462870; Tue, 01 Aug
 2023 12:17:42 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?St=C3=A9phane_Veyret?= <sveyret@gmail.com>
Date: Tue, 1 Aug 2023 21:17:31 +0200
Message-ID: <CAFs+hh5kHn_pGKUAmjSZ0kMD921-karUGLZhubGMLGqPF7BGkA@mail.gmail.com>
Subject: Questions on multiconfig
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b80ea70601e16609"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Aug 2023 19:17:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60698

--000000000000b80ea70601e16609
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In my rootfs, I have busybox without shell support (because I=E2=80=99m usi=
ng
bash), but I want an initramfs with busybox with shell support.

I saw some quite old messages, saying that for this specific case, one
should duplicate the busybox recipe. But this has caveat and does not seem
to be a clean solution. So I decided to use a multiconfig, which seems to
be the ideal solution for that case.

Here=E2=80=99s what I did.

First, I created a multiconfig/initramfs.conf file in my private layer
containing:

TMPDIR =3D "${TOPDIR}/tmp-initramfs"
BUSYBOX_MY_INITRAMFS_CONFIG =3D "-initramfs"

Then, I created a busybox_%.bbappend with this content:

SRC_URI +=3D "file://fragment.cfg;subdir=3Dbusybox-${PV}"
BUSYBOX_MY_INITRAMFS_CONFIG ?=3D ""
FILESEXTRAPATHS:prepend :=3D
"${THISDIR}/${BPN}${BUSYBOX_MY_INITRAMFS_CONFIG}:"

First question: is this the right way to create and use a custom variable?
I want the recipe to choose the good fragment depending on
BUSYBOX_MY_INITRAMFS_CONFIG, but I=E2=80=99m not sure it is really working.

After that, I added the following line in distro.conf:

BBMULTICONFIG =3D "initramfs"

Second question: documents state that this variable should be in
local.conf, but it seems to also work in distro.conf; am I correct or is it
creating unwanted side effects?

In the same distro.conf, I also added:

INITRAMFS_IMAGE =3D "core-image-minimal-initramfs"
INITRAMFS_IMAGE_BUNDLE =3D "1"
INITRAMFS_SCRIPTS =3D "initramfs-module-rootfs-update"
INITRAMFS_MULTICONFIG =3D "initramfs"
INITRAMFS_DEPLOY_DIR_IMAGE =3D
"${TOPDIR}/tmp-initramfs/deploy/images/${MACHINE}"

If I understand well, it should make the building of the kernel depend on
the multiconfig initramfs:core-image-minimal-initramfs. But it is not
working.

First of all, I am spammed with messages like:

NOTE: Deferred task
mc:initramfs:/home/stephane/Developpements/yocto/sources/poky/meta/recipes-=
devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_qa
now buildable
NOTE: Deferred task
mc:initramfs:virtual:native:/home/stephane/Developpements/yocto/sources/pok=
y/meta/recipes-devtools/opkg/opkg_0.6.1.bb:do_populate_sysroot
now buildable

Other point, it seems to build a full image in the initramfs configuration,
while I expected that it would only build the initramfs image. My first
attempt (when the tmp-initramfs directory was empty) took ages to build and
I saw it tried to build the Linux kernel in it.

And on top of that, it fails because when building the kernel for initramfs
configuration, it cannot find the initramfs image. Which sounds logical,
because it is currently building the initramfs. So there seem to be a kind
of circular dependencies=E2=80=A6

ERROR: mc:initramfs:linux-yocto-6.1.35+gitAUTOINC+b358c237cf_682b17e1d7-r0
do_bundle_initramfs: Could not find any
/home/stephane/Developpements/yocto/builds/mybuild-dev/tmp-initramfs/deploy=
/images/qemux86-64/core-image-minimal-initramfs-qemux86-64.cpio{.gz|.lz4|.l=
zo|.lzma|.xz|.zst)
for bundling; INITRAMFS_IMAGE_NAME might be wrong.
ERROR: mc:initramfs:linux-yocto-6.1.35+gitAUTOINC+b358c237cf_682b17e1d7-r0
do_bundle_initramfs:
ExecutionError('/home/stephane/Developpements/yocto/builds/mybuild-dev/tmp-=
initramfs/work/qemux86_64-mydistro-linux/linux-yocto/6.1.35+gitAUTOINC+b358=
c237cf_682b17e1d7-r0/temp/run.do_bundle_initramfs.6797',
1, None, None)
ERROR: Logfile of failure stored in:
/home/stephane/Developpements/yocto/builds/mybuild-dev/tmp-initramfs/work/q=
emux86_64-mydistro-linux/linux-yocto/6.1.35+gitAUTOINC+b358c237cf_682b17e1d=
7-r0/temp/log.do_bundle_initramfs.6797

I=E2=80=99d be glad if someone could tell me what I=E2=80=99m doing wrong.

--=20
Bien cordialement, / Plej kore,

St=C3=A9phane Veyret

--000000000000b80ea70601e16609
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>In my rootfs, I have busybox wit=
hout shell support (because I=E2=80=99m using bash), but I want an initramf=
s with busybox with shell support.</div><div><br></div><div>I saw some quit=
e old messages, saying that for this specific case, one should duplicate th=
e busybox recipe. But this has caveat and does not seem to be a clean solut=
ion. So I decided to use a multiconfig, which seems to be the ideal solutio=
n for that case.</div><div><br></div><div>Here=E2=80=99s what I did.</div><=
div><br></div><div>First, I created a multiconfig/initramfs.conf file in my=
 private layer containing:</div><div><br></div><div>TMPDIR =3D &quot;${TOPD=
IR}/tmp-initramfs&quot;<br>BUSYBOX_MY_INITRAMFS_CONFIG =3D &quot;-initramfs=
&quot;<br><div><br></div><div>Then, I created a busybox_%.bbappend with thi=
s content:</div><div><br></div><div>SRC_URI +=3D &quot;file://fragment.cfg;=
subdir=3Dbusybox-${PV}&quot;<br>BUSYBOX_MY_INITRAMFS_CONFIG=C2=A0?=3D &quot=
;&quot;<br>FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${BPN}${BUSYBOX_MY=
_INITRAMFS_CONFIG}:&quot;<br></div><div><br></div><div>First question: is t=
his the right way to create and use a custom variable? I want the recipe to=
 choose the good fragment depending on BUSYBOX_MY_INITRAMFS_CONFIG, but I=
=E2=80=99m not sure it is really working.</div><div><br></div><div>After th=
at, I added the following line in distro.conf:</div><div><br></div><div>BBM=
ULTICONFIG =3D &quot;initramfs&quot;<br></div><div><br></div><div>Second qu=
estion: documents state that this variable should be in local.conf, but it =
seems to also work in distro.conf; am I correct or is it creating unwanted =
side effects?</div><div><br></div><div>In the same distro.conf, I also adde=
d:</div><div><br></div><div>INITRAMFS_IMAGE =3D &quot;core-image-minimal-in=
itramfs&quot;<br>INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>INITRAMFS_SCRI=
PTS =3D &quot;initramfs-module-rootfs-update&quot;<br>INITRAMFS_MULTICONFIG=
 =3D &quot;initramfs&quot;<br>INITRAMFS_DEPLOY_DIR_IMAGE =3D &quot;${TOPDIR=
}/tmp-initramfs/deploy/images/${MACHINE}&quot;<br></div><div><br></div><div=
>If I understand well, it should make the building of the kernel depend on =
the multiconfig initramfs:core-image-minimal-initramfs. But it is not worki=
ng.</div><div><br></div><div>First of all, I am spammed with messages like:=
</div><div><br></div><div>NOTE: Deferred task mc:initramfs:/home/stephane/D=
eveloppements/yocto/sources/poky/meta/recipes-devtools/qemu/qemuwrapper-cro=
ss_1.0.bb:do_package_qa now buildable<br>NOTE: Deferred task mc:initramfs:v=
irtual:native:/home/stephane/Developpements/yocto/sources/poky/meta/recipes=
-devtools/opkg/opkg_0.6.1.bb:do_populate_sysroot now buildable<br></div><di=
v><br></div><div>Other point, it seems to build a full image in the initram=
fs configuration, while I expected that it would only build the initramfs i=
mage. My first attempt (when the tmp-initramfs directory was empty) took ag=
es to build and I saw it tried to build the Linux kernel in it.</div><div><=
br></div><div>And on top of that, it fails because when building the kernel=
 for initramfs configuration, it cannot find the initramfs image. Which sou=
nds logical, because it is currently building the initramfs. So there seem =
to be a kind of circular dependencies=E2=80=A6</div><div><br></div><div>ERR=
OR: mc:initramfs:linux-yocto-6.1.35+gitAUTOINC+b358c237cf_682b17e1d7-r0 do_=
bundle_initramfs: Could not find any /home/stephane/Developpements/yocto/bu=
ilds/mybuild-dev/tmp-initramfs/deploy/images/qemux86-64/core-image-minimal-=
initramfs-qemux86-64.cpio{.gz|.lz4|.lzo|.lzma|.xz|.zst) for bundling; INITR=
AMFS_IMAGE_NAME might be wrong.<br>ERROR: mc:initramfs:linux-yocto-6.1.35+g=
itAUTOINC+b358c237cf_682b17e1d7-r0 do_bundle_initramfs: ExecutionError(&#39=
;/home/stephane/Developpements/yocto/builds/mybuild-dev/tmp-initramfs/work/=
qemux86_64-mydistro-linux/linux-yocto/6.1.35+gitAUTOINC+b358c237cf_682b17e1=
d7-r0/temp/run.do_bundle_initramfs.6797&#39;, 1, None, None)<br>ERROR: Logf=
ile of failure stored in: /home/stephane/Developpements/yocto/builds/mybuil=
d-dev/tmp-initramfs/work/qemux86_64-mydistro-linux/linux-yocto/6.1.35+gitAU=
TOINC+b358c237cf_682b17e1d7-r0/temp/log.do_bundle_initramfs.6797<br></div><=
div><br></div><div>I=E2=80=99d be glad if someone could tell me what I=E2=
=80=99m doing wrong.</div><div><br></div><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature">Bien cordialement, / Plej kore,<br><br>St=C3=A9phane =
Veyret</div></div></div>

--000000000000b80ea70601e16609--

