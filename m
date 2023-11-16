Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 843A2C47071
	for <webhook@archiver.kernel.org>; Thu, 16 Nov 2023 06:26:35 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web11.1711.1700115987835621835
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 22:26:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cxZ8MpHw;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-9c53e8b7cf4so57356666b.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 22:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700115986; x=1700720786; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=1zF6sp5N6C0PdqLjHYhUGbWsntrmRW+XlIlCpAZqtvw=;
        b=cxZ8MpHwCVSv/buw7vI/eVA1wdR9OrsnqPGQRQJiiVbcMyFCWNJEiEaR8Xd8dXrIps
         RbvNlHJEePxDQIyqa0iCHNciCInBcs+/AdHO/K1rd5kwYKtbYUN22K36fLI1rkMSUZM1
         a89969BiDz7x8eEmKwq4e9Dd1wb7EEJ4lfS8Mf64J7fIrsYbdj+F1q2/uP3DBbtIExrf
         /hSR3rfpVvf69QE3mW2o++cMhU4ZBOwGcVdCbhep7J8RJtlPLTWXumQh+A4OnBu8EJjV
         9yw7jg8tNpf74F5ByhT7xQxtQaHSL5zwZc+ywEjyUPMv+CP6wUAajg/tQmU2OaJbCkAJ
         KL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700115986; x=1700720786;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1zF6sp5N6C0PdqLjHYhUGbWsntrmRW+XlIlCpAZqtvw=;
        b=M+pVDAL2/yw5YZdkTnE3bAzHkIgql/WlWy412E2v3mvu7s9elAzHWbKMx5xLKKiiPT
         aDcBTjHSDRnReSpwqUF74vPl448ymhKxtKJy1Gs8ZInuJCELs+UXy8HzGCJ4SjpcrnwD
         oJdbeT5cdETyyMFGEbphSXDqKDntvdy3HdNdQHmMl0Thc5xC5/R4n9znXn+FkWlNyESG
         fr10STb3qAdGqW0ps4TywYMyaBh6P1msc4TbkWfvL5+orosQh6s566Q+V7y5z1Owzsex
         jrS0NAr9gPE7lHwvlkkaH/Mqb6MKCc3Izy1Y5ovYotwlBm3s//Uj1yjHHba/yrt8ZXkh
         HqYw==
X-Gm-Message-State: AOJu0YxdtFtanCMp29SsYcDgY+v+JWqgvYZ8IuwgrzFJDWxEoxRoS1g9
	9uc7jybQ+kBAt6Z96FOxQplC9p6zMTxCmPu6oSAUwL72sm8=
X-Google-Smtp-Source: AGHT+IHH8hmx/PiTgiSG2WYRLxdzpPd8jXF5dXofhWGaAkFkoOJ+86Duy/PtnizJRGhrqya6ydASMk+RETjUkahg0/c=
X-Received: by 2002:a17:906:4907:b0:9b2:b691:9b5f with SMTP id
 b7-20020a170906490700b009b2b6919b5fmr10756832ejq.41.1700115985321; Wed, 15
 Nov 2023 22:26:25 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 16 Nov 2023 11:56:14 +0530
Message-ID: <CAPJWBnhmDJyFPSCC+_tuAhqGiH8=efYRcV41keDRq+WpBeVvMg@mail.gmail.com>
Subject: install: cannot create directory: File exists
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000061d46a060a3f19b6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Nov 2023 06:26:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61706

--00000000000061d46a060a3f19b6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,
So I am trying to load node js files in my image. I am able to load the
node_modules and package.json file, but when i try to load the
directory that contains multiple js files, i get the following *error*:

ERROR: lib32-testing-firmware-0.1-r0 do_install: Execution of
'/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/li=
b32-testing-firmware/0.1-r0/temp/run.do_install.22011'
failed with exit code 1
ERROR: Logfile of failure stored in:
/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib=
32-testing-firmware/0.1-r0/temp/log.do_install.22011
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/quilt/quilt-native_0.66.b=
b:do_populate_sysroot',
'virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/gcc=
/gcc-cross_9.3.bb:do_populate_sysroot',
'virtual:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/pseudo/pseu=
do_git.bb:do_populate_sysroot',
'virtual:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/patch/patch=
_2.7.6.bb:do_populate_sysroot',
'virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/gcc=
/gcc-runtime_9.3.bb:do_populate_sysroot',
'virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-core/glibc/g=
libc_2.31.bb:
do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['quilt-native',
'lib32-gcc-cross-arm', 'pseudo-native', 'patch-native',
'lib32-gcc-runtime', 'lib32-glibc', 'lib32-linux-libc-headers',
'libmpc-native', 'mpfr-native', 'gnu-config-native', 'zlib-native',
'xz-native', 'flex-native', 'gmp-native', 'libtool-native',
'lib32-binutils-cross-arm', 'autoconf-native', 'texinfo-dummy-native',
'automake-native', 'attr-native', 'lib32-libgcc', 'gettext-minimal-native',
'm4-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
|















*install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/apiGateway.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/app.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/global.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/gpio.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/gsm.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/http.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/install.sh=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/mqtt.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/mqtt.js~=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/ota.sh=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/ota_se.sh=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/package-lock.json=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/package.json=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/udp.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/watchdog.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/wifi.js=E2=80=99:
File exists| install: cannot create directory
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/wifi.js~=E2=80=99:
File exists*
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/li=
b32-testing-firmware/0.1-r0/temp/run.do_install.22011'
failed with exit code 1
ERROR: Task
(virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze/recipes-example/tes=
ting-firmware/testing-firmware_0.1.bb:do_install)
failed with exit code '1'

*My recipe file is:*
DESCRIPTION =3D  "Testing firmware for Edge 3 hubs"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D
"file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302"

#SRC_URI =3D "file://Edge \
#          file://Edge/package.json \
#          file://Edge/node_modules"
SRC_URI =3D "file://Edge/* \
           file://Edge_modules/node_modules \
           file://Edge_modules/package.json \
           file://server/* \
           file://server_modules/node_modules \
           file://server_modules/package.json"
#file://z_WaveManufacturerSpcific.json

S =3D "${WORKDIR}"
#INSANE_SKIP:${PN} +=3D "arch:/Edge/node_modules/"
#INSANE_SKIP:${PN} =3D "file-rdeps"


do_configure(){
        :
}

do_compile(){
        :
}
INHERIT_remove =3D "pseudo"

do_install() {
    install -d ${D}${bindir}/Edge
    install -d ${D}${bindir}/server
    install -d ${D}/home/root/Edge
    install -d ${D}/home/root/server

#    cp -r ${WORKDIR}/Edge/* ${D}${bindir}/Edge/
#    cp -r ${S}/Edge/* ${D}${bindir}/Edge/
    install -d ${WORKDIR}/Edge/* ${D}${bindir}/Edge/*
    install -d ${D}${bindir}/Edge/node_modules
    install -d ${D}${bindir}/server/node_modules
    install -d ${D}${bindir}/Edge/package.json
    install -d ${D}${bindir}/server/package.json
#    cp -r ${S}/server/* ${D}${bindir}/server/
#    cp -r ${S}/Edge/* ${D}/home/root/Edge/
#    cp -r ${S}/server/* ${D}/home/root/server/
}

I have tried to use cp but it throws an abort handler error. I just
can't seem to get around this small problem.
 *Also how can I add files to the /home/root directory of the hub? *

*Regards,*
*Hassan*

--00000000000061d46a060a3f19b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0guys,<br><div>So I am trying to load node js files=
 in my image. I am able to load the node_modules and package.json file, but=
 when i try to load the directory=C2=A0that contains multiple js files, i g=
et the=C2=A0following <b>error</b>:</div><div><br></div><div>ERROR: lib32-t=
esting-firmware-0.1-r0 do_install: Execution of &#39;/Yocto_sdk/yocto_sdk/t=
mp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.=
1-r0/temp/run.do_install.22011&#39; failed with exit code 1<br>ERROR: Logfi=
le of failure stored in: /Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-poky=
mllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/temp/log.do_install.220=
11<br>Log data follows:<br>| DEBUG: Executing python function extend_recipe=
_sysroot<br>| NOTE: Direct dependencies are [&#39;/Yocto_sdk/yocto_sdk/poky=
/meta/recipes-devtools/quilt/quilt-native_0.66.bb:do_populate_sysroot&#39;,=
 &#39;virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtool=
s/gcc/gcc-cross_9.3.bb:do_populate_sysroot&#39;, &#39;virtual:native:/Yocto=
_sdk/yocto_sdk/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_=
sysroot&#39;, &#39;virtual:native:/Yocto_sdk/yocto_sdk/poky/meta/recipes-de=
vtools/patch/patch_2.7.6.bb:do_populate_sysroot&#39;, &#39;virtual:multilib=
:lib32:/Yocto_sdk/yocto_sdk/poky/meta/recipes-devtools/gcc/gcc-runtime_9.3.=
bb:do_populate_sysroot&#39;, &#39;virtual:multilib:lib32:/Yocto_sdk/yocto_s=
dk/poky/meta/recipes-core/glibc/glibc_2.31.bb:do_populate_sysroot&#39;]<br>=
| NOTE: Installed into sysroot: []<br>| NOTE: Skipping as already exists in=
 sysroot: [&#39;quilt-native&#39;, &#39;lib32-gcc-cross-arm&#39;, &#39;pseu=
do-native&#39;, &#39;patch-native&#39;, &#39;lib32-gcc-runtime&#39;, &#39;l=
ib32-glibc&#39;, &#39;lib32-linux-libc-headers&#39;, &#39;libmpc-native&#39=
;, &#39;mpfr-native&#39;, &#39;gnu-config-native&#39;, &#39;zlib-native&#39=
;, &#39;xz-native&#39;, &#39;flex-native&#39;, &#39;gmp-native&#39;, &#39;l=
ibtool-native&#39;, &#39;lib32-binutils-cross-arm&#39;, &#39;autoconf-nativ=
e&#39;, &#39;texinfo-dummy-native&#39;, &#39;automake-native&#39;, &#39;att=
r-native&#39;, &#39;lib32-libgcc&#39;, &#39;gettext-minimal-native&#39;, &#=
39;m4-native&#39;]<br>| DEBUG: Python function extend_recipe_sysroot finish=
ed<br>| DEBUG: Executing shell function do_install<br>| <b>install: cannot =
create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pok=
ymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/apiGateway.js=E2=
=80=99: File exists<br>| install: cannot create directory =E2=80=98/Yocto_s=
dk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testi=
ng-firmware/0.1-r0/Edge/app.js=E2=80=99: File exists<br>| install: cannot c=
reate directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-poky=
mllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/global.js=E2=80=99=
: File exists<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yoc=
to_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-fir=
mware/0.1-r0/Edge/gpio.js=E2=80=99: File exists<br>| install: cannot create=
 directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib=
32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/gsm.js=E2=80=99: File e=
xists<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/t=
mp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.=
1-r0/Edge/http.js=E2=80=99: File exists<br>| install: cannot create directo=
ry =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux=
-gnueabi/lib32-testing-firmware/0.1-r0/Edge/install.sh=E2=80=99: File exist=
s<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/w=
ork/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0=
/Edge/mqtt.js=E2=80=99: File exists<br>| install: cannot create directory =
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/mqtt.js~=E2=80=99: File exists<br>=
| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/a=
rmv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge=
/ota.sh=E2=80=99: File exists<br>| install: cannot create directory =E2=80=
=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-testing-firmware/0.1-r0/Edge/ota_se.sh=E2=80=99: File exists<br>| ins=
tall: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7a=
t2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge/pack=
age-lock.json=E2=80=99: File exists<br>| install: cannot create directory =
=E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gn=
ueabi/lib32-testing-firmware/0.1-r0/Edge/package.json=E2=80=99: File exists=
<br>| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/wo=
rk/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/=
Edge/udp.js=E2=80=99: File exists<br>| install: cannot create directory =E2=
=80=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnuea=
bi/lib32-testing-firmware/0.1-r0/Edge/watchdog.js=E2=80=99: File exists<br>=
| install: cannot create directory =E2=80=98/Yocto_sdk/yocto_sdk/tmp/work/a=
rmv7at2hf-neon-pokymllib32-linux-gnueabi/lib32-testing-firmware/0.1-r0/Edge=
/wifi.js=E2=80=99: File exists<br>| install: cannot create directory =E2=80=
=98/Yocto_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/=
lib32-testing-firmware/0.1-r0/Edge/wifi.js~=E2=80=99: File exists</b><br>| =
WARNING: exit code 1 from a shell command.<br>| ERROR: Execution of &#39;/Y=
octo_sdk/yocto_sdk/tmp/work/armv7at2hf-neon-pokymllib32-linux-gnueabi/lib32=
-testing-firmware/0.1-r0/temp/run.do_install.22011&#39; failed with exit co=
de 1<br>ERROR: Task (virtual:multilib:lib32:/Yocto_sdk/yocto_sdk/meta-blaze=
/recipes-example/testing-firmware/testing-firmware_0.1.bb:do_install) faile=
d with exit code &#39;1&#39;<br></div><div><br></div><div><b>My recipe file=
 is:</b></div><div>DESCRIPTION =3D =C2=A0&quot;Testing firmware for Edge 3 =
hubs&quot;<br><br>LICENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot=
;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&qu=
ot;<br><br>#SRC_URI =3D &quot;file://Edge \<br># =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0file://Edge/package.json \<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0file://Edge/node_modules&quot;<br>SRC_URI =3D &quot;file://Edge/* \<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://Edge_modules/node_modules \=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://Edge_modules/package.js=
on \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://server/* \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://server_modules/node_modules \<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0file://server_modules/package.j=
son&quot;<br>#file://z_WaveManufacturerSpcific.json<br><br>S =3D &quot;${WO=
RKDIR}&quot;<br>#INSANE_SKIP:${PN} +=3D &quot;arch:/Edge/node_modules/&quot=
;<br>#INSANE_SKIP:${PN} =3D &quot;file-rdeps&quot;<br><br><br>do_configure(=
){<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 :<br>}<br><br>do_compile(){<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 :<br>}<br>INHERIT_remove =3D &quot;pseudo&quot;<br><br>do=
_install() {<br>=C2=A0 =C2=A0 install -d ${D}${bindir}/Edge<br>=C2=A0 =C2=
=A0 install -d ${D}${bindir}/server<br>=C2=A0 =C2=A0 install -d ${D}/home/r=
oot/Edge<br>=C2=A0 =C2=A0 install -d ${D}/home/root/server<br><br># =C2=A0 =
=C2=A0cp -r ${WORKDIR}/Edge/* ${D}${bindir}/Edge/<br># =C2=A0 =C2=A0cp -r $=
{S}/Edge/* ${D}${bindir}/Edge/<br>=C2=A0 =C2=A0 install -d ${WORKDIR}/Edge/=
* ${D}${bindir}/Edge/*<br>=C2=A0 =C2=A0 install -d ${D}${bindir}/Edge/node_=
modules<br>=C2=A0 =C2=A0 install -d ${D}${bindir}/server/node_modules<br>=
=C2=A0 =C2=A0 install -d ${D}${bindir}/Edge/package.json<br>=C2=A0 =C2=A0 i=
nstall -d ${D}${bindir}/server/package.json<br># =C2=A0 =C2=A0cp -r ${S}/se=
rver/* ${D}${bindir}/server/<br># =C2=A0 =C2=A0cp -r ${S}/Edge/* ${D}/home/=
root/Edge/<br># =C2=A0 =C2=A0cp -r ${S}/server/* ${D}/home/root/server/<br>=
}<br></div><div><br></div><div>I have tried to use cp but it throws an abor=
t handler error. I just can&#39;t=C2=A0seem to get around this small proble=
m.</div><div>=C2=A0<b>Also how can I add files to the /home/root directory =
of the hub?=C2=A0</b></div><div><b><br></b></div><div><b>Regards,</b></div>=
<div><b>Hassan</b></div></div>

--00000000000061d46a060a3f19b6--

