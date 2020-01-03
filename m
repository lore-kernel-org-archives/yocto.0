Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
 by mx.groups.io with SMTP id smtpd.web11.127.1578077148555066086
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 10:45:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=WANJ3FwX;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.169, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f169.google.com with SMTP id g6so16388928plp.6
        for <yocto@lists.yoctoproject.org>; Fri, 03 Jan 2020 10:45:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=m6YLupl55dY7elAREC3yw3hhohlQMH2jAY6WhmwDvWU=;
        b=WANJ3FwXcAFKB3TBcE9LBLE+/xvEr6s1qtjEjxb7jrlWf2M/PZYQfwPp8lMPUDkVEC
         AEX+2GjK7ud7+H1klbpu+/MdGzI2tr3iMoYV0kMAzbVRJP7qi4ID9pNEI0QbqBpI/5TQ
         A4sYHba0zJmPDx82t+zsnMUC1PD2zkvrPFkpzBXYt72yZOmBtAlE34uknfYtEpDCJcsl
         HsIAsXGfO0qeqG3wezfiOzDgPeqxP8grfiUpRjWZrMYl6WgGHRel7NyeB5onN/k7KVaE
         A3vNjz8kXsWTrFWQWDjkkk7Mfln6Ije+kApmdCx1rca+zxcTPDVJb+zojDXvGK4MxAxv
         2u7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=m6YLupl55dY7elAREC3yw3hhohlQMH2jAY6WhmwDvWU=;
        b=nYRhFK7sC+GognrCaYucot5iQGC1Id/znWqORrYW3DV9ePZaETGDGmp7FRkf9U8BuC
         LVgJN7FN6rOJuaudJVRSLg0cqDhGvd+1Z9nLUU5aq1fnwEE4F1R9O6BMh0mWTBTEvJiO
         pTuCr8Mt5f3B491/HMWgE835BpsZZslSaC3RBHpn9UFYfOpiclO/p3nAA4NF5P4DxQOx
         +ERereHSIdk1Dz59x4Ch8QI13eACBZpuxHydokaXZSUPjECAvxzKLLvtp39yJKyMxfYv
         /dLpQ55Mw7XqoHjFjAJzvIG7Z0XYw3ak/qevevlFLgCR3kTBDVRgbK1VzpFVQYoh6SKD
         zR9A==
X-Gm-Message-State: APjAAAVTrMAZVqQy9S4v1ZpAIavrFLGP4cwqp1DaE/+WG+sEdGyzafIB
	52AafGUKYDUxUv3MI9fo7bF1rJpnhuotQQ==
X-Google-Smtp-Source: APXvYqzPeRcWzFlTIZpZy5nguQHfqJnGU3XIg0kyLd5QcG4KTQ25rGMTy0lYExmWGArpkotY50Tf8g==
X-Received: by 2002:a17:902:728b:: with SMTP id d11mr79434840pll.49.1578077147387;
        Fri, 03 Jan 2020 10:45:47 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id k44sm15587616pjb.20.2020.01.03.10.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jan 2020 10:45:46 -0800 (PST)
Subject: Re: [yocto] First time reaching out, having issue building standalone out-of-tree kernel module - help?
To: Jeff Schuler <jschuler16@gmail.com>, yocto@lists.yoctoproject.org
References: <CAB_3WH5Yg6iQ2-t9j7-2xHJBXyYBHeVJhY=qUTaWURFbi0uSng@mail.gmail.com>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <0f428df2-d34a-d237-a561-237c2e7f1ef5@ibeeto.com>
Date: Fri, 3 Jan 2020 10:45:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAB_3WH5Yg6iQ2-t9j7-2xHJBXyYBHeVJhY=qUTaWURFbi0uSng@mail.gmail.com>
X-Groupsio-MsgNum: 47849
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="KYaKWulXrCmJzDzFDUQQFp84W1ryuLCqS"

--KYaKWulXrCmJzDzFDUQQFp84W1ryuLCqS
Content-Type: multipart/mixed; boundary="oDxdY3hwA0TKpqgOGradhev56kYnH9yom"

--oDxdY3hwA0TKpqgOGradhev56kYnH9yom
Content-Type: multipart/alternative;
 boundary="------------E97A0E93C55B7E08A978AF0F"
Content-Language: en-US

--------------E97A0E93C55B7E08A978AF0F
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Jeff,

Looks like modpost was not built yet. Did you build the kernel first or
at least ran

bitbake virtual/kernel -c kernel_configme

:rjs

On 1/3/20 9:39 AM, Jeff Schuler wrote:
> Hello!
>
> I was not sure who or what to reach out to with this question, so I'm
> hoping this lands in the hands of the correct person. I've been using
> Yocto for many years for our ARM embedded system builds, and have
> recently upgraded our kernel version from 4.18 to 5.1 (details below).
> I am working on patching now, and getting our out-of-tree modules
> ported to build with the 5.1 kernel source. I'm able to build the
> kernel using bitbake virtual/kernel, and boot the kernel=C2=A0+ dtb=C2=A0=
no
> problem, however, my kernel's out-of-tree modules are having trouble
> building for reasons that I cannot seem to figure out. I have a very
> simple kernel module, called a10id-kmod that I'm trying to build.
> Forgive me if this is not the correct information to send over, this
> is my first time seeking support and am not sure what to send, happy
> to send any additional logs needed. The bitbake output shows the
> following:=C2=A0
>
>     bitbake -c compile a10id-kmod
>     Loading cache: 100%
>     |##################################################################=
#########################################################################=
##################################|
>     ETA: =C2=A000:00:00
>     Loaded 2352 entries from dependency cache.
>     NOTE: Resolving any missing task queue dependencies
>
>     Build Configuration:
>     BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.28.0"
>     BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"
>     NATIVELSBSTRING =C2=A0 =3D "Ubuntu-14.04"
>     TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnueabi"
>     MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "sensor-chevy"
>     DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"
>     DISTRO_VERSION =C2=A0 =C2=A0=3D "2.0.3"
>     TUNE_FEATURES =C2=A0 =C2=A0 =3D "arm armv7a vfp neon"
>     TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "vfp-neon"
>     meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     meta-yocto-bsp =C2=A0 =C2=A0=3D "HEAD:e08994ce953ff5ab49b260e7763a4=
0bfad4285ca"
>     meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
>     meta-python =C2=A0 =C2=A0 =C2=A0
>     meta-filesystems =C2=A0
>     meta-networking =C2=A0 =3D "HEAD:2ea8d7f54a061e902657c4f8ea1f7f7c25=
c6c4e1"
>     meta-custom =C2=A0 =C2=A0 =3D
>     "schuler/a200-kernel-5.1:71b47d97e2412192ba5027090513b457a8c0e835"
>
>     NOTE: Preparing RunQueue
>     NOTE: Executing SetScene Tasks
>     NOTE: Executing RunQueue Tasks
>     ERROR: oe_runmake failed
>     ERROR: Function failed: do_compile (log file is located at
>     /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/senso=
r-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp=
/log.do_compile.12208)
>     ERROR: Logfile of failure stored in:
>     /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/senso=
r-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp=
/log.do_compile.12208
>     Log data follows:
>     | DEBUG: Executing shell function do_compile
>     | NOTE: make -j 27 -e MAKEFLAGS=3D
>     KERNEL_SRC=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0=
/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
>     KERNEL_PATH=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.=
0/builds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
>     KERNEL_VERSION=3D5.1.0 CC=3Darm-poky-linux-gnueabi-gcc =C2=A0 -fuse=
-ld=3Dbfd
>     LD=3Darm-poky-linux-gnueabi-ld.bfd =C2=A0 AR=3Darm-poky-linux-gnuea=
bi-ar
>     =C2=A0O=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/bu=
ilds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts
>     | make -C
>     /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/senso=
r-chevy/tmp/work-shared/sensor-chevy/kernel-source
>     M=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/s=
ensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/=
git/soc/platforms/sensor-common/host/a10_id
>     =C2=A0modules
>     | make[1]: Entering directory
>     `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sens=
or-chevy/tmp/work-shared/sensor-chevy/kernel-source'
>     | make[2]: Entering directory
>     `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sens=
or-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'
>     | =C2=A0 CC [M]
>     =C2=A0/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds=
/sensor-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r=
0/git/soc/platforms/sensor-common/host/a10_id/a10-id.o
>     *| =C2=A0 Building modules, stage 2.
>     | =C2=A0 MODPOST 1 modules
>     | /bin/sh: 1: scripts/mod/modpost: not found
>     | make[3]: *** [__modpost] Error 127
>     | make[2]: *** [modules] Error 2*
>     | make[2]: Leaving directory
>     `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sens=
or-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'
>     | make[1]: *** [sub-make] Error 2
>     | make[1]: Leaving directory
>     `/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sens=
or-chevy/tmp/work-shared/sensor-chevy/kernel-source'
>     | make: *** [all] Error 2
>     | ERROR: oe_runmake failed
>     | ERROR: Function failed: do_compile (log file is located at
>     /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/senso=
r-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp=
/log.do_compile.12208)
>     ERROR: Task 5
>     (/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom=
/recipes-kernel/a10id-kmod/a10id-kmod_0.1.1.bb
>     <http://a10id-kmod_0.1.1.bb/>, do_compile) failed with exit code '1=
'
>     NOTE: Tasks Summary: Attempted 261 tasks of which 252 didn't need
>     to be rerun and 1 failed.
>
>     Summary: 1 task failed:
>     =C2=A0
>     /home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/=
recipes-kernel/a10id-kmod/a10id-kmod_0.1.1.bb
>     <http://a10id-kmod_0.1.1.bb/>, do_compile
>     Summary: There were 2 ERROR messages shown, returning a non-zero
>     exit code.
>
>
> I'm using the jethro poky branch,
> commit=C2=A0e08994ce953ff5ab49b260e7763a40bfad4285ca and meta-openembed=
ded
> branch jethro as well, commit=C2=A02ea8d7f54a061e902657c4f8ea1f7f7c25c6=
c4e1
>
> When building with the 4.18 kernel, this .ko module builds just
> fine...and doesn't have this scripts/mod/modpost not found issue.
>
> Here's some more info if it helps. These are the relevant kernel
> module recipe files:
>
>     jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom=
/recipes-kernel/a10id-kmod$
>     cat a10id-kmod.inc
>     SUMMARY =3D "A Linux kernel module for A10ID reading"
>     HOMEPAGE =3D "https://google.com <https://google.com/>"
>     LICENSE =3D "MIT & GPLv2"
>
>     inherit module
>     inherit no-mirror
>
>     SRC_URI =3D
>     "git://git@github.com/MyOrganization/bn-bsp.git;protocol=3Dssh
>     <http://git@github.com/MyOrganization/bn-bsp.git;protocol=3Dssh>"
>
>     S =3D "${WORKDIR}/git/soc/platforms/sensor-common/host/a10_id"
>     LIC_FILES_CHKSUM =3D
>     "file://${S}/a10-id.c;beginline=3D1;endline=3D21;md5=3D75828e2af878=
241ad612f8a8ad1310f9"
>
>     COMPATIBLE_MACHINE =3D "(sensor-adi|sensor-chevy)"
>     jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom=
/recipes-kernel/a10id-kmod$
>     cat=C2=A0a10id-kmod_0.1.1.bb <http://a10id-kmod_0.1.1.bb/>
>     require a10id-kmod.inc
>     SRCREV =3D "58076f4e91376df74da7509cc397b71b084f77a4"
>
>
> And the kernel recipe:
>
>     jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom=
/recipes-kernel/linux$
>     cat=C2=A0linux-socfpga_5.1.bb <http://linux-socfpga_5.1.bb/>
>     require recipes-kernel/linux/linux-socfpga.inc
>
>     ### Branch socfpga-5.1 GITSHA CHECKSUM
>     LIC_FILES_CHKSUM =3D
>     "file://${S}/COPYING;md5=3Dbbea815ee2795b2f4230826c0c6b8814"
>
>     ### Tied to socfpga-5.1 at this =C2=A0GITSHA:
>     SOCFPGA_KERNEL_BRANCH ?=3D "socfpga-${PV}"
>     SRCREV ?=3D "5c21be71d13b64bc4cce9b1bd8411d41d15b1a6a"
>
>     SRC_URI =3D "\
>     =C2=A0 =C2=A0
>     git://github.com/altera-opensource/linux-socfpga.git;protocol=3Dhtt=
ps;branch=3D${SOCFPGA_KERNEL_BRANCH}
>     <http://github.com/altera-opensource/linux-socfpga.git;protocol=3Dh=
ttps;branch=3D$%7BSOCFPGA_KERNEL_BRANCH%7D>=C2=A0\
>     =C2=A0 =C2=A0 file://${MACHINE}/defconfig \
>     =C2=A0 =C2=A0 file://${MACHINE}/${DTS_FILE} \
>     "
>
>
> Can anyone advise as to what might be the issue? Just being pointed in
> the correct direction would be a major help to me!
>
> HAPPY NEW YEAR :-)
>
> Cheers,
> J
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47848): https://lists.yoctoproject.org/g/yocto/mess=
age/47848
> Mute This Topic: https://lists.yoctoproject.org/mt/69402554/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [rudolf.stre=
if@ibeeto.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------E97A0E93C55B7E08A978AF0F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Jeff,</p>
    <p>Looks like modpost was not built yet. Did you build the kernel
      first or at least ran</p>
    <p>bitbake virtual/kernel -c kernel_configme</p>
    <p>:rjs<br>
    </p>
    <div class=3D"moz-cite-prefix">On 1/3/20 9:39 AM, Jeff Schuler wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB_3WH5Yg6iQ2-t9j7-2xHJBXyYBHeVJhY=3DqUTaWURFbi0uSng@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Hello!
        <div><br>
        </div>
        <div>I was not sure who or what to reach out to with this
          question, so I'm hoping this lands in the hands of the correct
          person. I've been using Yocto for many years for our ARM
          embedded system builds, and have recently upgraded our kernel
          version from 4.18 to 5.1 (details below). I am working on
          patching now, and getting our out-of-tree modules ported to
          build with the 5.1 kernel source. I'm able to build the kernel
          using bitbake virtual/kernel, and boot the kernel=C2=A0+ dtb=C2=
=A0no
          problem, however, my kernel's out-of-tree modules are having
          trouble building for reasons that I cannot seem to figure out.
          I have a very simple kernel module, called a10id-kmod that I'm
          trying to build. Forgive me if this is not the correct
          information to send over, this is my first time seeking
          support and am not sure what to send, happy to send any
          additional logs needed. The bitbake output shows the
          following:=C2=A0</div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
bitbake
          -c compile a10id-kmod<br>
          Loading cache: 100%
|########################################################################=
#########################################################################=
############################|
          ETA: =C2=A000:00:00<br>
          Loaded 2352 entries from dependency cache.<br>
          NOTE: Resolving any missing task queue dependencies<br>
          <br>
          Build Configuration:<br>
          BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "1.28.0"<br>
          BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "x86_64-linux"<br>
          NATIVELSBSTRING =C2=A0 =3D "Ubuntu-14.04"<br>
          TARGET_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "arm-poky-linux-gnuea=
bi"<br>
          MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "sensor-chevy"<b=
r>
          DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "poky"<br>
          DISTRO_VERSION =C2=A0 =C2=A0=3D "2.0.3"<br>
          TUNE_FEATURES =C2=A0 =C2=A0 =3D "arm armv7a vfp neon"<br>
          TARGET_FPU =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D "vfp-neon"<br>
          meta =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
          meta-yocto =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
          meta-yocto-bsp =C2=A0 =C2=A0=3D
          "HEAD:e08994ce953ff5ab49b260e7763a40bfad4285ca"<br>
          meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
          meta-python =C2=A0 =C2=A0 =C2=A0<br>
          meta-filesystems =C2=A0<br>
          meta-networking =C2=A0 =3D
          "HEAD:2ea8d7f54a061e902657c4f8ea1f7f7c25c6c4e1"<br>
          meta-custom =C2=A0 =C2=A0 =3D
          "schuler/a200-kernel-5.1:71b47d97e2412192ba5027090513b457a8c0e8=
35"<br>
          <br>
          NOTE: Preparing RunQueue<br>
          NOTE: Executing SetScene Tasks<br>
          NOTE: Executing RunQueue Tasks<br>
          ERROR: oe_runmake failed<br>
          ERROR: Function failed: do_compile (log file is located at
/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chev=
y/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.d=
o_compile.12208)<br>
          ERROR: Logfile of failure stored in:
/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chev=
y/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.d=
o_compile.12208<br>
          Log data follows:<br>
          | DEBUG: Executing shell function do_compile<br>
          | NOTE: make -j 27 -e MAKEFLAGS=3D
KERNEL_SRC=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/build=
s/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
KERNEL_PATH=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/buil=
ds/sensor-chevy/tmp/work-shared/sensor-chevy/kernel-source
          KERNEL_VERSION=3D5.1.0 CC=3Darm-poky-linux-gnueabi-gcc =C2=A0
          -fuse-ld=3Dbfd LD=3Darm-poky-linux-gnueabi-ld.bfd =C2=A0
          AR=3Darm-poky-linux-gnueabi-ar
=C2=A0O=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/s=
ensor-chevy/tmp/work-shared/sensor-chevy/kernel-build-artifacts<br>
          | make -C
/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chev=
y/tmp/work-shared/sensor-chevy/kernel-source
M=3D/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-=
chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/so=
c/platforms/sensor-common/host/a10_id
          =C2=A0modules<br>
          | make[1]: Entering directory
`/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-che=
vy/tmp/work-shared/sensor-chevy/kernel-source'<br>
          | make[2]: Entering directory
`/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-che=
vy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'<br>
          | =C2=A0 CC [M]
=C2=A0/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/senso=
r-chevy/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/git/=
soc/platforms/sensor-common/host/a10_id/a10-id.o<br>
          <b>| =C2=A0 Building modules, stage 2.<br>
            | =C2=A0 MODPOST 1 modules<br>
            | /bin/sh: 1: scripts/mod/modpost: not found<br>
            | make[3]: *** [__modpost] Error 127<br>
            | make[2]: *** [modules] Error 2</b><br>
          | make[2]: Leaving directory
`/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-che=
vy/tmp/work-shared/sensor-chevy/kernel-build-artifacts'<br>
          | make[1]: *** [sub-make] Error 2<br>
          | make[1]: Leaving directory
`/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-che=
vy/tmp/work-shared/sensor-chevy/kernel-source'<br>
          | make: *** [all] Error 2<br>
          | ERROR: oe_runmake failed<br>
          | ERROR: Function failed: do_compile (log file is located at
/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/builds/sensor-chev=
y/tmp/work/sensor_chevy-poky-linux-gnueabi/a10id-kmod/0.1.1-r0/temp/log.d=
o_compile.12208)<br>
          ERROR: Task 5
(/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recip=
es-kernel/a10id-kmod/<a
            href=3D"http://a10id-kmod_0.1.1.bb/" target=3D"_blank"
            moz-do-not-send=3D"true">a10id-kmod_0.1.1.bb</a>, do_compile)=

          failed with exit code '1'<br>
          NOTE: Tasks Summary: Attempted 261 tasks of which 252 didn't
          need to be rerun and 1 failed.<br>
          <br>
          Summary: 1 task failed:<br>
          =C2=A0
/home/jschuler/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipe=
s-kernel/a10id-kmod/<a
            href=3D"http://a10id-kmod_0.1.1.bb/" target=3D"_blank"
            moz-do-not-send=3D"true">a10id-kmod_0.1.1.bb</a>, do_compile<=
br>
          Summary: There were 2 ERROR messages shown, returning a
          non-zero exit code.<br>
        </blockquote>
        <div><br>
        </div>
        <div>I'm using the jethro poky branch,
          commit=C2=A0e08994ce953ff5ab49b260e7763a40bfad4285ca and
          meta-openembedded branch jethro as well,
          commit=C2=A02ea8d7f54a061e902657c4f8ea1f7f7c25c6c4e1</div>
        <div><br>
        </div>
        <div>When building with the 4.18 kernel, this .ko module builds
          just fine...and doesn't have this scripts/mod/modpost not
          found issue.</div>
        <div><br>
        </div>
        <div>Here's some more info if it helps. These are the relevant
          kernel module recipe files:</div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jschuler@kuro:~/bn-b=
sp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod=
$">jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/re=
cipes-kernel/a10id-kmod$</a>
          cat a10id-kmod.inc<br>
          SUMMARY =3D "A Linux kernel module for A10ID reading"<br>
          HOMEPAGE =3D "<a href=3D"https://google.com/" target=3D"_blank"=

            moz-do-not-send=3D"true">https://google.com</a>"<br>
          LICENSE =3D "MIT &amp; GPLv2"<br>
          <br>
          inherit module<br>
          inherit no-mirror<br>
          <br>
          SRC_URI =3D "git://<a
            href=3D"http://git@github.com/MyOrganization/bn-bsp.git;proto=
col=3Dssh"
            target=3D"_blank" moz-do-not-send=3D"true">git@github.com/MyO=
rganization/bn-bsp.git;protocol=3Dssh</a>"<br>
          <br>
          S =3D "${WORKDIR}/git/soc/platforms/sensor-common/host/a10_id"<=
br>
          LIC_FILES_CHKSUM =3D
<a class=3D"moz-txt-link-rfc2396E" href=3D"file://${S}/a10-id.c;beginline=
=3D1;endline=3D21;md5=3D75828e2af878241ad612f8a8ad1310f9">"file://${S}/a1=
0-id.c;beginline=3D1;endline=3D21;md5=3D75828e2af878241ad612f8a8ad1310f9"=
</a><br>
          <br>
          COMPATIBLE_MACHINE =3D "(sensor-adi|sensor-chevy)"<br>
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jschuler@kuro:~/bn-b=
sp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/a10id-kmod=
$">jschuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/re=
cipes-kernel/a10id-kmod$</a>
          cat=C2=A0<a href=3D"http://a10id-kmod_0.1.1.bb/" target=3D"_bla=
nk"
            moz-do-not-send=3D"true">a10id-kmod_0.1.1.bb</a><br>
          require a10id-kmod.inc<br>
          SRCREV =3D "58076f4e91376df74da7509cc397b71b084f77a4"<br>
        </blockquote>
        <div><br>
        </div>
        <div>And the kernel recipe:</div>
        <div><br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:jschuler@kuro:~/bn-b=
sp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes-kernel/linux$">js=
chuler@kuro:~/bn-bsp/host/build/yocto/poky-jethro-2.0/meta-custom/recipes=
-kernel/linux$</a>
          cat=C2=A0<a href=3D"http://linux-socfpga_5.1.bb/" target=3D"_bl=
ank"
            moz-do-not-send=3D"true">linux-socfpga_5.1.bb</a><br>
          require recipes-kernel/linux/linux-socfpga.inc<br>
          <br>
          ### Branch socfpga-5.1 GITSHA CHECKSUM<br>
          LIC_FILES_CHKSUM =3D
          <a class=3D"moz-txt-link-rfc2396E" href=3D"file://${S}/COPYING;=
md5=3Dbbea815ee2795b2f4230826c0c6b8814">"file://${S}/COPYING;md5=3Dbbea81=
5ee2795b2f4230826c0c6b8814"</a><br>
          <br>
          ### Tied to socfpga-5.1 at this =C2=A0GITSHA:<br>
          SOCFPGA_KERNEL_BRANCH ?=3D "socfpga-${PV}"<br>
          SRCREV ?=3D "5c21be71d13b64bc4cce9b1bd8411d41d15b1a6a"<br>
          <br>
          SRC_URI =3D "\<br>
          =C2=A0 =C2=A0 git://<a
href=3D"http://github.com/altera-opensource/linux-socfpga.git;protocol=3D=
https;branch=3D$%7BSOCFPGA_KERNEL_BRANCH%7D"
            target=3D"_blank" moz-do-not-send=3D"true">github.com/altera-=
opensource/linux-socfpga.git;protocol=3Dhttps;branch=3D${SOCFPGA_KERNEL_B=
RANCH}</a>=C2=A0\<br>
          =C2=A0 =C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"file:/=
/$">file://$</a>{MACHINE}/defconfig \<br>
          =C2=A0 =C2=A0 <a class=3D"moz-txt-link-freetext" href=3D"file:/=
/$">file://$</a>{MACHINE}/${DTS_FILE} \<br>
          "<br>
        </blockquote>
        <div><br>
        </div>
        <div>Can anyone advise as to what might be the issue? Just being
          pointed in the correct direction would be a major help to me!</=
div>
        <div><br>
        </div>
        <div>HAPPY NEW YEAR :-)</div>
        <div><br>
        </div>
        <div>Cheers,</div>
        <div>J</div>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.

View/Reply Online (#47848): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/47848">https://lists.yoctopr=
oject.org/g/yocto/message/47848</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
=2Eyoctoproject.org/mt/69402554/3617932">https://lists.yoctoproject.org/m=
t/69402554/3617932</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a>  [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:rudolf.streif=
@ibeeto.com">rudolf.streif@ibeeto.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </body>
</html>

--------------E97A0E93C55B7E08A978AF0F--

--oDxdY3hwA0TKpqgOGradhev56kYnH9yom--

--KYaKWulXrCmJzDzFDUQQFp84W1ryuLCqS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl4Pi9gACgkQjYyoKScz
m3Xb6Qf/dvBiUqsweDIOC46i1SFHw6xgTiwYIBnGFUV4qxNcyD0JIXxlHb29euaH
C8WZhUqmaTfxUK0G2foCy8Jmpfod+czwPJt0LXHsqjdBfLLlGnfVVgYeTMKjvaTo
xAR1SYr1a58YERvBJp9DsprZqAabZ/rvBlHUNU6voymdQo9poemtzZt4WDnjBKFe
IiyD19vtHanbs76Fd08VFEa1akIOJzfl+JfO5UpMRpZ2mwlsAipwuvuCOkKOEXI7
HctwCl8pshPvj8C0MHW61tWMZagnZiN53eXdjwhiHC6YKeQpiBcjtj51E7SC9HUb
zfrTi+Xw8RKQtj8ATJau/cOeNHy49A==
=TEWD
-----END PGP SIGNATURE-----

--KYaKWulXrCmJzDzFDUQQFp84W1ryuLCqS--
