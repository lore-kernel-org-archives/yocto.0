Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D6CEC6FD18
	for <webhook@archiver.kernel.org>; Wed, 19 Apr 2023 18:07:31 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.45401.1681927642447559244
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Apr 2023 11:07:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Lb9hT+xW;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-38bed577755so79884b6e.0
        for <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 11:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681927642; x=1684519642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z5GAWrRF+0rczY2hOnJw/dLfFT0ECCnV0JRw+Hr+5U8=;
        b=Lb9hT+xW0cM4waQnfP6RWJ/bGk554IWpSa5fDMpxF5gbjncSqK8EygDyY/HYBoWvOa
         VcyAXDbcIJ0v+VkltMT4QIKNr28xS5nxliNXn9iKEdYlGVIEKjBX2olbdobYnKubBglQ
         ObjfLKQd1mGuR0WwaDBnTQAafcr0BGSE4wpgzawA8DQU/Ks0lADXunMYf7KeESP8VE41
         ylIvcZlN1sRp7t5oacriwt4mArDY8cppUs06PNir7/fcSDrzhbGokUFtjBpIfkxDg9z/
         kwnde4IXcAesm4/KZ/ec+LAaOa6n0PaVX5Zk/bhUcQ0PzETrUYVhZ9h11OjKB/PM62SR
         NfBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681927642; x=1684519642;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z5GAWrRF+0rczY2hOnJw/dLfFT0ECCnV0JRw+Hr+5U8=;
        b=D1FGgFYj61Ng63jnsI64VlhkTiL8FXqfQhR7FF0wPijdTSGolxWVGKeIULbadr5Wg9
         p8b6RnxqsBJM1NKYrmvkXVL5BMIEbsGiTpmN97gmGkDxGVw5SalHFwoyN/FoCGE/1RPS
         l/3sV4N+evCspiRsvqrElpXRsKKeqEVZM108x0y6GZlXf5Ie+++5h+CbKgJocOy25xun
         KXArktA5FM5ErjAX6KBw94YNfxI+z47u5msWVFXyZJhfPMziumd9KrBZ6ZrEE/DZaer8
         tXvkjXcydEZ4kB1IPT7y5YVWaP6WXP1mL2ne7tJMBoRLXkE+AgoWN0rcvNHgLbVZNa9H
         KFDA==
X-Gm-Message-State: AAQBX9ewJORDViZXjs8fEWgulEhd7oPgXb5lHhWwrJbUj5MyOtLFmbiG
	ywaoeAnxA40zIWCt6dluIo4smWmz+22nmkPmCAs=
X-Google-Smtp-Source: AKy350bn0K/yjFQcywtF6azgLtmwxT1ekX7E55zlgPoH0a2XVjlcJfuoRZ50/oPBEx4o0l5IBR6nj4RrjAq1O6jnKHk=
X-Received: by 2002:aca:1a12:0:b0:384:1221:9a24 with SMTP id
 a18-20020aca1a12000000b0038412219a24mr3319885oia.27.1681927641416; Wed, 19
 Apr 2023 11:07:21 -0700 (PDT)
MIME-Version: 1.0
References: <5F3b.1681913440236245932.FIHo@lists.yoctoproject.org>
In-Reply-To: <5F3b.1681913440236245932.FIHo@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Apr 2023 11:06:55 -0700
Message-ID: <CAMKF1sq7hTTTz+H5jZfb-nAO4ibx3C1fbtnACO-NaSYFpehZHg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] - problem adding meta-qt6 SDK #qt #sdk
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Apr 2023 18:07:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59739

what is your build distro/container ? It seems a build race in gcc, I
have seen it in distant past, IIRC it was some issue with assembler on
host
but not sure if this is it.

On Wed, Apr 19, 2023 at 7:11=E2=80=AFAM Electronic Consult
<electronicconsult1@gmail.com> wrote:
>
> Hello all,
>
> I'm using dunfell with meta-raspberrypi & meta-qt6 (https://code.qt.io/yo=
cto/meta-qt6.git), v6.2.24 under the open-source license. I've successfully=
 built a simple qt6 application with the setup but now trying to build the =
SDK to support Qt6 development on the RPi.
>
> As per Qt instructions I've added:
>
> populate_sdk_qt6_base
>
> To my build but I'm getting a build error during the build of gcc-cross-a=
rm:
>
> make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspberr=
ypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
> | sed: -e expression #1, char 0: no previous regular expression
> | WARNING: exit code 1 from a shell command.
>
> Its a little cryptic so difficult to understand where to start looking.  =
I'm using KAS to configure my build & its modified from the meta-raspberryp=
i:
>
> header:
>   version: 8
>
> machine: raspberrypi4
> distro: poky
> target:
>   - core-image-base
>
> repos:
>   meta-raspberry:
>
>   poky:
>     url: https://git.yoctoproject.org/git/poky
>     refspec: dunfell
>     layers:
>       meta:
>       meta-poky:
>       meta-yocto-bsp:
>
>   meta-openembedded:
>     url: http://git.openembedded.org/meta-openembedded
>     refspec: dunfell
>     layers:
>       meta-oe:
>       meta-python:
>       meta-networking:
>       meta-perl:
>
>   meta-qt6:
>     url: https://code.qt.io/yocto/meta-qt6.git
>     refspec: origin/6.2.4
>
>   meta-test:
>     url: https://github.com/OOHehir/meta-test.git
>     refspec: origin/main
>
> bblayers_conf_header:
>   standard: |
>     POKY_BBLAYERS_CONF_VERSION =3D "2"
>     BBPATH =3D "${TOPDIR}"
>     BBFILES ?=3D ""
> local_conf_header:
>   reduce_diskspace: |
>     INHERIT +=3D "rm_work_and_downloads"
>   build_qt6_sdk: |
>     INHERIT +=3D "populate_sdk_qt6_base"
>   standard: |
>     # Added
>     DL_DIR =3D "/media/owen/yocto/meritechYocto/localCache/sstate-cache"
>     SSTATE_DIR =3D "/media/owen/yocto/meritechYocto/localCache/sstate-cac=
he"
>     BB_SIGNATURE_HANDLER =3D "OEEquivHash"
>     BB_HASHSERVE =3D "auto"
>     BB_HASHSERVE_UPSTREAM =3D "hashserv.yocto.io:8687"
>     SSTATE_MIRRORS ?=3D "file://.* https://sstate.yoctoproject.org/all/PA=
TH;downloadfilename=3DPATH"
>
>     CONF_VERSION =3D "1"
>     PACKAGE_CLASSES =3D "package_rpm"
>     SDKMACHINE =3D "x86_64"
>     USER_CLASSES =3D "buildstats image-mklibs image-prelink"
>     PATCHRESOLVE =3D "noop"
>
>     IMAGE_INSTALL +=3D "qt-test qtbase"
>     IMAGE_INSTALL +=3D "helloworld"
>
>     DISTRO_FEATURES_remove =3D "ptest"
>
>   rpi-specific: |
>     DISABLE_RPI_BOOT_LOGO =3D "1"
>
>   debug-tweaks: |
>     EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-dropbear"
>   diskmon: |
>     BB_DISKMON_DIRS =3D "\
>         STOPTASKS,${TMPDIR},1G,100K \
>         STOPTASKS,${DL_DIR},1G,100K \
>         STOPTASKS,${SSTATE_DIR},1G,100K \
>         STOPTASKS,/tmp,100M,100K \
>         ABORT,${TMPDIR},100M,1K \
>         ABORT,${DL_DIR},100M,1K \
>         ABORT,${SSTATE_DIR},100M,1K \
>         ABORT,/tmp,10M,1K"
>
>
> Full build failure is below, any pointer appreciated,
>
> Regards,
>
> Owen
>
> ERROR: gcc-cross-arm-9.5.0-r0 do_compile: Execution of '/media/owen/yocto=
/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9=
.5.0-r0/temp/run.do_compile.3969185' failed with exit code 1
> ERROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/meta=
-raspberrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/log.do=
_compile.3969185
> Log data follows:
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bi=
t-64', 'x86_64-linux', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 configure-gcc
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/t=
estsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/te=
stsuite'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | NOTE: make -j 4 TARGET-gcc=3Dchecksum-options all-gcc
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/intl'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/intl'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_6=
4-linux/libiberty'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/t=
estsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty/te=
stsuite'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrac=
e'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrac=
e'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_6=
4-linux/libiberty/testsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64=
-linux/libiberty/testsuite'
> | true  DO=3Dall multi-do # make
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64=
-linux/libiberty'
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace=
'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libbacktrace=
'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libdecnumbe=
r'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libdecnumber=
'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/lto-plugin'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/fixincludes=
'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libcpp'
> | test -f config.h || (rm -f stamp-h1 && make stamp-h1)
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/fixincludes'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/libcpp'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_6=
4-linux/fixincludes'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64=
-linux/fixincludes'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_6=
4-linux/libcpp'
> | test -f config.h || (rm -f stamp-h1 && make stamp-h1)
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/build-x86_64=
-linux/libcpp'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
> | make[1]: 'checksum-options' is up to date.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/build/gcc'
> | sed: -e expression #1, char 0: no previous regular expression
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/b=
uild/tmp/work/x86_64-linux/gcc-cross-arm/9.5.0-r0/temp/run.do_compile.39691=
85' failed with exit code 1
> ERROR: Task (/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../po=
ky/meta/recipes-devtools/gcc/gcc-cross_9.5.bb:do_compile) failed with exit =
code '1'
> ERROR: gcc-crosssdk-x86_64-pokysdk-linux-9.5.0-r0 do_compile: Execution o=
f '/media/owen/yocto/meritechYocto/meta-raspberrypi/build/tmp/work/x86_64-l=
inux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/temp/run.do_compile.3969186=
' failed with exit code 1
> ERROR: Logfile of failure stored in: /media/owen/yocto/meritechYocto/meta=
-raspberrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/=
9.5.0-r0/temp/log.do_compile.3969186
> Log data follows:
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bi=
t-64', 'x86_64-linux', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4 configure-gcc
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libiberty'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libiberty/testsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libiberty/testsuite'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/lto-plugin'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/lto-plugin'
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/lto-plugin'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/lto-plugin'
> | NOTE: make -j 4 TARGET-gcc=3Dchecksum-options all-gcc
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libiberty'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libiberty/testsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libiberty/testsuite'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/intl'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/intl'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libbacktrace'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/build-x86_64-linux/libiberty'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libbacktrace'
> | true  DO=3Dall multi-do # make
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libbacktrace'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libbacktrace'
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/build-x86_64-linux/libiberty/testsuite'
> | make[2]: Nothing to be done for 'all'.
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/build-x86_64-linux/libiberty/testsuite'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libdecnumber'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libdecnumber'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/build-x86_64-linux/libiberty'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/lto-plugin'
> | make  all-am
> | make[2]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/lto-plugin'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/build-x86_64-linux/fixincludes'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/build-x86_64-linux/fixincludes'
> | make[2]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/lto-plugin'
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/lto-plugin'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/build-x86_64-linux/libcpp'
> | test -f config.h || (rm -f stamp-h1 && make stamp-h1)
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/build-x86_64-linux/libcpp'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/libcpp'
> | test -f config.h || (rm -f stamp-h1 && make stamp-h1)
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/libcpp'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/fixincludes'
> | make[1]: Nothing to be done for 'all'.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/fixincludes'
> | make[1]: Entering directory '/media/owen/yocto/meritechYocto/meta-raspb=
errypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-=
r0/build/gcc'
> | make[1]: 'checksum-options' is up to date.
> | make[1]: Leaving directory '/media/owen/yocto/meritechYocto/meta-raspbe=
rrypi/build/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r=
0/build/gcc'
> | sed: -e expression #1, char 0: no previous regular expression
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of '/media/owen/yocto/meritechYocto/meta-raspberrypi/b=
uild/tmp/work/x86_64-linux/gcc-crosssdk-x86_64-pokysdk-linux/9.5.0-r0/temp/=
run.do_compile.3969186' failed with exit code 1
> ERROR: Task (/media/owen/yocto/meritechYocto/meta-raspberrypi/build/../po=
ky/meta/recipes-devtools/gcc/gcc-crosssdk_9.5.bb:do_compile) failed with ex=
it code '1'
> NOTE: Tasks Summary: Attempted 551 tasks of which 530 didn't need to be r=
erun and 2 failed.
>
> Summary: 2 tasks failed:
>   /media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky/meta/rec=
ipes-devtools/gcc/gcc-cross_9.5.bb:do_compile
>   /media/owen/yocto/meritechYocto/meta-raspberrypi/build/../poky/meta/rec=
ipes-devtools/gcc/gcc-crosssdk_9.5.bb:do_compile
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
> 2023-04-19 14:40:49 - ERROR    - Command returned non-zero exit status 1
> owen@owen-XPS:/media/owen/yocto/meritechYocto/meta-raspberrypi$
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#59731): https://lists.yoctoproject.org/g/yocto/messag=
e/59731
> Mute This Topic: https://lists.yoctoproject.org/mt/98367231/1997914
> Mute #qt:https://lists.yoctoproject.org/g/yocto/mutehashtag/qt
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

