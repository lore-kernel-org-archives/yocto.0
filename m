Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC55C41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 22:13:22 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.8397.1703023995918720593
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 14:13:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AwFtNTs+;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: bremenpl@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50e34a72660so3843581e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 14:13:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703023994; x=1703628794; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=04nwwgkU0YvgfPVvy2HCdZAuqtPs7sm/RhGKdq0EHxE=;
        b=AwFtNTs+i8c/+GBkDXfaoBeP07Ai3MXJjEH5Pqh1Gf/y5TcoO0dbpzPzA5No3pXXmx
         toqfkm1xg+Yf9DqAC9QnQ7/ydAoDyi9vPuAt9HVNJrmEbpGUB5LXIF/bI/OYtFG2eRI+
         Uw9ZuGZ6Xmt1xcuaid+ifJQ/ccZYfrkaS2+K1G8ejKYvfC++nipSZYCmm5VZDl79/6Xc
         YGs50cEBU0ObFdvfavlPUxuW2A/pgoSxWm5E7k4fGc+eAN8QnF8W2Splsc6CvhJ4tuVz
         Fane5emfBPBNngn0xMtKWNBMdNuSygvFf5AodWCqO7O6M3+hGRUKtsiCGYguwo4k8ALw
         GVmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703023994; x=1703628794;
        h=mime-version:user-agent:reply-to:message-id:date:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=04nwwgkU0YvgfPVvy2HCdZAuqtPs7sm/RhGKdq0EHxE=;
        b=NXMQ6dfEKtFQQEGnJrcIQQX4BlZn85jPCOxFDG3AyYLWcExtPe+kbJXkEG92IboVRk
         N+wnVBU2Ng7oJFtvezHtA/X5EcNMQoWQKQa0dtonPrMp+W3S2C1OcFfLUYoMUN1sX4RF
         KiaMV1cjXL6q6EzpyN4Z83j2suQz+Lcdba9RN0FVL4IL4Rv586ojsbvWSFQIKH5Xclwj
         COEGq5Bx9IpSUcoNOMf77uWhm0mMWxuQy+2V5lb1J5UtXYpYKWFFX1sbA1X3OH05/d+P
         L6bn0YdQb9X1N1JwmEFzA+FUY1R46gCkwNZVxVO6X00nY6PgSPYXipR51JOMO9ZZz4hW
         egUA==
X-Gm-Message-State: AOJu0YxzCu6jFmIxu/ib3c/JAfZjUwcNA3JjDd/0o6EvH9pzFq1oCEKN
	NUtXwV56bNrhNU2HExQ1baGTLRuraxQ=
X-Google-Smtp-Source: AGHT+IFPRDtMzupp8UmCWFcxO2RjBikE13jprmIxf3l/f29mX9GrPufak4O4lAjp5N1KvQ0Nuju0DA==
X-Received: by 2002:ac2:5e35:0:b0:50e:35e5:f22a with SMTP id o21-20020ac25e35000000b0050e35e5f22amr1997530lfg.16.1703023993164;
        Tue, 19 Dec 2023 14:13:13 -0800 (PST)
Received: from [192.168.7.144] (eqj153.neoplus.adsl.tpnet.pl. [83.20.77.153])
        by smtp.gmail.com with ESMTPSA id b5-20020a056512024500b0050e3dd037d7sm537075lfo.7.2023.12.19.14.13.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Dec 2023 14:13:12 -0800 (PST)
From: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Build failure for BBB and meta-ti
Date: Tue, 19 Dec 2023 22:13:11 +0000
Message-Id: <emd7b14cf2-53cb-4710-8252-5cc92482b242@4639c37b.com>
Reply-To: =?utf-8?q?=c5=81ukasz=20Przenios=c5=82o?= <bremenpl@gmail.com>
User-Agent: eM_Client/9.2.2157.0
MIME-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------=_MBBB9FBDF4-C255-4739-B381-4DE8E7B60268"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 22:13:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61993

--------=_MBBB9FBDF4-C255-4739-B381-4DE8E7B60268
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello,
I am trying to build an image for BeagleBone Black with the meta-ti=20
layer. The issue I am experiencing is that there seems to be a hash=20
mismatch...?
lukasz@vmks:~/udemy-yocto/src/build_meta-ti$ bitbake core-image-minimal=20
-cdo_image_wic -Sprintdiff
Loading cache: 100% |#########################################| Time:=20
0:00:00
Loaded 1848 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.0.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "beaglebone"
DISTRO               =3D "poky"
DISTRO_VERSION       =3D "4.0.15"
TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard"
TARGET_FPU           =3D "hard"
meta
meta-poky
meta-yocto-bsp       =3D=20
"kirkstone:755632c2fcab43aa05cdcfa529727064b045073c"
meta-arm-toolchain
meta-arm
meta-arm-bsp         =3D=20
"kirkstone:b187fb9232ca0a6b5f8f90b4715958546fc41d73"
meta-ti-bsp
meta-ti-extras       =3D=20
"kirkstone:5769fcfb036661a3ceaeb8f90d8a9928e3d29199"

Initialising tasks: 100% |####################################| Time:=20
0:00:00
The differences between the current build and any cached tasks start at=20
the following tasks:
/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/core-image-minim=
al.bb:do_image_qa
NOTE: Reparsing files to collect dependency data
ERROR: When reparsing=20
/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/core-image-minim=
al.bb:do_image_wic,=20
the basehash value changed from=20
d11841956060b42aa99150309c51fb3ac4e6bbdd17e705e1083668f698a12dfd to=20
2e5b75db51e585a1d7c18f7c83b00c5473065bf815c7a2da6f80a8891baf62d9. The=20
metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake core-image-minimal -cdo_image_wic -Snone
ERROR: Then:
ERROR: $ bitbake core-image-minimal -cdo_image_wic -Sprintdiff

ERROR: Bitbake's cached basehash does not match the one we just=20
generated=20
(/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/core-image-mini=
mal.bb:do_image_wic)!
ERROR: The mismatched hashes were=20
d11841956060b42aa99150309c51fb3ac4e6bbdd17e705e1083668f698a12dfd and=20
2e5b75db51e585a1d7c18f7c83b00c5473065bf815c7a2da6f80a8891baf62d9
ERROR: Taskhash mismatch=20
9b31731e0891fd8255161ee44002d6281e78ec9e69f83d7b1cee66e45bd7f1b0 versus=20
20416886ec964a8949452ada4677c2761648b73d08f3c5c4539b3c219433c877 for=20
/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/core-image-minim=
al.bb:do_image_wic
Writing locked sigs to=20
/home/lukasz/udemy-yocto/src/build_meta-ti/locked-sigs.inc

Summary: There were 8 ERROR messages, returning a non-zero exit code.

I tried running bitbake with the suggested commands, but did not get any=20
further info. I do get that there is a hash mismatch, but cannot figure=20
out how to debug this further. I am on kirkstone on all of the repos=20
(poky, meta-ti and meta-arm):

lukasz@vmks:~/udemy-yocto/src/build_meta-ti$ bitbake-layers show-layers =20
     NOTE: Starting bitbake server...
layer                 path                                      priority
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
meta                  /home/lukasz/udemy-yocto/src/poky/meta    5
meta-poky             /home/lukasz/udemy-yocto/src/poky/meta-poky  5
meta-yocto-bsp        /home/lukasz/udemy-yocto/src/poky/meta-yocto-bsp =20
5
meta-arm-toolchain   =20
/home/lukasz/udemy-yocto/src/meta-arm/meta-arm-toolchain  5
meta-arm              /home/lukasz/udemy-yocto/src/meta-arm/meta-arm  5
meta-arm-bsp          /home/lukasz/udemy-yocto/src/meta-arm/meta-arm-bsp=20
  5
meta-ti-bsp           /home/lukasz/udemy-yocto/src/meta-ti/meta-ti-bsp =20
6
meta-ti-extras       =20
/home/lukasz/udemy-yocto/src/meta-ti/meta-ti-extras  6

I have manually added the last 5 layers from the above list. I wanted to=20
use meta-ti, which needed meta-arm-bsm and so on.

I would appreciate all feedback in trying to resolve and understand the=20
issue.

--
=C5=81ukasz Przenios=C5=82o

--------=_MBBB9FBDF4-C255-4739-B381-4DE8E7B60268
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head>

<style id=3D"css_styles">=20
blockquote.cite { margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px;=
 padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; padding=
-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: center; '], li[s=
tyle=3D'text-align: right;'], li[style=3D'text-align: right; '] {  list-sty=
le-position: inside;}
body { font-family: Verdana; font-size: 12pt; }
.quote { margin-left: 1em; margin-right: 1em; border-left: 5px #ebebeb soli=
d; padding-left: 0.3em; }

 </style>
</head>
<body><div>Hello,</div><div>I am trying to build an image for BeagleBone Bl=
ack with the meta-ti layer. The issue I am experiencing is that there seems =
to be a hash mismatch...?</div><div>
</div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10pt;">lu=
kasz@vmks:~/udemy-yocto/src/build_meta-ti$ bitbake core-image-minimal -cdo_=
image_wic -Sprintdiff
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">Loading cache: 100% |#########################################| Time:=
 0:00:00
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">Loaded 1848 entries from dependency cache.
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">NOTE: Resolving any missing task queue dependencies
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;"><br /></font></div><div><font face=3D"Consolas" size=3D"2" style=3D"fo=
nt-size: 10pt;">Build Configuration:
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">BB_VERSION=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =3D "2.0.0"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">BUILD_SYS=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=3D "x86_=
64-linux"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">NATIVELSBSTRING=C2=A0 =C2=A0=C2=A0 =C2=A0=3D "universal"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">TARGET_SYS=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =3D "arm-poky-=
linux-gnueabi"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">MACHINE=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =3D=
 "beaglebone"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">DISTRO=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=
=A0=3D "poky"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">DISTRO_VERSION=C2=A0 =C2=A0=C2=A0 =C2=A0 =3D "4.0.15"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">TUNE_FEATURES=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =3D "arm armv7a vfp thum=
b neon callconvention-hard"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">TARGET_FPU=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =3D "hard"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-poky
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-yocto-bsp=C2=A0 =C2=A0=C2=A0 =C2=A0 =3D "kirkstone:755632c2fcab43=
aa05cdcfa529727064b045073c"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm-toolchain
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm-bsp=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=3D "kirkstone:b187=
fb9232ca0a6b5f8f90b4715958546fc41d73"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-ti-bsp
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-ti-extras=C2=A0 =C2=A0=C2=A0 =C2=A0 =3D "kirkstone:5769fcfb036661=
a3ceaeb8f90d8a9928e3d29199"
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;"><br /></font></div><div><font face=3D"Consolas" size=3D"2" style=3D"fo=
nt-size: 10pt;">Initialising tasks: 100% |#################################=
###| Time: 0:00:00
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">The differences between the current build and any cached tasks start a=
t the following tasks:
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/core-image-=
minimal.bb:do_image_qa
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">NOTE: Reparsing files to collect dependency data
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: When reparsing /home/lukasz/udemy-yocto/src/poky/meta/recipes-c=
ore/images/core-image-minimal.bb:do_image_wic, the basehash value changed f=
rom d11841956060b42aa99150309c51fb3ac4e6bbdd17e705e1083668f698a12dfd to 2e5=
b75db51e585a1d7c18f7c83b00c5473065bf815c7a2da6f80a8891baf62d9. The metadata =
is not deterministic and this needs to be fixed.
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: The following commands may help:
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: $ bitbake core-image-minimal -cdo_image_wic -Snone
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: Then:
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: $ bitbake core-image-minimal -cdo_image_wic -Sprintdiff
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;"><br /></font></div><div><font face=3D"Consolas" size=3D"2" style=3D"fo=
nt-size: 10pt;">ERROR: Bitbake's cached basehash does not match the one we=
 just generated (/home/lukasz/udemy-yocto/src/poky/meta/recipes-core/images/=
core-image-minimal.bb:do_image_wic)!
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: The mismatched hashes were d11841956060b42aa99150309c51fb3ac4e6=
bbdd17e705e1083668f698a12dfd and 2e5b75db51e585a1d7c18f7c83b00c5473065bf815=
c7a2da6f80a8891baf62d9
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">ERROR: Taskhash mismatch 9b31731e0891fd8255161ee44002d6281e78ec9e69f83=
d7b1cee66e45bd7f1b0 versus 20416886ec964a8949452ada4677c2761648b73d08f3c5c4=
539b3c219433c877 for /home/lukasz/udemy-yocto/src/poky/meta/recipes-core/im=
ages/core-image-minimal.bb:do_image_wic
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">Writing locked sigs to /home/lukasz/udemy-yocto/src/build_meta-ti/lock=
ed-sigs.inc
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;"><br /></font></div><div><font face=3D"Consolas" size=3D"2" style=3D"fo=
nt-size: 10pt;">Summary: There were 8 ERROR messages, returning a non-zero=
 exit code.
</font></div><div><br /></div><div>I tried running bitbake with the suggest=
ed commands, but did not get any further info. I do get that there is a has=
h mismatch, but cannot figure out how to debug this further. I am on kirkst=
one on all of the repos (poky, meta-ti and meta-arm):</div><div><br /></div=
><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10pt;">lukasz@=
vmks:~/udemy-yocto/src/build_meta-ti$ bitbake-layers show-layers=C2=A0 =C2=
=A0=C2=A0 =C2=A0NOTE: Starting bitbake server...
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">layer=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=
=C2=A0 path=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=
=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =
=C2=A0=C2=A0 =C2=A0=C2=A0 priority
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=
=C2=A0 =C2=A0/home/lukasz/udemy-yocto/src/poky/meta=C2=A0 =C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-poky=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0 /home/lu=
kasz/udemy-yocto/src/poky/meta-poky=C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-yocto-bsp=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 /home/lukasz/udemy-yoct=
o/src/poky/meta-yocto-bsp=C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm-toolchain=C2=A0 =C2=A0 /home/lukasz/udemy-yocto/src/meta-arm/=
meta-arm-toolchain=C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 /ho=
me/lukasz/udemy-yocto/src/meta-arm/meta-arm=C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-arm-bsp=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0 /home/lukasz/udemy=
-yocto/src/meta-arm/meta-arm-bsp=C2=A0 5
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-ti-bsp=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 /home/lukasz/=
udemy-yocto/src/meta-ti/meta-ti-bsp=C2=A0 6
</font></div><div><font face=3D"Consolas" size=3D"2" style=3D"font-size: 10=
pt;">meta-ti-extras=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 /home/lukasz/udemy-yoct=
o/src/meta-ti/meta-ti-extras=C2=A0 6</font></div><div><br /></div>
<div>I have manually added the last 5 layers from the above list. I wanted=
 to use meta-ti, which needed meta-arm-bsm and so on.</div><div><br /></div>=
<div>I would appreciate all feedback in trying to resolve and understand th=
e issue.=C2=A0</div><div><br /></div><div id=3D"signature_old" style=3D"cle=
ar:both">--<div>=C5=81ukasz Przenios=C5=82o</div></div><div><br /></div>
</body></html>
--------=_MBBB9FBDF4-C255-4739-B381-4DE8E7B60268--


