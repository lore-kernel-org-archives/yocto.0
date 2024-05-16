Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CBF1C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 09:37:46 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.9365.1715852256582806923
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 02:37:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j/N1jtNe;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-51f40b5e059so747905e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 02:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715852255; x=1716457055; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ndh1H+0rJqWCd7O8K8GRls8tIZxZjCWRoGPSDp2EBL4=;
        b=j/N1jtNenW//MRj8XviDFiftoDZ2qv4MoUqPUJsZZPSbPTrmhtADgFjhjV5gMU/JUS
         3B+YwgoE0lJhMNkjWqgE/ww8zCYnblgO0qS2Me/LBgDFIbof11pjkmdN6UzvCagL9BBS
         4VNQeXbYO9MIic+rzT3WNZJ+pYDskqEuJiFZkmnLP16uGB4QyWSTfvhLn/S69aYj8TQT
         TjUtsU2itglXDhzEyk4SWy8278o5kDJNq8tq1ZCA1OLRKiViw7lFiwbYACpwgyxBzrO+
         jt+DsoxcUVDL3OG7cYoRdHbFtHOk+Rwtr3fOhfZAcGt0Fqw2OSDJK4YkbCeLU4cCj3RG
         9zWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715852255; x=1716457055;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ndh1H+0rJqWCd7O8K8GRls8tIZxZjCWRoGPSDp2EBL4=;
        b=wVYr1oHjTmVyn6i3Iw6irnKA5n1CQqefbjR97HXfNF65nO0ISvMpUWAGhB4EFvn5lT
         ijAgmmrCWr+A9j9zGg6zEAHSnzMx2xzNJsaR4ExJy7v1Fld7jjaz6EvNZdKEIdBSGXWu
         VoD14Wsx0ZmMsKK9E4EUb8uDIp5uuecOAXPrjClP4xDFdTZ4CdEBPsOAOhcgO9xTXn7u
         fmJ00DA5+lU6BO3RwFJgrvQDt+6xheqU+jUp+Q+L7f306vO/0uh6ODyanherDkVZj3EN
         lzw8rpgc453Mxu/VG6jNV0rLC+qo1TQEuPLvYRbbykrndVCzAL4jmGzh5hmlWNlIuP/J
         gxLg==
X-Gm-Message-State: AOJu0YzFuw5GcEo0WFAe/pyMiTG8Aehu2BuCUw6oF9TDU9TZJdfmMrCq
	jVVpbKxuGZP2tadwRH2QrpuYxLyLvjm+8hvn+JPYpjKqNWBHFusM4s0piMXYOIgO/xwsVDxgF+O
	ipr1B2puQCabYaCPg+3A6wI5ymLntTjqp
X-Google-Smtp-Source: AGHT+IFY0aCY3FGLAXKdh47mxEsUHHoMixItMr9VMEk1976nElWMMVgziFbtM5ylQ9Vms2gyiKcPFHkc2+z5F47YuQo=
X-Received: by 2002:a05:6512:2809:b0:51f:5760:dd34 with SMTP id
 2adb3069b0e04-5220ff70be8mr14838424e87.55.1715852254389; Thu, 16 May 2024
 02:37:34 -0700 (PDT)
MIME-Version: 1.0
References: <OwGd.1715852017157298760.iJN3@lists.yoctoproject.org>
In-Reply-To: <OwGd.1715852017157298760.iJN3@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 May 2024 11:37:23 +0200
Message-ID: <CANNYZj_K1pAYzQdn8Ywz=3uxv+pQNSL9GXfcwuqCho=JNAsODA@mail.gmail.com>
Subject: Re: [yocto] Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org, dhanyalakshmi.k@priyarajaelectronics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 09:37:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63108

"  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes
libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo"

This ubuntu-main package is highly suspect and shouldn't be present.
Can you look into where it's coming from, how is formed, and why is it
there to begin with? We can't reproduce your build, so specific advice
is hard to give.

Alex

On Thu, 16 May 2024 at 11:33, dhanyalakshmi.k via
lists.yoctoproject.org
<dhanyalakshmi.k=3Dpriyarajaelectronics.com@lists.yoctoproject.org>
wrote:
>
> Hello,
> I tried to build toolchain for aarch64 target architecture using below co=
mmand:
> $ bitbake -c populate_sdk ls-image-main
> Errors that i'm facing is:
> ERROR: ls-image-main-22.04.2-r0 do_populate_sdk: Could not invoke dnf. Co=
mmand '/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fs=
l-linux/ls-image-main/22.04.2-r0/recipe-sysroot-native/usr/bin/dnf -v --rpm=
verbosity=3Dinfo -y -c /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/wor=
k/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk=
-hardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/dnf/dnf.conf --setopt=
=3Dreposdir=3D/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012a=
frwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcode=
d-buildpath/sysroots/aarch64-fsl-linux/etc/yum.repos.d --installroot=3D/hom=
e/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-=
image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-buildpath/sysroo=
ts/aarch64-fsl-linux --setopt=3Dlogdir=3D/home/dhanyalakshmi/distro/build_l=
s1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp --r=
epofrompath=3Doe-repo,/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work=
/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo --nogpgcheck in=
stall blktrace can-utils cpufrequtils dpdk-examples fio i2c-tools iozone3 i=
perf2 iperf3 ipsec-demo ipsec-tools kernel-devicetree kernel-image kernel-m=
odules linuxptp lmbench lmsensors-sensors makedevs mmc-utils netperf openss=
l-engines packagegroup-core-standalone-sdk-target packagegroup-fsl-tools-co=
re packagegroup-fsl-tools-extended perf rt-tests sysfsutils target-sdk-prov=
ides-dummy ubuntu-main ubuntu-main-dbg ubuntu-main-dev ubuntu-main-doc udev=
-extraconf udev-rules-qoriq usbutils watchdog' returned 1:
> DNF version: 4.14.0
> cachedir: /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afr=
wy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcoded-=
buildpath/sysroots/aarch64-fsl-linux/var/cache/dnf
> Added oe-repo repo from /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/=
work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo
> User-Agent: falling back to 'libdnf': could not detect OS or basearch
> repo: using cache for: oe-repo
> oe-repo: using metadata from Thu 16 May 2024 09:31:47 AM UTC.
> Last metadata expiration check: 0:00:01 ago on Thu 16 May 2024 09:32:01 A=
M UTC.
> --> Starting dependency resolution
> --> Finished dependency resolution
> Error:
>  Problem 1: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_t=
arget from oe-repo conflicts with /bin/sh provided by ubuntu-main-22.04.2-r=
0.aarch64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with perl provided by ubuntu-main-22.04.2-r0.aarch64 f=
rom oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with bash provided by ubuntu-main-22.04.2-r0.aarch64 f=
rom oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aarc=
h64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with /usr/bin/env provided by ubuntu-main-22.04.2-r0.a=
arch64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with /bin/bash provided by ubuntu-main-22.04.2-r0.aarc=
h64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aarch=
64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with pkgconfig provided by ubuntu-main-22.04.2-r0.aarc=
h64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with perl-dev provided by ubuntu-main-22.04.2-r0.aarch=
64 from oe-repo
>   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target fr=
om oe-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r0.=
aarch64 from oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pe=
rl provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target f=
rom oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with ba=
sh provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target f=
rom oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with co=
reutils provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_tar=
get from oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with ba=
sh-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_targ=
et from oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pk=
gconfig provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_tar=
get from oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with pe=
rl-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_targ=
et from oe-repo
>   - conflicting requests
>  Problem 2: package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts=
 with libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
>   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes libc6-d=
bg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
>   - package ubuntu-main-doc-22.04.2-r0.aarch64 from oe-repo requires ubun=
tu-main, but none of the providers can be installed
>   - package packagegroup-core-standalone-sdk-target-1.0-r8.aarch64 from o=
e-repo requires glibc-dbg, but none of the providers can be installed
>   - conflicting requests
> (try to add '--allowerasing' to command line to replace conflicting packa=
ges or '--skip-broken' to skip uninstallable packages)
>
> ERROR: Logfile of failure stored in: /home/dhanyalakshmi/distro/build_ls1=
012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp/log.d=
o_populate_sdk.2348536
> ERROR: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipes-=
fsl/images/ls-image-main.bb:do_populate_sdk) failed with exit code '1'
>
> Can anyone explain what is this error and how can i resolve it so that i =
can get cross compiler toolchain.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63107): https://lists.yoctoproject.org/g/yocto/messag=
e/63107
> Mute This Topic: https://lists.yoctoproject.org/mt/106131316/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

