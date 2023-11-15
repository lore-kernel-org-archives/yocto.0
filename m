Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42626C48BD7
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 14:30:50 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.14447.1700058642386585527
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 06:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QMKh3C0f;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: hassanchattarki@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so90993111fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 06:30:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700058640; x=1700663440; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7+GN8ujAC4N7WXyC/f2qG+z6mMG+jiEyNJHBEvmz8GE=;
        b=QMKh3C0fKS4D53wxIPdOdKmy3Adk9j8wpvC7UEQr3oQiyPQuxwK/fdkOceBpz1kOwV
         ALiWtOe/1YQ2bJhz8vy7MJjlKy9sgWlg7AFkwzFj2jOaSonNojtnRtspB73kDq8X/JKm
         nfya8KJtiYTyW31yi1Ratt/cBvUcVcIfkLyegd/4TzouVBEMOuIrNKS9E7j8YoYbTe9s
         iT1w7sIlwe/8ZlVunfE9jFrMUWijciXy0NRZcnaOPqBCeVjHec+3xj/2vooEmPecnnf0
         jcGqxFH6uIZDLLj5Ezw7grcwGaTSGPinaRLYKrwO5QAK2m/G8ouAANZvnCtXDXJ4wH+N
         fYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700058640; x=1700663440;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7+GN8ujAC4N7WXyC/f2qG+z6mMG+jiEyNJHBEvmz8GE=;
        b=OD9VlEu/Ro26xxMbtaIsCHeI3lbaE9U/OYMD4eIPzdiQltz/NU62046IFhNEj6Y+zm
         AuMf1/wtWtJDXwK4w8Nk+Ox0LbdVhwrcKC3L0On41FIr2FTubSCc8PezD4YtIP1ZATBn
         skCs7W8nvU6C3Qc/pES0+y9pU6PZhk84OzOGyX1yL5QXGclxnc/8933JPziw77GwwEzM
         evHj+FtH0y0r4e1F/YhQZbR2+PMe65DqZWqLUQKhVQ5eaeaDjREz5rE2+63OVWwSWHzj
         927DXbL3V9aOPjpR48ucgnqFnbUryK9YM/V+tB84QwOjutV36059MKNR3CzBav7jCbvG
         0Ybw==
X-Gm-Message-State: AOJu0YyJcRuLqtAs4GN0DjgGDF4V/qYxbuJw+Ddo/xzr/6yDxx2Ucbb9
	kXpNW4e89DRgVZJmpwkPNTKVpbAI2xnmEUeFgdh9MRFqRyw=
X-Google-Smtp-Source: AGHT+IGxKTCoW0ViI0wTN/C594lWZRI1QD1AN/9QNq5BcWfEFxWTw64V3gZ/FOZhGSmwgj/2CSNW6iAsc8x9ni6NVQU=
X-Received: by 2002:a2e:b614:0:b0:2c5:19ab:7270 with SMTP id
 r20-20020a2eb614000000b002c519ab7270mr3889216ljn.35.1700058639763; Wed, 15
 Nov 2023 06:30:39 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 15 Nov 2023 20:00:28 +0530
Message-ID: <CAPJWBngxGvF2GGWinMcBfTPCU_uNzADRirJ-zKdOJ9T59uATyA@mail.gmail.com>
Subject: Installing entire directory in my image file
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000520ba1060a31bfe5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 14:30:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61702

--000000000000520ba1060a31bfe5
Content-Type: text/plain; charset="UTF-8"

Hi guys,
So I want to load an entire directory in my image file but I am unable to
achieve two things.
1) Load the entire directory in my image.
2) Unable to load any file, directory in my /home/root directory.

*My recipe file is:*
DESCRIPTION =  "Testing firmware for Edge 3 hubs"

LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

#SRC_URI = "file://Edge \
#          file://Edge/package.json \
#          file://Edge/node_modules"
SRC_URI = "file://Edge \
           file://server "
#file://z_WaveManufacturerSpecific.json

S = "${WORKDIR}"
#INSANE_SKIP:${PN} += "arch:/Edge/node_modules/"
#INSANE_SKIP:${PN} = "file-rdeps"


do_configure(){
        :
}

do_compile(){
        :
}
INHERIT_remove = "pseudo"

do_install() {
    install -d ${D}${bindir}/Edge
    install -d ${D}${bindir}/server
    install -d ${D}/home/root/Edge
    install -d ${D}/home/root/server

    cp -r ${WORKDIR}/Edge/* ${D}${bindir}/Edge/
    cp -r ${WORKDIR}/server/* ${D}${bindir}/server/
    cp -r ${WORKDIR}/Edge/* ${D}/home/root/Edge/
    cp -r ${WORKDIR}/server/* ${D}/home/root/server/
}
FILES_${PN} = "${bindir}"
FILES_${PN} = "/home/root"

*I get the error message:*
ERROR: lib32-testing-firmware-0.1-r0 do_install: Execution of
'/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/run.do_install.2725327'
failed with exit code 134
ERROR: Logfile of failure stored in:
/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/log.do_install.2725327
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-core/glibc/glibc_2.31.bb:do_populate_sysroot',
'/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot',
'virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/gcc/gcc-runtime_9.3.bb:do_populate_sysroot',
'virtual:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
'virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/gcc/gcc-cross_9.3.bb:do_populate_sysroot',
'virtual:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/patch/patch_2.7.6.bb:
do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['lib32-glibc',
'quilt-native', 'lib32-gcc-runtime', 'pseudo-native',
'lib32-gcc-cross-arm', 'patch-native', 'lib32-linux-libc-headers',
'lib32-libgcc', 'automake-native', 'texinfo-dummy-native',
'gnu-config-native', 'flex-native', 'lib32-binutils-cross-arm',
'libmpc-native', 'mpfr-native', 'gmp-native', 'zlib-native',
'libtool-native', 'xz-native', 'autoconf-native', 'attr-native',
'gettext-minimal-native', 'm4-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| abort()ing pseudo client by server request. See
https://wiki.yoctoproject.org/wiki/Pseudo_Abort for more details on this.
| Check logfile:
/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/pseudo//pseudo.log
| Aborted (core dumped)
| WARNING: exit code 134 from a shell command.
| ERROR: Execution of
'/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/run.do_install.2725327'
failed with exit code 134
ERROR: Task
(virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze/recipes-example/testing-firmware/testing-firmware_0.1.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 6321 tasks of which 6317 didn't need to be
rerun and 1 failed.

--000000000000520ba1060a31bfe5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>So I want to load an entire director=
y in my image file but I am unable to achieve two things.</div><div>1) Load=
 the entire=C2=A0directory in my image.</div><div>2) Unable to load any fil=
e, directory in my /home/root directory.</div><div><br></div><div><b>My rec=
ipe file is:</b></div><div>DESCRIPTION =3D =C2=A0&quot;Testing firmware for=
 Edge 3 hubs&quot;<br><br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =
=3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7=
b4f302&quot;<br><br>#SRC_URI =3D &quot;file://Edge \<br># =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0file://Edge/package.json \<br># =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://Edge/node_modules&quot;<br>SRC_URI =3D &quot;file://Edge \=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://server &quot;<br>#file:=
//z_WaveManufacturerSpecific.json<br><br>S =3D &quot;${WORKDIR}&quot;<br>#I=
NSANE_SKIP:${PN} +=3D &quot;arch:/Edge/node_modules/&quot;<br>#INSANE_SKIP:=
${PN} =3D &quot;file-rdeps&quot;<br><br><br>do_configure(){<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 :<br>}<br><br>do_compile(){<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 :<br>}<br>INHERIT_remove =3D &quot;pseudo&quot;<br><br>do_install() {<b=
r>=C2=A0 =C2=A0 install -d ${D}${bindir}/Edge<br>=C2=A0 =C2=A0 install -d $=
{D}${bindir}/server<br>=C2=A0 =C2=A0 install -d ${D}/home/root/Edge<br>=C2=
=A0 =C2=A0 install -d ${D}/home/root/server<br><br>=C2=A0 =C2=A0 cp -r ${WO=
RKDIR}/Edge/* ${D}${bindir}/Edge/<br>=C2=A0 =C2=A0 cp -r ${WORKDIR}/server/=
* ${D}${bindir}/server/<br>=C2=A0 =C2=A0 cp -r ${WORKDIR}/Edge/* ${D}/home/=
root/Edge/<br>=C2=A0 =C2=A0 cp -r ${WORKDIR}/server/* ${D}/home/root/server=
/<br>}<br>FILES_${PN} =3D &quot;${bindir}&quot;<br>FILES_${PN} =3D &quot;/h=
ome/root&quot;<br></div><div><br></div><div><b>I get the error message:</b>=
</div><div>ERROR: lib32-testing-firmware-0.1-r0 do_install: Execution of &#=
39;/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-testing-firmware/0.1-r0/temp/run.do_install.2725327&#39; failed with =
exit code 134<br>ERROR: Logfile of failure stored in: /Yocto_sdk/yocto_sdk/=
tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0=
.1-r0/temp/log.do_install.2725327<br>Log data follows:<br>| DEBUG: Executin=
g python function extend_recipe_sysroot<br>| NOTE: Direct dependencies are =
[&#39;virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-core/gl=
ibc/glibc_2.31.bb:do_populate_sysroot&#39;, &#39;/Yocto_sdk/yocto_sdk/poky/=
meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot&#39;, =
&#39;virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools=
/gcc/gcc-runtime_9.3.bb:do_populate_sysroot&#39;, &#39;virtual:native:/Yoct=
o_sdk/yocto_sdk/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate=
_sysroot&#39;, &#39;virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/r=
ecipes-devtools/gcc/gcc-cross_9.3.bb:do_populate_sysroot&#39;, &#39;virtual=
:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/patch/patch_2.7.6.b=
b:do_populate_sysroot&#39;]<br>| NOTE: Installed into sysroot: []<br>| NOTE=
: Skipping as already exists in sysroot: [&#39;lib32-glibc&#39;, &#39;quilt=
-native&#39;, &#39;lib32-gcc-runtime&#39;, &#39;pseudo-native&#39;, &#39;li=
b32-gcc-cross-arm&#39;, &#39;patch-native&#39;, &#39;lib32-linux-libc-heade=
rs&#39;, &#39;lib32-libgcc&#39;, &#39;automake-native&#39;, &#39;texinfo-du=
mmy-native&#39;, &#39;gnu-config-native&#39;, &#39;flex-native&#39;, &#39;l=
ib32-binutils-cross-arm&#39;, &#39;libmpc-native&#39;, &#39;mpfr-native&#39=
;, &#39;gmp-native&#39;, &#39;zlib-native&#39;, &#39;libtool-native&#39;, &=
#39;xz-native&#39;, &#39;autoconf-native&#39;, &#39;attr-native&#39;, &#39;=
gettext-minimal-native&#39;, &#39;m4-native&#39;]<br>| DEBUG: Python functi=
on extend_recipe_sysroot finished<br>| DEBUG: Executing shell function do_i=
nstall<br>| abort()ing pseudo client by server request. See <a href=3D"http=
s://wiki.yoctoproject.org/wiki/Pseudo_Abort">https://wiki.yoctoproject.org/=
wiki/Pseudo_Abort</a> for more details on this.<br>| Check logfile: /Yocto_=
sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-test=
ing-firmware/0.1-r0/pseudo//pseudo.log<br>| Aborted (core dumped)<br>| WARN=
ING: exit code 134 from a shell command.<br>| ERROR: Execution of &#39;/Yoc=
to_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-t=
esting-firmware/0.1-r0/temp/run.do_install.2725327&#39; failed with exit co=
de 134<br>ERROR: Task (virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-bla=
ze/recipes-example/testing-firmware/testing-firmware_0.1.bb:do_install) fai=
led with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 6321 tasks=
 of which 6317 didn&#39;t need to be rerun and 1 failed.<br></div></div>

--000000000000520ba1060a31bfe5--

