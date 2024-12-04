Return-Path: <posinaaravind0205@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01347E7716D
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 05:35:51 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web10.7354.1733290548705205276
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2024 21:35:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gcjWngPU;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: posinaaravind0205@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-21561af95c3so32316235ad.3
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 21:35:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733290548; x=1733895348; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ebHCOUiPWX3vm7dwLod3Dwc92D6N29kiGQnLjgedXao=;
        b=gcjWngPUFiR9ddvrIPOa5bWhJfof0+K4FctbifnC/QkdbpCFeY/TU8WFIQ2QPqOlSp
         awfmt5HykrkGAk4GMMpcphBD5gSPA5If703dNG2+eVEdf3JwQJkWWFfvl+MybFtD7Ckf
         0m9QgtRYcNJL7KcYd+UBnBptKjfRws+2rBwcxufutFhdR4hJ8yM+RsUKXTyKc8UhoLEm
         JPKaBezg/Hx4uNDumR7hoqaqdm1GlQ1xw/JE5E+HU4Y42E/I81GnC035zfHpK850zCES
         CbM67RzHfcJ88Hjw6pHCj9LEJW+WZJV3QCm8MiypJ001Aat5VvqNPM0BWSXFB/XzAk/C
         jycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733290548; x=1733895348;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebHCOUiPWX3vm7dwLod3Dwc92D6N29kiGQnLjgedXao=;
        b=TSbkAk6jOgEFXOMrC6O1lyyZDG1BePK7mlU0C9O8tO+NVxDTwWXrGigg5ZxdXKnxcF
         f3bFXF3kikar8KbO28XOx8y0L9KzsX3tKrLrPaFG46u2ErW1a9c5jfIBJ8bZuNrjExbi
         3kY0VlZD53jqnoY1d/oBnubYjxomJ2xWXotI6y9ND4QNExGLW1w2YLLmzGTDu0AcSvLx
         vPRNi97fjdHsEZAq+xp/bWP5iQm56xW+ra5SoCjhegC+HJY1bfF5mE2XbZmvyhZXRKrl
         qsEHr840dhiRdP9YXMuDFdq1hzCt6pjcncxJeZcPmPVFbPRFGGzKvVsyxXFGiueNmxDz
         ainA==
X-Gm-Message-State: AOJu0YzGVFMKmRrtSdnmW6Fhwc3iBfulepDesLkm18Kxrcysd9GCpuDS
	8/2FM2X9eVe06td1SdHG+s/feIR4fjnlrKHP3i8ep05qghA0Kerf//tSKxJmxIJPBn0CrI+om/f
	S0Y2zRlM+iWUT9QZNRQKUXhKjwmgpdUJu
X-Gm-Gg: ASbGncuDpZzHSHOeWX7eiovnW50CSNf6OXtAZOpW0/zXt8i6pdtxznNmTdH9arsbJGE
	WhYRIeSyWDy0TSGGdaaEr0tqyJUIgqg==
X-Google-Smtp-Source: AGHT+IFR+g8VcrNEeni5knBMin0mtnWv4RTbuTwkj3ACAwi5LpHcMn5XpYdsOqallrRLjxGDhnrgQ3jY49VAUvxA5Hg=
X-Received: by 2002:a17:902:cec6:b0:215:a172:5fb9 with SMTP id
 d9443c01a7336-215bd14189fmr85005245ad.48.1733290547695; Tue, 03 Dec 2024
 21:35:47 -0800 (PST)
MIME-Version: 1.0
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
In-Reply-To: <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
From: aravind posina <posinaaravind0205@gmail.com>
Date: Wed, 4 Dec 2024 11:05:36 +0530
Message-ID: <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
Subject: Re: [yocto] Backporting in Yocto
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000635a0e06286b272f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 05:35:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64395

--000000000000635a0e06286b272f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all
can you help me out from the below error.

ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
ERROR: backports-cypress-5.15.58-r0 do_compile:
ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_se=
gin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_=
compile.60669',
1, None, None)
ERROR: Logfile of failure stored in:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.60669
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: make -j 4
KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboar=
d-segin-imx6ul-7/kernel-source
KERNEL_PATH=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboa=
rd-segin-imx6ul-7/kernel-source
KERNEL_VERSION=3D5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1
CC=3Darm-phytec-linux-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=3Dbf=
d
-fmacro-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboa=
rd_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=3D/usr/=
src/debug/backports-cypress/5.15.58-r0

 -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phybo=
ard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=3D/usr=
/src/debug/backports-cypress/5.15.58-r0

 -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phybo=
ard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/recipe=
-sysroot=3D

 -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phybo=
ard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/recipe=
-sysroot-native=3D
 -fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-share=
d/phyboard-segin-imx6ul-7/kernel-source=3D/usr/src/kernel
LD=3Darm-phytec-linux-gnueabi-ld.bfd   AR=3Darm-phytec-linux-gnueabi-ar
 O=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-=
imx6ul-7/kernel-build-artifacts
KBUILD_EXTRA_SYMBOLS=3D
| Generating local configuration database from kernel ... done.
| make[5]: 'conf' is up to date.
| .config:1552:warning: symbol value 'm' invalid for CRYPTO_GF128MUL
| .config:1561:warning: symbol value 'm' invalid for CRYPTO_GCM
| .config:1563:warning: symbol value 'm' invalid for CRYPTO_CTR
| .config:1570:warning: symbol value 'm' invalid for CRYPTO_GHASH
| .config:1612:warning: symbol value 'm' invalid for CRC_CCITT
| *
| * Restart config...
| *
| *
| * Backports from "Linux" "v5.15.58-2024_0118-0-g1e8368db6e12" (backports
"v5.15.58-1-0-g42a95ce7")
| *
| Compile the package with debug info (BACKPORTED_DEBUG_INFO) [N/y/?] n
| Build all compat code (BPAUTO_USERSEL_BUILD_ALL) [N/y/?] n
| cfg80211 - wireless configuration API (CFG80211) [M/n/?] m
|   nl80211 testmode command (NL80211_TESTMODE) [N/y/?] n
|   enable developer warnings (CFG80211_DEVELOPER_WARNINGS) [N/y/?] n
|   cfg80211 certification onus (CFG80211_CERTIFICATION_ONUS) [N/y/?] n
|   enable powersave by default (CFG80211_DEFAULT_PS) [Y/n/?] y
|   cfg80211 DebugFS entries (CFG80211_DEBUGFS) [N/y/?] n
|   support CRDA (CFG80211_CRDA_SUPPORT) [Y/n/?] y
|   cfg80211 wireless extensions compatibility (CFG80211_WEXT) [N/y/?] (NEW=
)
| Error in reading or end of file.
|
| #
| # configuration written to .config
| #
| Building backport-include/backport/autoconf.h ... done.
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
|   CC [M]
 /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-ph=
ytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_=
0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/dri=
vers/net/wireless/broadcom/brcm80211/brcmfmac/chip.o
| make[10]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmfmac/cfg80211.o]
Error 1
| make[10]: *** Waiting for unfinished jobs....
| arm-phytec-linux-gnueabi-gcc: error: missing argument to
'-falign-functions=3D'
| make[10]: ***
[/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:297:
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless/broadcom/brcm80211/brcmfmac/chip.o]
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
compile.60669',
1, None, None)
ERROR: Task
(/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kern=
el/backports/backports-cypress_5.15.58.bb:do_compile)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 670 tasks of which 664 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
NOTE: Writing buildhistory took: 2 seconds

Summary: 1 task failed:

/home/phytec/sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kerne=
l/backports/backports-cypress_5.15.58.bb:
do_compile
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

On Fri, Nov 29, 2024 at 3:45=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de>
wrote:

> Hi Aravind,
>
> On 11/29/24 7:31 AM, aravind posina via lists.yoctoproject.org wrote:
> > You don't often get email from posinaaravind0205=3D
> gmail.com@lists.yoctoproject.org. Learn why this is important<
> https://aka.ms/LearnAboutSenderIdentification>
> > Hello All,
> >
> > I'm working on yocto to develop a layer .In that customer wants some ou=
t
> source wifi related module files . From yocto I'm tring to build the .ko
> files into the rootfs . But whenever i try to compile my recipe i'm getti=
ng
> some error. in this can can anyone help out for this one . does i get kno=
w
> how to do backporting through yocto.below i'll mention the error cases.
> >
> >
> > ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
> > ERROR: backports-cypress-5.15.58-r0 do_compile:
> ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_=
segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.d=
o_compile.2980720',
> 1, None, None)
> > ERROR: Logfile of failure stored in:
> /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-p=
hytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.298072=
0
> > Log data follows:
> > | DEBUG: Executing shell function do_compile
> > | NOTE: make -j 4
> KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phybo=
ard-segin-imx6ul-7/kernel-source
> KLIB=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-se=
gin-imx6ul-7/kernel-source
> KLIB_BUILD=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phybo=
ard-segin-imx6ul-7/kernel-build-artifacts
> modules
>
> This is the command that bitbake runs for you in do_compile task to
> build the modules, i.e. essentially `make modules`.
>
> > | make[4]: 'conf' is up to date.
> > | #
> > | # configuration written to .config
> > | #
> > | Building backport-include/backport/autoconf.h ... done.
> > | make[3]: *** No rule to make target 'modules'.  Stop.
>
> and this complains that your Makefile doesn't have a modules target, so
> `make modules` isn't possible.
>
> So this is likely an issue with an improper Makefile, but without code
> (the makefile/tarball you want to build and the recipe) we cannot tell
> much more than what's there.
>
> Cheers,
> Quentin
>

--000000000000635a0e06286b272f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all<br>can you help me out from the below error.<br><br=
>ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed<br>ERROR=
: backports-cypress-5.15.58-r0 do_compile: ExecutionError(&#39;/home/phytec=
/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gn=
ueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.60669&#39;, 1, None,=
 None)<br>ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel/y=
octo/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-=
cypress/5.15.58-r0/temp/log.do_compile.60669<br>Log data follows:<br>| DEBU=
G: Executing shell function do_compile<br>| NOTE: make -j 4 KERNEL_SRC=3D/h=
ome/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-=
7/kernel-source KERNEL_PATH=3D/home/phytec/sanava-kernel/yocto/build/tmp/wo=
rk-shared/phyboard-segin-imx6ul-7/kernel-source KERNEL_VERSION=3D5.10.76-bs=
p-yocto-ampliphy-i.mx6ul-pd21.2.1 CC=3Darm-phytec-linux-gnueabi-gcc =C2=A0-=
mno-thumb-interwork -marm -fuse-ld=3Dbfd -fmacro-prefix-map=3D/home/phytec/=
sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnu=
eabi/backports-cypress/5.15.58-r0=3D/usr/src/debug/backports-cypress/5.15.5=
8-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/=
phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=
=3D/usr/src/debug/backports-cypress/5.15.58-r0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-fdebug-prefix-map=3D/home/=
phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-li=
nux-gnueabi/backports-cypress/5.15.58-r0/recipe-sysroot=3D =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-fdebug-prefi=
x-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6=
ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/recipe-sysroot-nativ=
e=3D =C2=A0-fdebug-prefix-map=3D/home/phytec/sanava-kernel/yocto/build/tmp/=
work-shared/phyboard-segin-imx6ul-7/kernel-source=3D/usr/src/kernel LD=3Dar=
m-phytec-linux-gnueabi-ld.bfd =C2=A0 AR=3Darm-phytec-linux-gnueabi-ar =C2=
=A0O=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segi=
n-imx6ul-7/kernel-build-artifacts KBUILD_EXTRA_SYMBOLS=3D<br>| Generating l=
ocal configuration database from kernel ... done.<br>| make[5]: &#39;conf&#=
39; is up to date.<br>| .config:1552:warning: symbol value &#39;m&#39; inva=
lid for CRYPTO_GF128MUL<br>| .config:1561:warning: symbol value &#39;m&#39;=
 invalid for CRYPTO_GCM<br>| .config:1563:warning: symbol value &#39;m&#39;=
 invalid for CRYPTO_CTR<br>| .config:1570:warning: symbol value &#39;m&#39;=
 invalid for CRYPTO_GHASH<br>| .config:1612:warning: symbol value &#39;m&#3=
9; invalid for CRC_CCITT<br>| *<br>| * Restart config...<br>| *<br>| *<br>|=
 * Backports from &quot;Linux&quot; &quot;v5.15.58-2024_0118-0-g1e8368db6e1=
2&quot; (backports &quot;v5.15.58-1-0-g42a95ce7&quot;)<br>| *<br>| Compile =
the package with debug info (BACKPORTED_DEBUG_INFO) [N/y/?] n<br>| Build al=
l compat code (BPAUTO_USERSEL_BUILD_ALL) [N/y/?] n<br>| cfg80211 - wireless=
 configuration API (CFG80211) [M/n/?] m<br>| =C2=A0 nl80211 testmode comman=
d (NL80211_TESTMODE) [N/y/?] n<br>| =C2=A0 enable developer warnings (CFG80=
211_DEVELOPER_WARNINGS) [N/y/?] n<br>| =C2=A0 cfg80211 certification onus (=
CFG80211_CERTIFICATION_ONUS) [N/y/?] n<br>| =C2=A0 enable powersave by defa=
ult (CFG80211_DEFAULT_PS) [Y/n/?] y<br>| =C2=A0 cfg80211 DebugFS entries (C=
FG80211_DEBUGFS) [N/y/?] n<br>| =C2=A0 support CRDA (CFG80211_CRDA_SUPPORT)=
 [Y/n/?] y<br>| =C2=A0 cfg80211 wireless extensions compatibility (CFG80211=
_WEXT) [N/y/?] (NEW)<br>| Error in reading or end of file.<br>| <br>| #<br>=
| # configuration written to .config<br>| #<br>| Building backport-include/=
backport/autoconf.h ... done.<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-=
kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/ba=
ckports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backport=
s-v5.15.58-2024_0118-module-src/v5.15.58-backports/compat/main.o<br>| arm-p=
hytec-linux-gnueabi-gcc: error: missing argument to &#39;-falign-functions=
=3D&#39;<br>| make[7]: *** [/usr/src/linux-headers-5.15.0-126-generic/scrip=
ts/Makefile.build:297: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyb=
oard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypre=
ss-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/=
v5.15.58-backports/compat/main.o] Error 1<br>| make[6]: *** [/usr/src/linux=
-headers-5.15.0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava=
-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/b=
ackports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backpor=
ts-v5.15.58-2024_0118-module-src/v5.15.58-backports/compat] Error 2<br>| ma=
ke[6]: *** Waiting for unfinished jobs....<br>| =C2=A0 CC [M] =C2=A0/home/p=
hytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-lin=
ux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cyp=
ress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/net/wireles=
s/core.o<br>| arm-phytec-linux-gnueabi-gcc: error: missing argument to &#39=
;-falign-functions=3D&#39;<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-ker=
nel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backp=
orts-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v=
5.15.58-2024_0118-module-src/v5.15.58-backports/net/wireless/sysfs.o<br>| m=
ake[7]: *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.bui=
ld:297: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6=
ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.5=
8-2024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backpo=
rts/net/wireless/core.o] Error 1<br>| make[7]: *** Waiting for unfinished j=
obs....<br>| arm-phytec-linux-gnueabi-gcc: error: missing argument to &#39;=
-falign-functions=3D&#39;<br>| make[7]: *** [/usr/src/linux-headers-5.15.0-=
126-generic/scripts/Makefile.build:297: /home/phytec/sanava-kernel/yocto/bu=
ild/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress=
/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024=
_0118-module-src/v5.15.58-backports/net/wireless/sysfs.o] Error 1<br>| make=
[6]: *** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:=
560: /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_=
7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2=
024_0118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports=
/net/wireless] Error 2<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/=
yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports=
-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15=
.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom/b=
rcm80211/brcmutil/utils.o<br>| arm-phytec-linux-gnueabi-gcc: error: missing=
 argument to &#39;-falign-functions=3D&#39;<br>| make[10]: *** [/usr/src/li=
nux-headers-5.15.0-126-generic/scripts/Makefile.build:297: /home/phytec/san=
ava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueab=
i/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-back=
ports-v5.15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless=
/broadcom/brcm80211/brcmutil/utils.o] Error 1<br>| make[10]: *** Waiting fo=
r unfinished jobs....<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/y=
octo/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-=
cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.=
58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom/br=
cm80211/brcmutil/d11.o<br>| arm-phytec-linux-gnueabi-gcc: error: missing ar=
gument to &#39;-falign-functions=3D&#39;<br>| make[10]: *** [/usr/src/linux=
-headers-5.15.0-126-generic/scripts/Makefile.build:297: /home/phytec/sanava=
-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/b=
ackports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backpor=
ts-v5.15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/br=
oadcom/brcm80211/brcmutil/d11.o] Error 1<br>| make[9]: *** [/usr/src/linux-=
headers-5.15.0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava-=
kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/ba=
ckports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backport=
s-v5.15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/bro=
adcom/brcm80211/brcmutil] Error 2<br>| make[9]: *** Waiting for unfinished =
jobs....<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sanava-kernel/yocto/build/tm=
p/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.=
58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-=
module-src/v5.15.58-backports/drivers/net/wireless/broadcom/brcm80211/brcmf=
mac/cfg80211.o<br>| arm-phytec-linux-gnueabi-gcc: error: missing argument t=
o &#39;-falign-functions=3D&#39;<br>| =C2=A0 CC [M] =C2=A0/home/phytec/sana=
va-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi=
/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backp=
orts-v5.15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/=
broadcom/brcm80211/brcmfmac/chip.o<br>| make[10]: *** [/usr/src/linux-heade=
rs-5.15.0-126-generic/scripts/Makefile.build:297: /home/phytec/sanava-kerne=
l/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backpor=
ts-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.=
15.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom=
/brcm80211/brcmfmac/cfg80211.o] Error 1<br>| make[10]: *** Waiting for unfi=
nished jobs....<br>| arm-phytec-linux-gnueabi-gcc: error: missing argument =
to &#39;-falign-functions=3D&#39;<br>| make[10]: *** [/usr/src/linux-header=
s-5.15.0-126-generic/scripts/Makefile.build:297: /home/phytec/sanava-kernel=
/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backport=
s-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.1=
5.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom/=
brcm80211/brcmfmac/chip.o] Error 1<br>| make[9]: *** [/usr/src/linux-header=
s-5.15.0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava-kernel=
/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backport=
s-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.1=
5.58-2024_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom/=
brcm80211/brcmfmac] Error 2<br>| make[8]: *** [/usr/src/linux-headers-5.15.=
0-126-generic/scripts/Makefile.build:560: /home/phytec/sanava-kernel/yocto/=
build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypre=
ss/5.15.58-r0/cypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-20=
24_0118-module-src/v5.15.58-backports/drivers/net/wireless/broadcom/brcm802=
11] Error 2<br>| make[7]: *** [/usr/src/linux-headers-5.15.0-126-generic/sc=
ripts/Makefile.build:560: /home/phytec/sanava-kernel/yocto/build/tmp/work/p=
hyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/cy=
press-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-s=
rc/v5.15.58-backports/drivers/net/wireless/broadcom] Error 2<br>| make[6]: =
*** [/usr/src/linux-headers-5.15.0-126-generic/scripts/Makefile.build:560: =
/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phy=
tec-linux-gnueabi/backports-cypress/5.15.58-r0/cypress-fmac-v5.15.58-2024_0=
118/cypress-backports-v5.15.58-2024_0118-module-src/v5.15.58-backports/driv=
ers/net/wireless] Error 2<br>| make[5]: *** [/usr/src/linux-headers-5.15.0-=
126-generic/Makefile:1910: /home/phytec/sanava-kernel/yocto/build/tmp/work/=
phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/c=
ypress-fmac-v5.15.58-2024_0118/cypress-backports-v5.15.58-2024_0118-module-=
src/v5.15.58-backports] Error 2<br>| make[4]: *** [Makefile:226: __sub-make=
] Error 2<br>| make[3]: *** [Makefile.build:13: modules] Error 2<br>| make[=
2]: *** [Makefile.real:88: modules] Error 2<br>| make[1]: *** [Makefile:43:=
 modules] Error 2<br>| make: *** [Makefile:30: default] Error 2<br>| ERROR:=
 oe_runmake failed<br>| WARNING: exit code 1 from a shell command.<br>| ERR=
OR: ExecutionError(&#39;/home/phytec/sanava-kernel/yocto/build/tmp/work/phy=
board_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp=
/run.do_compile.60669&#39;, 1, None, None)<br>ERROR: Task (/home/phytec/san=
ava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kernel/backports/back=
ports-cypress_5.15.58.bb:do_compile) failed with exit code &#39;1&#39;<br>N=
OTE: Tasks Summary: Attempted 670 tasks of which 664 didn&#39;t need to be =
rerun and 1 failed.<br>NOTE: Writing buildhistory<br>NOTE: Writing buildhis=
tory took: 2 seconds<br><br>Summary: 1 task failed:<br>=C2=A0 /home/phytec/=
sanava-kernel/yocto/sources/meta-sanava/meta-bsp/recipes-kernel/backports/b=
ackports-cypress_5.15.58.bb:do_compile<br>Summary: There was 1 WARNING mess=
age shown.<br>Summary: There were 2 ERROR messages shown, returning a non-z=
ero exit code.<br></div><br><div class=3D"gmail_quote gmail_quote_container=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 29, 2024 at 3:45=E2=80=
=AFPM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@cherry.de">quenti=
n.schulz@cherry.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi Aravind,<br>
<br>
On 11/29/24 7:31 AM, aravind posina via <a href=3D"http://lists.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrot=
e:<br>
&gt; You don&#39;t often get email from posinaaravind0205=3D<a href=3D"mail=
to:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoct=
oproject.org</a>. Learn why this is important&lt;<a href=3D"https://aka.ms/=
LearnAboutSenderIdentification" rel=3D"noreferrer" target=3D"_blank">https:=
//aka.ms/LearnAboutSenderIdentification</a>&gt;<br>
&gt; Hello All,<br>
&gt; <br>
&gt; I&#39;m working on yocto to develop a layer .In that customer wants so=
me out source wifi related module files . From yocto I&#39;m tring to build=
 the .ko files into the rootfs . But whenever i try to compile my recipe i&=
#39;m getting some error. in this can can anyone help out for this one . do=
es i get know how to do backporting through yocto.below i&#39;ll mention th=
e error cases.<br>
&gt; <br>
&gt; <br>
&gt; ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed<br>
&gt; ERROR: backports-cypress-5.15.58-r0 do_compile: ExecutionError(&#39;/h=
ome/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phyte=
c-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.2980720&#3=
9;, 1, None, None)<br>
&gt; ERROR: Logfile of failure stored in: /home/phytec/sanava-kernel/yocto/=
build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypre=
ss/5.15.58-r0/temp/log.do_compile.2980720<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing shell function do_compile<br>
&gt; | NOTE: make -j 4 KERNEL_SRC=3D/home/phytec/sanava-kernel/yocto/build/=
tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source KLIB=3D/home/phytec/s=
anava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-sou=
rce KLIB_BUILD=3D/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phy=
board-segin-imx6ul-7/kernel-build-artifacts modules<br>
<br>
This is the command that bitbake runs for you in do_compile task to <br>
build the modules, i.e. essentially `make modules`.<br>
<br>
&gt; | make[4]: &#39;conf&#39; is up to date.<br>
&gt; | #<br>
&gt; | # configuration written to .config<br>
&gt; | #<br>
&gt; | Building backport-include/backport/autoconf.h ... done.<br>
&gt; | make[3]: *** No rule to make target &#39;modules&#39;.=C2=A0 Stop.<b=
r>
<br>
and this complains that your Makefile doesn&#39;t have a modules target, so=
 <br>
`make modules` isn&#39;t possible.<br>
<br>
So this is likely an issue with an improper Makefile, but without code <br>
(the makefile/tarball you want to build and the recipe) we cannot tell <br>
much more than what&#39;s there.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000635a0e06286b272f--

