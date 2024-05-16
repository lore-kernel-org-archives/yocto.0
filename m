Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B51BC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 09:38:36 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.9148.1715852313116252685
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 02:38:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GCq0u8Hw;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e576057c2bso8003611fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 02:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715852311; x=1716457111; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mSjag/BcPU5CQlojt9amphDrGz22hbnmLPPPrOrmv40=;
        b=GCq0u8HwoWcaaSILYKN6K2SkUrnNoFmHXcCBwWbc1nky5QKZWFpnCNAPzJxIYWLE/Q
         Abiahh0lmQXcgsRgS3AKLAWbZWXLFSBdZKk9wLuoTYLhES7mgoHbi64WVfVbuPF+QXRu
         ELaJCWEpnJccQQbmFbIVfcMBr1oEXNUhMbM5NxcAeY7ju00ctp/C/ltjT/RNAGIcXkTW
         5CoM82MVvFJl6Q5X74FJV1LMAY+LZK5FxKwLNB1U93Gh1oWXe8UPtXaBwlJvgP/Nc4Hx
         0rwigOqop75lU8EzPZT8I+DeGh2o5V1jkmGmNGErEu5cYpuTNM2byAPgsPonBL1Bwerz
         /hKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715852311; x=1716457111;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mSjag/BcPU5CQlojt9amphDrGz22hbnmLPPPrOrmv40=;
        b=t921FhHjN5shODDAC8JVAoEqBUgKawBBsQX3zneqKlDoEgU6KxmVuivKR79RnG+4P9
         jnUONZi3zZcgYnSz6a6jgFmpAXNM8PWnY6zcsrrTMiEf8W91SsxvsGp9owAkJ+Pd80w8
         fPI8QKGtioQ5Jm36cB53Yp8pQoyPklTc3JVVEFQ4oGmuHr3khnmLuMg31u4w3QL6tMyi
         7dYmrSgyKAyyaB/JgdSKGVQbZrzrUaR6Un7Nsd684So5SxdZ+F8mnUKEFSAt/x3haW9J
         07x4xO1QLgXJrjH891D4NDXMTi+AACftBolEmLR0r3Q5+TxiZKfZMhJFYxxog41oyEnx
         cgbA==
X-Gm-Message-State: AOJu0YzG4oOX/4Iq0cHpssdwGsnsyVkoXGVvOPULG+UWl+d14MjURYYU
	lrfDdeXgWXReYMZoFqBTDhWCBZMle5DEFYo37/gAMj/48ivHfV3bGobprfHUyK6p/Qkq0qL/ddB
	mY5vPsaE6c9d/QOtlMmdmH5H0cpzp0Q==
X-Google-Smtp-Source: AGHT+IG8Z7D7E5ujhOuDVa/aVUhpfN5kbvnqqoWZQva2BYcktn/Ywy2v9BMQgX5NUmrbG43XdSbe5AjXGrJtqyza0xo=
X-Received: by 2002:a2e:b0db:0:b0:2e5:566:c752 with SMTP id
 38308e7fff4ca-2e52039dc2fmr149522601fa.48.1715852311235; Thu, 16 May 2024
 02:38:31 -0700 (PDT)
MIME-Version: 1.0
References: <OwGd.1715852017157298760.iJN3@lists.yoctoproject.org> <17CFEE896A8769BE.16299@lists.yoctoproject.org>
In-Reply-To: <17CFEE896A8769BE.16299@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 May 2024 11:38:19 +0200
Message-ID: <CANNYZj8-n4QB0JNn3acmvUNLvY+aD-S_0Cm-duOa4=CvOabazw@mail.gmail.com>
Subject: Re: [yocto] Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org
Cc: dhanyalakshmi.k@priyarajaelectronics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 09:38:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63109

Oh, and: please introduce yourself as well. It's not polite to fire
off support questions without saying who you are and what are you
working on.

Alex

On Thu, 16 May 2024 at 11:37, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> "  - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes
> libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo"
>
> This ubuntu-main package is highly suspect and shouldn't be present.
> Can you look into where it's coming from, how is formed, and why is it
> there to begin with? We can't reproduce your build, so specific advice
> is hard to give.
>
> Alex
>
> On Thu, 16 May 2024 at 11:33, dhanyalakshmi.k via
> lists.yoctoproject.org
> <dhanyalakshmi.k=3Dpriyarajaelectronics.com@lists.yoctoproject.org>
> wrote:
> >
> > Hello,
> > I tried to build toolchain for aarch64 target architecture using below =
command:
> > $ bitbake -c populate_sdk ls-image-main
> > Errors that i'm facing is:
> > ERROR: ls-image-main-22.04.2-r0 do_populate_sdk: Could not invoke dnf. =
Command '/home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012afrwy-=
fsl-linux/ls-image-main/22.04.2-r0/recipe-sysroot-native/usr/bin/dnf -v --r=
pmverbosity=3Dinfo -y -c /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/w=
ork/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-s=
dk-hardcoded-buildpath/sysroots/aarch64-fsl-linux/etc/dnf/dnf.conf --setopt=
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
> > DNF version: 4.14.0
> > cachedir: /home/dhanyalakshmi/distro/build_ls1012afrwy/tmp/work/ls1012a=
frwy-fsl-linux/ls-image-main/22.04.2-r0/sdk/image/usr/local/oe-sdk-hardcode=
d-buildpath/sysroots/aarch64-fsl-linux/var/cache/dnf
> > Added oe-repo repo from /home/dhanyalakshmi/distro/build_ls1012afrwy/tm=
p/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/oe-sdk-repo
> > User-Agent: falling back to 'libdnf': could not detect OS or basearch
> > repo: using cache for: oe-repo
> > oe-repo: using metadata from Thu 16 May 2024 09:31:47 AM UTC.
> > Last metadata expiration check: 0:00:01 ago on Thu 16 May 2024 09:32:01=
 AM UTC.
> > --> Starting dependency resolution
> > --> Finished dependency resolution
> > Error:
> >  Problem 1: package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy=
_target from oe-repo conflicts with /bin/sh provided by ubuntu-main-22.04.2=
-r0.aarch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with perl provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with bash provided by ubuntu-main-22.04.2-r0.aarch64=
 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with coreutils provided by ubuntu-main-22.04.2-r0.aa=
rch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with /usr/bin/env provided by ubuntu-main-22.04.2-r0=
.aarch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with /bin/bash provided by ubuntu-main-22.04.2-r0.aa=
rch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with bash-dev provided by ubuntu-main-22.04.2-r0.aar=
ch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with pkgconfig provided by ubuntu-main-22.04.2-r0.aa=
rch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with perl-dev provided by ubuntu-main-22.04.2-r0.aar=
ch64 from oe-repo
> >   - package target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target =
from oe-repo conflicts with /usr/bin/perl provided by ubuntu-main-22.04.2-r=
0.aarch64 from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
perl provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
bash provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_target=
 from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
coreutils provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_t=
arget from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
bash-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_ta=
rget from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
pkgconfig provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_t=
arget from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflicts with =
perl-dev provided by target-sdk-provides-dummy-1.0-r0.sdk_provides_dummy_ta=
rget from oe-repo
> >   - conflicting requests
> >  Problem 2: package ubuntu-main-22.04.2-r0.aarch64 from oe-repo conflic=
ts with libc6-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
> >   - package ubuntu-main-22.04.2-r0.aarch64 from oe-repo obsoletes libc6=
-dbg provided by libc6-dbg-2.35-r0.aarch64 from oe-repo
> >   - package ubuntu-main-doc-22.04.2-r0.aarch64 from oe-repo requires ub=
untu-main, but none of the providers can be installed
> >   - package packagegroup-core-standalone-sdk-target-1.0-r8.aarch64 from=
 oe-repo requires glibc-dbg, but none of the providers can be installed
> >   - conflicting requests
> > (try to add '--allowerasing' to command line to replace conflicting pac=
kages or '--skip-broken' to skip uninstallable packages)
> >
> > ERROR: Logfile of failure stored in: /home/dhanyalakshmi/distro/build_l=
s1012afrwy/tmp/work/ls1012afrwy-fsl-linux/ls-image-main/22.04.2-r0/temp/log=
.do_populate_sdk.2348536
> > ERROR: Task (/home/dhanyalakshmi/distro/sources/meta-nxp-desktop/recipe=
s-fsl/images/ls-image-main.bb:do_populate_sdk) failed with exit code '1'
> >
> > Can anyone explain what is this error and how can i resolve it so that =
i can get cross compiler toolchain.
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63108): https://lists.yoctoproject.org/g/yocto/messag=
e/63108
> Mute This Topic: https://lists.yoctoproject.org/mt/106131316/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

