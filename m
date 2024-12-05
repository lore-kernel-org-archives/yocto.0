Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84AB5E7716C
	for <webhook@archiver.kernel.org>; Thu,  5 Dec 2024 09:54:32 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.6943.1733392468088186419
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2024 01:54:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YoMbLIAH;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6d87ceb58a0so6081716d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 01:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733392467; x=1733997267; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sASwvnRWkSjyuaBF4oM1lx00XYmgpYC2WuJht3Bl8WY=;
        b=YoMbLIAHK876kSAHyhCwUrd4696Pk2i9npyRKT4Xhy5Lw71yUVhDDP66ONb9ClURUC
         E8o1zOePFn6IFs1W7n0JpMVE6Gf4xfq96VvpnV/yB6Yu57JtQidnxy5qVbCQbhMe2chw
         09G0EZUu0oZlpV6ZFLC3rJfc71K+0fFbseW1LYzC61R6fHiTtF2h3rZ4i8ZMipy7w1Da
         0rK22V1rgVtEwtN/A6O16OkFypyjFxO8F2/Ye5nmi/3+zY0xjEqpEYmc6HeMEEsdFM+G
         GDljCHegR85CvYicRp3MdHFmFPFZCIEhz4RPie6EI/pnlMIvvGx9G2Aill8ARMp7hupx
         n3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733392467; x=1733997267;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sASwvnRWkSjyuaBF4oM1lx00XYmgpYC2WuJht3Bl8WY=;
        b=qjTdVgKQ6IeClbIT80ONK4uLNb3kw7q6uVAcK4KjRA3jhjVxDXdO0HYIejsT6G/2F7
         hxDg3BRxC7+zc8dkvBNwGPvtfARV0hEbnir5sXbVDkJENHnWesqUKd6k0/1YEvgWD6i7
         mDJ0ty9psvlLj9Sjp5YPYo7rzEuJVkNJYEqtGxteyYdoFc7cQ5OwTMXq2mYhP7hotRj4
         Cha+mk7TqHN0DuNdEca8/SzqIAlXiDRH4XQbbUr+Y1wxMEYcHVXXuet+15xJpcTyVKna
         fhwNEM0tNihqFVR2sL1FbikxyphnHbZQdlscQwiZh5kXLETNawVo/A0tvz6EYuNToRu/
         +D/g==
X-Gm-Message-State: AOJu0YxECKwaWBLnDgQfqYizbJIVP6S1lModla1dUriyAfFNuhv44A2J
	QtxpigF6rfcgWb+5+Mm0v3pmO2jeuod0gLecZ/c/+neppZh45qesOzuQtV8pFHfYdgutn7d58sB
	q3vNrrk677Qd/X3SvgzVl+JrZgOQ+E+pe
X-Gm-Gg: ASbGncsx8eFBgtMKQQs6M53p0OpO6yWc8gA+CdlOhHWxhHuVs4T5cZDiwcFtWB84hfb
	molv36693o9wu9StwV3OCBi0VzkGhdr5fHA==
X-Google-Smtp-Source: AGHT+IE2SNESjDjt3CVr9ByaKNw942PChdifQMy//jdriCE3Myu/rekhr96PYMZcpMhKp64lFw9SrgCqBx7bUQmVOeE=
X-Received: by 2002:a17:90a:d450:b0:2ee:d96a:5831 with SMTP id
 98e67ed59e1d1-2ef01259f11mr14986037a91.30.1733392048770; Thu, 05 Dec 2024
 01:47:28 -0800 (PST)
MIME-Version: 1.0
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de> <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
 <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de>
In-Reply-To: <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de>
From: aravind posina <posinaaravind0205@gmail.com>
Date: Thu, 5 Dec 2024 15:17:17 +0530
Message-ID: <CALvuYrnJKAC7OPAD=LZCmNKMSH2nMT5rCiSWhYM3VDP7qd93UQ@mail.gmail.com>
Subject: Re: [yocto] Backporting in Yocto
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000052d2f6062882c9f5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Dec 2024 09:54:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64404

--00000000000052d2f6062882c9f5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Building backport-include/backport/autoconf.h ... done.
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/com=
pat/main.o
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[7]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/comp=
at/main.o]
Error 1
| make[6]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/comp=
at]
Error 2
| make[6]: *** Waiting for unfinished jobs....
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net=
/wireless/core.o
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net=
/wireless/sysfs.o
| make[7]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net/=
wireless/core.o]
Error 1
| make[7]: *** Waiting for unfinished jobs....
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[7]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net/=
wireless/sysfs.o]
Error 1
| make[6]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net/=
wireless]
Error 2
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/dri=
vers/net/wireless/broadcom/brcm80211/brcmutil/utils.o
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[10]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmutil/utils.o]
Error 1
| make[10]: *** Waiting for unfinished jobs....
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/dri=
vers/net/wireless/broadcom/brcm80211/brcmutil/d11.o
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[10]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmutil/d11.o]
Error 1
| make[9]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmutil]
Error 2
| make[9]: *** Waiting for unfinished jobs....
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.o
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[10]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.o]
Error 1
| make[9]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmfmac]
Error 2
| make[8]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211]
Error 2
| make[7]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom]
Error 2
| make[6]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless]
Error 2
| make[5]: *** [/usr/src/linux-headers-5.15.0-126-generic/Makefile:1910:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports]
Error 2
| make[4]: *** [Makefile:226: __sub-make] Error 2
| make[3]: *** [Makefile.build:13: modules] Error 2
| make[2]: *** [Makefile.real:88: modules] Error 2
| make[1]: *** [Makefile:43: modules] Error 2
| make: *** [Makefile:30: default] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR:
ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_se=
gin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_=
compile.621697',
1, None, None)
ERROR: Task
(/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kern=
el/backports/backports-cypress_5.15.58.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 670 tasks of which 662 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds

Summary: 1 task failed:

/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kerne=
l/backports/backports-cypress_5.15.58.bb:
do_compile
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Above one is the actual error for that one . can you help me to resolve the
issuse.

thanks & Regards
Aravind P


On Wed, Dec 4, 2024 at 3:16=E2=80=AFPM Quentin Schulz <quentin.schulz@cherr=
y.de>
wrote:

> Hi,
>
> On 12/4/24 6:35 AM, aravind posina wrote:
> > Hi all
> > can you help me out from the below error.
> >
> > ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
> > ERROR: backports-cypress-5.15.58-r0 do_compile:
> >
> ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_=
segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.d=
o_compile.60669',
> > 1, None, None)
> > ERROR: Logfile of failure stored in:
> >
> /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-p=
hytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.60669
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 4
> >
> KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phybo=
ard-segin-imx6ul-7/kernel-source
> >
> KERNEL_PATH=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyb=
oard-segin-imx6ul-7/kernel-source
> > KERNEL_VERSION=3D5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1
> > CC=3Darm-phytec-linux-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=
=3Dbfd
> >
> -fmacro-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phyb=
oard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=3D/us=
r/src/debug/backports-cypress/5.15.58-r0
> >
> >
>  -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phy=
board_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=3D/u=
sr/src/debug/backports-cypress/5.15.58-r0
> >
> >
>  -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phy=
board_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/reci=
pe-sysroot=3D
> >
> >
>  -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phy=
board_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/reci=
pe-sysroot-native=3D
> >
>  -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-sha=
red/phyboard-segin-imx6ul-7/kernel-source=3D/usr/src/kernel
> > LD=3Darm-phytec-linux-gnueabi-ld.bfd   AR=3Darm-phytec-linux-gnueabi-ar
> >
>  O=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segi=
n-imx6ul-7/kernel-build-artifacts
> > KBUILD_EXTRA_SYMBOLS=3D
> > | Generating local configuration database from kernel ... done.
> > | make[5]: 'conf' is up to date.
> > | .config:1552:warning: symbol value 'm' invalid for CRYPTO_GF128MUL
> > | .config:1561:warning: symbol value 'm' invalid for CRYPTO_GCM
> > | .config:1563:warning: symbol value 'm' invalid for CRYPTO_CTR
> > | .config:1570:warning: symbol value 'm' invalid for CRYPTO_GHASH
> > | .config:1612:warning: symbol value 'm' invalid for CRC_CCITT
>
> This doesn't look too good.
>
> > | *
> > | * Restart config...
> > | *
> > | *
> > | * Backports from "Linux" "v5.15.58-2024_0118-0-g1e8368db6e12"
> (backports
> > "v5.15.58-1-0-g42a95ce7")
> > | *
> > | Compile the package with debug info (BACKPORTED_DEBUG_INFO) [N/y/?] n
> > | Build all compat code (BPAUTO_USERSEL_BUILD_ALL) [N/y/?] n
> > | cfg80211 - wireless configuration API (CFG80211) [M/n/?] m
> > |   nl80211 testmode command (NL80211_TESTMODE) [N/y/?] n
> > |   enable developer warnings (CFG80211_DEVELOPER_WARNINGS) [N/y/?] n
> > |   cfg80211 certification onus (CFG80211_CERTIFICATION_ONUS) [N/y/?] n
> > |   enable powersave by default (CFG80211_DEFAULT_PS) [Y/n/?] y
> > |   cfg80211 DebugFS entries (CFG80211_DEBUGFS) [N/y/?] n
> > |   support CRDA (CFG80211_CRDA_SUPPORT) [Y/n/?] y
> > |   cfg80211 wireless extensions compatibility (CFG80211_WEXT) [N/y/?]
> (NEW)
> > | Error in reading or end of file.
>
> And this is probably the issue? I assume this is waiting for some
> interactive session so the user can say yes or no and nothing is input
> as part of the build so it fails or is stuck there until it times out.
>
> This is likely due to using a defconfig/.config that was made for one
> kernel version being used for another kernel version.
>
> Cheers,
> Quentin
>

--00000000000052d2f6062882c9f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Building backport-include/backport/autoconf.h ... done.<br=
>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyb=
oard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypre=
ss-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/=
v5.15.58-backports/compat/main.o<br>| arm-phytec-linux-gnueabi-gcc: error: =
missing argument to &#39;-falign-functions=3D&#39;<br>| make[7]: *** [/usr/=
src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297: /home/phyt=
ec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-=
gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypres=
s-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/compat/main.o]=
 Error 1<br>| make[6]: *** [/usr/src/linux-headers-5.15.0-126-generic/scrip=
ts/Makefile.build:560: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyb=
oard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypre=
ss-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/=
v5.15.58-backports/compat] Error 2<br>| make[6]: *** Waiting for unfinished=
 jobs....<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/t=
mp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15=
.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118=
-module-src/v5.15.58-backports/net/wireless/core.o<br>| arm-phytec-linux-gn=
ueabi-gcc: error: missing argument to &#39;-falign-functions=3D&#39;<br>| =
=C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboar=
d_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-=
fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.=
15.58-backports/net/wireless/sysfs.o<br>| make[7]: *** [/usr/src/linux-head=
ers-5.15.0-126-generic/scripts/Makefile.build:297: /home/phytec/sanava-kern=
el/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backpo=
rts-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5=
.15.58-2024_0118-module-src/v5.15.58-backports/net/wireless/core.o] Error 1=
<br>| make[7]: *** Waiting for unfinished jobs....<br>| arm-phytec-linux-gn=
ueabi-gcc: error: missing argument to &#39;-falign-functions=3D&#39;<br>| m=
ake[7]: *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.bui=
ld:297: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6=
ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.5=
8-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backpo=
rts/net/wireless/sysfs.o] Error 1<br>| make[6]: *** [/usr/src/linux-headers=
-5.15.0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava-kernel/=
yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports=
-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15=
.58-2024_0118-module-src/v5.15.58-backports/net/wireless] Error 2<br>| =C2=
=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_s=
egin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fma=
c-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.=
58-backports/drivers/net/wireless/broadcom/brcm80211/brcmutil/utils.o<br>| =
arm-phytec-linux-gnueabi-gcc: error: missing argument to &#39;-falign-funct=
ions=3D&#39;<br>| make[10]: *** [/usr/src/linux-headers-5.15.0-126-generic/=
scripts/Makefile.build:297: /home/phytec/sanava-kernel/yocto/build/tmp/work=
/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/=
cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module=
-src/v5.15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmutil/ut=
ils.o] Error 1<br>| make[10]: *** Waiting for unfinished jobs....<br>| =C2=
=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_s=
egin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fma=
c-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.=
58-backports/drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.o<br>| ar=
m-phytec-linux-gnueabi-gcc: error: missing argument to &#39;-falign-functio=
ns=3D&#39;<br>| make[10]: *** [/usr/src/linux-headers-5.15.0-126-generic/sc=
ripts/Makefile.build:297: /home/phytec/sanava-kernel/yocto/build/tmp/work/p=
hyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cy=
press-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-s=
rc/v5.15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmutil/d11.=
o] Error 1<br>| make[9]: *** [/usr/src/linux-headers-5.15.0-126-generic/scr=
ipts/Makefile.build:560: /home/phytec/sanava-kernel/yocto/build/tmp/work/ph=
yboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cyp=
ress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-sr=
c/v5.15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmutil] Erro=
r 2<br>| make[9]: *** Waiting for unfinished jobs....<br>| =C2=A0 CC [M] =
=C2=A0/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul=
_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-=
2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backport=
s/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.o<br>| arm-phyt=
ec-linux-gnueabi-gcc: error: missing argument to &#39;-falign-functions=3D&=
#39;<br>| make[10]: *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/=
Makefile.build:297: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboar=
d_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-=
fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.=
15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.o=
] Error 1<br>| make[9]: *** [/usr/src/linux-headers-5.15.0-126-generic/scri=
pts/Makefile.build:560: /home/phytec/sanava-kernel/yocto/build/tmp/work/phy=
board_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypr=
ess-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src=
/v5.15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmfmac] Error=
 2<br>| make[8]: *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Mak=
efile.build:560: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_s=
egin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fma=
c-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.=
58-backports/drivers/net/wireless/broadcom/brcm80211] Error 2<br>| make[7]:=
 *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560:=
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/dri=
vers/net/wireless/broadcom] Error 2<br>| make[6]: *** [/usr/src/linux-heade=
rs-5.15.0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava-kerne=
l/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backpor=
ts-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.=
15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless] Error 2=
<br>| make[5]: *** [/usr/src/linux-headers-5.15.0-126-generic/Makefile:1910=
: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-p=
hytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024=
_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports] E=
rror 2<br>| make[4]: *** [Makefile:226: __sub-make] Error 2<br>| make[3]: *=
** [Makefile.build:13: modules] Error 2<br>| make[2]: *** [Makefile.real:88=
: modules] Error 2<br>| make[1]: *** [Makefile:43: modules] Error 2<br>| ma=
ke: *** [Makefile:30: default] Error 2<br>| ERROR: oe_runmake failed<br>| W=
ARNING: exit code 1 from a shell command.<br>| ERROR: ExecutionError(&#39;/=
home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phyt=
ec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.621697&#3=
9;, 1, None, None)<br>ERROR: Task (/home/phytec/sanava-kernel/yocto/sources=
/meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15.58.bb=
:do_compile) failed with exit code &#39;1&#39;<br>NOTE: Tasks Summary: Atte=
mpted 670 tasks of which 662 didn&#39;t need to be rerun and 1 failed.<br>N=
OTE: Writing buildhistory<br>NOTE: Writing buildhistory took: 2 seconds<br>=
<br>Summary: 1 task failed:<br>=C2=A0 /home/phytec/sanava-kernel/yocto/sour=
ces/meta-sanava/meta-bsp/recipes-kernel/backports/backports-cypress_5.15.58=
.bb:do_compile<br>Summary: There were 2 WARNING messages shown.<br>Summary:=
 There were 2 ERROR messages shown, returning a non-zero exit code.<br><br>=
Above one is the actual error for that one . can you help me to resolve the=
 issuse.<br><br>thanks &amp; Regards<br>Aravind P<div><br></div></div><br><=
div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"g=
mail_attr">On Wed, Dec 4, 2024 at 3:16=E2=80=AFPM Quentin Schulz &lt;<a hre=
f=3D"mailto:quentin.schulz@cherry.de">quentin.schulz@cherry.de</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On 12/4/24 6:35 AM, aravind posina wrote:<br>
&gt; Hi all<br>
&gt; can you help me out from the below error.<br>
&gt; <br>
&gt; ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed<br>
&gt; ERROR: backports-cypress-5.15.58-r0 do_compile:<br>
&gt; ExecutionError(&#39;/home/phytec/sanava-kernel/yocto/build/tmp/work/ph=
yboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/tem=
p/run.do_compile.60669&#39;,<br>
&gt; 1, None, None)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_=
7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.606=
69<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 4<br>
&gt; KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/ph=
yboard-segin-imx6ul-7/kernel-source<br>
&gt; KERNEL_PATH=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/p=
hyboard-segin-imx6ul-7/kernel-source<br>
&gt; KERNEL_VERSION=3D5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1<br>
&gt; CC=3Darm-phytec-linux-gnueabi-gcc=C2=A0 -mno-thumb-interwork -marm -fu=
se-ld=3Dbfd<br>
&gt; -fmacro-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/p=
hyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=3D=
/usr/src/debug/backports-cypress/5.15.58-r0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/buil=
d/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5=
.15.58-r0=3D/usr/src/debug/backports-cypress/5.15.58-r0<br>
&gt; <br>
&gt;=C2=A0 =C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/buil=
d/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5=
.15.58-r0/recipe-sysroot=3D<br>
&gt; <br>
&gt;=C2=A0 =C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/buil=
d/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5=
.15.58-r0/recipe-sysroot-native=3D<br>
&gt;=C2=A0 =C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/buil=
d/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source=3D/usr/src/kernel<b=
r>
&gt; LD=3Darm-phytec-linux-gnueabi-ld.bfd=C2=A0 =C2=A0AR=3Darm-phytec-linux=
-gnueabi-ar<br>
&gt;=C2=A0 =C2=A0O=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared=
/phyboard-segin-imx6ul-7/kernel-build-artifacts<br>
&gt; KBUILD_EXTRA_SYMBOLS=3D<br>
&gt; | Generating local configuration database from kernel ... done.<br>
&gt; | make[5]: &#39;conf&#39; is up to date.<br>
&gt; | .config:1552:warning: symbol value &#39;m&#39; invalid for CRYPTO_GF=
128MUL<br>
&gt; | .config:1561:warning: symbol value &#39;m&#39; invalid for CRYPTO_GC=
M<br>
&gt; | .config:1563:warning: symbol value &#39;m&#39; invalid for CRYPTO_CT=
R<br>
&gt; | .config:1570:warning: symbol value &#39;m&#39; invalid for CRYPTO_GH=
ASH<br>
&gt; | .config:1612:warning: symbol value &#39;m&#39; invalid for CRC_CCITT=
<br>
<br>
This doesn&#39;t look too good.<br>
<br>
&gt; | *<br>
&gt; | * Restart config...<br>
&gt; | *<br>
&gt; | *<br>
&gt; | * Backports from &quot;Linux&quot; &quot;v5.15.58-2024_0118-0-g1e836=
8db6e12&quot; (backports<br>
&gt; &quot;v5.15.58-1-0-g42a95ce7&quot;)<br>
&gt; | *<br>
&gt; | Compile the package with debug info (BACKPORTED_DEBUG_INFO) [N/y/?] =
n<br>
&gt; | Build all compat code (BPAUTO_USERSEL_BUILD_ALL) [N/y/?] n<br>
&gt; | cfg80211 - wireless configuration API (CFG80211) [M/n/?] m<br>
&gt; |=C2=A0 =C2=A0nl80211 testmode command (NL80211_TESTMODE) [N/y/?] n<br=
>
&gt; |=C2=A0 =C2=A0enable developer warnings (CFG80211_DEVELOPER_WARNINGS) =
[N/y/?] n<br>
&gt; |=C2=A0 =C2=A0cfg80211 certification onus (CFG80211_CERTIFICATION_ONUS=
) [N/y/?] n<br>
&gt; |=C2=A0 =C2=A0enable powersave by default (CFG80211_DEFAULT_PS) [Y/n/?=
] y<br>
&gt; |=C2=A0 =C2=A0cfg80211 DebugFS entries (CFG80211_DEBUGFS) [N/y/?] n<br=
>
&gt; |=C2=A0 =C2=A0support CRDA (CFG80211_CRDA_SUPPORT) [Y/n/?] y<br>
&gt; |=C2=A0 =C2=A0cfg80211 wireless extensions compatibility (CFG80211_WEX=
T) [N/y/?] (NEW)<br>
&gt; | Error in reading or end of file.<br>
<br>
And this is probably the issue? I assume this is waiting for some <br>
interactive session so the user can say yes or no and nothing is input <br>
as part of the build so it fails or is stuck there until it times out.<br>
<br>
This is likely due to using a defconfig/.config that was made for one <br>
kernel version being used for another kernel version.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--00000000000052d2f6062882c9f5--

