Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C76EDC0218A
	for <webhook@archiver.kernel.org>; Thu, 30 Jan 2025 19:23:55 +0000 (UTC)
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
 by mx.groups.io with SMTP id smtpd.web11.2872.1738265033592056753
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jan 2025 11:23:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aEtcpIbr;
 spf=pass (domain: gmail.com, ip: 209.85.160.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2a88c7fabdeso594618fac.1
        for <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 11:23:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738265032; x=1738869832; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHb/6XTw0QbGET5lmg8iDE1hfD4CsJQnhVtP3AOo+0g=;
        b=aEtcpIbrx8sCLVmTUsRutwyqwNcBd2Kg8q+TWzgryxpmpGLKLnEa2jey0mRXnH2eFn
         PWj1joWYmxIkjzGYxrvbRIb1o4+lJQal2ki1LzDeVYFWP4K7G1HmKR3BZ7aO+H5Am27o
         V8U0NCTCxMfgU2CdloDcrgcHfa8eGlg2Uxy0zoz22RAn6kNR0yjh0TBanxb4oX90M73X
         tos0Ujx93xY9NGUx+q6tVpIhH0Fm+1xHwjxOwTbEGRBDa//7qUekPioqxyFglTw8e66C
         Ve7rj29IATaV0rh9TtaeHjUHogXhDuLCU5+0Rdsni4EMbplSBSDrUS+yXke6f0i4PPBq
         VFSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738265032; x=1738869832;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IHb/6XTw0QbGET5lmg8iDE1hfD4CsJQnhVtP3AOo+0g=;
        b=HrCL5J/pR4WNSMZ4+5f9O2VgsKhMP0UgLaW3rh+BaooE7nWM5LfuWBYygP6nee3KoT
         bWzj2YxUjNSMcDEhZZg7Os/Uv8CPbyGZMOWEB2ZLE6F3ir9trCL2yHP9qETqbWmOjzaQ
         tT+e7Wmki6wA9ZFrHFjBf+MxaqS96CxF2XaaQUXvd8dqmMWN7F3DPQvVTV8H8gC63s9E
         +y75JJ0CFh7puN1LrU7KscsfhEKKUpTz/joEObRo8j/1ibaN+eY9LX8W/11TFEMET10a
         SyWR49RLPzWlIYFVHSoeO3ZVqz97D+4TOj50HjRBSUTZ7MKdMhBBL3kbHJsCAyA69LkJ
         k6Yw==
X-Gm-Message-State: AOJu0Yy+qNW5B3tXrEfdRR2rm7cEiAr2xgCYGiMhmo4JO1+ay1OCZOt7
	POtL9uFdRm6eAkKwdfYyazvK8aLmxITeZE+6MS5ds3d3py7pcl/ZMCREaYwBUVbU5l+Git+Cwj8
	KNoBWyqnlQpYKYK+Yxihfp1sEiW+v3xn3rAI=
X-Gm-Gg: ASbGncuyTYhxfrnju9VkG384Ep65pdsT8Id4tThSqH/kLdIfR/4qvAuHx69PPJtGcVt
	130SufvJ4lUt6S0dS5KNoUKvVjxtu4N1Vhm2MrBok1bpIk2MKRhWR6e+/n9HHUcgXXmqvAV6HLP
	DuXxyZQUBFNCPDbm5Qz58/qlXzvQ==
X-Google-Smtp-Source: AGHT+IFnr4wZEN4ZFNfQ5gHZS2dkxDcIwBSCLclXuimVH2ZPdDY6YrGdPCzSLFXj81DIQGYV8ppKEvjhHWtjrL5hP8g=
X-Received: by 2002:a05:6870:6e89:b0:29e:65b3:27f5 with SMTP id
 586e51a60fabf-2b32f0a8141mr5056595fac.19.1738265031695; Thu, 30 Jan 2025
 11:23:51 -0800 (PST)
MIME-Version: 1.0
References: <1646221241.2878887.1738090865572@webmail.strato.de>
In-Reply-To: <1646221241.2878887.1738090865572@webmail.strato.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Jan 2025 11:23:25 -0800
X-Gm-Features: AWEUYZmtRVo2Ky9YzeHkeYJoTfemJAKQM01kCGUMsBOnN2SyPotSLDSJ6rS2gmc
Message-ID: <CAMKF1sr3cdQKOF2f8MWsepgp+iyr8sMti+Mzxafwo+JP5ffdfg@mail.gmail.com>
Subject: Re: [yocto] Building Chromium for Toradex Verdin Module (Kirkstone)
To: yocto@lists.yoctoproject.org, kontakt@daniel-kampert.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Jan 2025 19:23:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64681

Can you check the build cmds ands see if
use_ozone=3Dtrue use_wayland=3Dtrue are set or not

On Tue, Jan 28, 2025 at 11:01=E2=80=AFAM Daniel Kampert via
lists.yoctoproject.org
<kontakt=3Ddaniel-kampert.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> I try to build Chromium for a Toradex module and a custom Kirkstone BSP w=
ith the help of this guide from Toradex: https://developer.toradex.com/linu=
x-bsp/6/application-development/gui/how-to-use-web-browser-linux.
>
> I had a few issues with applying these patches so I had to remove a few b=
ecause Yocto was complaining that some patches were already applied. After =
fixing this I run into this issue:
>
> | aarch64-tdx-linux-ld.lld: error: undefined symbol: createFrameBuffer(vo=
id*, void*, int, int)
> | >>> referenced by entry_points.cpp:1745 (./../../third_party/swiftshade=
r/src/OpenGL/libGLESv2/entry_points.cpp:1745)
> | >>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(L=
ibGLESv2exports::LibGLESv2exports())
> | >>> referenced by entry_points.cpp:1745 (./../../third_party/swiftshade=
r/src/OpenGL/libGLESv2/entry_points.cpp:1745)
> | >>> thinlto-cache/llvmcache-4D23FCCCC063500613CA78894C3B40A545B5F5A7:(L=
ibGLESv2exports::LibGLESv2exports())
> | clang-14: error: linker command failed with exit code 1 (use -v to see =
invocation)
>
> With the following build configuration:
>
> BB_VERSION =3D "2.0.0"
> BUILD_SYS =3D "x86_64-linux"
> NATIVELSBSTRING =3D "universal"
> TARGET_SYS =3D "aarch64-tdx-linux"
> MACHINE =3D "verdin-imx8mp"
> DISTRO =3D "tdx-wayland"
> DISTRO_VERSION =3D "6.8.1-devel-20250128181443+build.0"
> TUNE_FEATURES =3D "aarch64 armv8a crc cortexa53"
> TARGET_FPU =3D ""
> meta-filesystems
> meta-gnome
> meta-xfce
> meta-initramfs
> meta-networking
> meta-multimedia
> meta-python =3D "HEAD:66ec16850573a7ec69248b81f9904cdfba79b930"
> meta-clang =3D "kirkstone:d7f827890d0865c9862eeaee42fd367515d59557"
> meta =3D "HEAD:8c32d91b64ae296d7832ddeb42983f4f3c237946"
> meta-oe
> meta-webserver =3D "HEAD:de8681b4a2a101b99dd2c48d89a7de2ccd9a961f"
> meta-virtualization =3D "HEAD:a055d7dcafc58855081a5eac9a46b93b9b51012b"
> meta-cloud-services
> meta-openstack =3D "HEAD:783826eceb1b09496099f00a008062c0f9f4ee4e"
> meta-toradex-nxp =3D "HEAD:a82c2e40db2991924b21b12eb141e6fe5b62bb13"
> meta-toradex-bsp-common =3D "HEAD:ba654fce46cb76cf9b5141a219506f27db9d81b=
b"
> meta-toradex-demos =3D "HEAD:ad72d14becf6b54c1c76864eb691a369307672fa"
> meta-toradex-distro =3D "HEAD:3c38a3acc69b7ad28908044bc2735a9d4f2b4e9f"
> meta-toradex-chromium =3D "kirkstone:dabc120c27d7050a5fc881dbfda1bbf8410d=
be72"
> meta-freescale-distro =3D "HEAD:d5bbb487b2816dfc74984a78b67f7361ce404253"
> meta-freescale =3D "HEAD:c525e0c19bdc46d45f71873b5f286f49abb69418"
> meta-freescale-3rdparty =3D "HEAD:48516272d97f9415e0ee3ab54a923e4c40143e6=
9"
> meta-tpm =3D "HEAD:b9cf9cd639bc8d1b4828eb0bd012b71486d35176"
> meta-qt5 =3D "HEAD:644ebf220245bdc06e7696ccc90acc97a0dd2566"
> meta-poky =3D "HEAD:6e8a5bac75ca114ef2b4d3ca150b3f501519ea8f"
> meta-lts-mixins =3D "kirkstone/rust:9bc06b6a761f28cf82aae8a99afe27ed5e2ce=
4c9"
> meta-rust-bin =3D "<unknown>:<unknown>"
> meta-chromium =3D "HEAD:e232c2e21b96dc092d9af8bea4b3a528e7a46dd6"
>
> Has anybody an idea where the issue comes from?
>
> Thanks!
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / With kind regards
>
> Ing. Daniel Kampert, M. Sc.
> Embedded Systems Solutions
> Address: Hauptstr. 36 | 91469 Hagenb=C3=BCchach | Deutschland
> Phone: +49 (0)174 6932561
> E-Mail: kontakt@daniel-kampert.de
> Web: www.daniel-kampert.de
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64667): https://lists.yoctoproject.org/g/yocto/messag=
e/64667
> Mute This Topic: https://lists.yoctoproject.org/mt/110864825/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

