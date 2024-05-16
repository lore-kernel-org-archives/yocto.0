Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D6C25B79
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 10:17:36 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web11.10073.1715854648816288811
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 03:17:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ewcSa9Aa;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-51f12ccff5eso728488e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 03:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715854611; x=1716459411; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p2r1zvEot0uCrUyKIKP+NdvY5jnA59Izf6X0T711+tE=;
        b=ewcSa9AaCY+DBxy4Hhsq/Yr2JHKjQ/ftQ2se/pt9QnVcpWTtvCpsQZEh+N/U/5YThC
         LuvjJN2LfqmUrP49YkcXyJIG1Ld2Do2hoiRGTBaxaNio8c0q7E2n2oLA8IPIcIOAtCQ/
         DlZ49c7Fk57x226U7gniBgrQ6F2QbFXKwhBmqnBbATHl+YbLWTNmryk9HkoWBOcI0O2J
         Pm3RPmiCyGpAT2Yr5EFxLd+LTAok0UfwjT5YKtIp5McrFd8IAMEEyfwg+P33zGTa4+3Y
         8Ev6QdB/IreOGgQ4ntOIPvBESAoJCWZE/wJr5knGOsOokFGS91ZoxjDcU0hg4lalHQ4A
         s9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715854611; x=1716459411;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p2r1zvEot0uCrUyKIKP+NdvY5jnA59Izf6X0T711+tE=;
        b=aP9MbDwLemfk5WCsNB03QxQTJnNxJiQqu4gl0vr/TmO5DYr/zbK8DyF+lisedY/8cb
         T6bUw0FgDm0WdGhILdAeuewHe6RZIitejsaoZxRfnjhxaDegqWyJqYtlgOIZo1OfReLq
         FQWkPDFjxtcs2+c+b12xbE0gu3FINVav+I0yWQmyWCinJOnCLrFiXjngy4Wi8N9uR3fl
         ZeaFbUzfgHG1eKPj5FhUKBXh6IqaRSUrjeZBS8rkX+vo8b063Q98RL8tCWhbgEox2DIV
         PKFu9SKODklr15VR/NMRHeF8eesx+SGLCHQsbSN8SKC6shDbqM4FAsL6I4cMueFu2TRn
         kRhg==
X-Gm-Message-State: AOJu0YxbPn0lwUeWOhmaHrFQ8DCnNI26F9zXFaD8hlkkN6dupkskv0NC
	aYc46rgFoEG5dBfWiCLRyq8XiNEnoP+zUOt7T/H6I6sKaXFqZXJua2jz3rO5wbOrFfOmKiyffOE
	pYoDylfZhl1JXzkRXzCPEBzRA61XRPWyM
X-Google-Smtp-Source: AGHT+IH+OucbUMal7U9dLHnOBHqr2B+CfmoRfujH8J6IkrlSxgHbZeukw6J+CPojnlw2cSWhJSKG0yYNWnD3SE6wI9g=
X-Received: by 2002:a05:651c:a10:b0:2e1:bd06:51b0 with SMTP id
 38308e7fff4ca-2e52039c4d7mr141050131fa.35.1715854610314; Thu, 16 May 2024
 03:16:50 -0700 (PDT)
MIME-Version: 1.0
References: <wWAG.1715853668793985936.L0Ei@lists.yoctoproject.org>
In-Reply-To: <wWAG.1715853668793985936.L0Ei@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 16 May 2024 12:16:38 +0200
Message-ID: <CANNYZj91N1gTztKgYv0Y+wZHjy+imPDvbeM6LzANr7bdzoCwfg@mail.gmail.com>
Subject: Re: [yocto] Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org, dhanyalakshmi.k@priyarajaelectronics.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 10:17:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63112

I understand this is not exactly helpful, but someone subverted yocto
completely with ls-image-main recipe. Putting Ubuntu into target
images is not supported, tested or recommended, and if any issues
occur you're on your own. Or ask the developers of that 'layerscape'
thing.

Also mickledore is ancient, and haven't been supported in years. You
need to upgrade to a recent yocto, and not put ubuntu into it, then
you might be able to get help here.

The good news is that https://github.com/nxp-qoriq/yocto-sdk.git does
have more recent branches, so you should start by picking the latest:
https://github.com/nxp-qoriq/yocto-sdk/tree/nanbield

But if issues still happen, the first people you should approach are
developers of that thing.

Alex

On Thu, 16 May 2024 at 12:01, dhanyalakshmi.k via
lists.yoctoproject.org
<dhanyalakshmi.k=3Dpriyarajaelectronics.com@lists.yoctoproject.org>
wrote:
>
> Hi,
>
> I apologize if it seemed rude for not introducing myself earlier. I'm Dha=
nya, and currently, I'm working on building an image for my ls1012afrwy NXP=
 board using the Yocto Project. I've successfully built the image, but I'm =
encountering an error when attempting to build a cross-compiler toolchain f=
or SDKMACHINE =3D aarch64, as mentioned earlier.
>
> I'll outline the steps I followed to build the image:
>
> $ sudo apt install gawk wget git diffstat unzip texinfo gcc build-essenti=
al chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianut=
ils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev pyth=
on3-subunit mesa-common-dev zstd liblz4-tool file locales
>
> $ sudo locale-gen en_US.UTF-8
>
> $ mkdir distro
> $ cd distro
> $ repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b mickledore -=
m ls-6.1.55-2.2.0_distro.xml
> $ repo sync
>
> $ source  distro-setup-env -m ls1012afrwy
>
> $ bitbake ls-image-main
> $ bitbake -c populate_sdk ls-image-main
>
> And the error message is as follows:
>
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
> And about the question Alex asked, ubuntu-main is present in ls-image-mai=
n.bb file.
>
> I have attached the "ls-image-main.bb" file as well here:
>
> # Layerscape main image without an Desktop rootfs
> #
> # Note that we have a tight dependency to ubuntu-main
> # and that we cannot just install arbitrary Yocto packages to avoid
> # rootfs pollution or destruction.
> PV =3D "${@d.getVar('PREFERRED_VERSION_ubuntu-base', True) or '1.0'}"
>
> REQUIRED_DISTRO_FEATURES =3D ""
>
> require ls-image-common.inc
>
> APTGET_EXTRA_PACKAGES_MAIN =3D "1"
>
> APTGET_EXTRA_PACKAGES +=3D "\
> libvirt-daemon-system \
> "
>
> # This must be added first as it provides the foundation for
> # subsequent modifications to the rootfs
> IMAGE_INSTALL +=3D "\
> ubuntu-main \
> ubuntu-main-dev \
> ubuntu-main-dbg \
> ubuntu-main-doc \
> "
>
> IMAGE_INSTALL:append =3D " \
> ${LAYERSCAPE_NETWORK_TOOLS} \
> iperf2 \
> makedevs lmsensors-sensors \
> ${LAYERSCAPE_DEMO_SAMPLES} \
> "
>
> SOC_DEFAULT_IMAGE_FSTYPES:append =3D " wic.bmap wic.bz2 tar.gz"
> SOC_DEFAULT_IMAGE_FSTYPES:remove:ls2088ardb =3D "wic.bmap wic.bz2"
> SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012ardb =3D "wic.bmap wic.bz2"
> SOC_DEFAULT_IMAGE_FSTYPES:remove:ls1012afrwy =3D "wic.bmap wic.bz2"
> SOC_DEFAULT_IMAGE_FSTYPES:remove =3D " tar.bz2"
>
> IMAGE_ROOTFS_SIZE ?=3D "6291456"
>
>
>
> If there's anything required from my side to resolve this issue, please d=
o ask because I'm not understanding why I'm facing this issue and how to re=
solve it as well. Hoping for your reply.
>
> Thank You.
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63110): https://lists.yoctoproject.org/g/yocto/messag=
e/63110
> Mute This Topic: https://lists.yoctoproject.org/mt/106131609/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

