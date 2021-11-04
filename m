Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48F36C433F5
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 00:26:46 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web09.5297.1635985605624931183
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 17:26:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ggxMrDMJ;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id o14so4080760pfu.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 17:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GtE3KjSN4Bp+N+q8sGu8LWxuu/zZXOVU7MEqGePURKQ=;
        b=ggxMrDMJYvoiz/BSC6UChPWRmJDsS1GwoElx5v64rH80ro7u4pFXoUupusGFmfcSW9
         X+QxKmpdfqhl0xDT2R8664axXOudnxz5KQE1N3DN6jY+JmATKcBdbA5NMiGKnRoXcOvj
         8mHVxKKbPHJQZh3LPQthjYSlKABYb3fv5YnJvr6rApirwk5OGse+CX2bI0BjCUoY+G1B
         DhuULoDhYrLUjQ1A/aNRM3IcJ2KAsXO1u5LNf97fMLyyqfXwlyCqHbQ/lKTkppXcvVnQ
         QmhbroNcluXqh6K/K1FIMNgfj2y7jURWBhNZgv9sRBTdYFtv8+MvueHWlaQNaNvex+G0
         wMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GtE3KjSN4Bp+N+q8sGu8LWxuu/zZXOVU7MEqGePURKQ=;
        b=pihMswe78ujEVZXSJAiskgLmSSLrDjFWvwjFT5tcvdS0JYNZGFuMrJCRZ7wEjA3sXa
         tfm31xHVjTh0+zipRRs20GnfAn05YMEBzfYVf/IAnvhyok4fFrya9aa9u6ZlSax7mgzX
         DRtsybSX9Mm3MH4YJYs0dQSxRL9oKb5y5sau8x8TfRseddfhnXdWzXKphevDo/odMPDj
         d3zrMQ5XBszxcEW1dw8c0TquU8g/LztzO5IOlEsOKLxtJM2VS3hRtyk+r9kc9sKk568w
         FnOLDfPsZ5ScyUw8/4QJ3X62730XZKUDCkhNm5mSm+oXeUkBxB9XfKORfaieXZATyR9K
         Vj+A==
X-Gm-Message-State: AOAM531Kywd8sNj7I/I76PTa/YKl+ZH5YhgdKXm38jg05nvd/xsKE6BO
	7ocWNCzO+pGYZB3jpcXn+lXYFpYKwHq8rZ3htOQ=
X-Google-Smtp-Source: 
 ABdhPJxG3A/C+Csg9dQjOM9u5qTr1Hq+65//RhsRa9+mp7rz/7EMCuPdqAaVUSjK6g5M03wyX9EybmAZhV2kN2M3kmI=
X-Received: by 2002:a05:6a00:1681:b0:46f:6fc0:e515 with SMTP id
 k1-20020a056a00168100b0046f6fc0e515mr47756358pfc.11.1635985605057; Wed, 03
 Nov 2021 17:26:45 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CO6PR02MB87407C625F4A1F4A228EC9C2B28D9@CO6PR02MB8740.namprd02.prod.outlook.com>
In-Reply-To: 
 <CO6PR02MB87407C625F4A1F4A228EC9C2B28D9@CO6PR02MB8740.namprd02.prod.outlook.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 4 Nov 2021 01:26:33 +0100
Message-ID: 
 <CA+chaQft9bsFnY8g7gxXPbSjEwzpc-LB62GRM__DHukn44oybQ@mail.gmail.com>
Subject: Re: [yocto] Dunfell - ERROR: ca-certificates-20211016-r0 do_fetch:
 Fetcher failure
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d8e10f05cfeb947c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 00:26:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55237

--000000000000d8e10f05cfeb947c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Most likely expired Let's Encrypt certificate (which salsa.debian.org where
ca-certificates are hoster is using) on your builder (host OS), see e.g.
for ubuntu:
https://bugs.launchpad.net/ubuntu/+source/openssl/+bug/1928989

So to fix this update ca-certificates on your host distribution and then it
should be fine.

On Thu, Nov 4, 2021 at 1:20 AM Darcy Watkins <dwatkins@sierrawireless.com>
wrote:

> Hi,
>
>
>
> After syncup of Yocto dunfell, I get the following error:
>
>
>
> dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $ bitbake
> ca-certificates -c fetch
>
> Loading cache: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
###################|
> Time: 0:00:00
>
> Loaded 4042 entries from dependency cache.
>
> Parsing recipes: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
#################|
> Time: 0:00:00
>
> Parsing of 2833 .bb files complete (2815 cached, 18 parsed). 4060 targets=
,
> 183 skipped, 0 masked, 0 errors.
>
> *WARNING*: No recipes available for:
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/firmw=
are/linux-firmware_git.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_4.19.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-distro/meta-openssl-fips=
/recipes-support/openssl/openssl_1.0.2%.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/che=
rrypy/cherrypy-python_%.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.6.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.8.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.6.bbappend
>
>
> /home/dwatkins/workspace/mgos/apollo17/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.7.bbappend
>
> *NOTE*: Resolving any missing task queue dependencies
>
>
>
> Build Configuration:
>
> BB_VERSION           =3D "1.46.0"
>
> BUILD_SYS            =3D "x86_64-linux"
>
> NATIVELSBSTRING      =3D "universal"
>
> TARGET_SYS           =3D "arm-poky-linux-gnueabi"
>
> MACHINE              =3D "mg90"
>
> DISTRO               =3D "mgos"
>
> DISTRO_VERSION       =3D "3.1.11"
>
> TUNE_FEATURES        =3D "arm vfp cortexa7 neon callconvention-hard"
>
> TARGET_FPU           =3D "hard"
>
> meta-mgos-core       =3D "main:96c5c6d35f19d16f65100ee29cb23e9a1470876c"
>
> meta-mgos-release    =3D "main:0825ac63c95db495330848f80d6d68b6f47a77d4"
>
> meta-mg90-bsp        =3D "main:47d0284b7a337df7587055c405213f9428c94884"
>
> meta-mgos-airprime   =3D "main:5e8ffb01629c60d282b22e3313740e3b2cf325f4"
>
> meta
>
> meta-daisy-cf
>
> meta-openssl-fips
>
> meta-sigma           =3D "main:abf8a7a7408b690dfb0dff796ce8e94b6b661b0d"
>
> meta
>
> meta-poky
>
> meta-yocto-bsp       =3D "HEAD:0810ac6b926cd901f0619e95f367efc79d4c3159"
>
> meta-oe
>
> meta-networking
>
> meta-python
>
> meta-perl            =3D "HEAD:814eec96c2a29172da57a425a3609f8b6fcc6afe"
>
> meta-security
>
> meta-integrity
>
> meta-security-compliance
>
> meta-security-isafw  =3D "HEAD:b76698c788cb8ca632077a972031899ef15025d6"
>
> meta-freescale       =3D "HEAD:727fd8df20c8ee58474ce15cd5e1459f14bee977"
>
> meta-java            =3D "HEAD:6e84638d77ac921aac46649095bca5ddbde94d2a"
>
> workspace            =3D "<unknown>:<unknown>"
>
>
>
> Initialising tasks: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
##############|
> Time: 0:00:00
>
> Sstate summary: Wanted 0 Found 0 Missed 0 Current 0 (0% match, 0% complet=
e)
>
> *NOTE*: No setscene tasks
>
> *NOTE*: Executing Tasks
>
> *WARNING*: ca-certificates-20211016-r0 do_fetch: Failed to fetch URL
> git://salsa.debian.org/debian/ca-certificates.git;protocol=3Dhttps,
> attempting MIRRORS if available
>
> *ERROR*: ca-certificates-20211016-r0 do_fetch: Fetcher failure: Fetch
> command export PSEUDO_DISABLED=3D1; export
> PATH=3D"/home/dwatkins/workspace/mgos/apollo17/build/tmp/sysroots-uninati=
ve/x86_64-linux/usr/bin:/home/dwatkins/workspace/mgos/apollo17/upstream/yoc=
to/poky/scripts:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-p=
oky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/usr/bin/allarch=
-poky-linux:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-=
linux/ca-certificates/20211016-r0/recipe-sysroot/usr/bin/crossscripts:/home=
/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certific=
ates/20211016-r0/recipe-sysroot-native/usr/sbin:/home/dwatkins/workspace/mg=
os/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recip=
e-sysroot-native/usr/bin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/w=
ork/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/sbin:/=
home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-cert=
ificates/20211016-r0/recipe-sysroot-native/bin:/home/dwatkins/workspace/mgo=
s/apollo17/upstream/yocto/poky/bitbake/bin:/home/dwatkins/workspace/mgos/ap=
ollo17/build/tmp/hosttools";
> export HOME=3D"/home/dwatkins"; LANG=3DC git -c core.fsyncobjectfiles=3D0=
 fetch
> -f --progress "https://salsa.debian.org/debian/ca-certificates.git"
> refs/*:refs/* failed with exit code 128, no output
>
> *ERROR*: ca-certificates-20211016-r0 do_fetch: Bitbake Fetcher Error:
> FetchError('Unable to fetch URL from any source.', 'git://
> salsa.debian.org/debian/ca-certificates.git;protocol=3Dhttps')
>
> *ERROR*: Logfile of failure stored in:
> /home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-c=
ertificates/20211016-r0/temp/log.do_fetch.11215
>
> *ERROR*: Task
> (/home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta/recipes-=
support/ca-certificates/ca-certificates_20211016.bb:do_fetch)
> failed with exit code '1'
>
> *NOTE*: Tasks Summary: Attempted 1 tasks of which 0 didn't need to be
> rerun and 1 failed.
>
>
>
> Summary: 1 task failed:
>
>
> /home/dwatkins/workspace/mgos/apollo17/upstream/yocto/poky/meta/recipes-s=
upport/ca-certificates/ca-certificates_20211016.bb:
> do_fetch
>
> Summary: There were 2 WARNING messages shown.
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
> dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:64bit build $
>
>
>
>
>
> Looking in the git history, I find a recent commit=E2=80=A6
>
>
>
> commit 7158bf0775383eefcec148c47310b4681bfbed86
>
> Author: Alexander Kanavin <alex.kanavin@gmail.com>
>
> Date:   Tue Oct 19 17:33:29 2021 +0200
>
>
>
>     ca-certificates: update 20210119 -> 20211016
>
>
>
>     (From OE-Core rev: 43aa25b523b2c11ce483ea22435196dfca259b30)
>
>
>
>     Signed-off-by: Alexander Kanavin <alex@linutronix.de>
>
>     Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>     (cherry picked from commit c479b8a810d966d7267af1b4dac38a46f55fc547)
>
>     Signed-off-by: Steve Sakoman <steve@sakoman.com>
>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>
>
>
>
>
> I don=E2=80=99t think this is necessarily the culprit as I likely fetched=
 long ago
> and have been using cached content since.
>
>
>
> Is this part of that unauthenticated GIT protocol issue?
>
>
>
>
>
>
>
> *Regards,*
>
>
>
> *Darcy*
>
>
>
> *Darcy Watkins ::  Senior Staff Engineer, Firmware*
>
>
>
> *SIERRA WIRELESS*
>
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +1 604 231
> 1100
>
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
>
> [M4]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55236):
> https://lists.yoctoproject.org/g/yocto/message/55236
> Mute This Topic: https://lists.yoctoproject.org/mt/86806146/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d8e10f05cfeb947c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Most likely expired Let&#39;s Encrypt certificate (which <=
a href=3D"http://salsa.debian.org">salsa.debian.org</a> where ca-certificat=
es are hoster is using) on your builder (host OS), see e.g. for ubuntu:<div=
><a href=3D"https://bugs.launchpad.net/ubuntu/+source/openssl/+bug/1928989"=
>https://bugs.launchpad.net/ubuntu/+source/openssl/+bug/1928989</a><br></di=
v><div><br></div><div>So to fix this update ca-certificates on your host di=
stribution and then it should be fine.</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 4, 2021 at 1:20 AM =
Darcy Watkins &lt;<a href=3D"mailto:dwatkins@sierrawireless.com" target=3D"=
_blank">dwatkins@sierrawireless.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-CA">
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">After syncup of Yocto dunfell, I get the following e=
rror:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p><span>dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:</span><span>64b=
it</span><span>
</span><span>build</span><span> $ bitbake ca-certificates -c fetch</span><u=
></u><u></u></p>
<p><span>Loading cache: 100% |#############################################=
###########################################################################=
###########################################################################=
##############################################|
 Time: 0:00:00</span><u></u><u></u></p>
<p><span>Loaded 4042 entries from dependency cache.</span><u></u><u></u></p=
>
<p><span>Parsing recipes: 100% |###########################################=
###########################################################################=
###########################################################################=
##############################################|
 Time: 0:00:00</span><u></u><u></u></p>
<p><span>Parsing of 2833 .bb files complete (2815 cached, 18 parsed). 4060 =
targets, 183 skipped, 0 masked, 0 errors.</span><u></u><u></u></p>
<p><span><b>WARNING</b></span><span>: </span><span>No recipes available for=
:</span><u></u><u></u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
90-bsp/recipes-kernel/firmware/linux-firmware_git.bbappend</span><u></u><u>=
</u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
90-bsp/recipes-kernel/linux/linux-qoriq_4.19.bbappend</span><u></u><u></u><=
/p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-distro/meta-openssl-fips/recipes-support/openssl/openssl_1.0.2%.bbappend=
</span><u></u><u></u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-core/recipes-support/cherrypy/cherrypy-python_%.bbappend</span><u></u><u=
></u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-core/recipes-support/hostapd/hostapd_2.6.bbappend</span><u></u><u></u></=
p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-core/recipes-support/hostapd/hostapd_2.8.bbappend</span><u></u><u></u></=
p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-core/recipes-support/wpa-supplicant/wpa-supplicant_2.6.bbappend</span><u=
></u><u></u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/meta-mg=
os-core/recipes-support/wpa-supplicant/wpa-supplicant_2.7.bbappend</span><u=
></u><u></u></p>
<p><span><b>NOTE</b>: Resolving any missing task queue dependencies</span><=
u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p><span>Build Configuration:</span><u></u><u></u></p>
<p><span>BB_VERSION </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;1.46.0&quot;</span><u></u><u></u></p>
<p><span>BUILD_SYS</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;x86_64-linux&quot;</span><u></u><u></u></p>
<p><span>NATIVELSBSTRING</span><span>=C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;universal&quot;</span><u></u><u></u></p>
<p><span>TARGET_SYS </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;arm-poky-linux-gnueabi&quot;</span><u></u><u></u></p=
>
<p><span>MACHINE</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
</span><span>=3D &quot;mg90&quot;</span><u></u><u></u></p>
<p><span>DISTRO </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0
</span><span>=3D &quot;mgos&quot;</span><u></u><u></u></p>
<p><span>DISTRO_VERSION </span><span>=C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;3.1.11&quot;</span><u></u><u></u></p>
<p><span>TUNE_FEATURES</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;arm vfp cortexa7 neon callconvention-hard&quot;</spa=
n><u></u><u></u></p>
<p><span>TARGET_FPU </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;hard&quot;</span><u></u><u></u></p>
<p><span>meta-mgos-core </span><span>=C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;main:96c5c6d35f19d16f65100ee29cb23e9a1470876c&quot;<=
/span><u></u><u></u></p>
<p><span>meta-mgos-release</span><span>=C2=A0 =C2=A0
</span><span>=3D &quot;main:0825ac63c95db495330848f80d6d68b6f47a77d4&quot;<=
/span><u></u><u></u></p>
<p><span>meta-mg90-bsp</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;main:47d0284b7a337df7587055c405213f9428c94884&quot;<=
/span><u></u><u></u></p>
<p><span>meta-mgos-airprime </span><span>=C2=A0
</span><span>=3D &quot;main:5e8ffb01629c60d282b22e3313740e3b2cf325f4&quot;<=
/span><u></u><u></u></p>
<p><span>meta</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span><u></u><u></u></p>
<p><span>meta-daisy-cf </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0</span><u></=
u><u></u></p>
<p><span>meta-openssl-fips </span><span>=C2=A0 =C2=A0</span><u></u><u></u><=
/p>
<p><span>meta-sigma </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;main:abf8a7a7408b690dfb0dff796ce8e94b6b661b0d&quot;<=
/span><u></u><u></u></p>
<p><span>meta</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</span><u></u><u></u></p>
<p><span>meta-poky </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</=
span><u></u><u></u></p>
<p><span>meta-yocto-bsp </span><span>=C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;HEAD:0810ac6b926cd901f0619e95f367efc79d4c3159&quot;<=
/span><u></u><u></u></p>
<p><span>meta-oe </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0</span><u></u><u></u></p>
<p><span>meta-networking </span><span>=C2=A0 =C2=A0 =C2=A0</span><u></u><u>=
</u></p>
<p><span>meta-python </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span>=
<u></u><u></u></p>
<p><span>meta-perl</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;HEAD:814eec96c2a29172da57a425a3609f8b6fcc6afe&quot;<=
/span><u></u><u></u></p>
<p><span>meta-security </span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0</span><u></=
u><u></u></p>
<p><span>meta-integrity</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0</span><u></=
u><u></u></p>
<p><span>meta-security-compliance</span><span>=C2=A0</span><u></u><u></u></=
p>
<p><span>meta-security-isafw</span><span>=C2=A0
</span><span>=3D &quot;HEAD:b76698c788cb8ca632077a972031899ef15025d6&quot;<=
/span><u></u><u></u></p>
<p><span>meta-freescale </span><span>=C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;HEAD:727fd8df20c8ee58474ce15cd5e1459f14bee977&quot;<=
/span><u></u><u></u></p>
<p><span>meta-java</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;HEAD:6e84638d77ac921aac46649095bca5ddbde94d2a&quot;<=
/span><u></u><u></u></p>
<p><span>workspace</span><span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
</span><span>=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</span><u></u><=
u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p><span>Initialising tasks: 100% |########################################=
###########################################################################=
###########################################################################=
##############################################|
 Time: 0:00:00</span><u></u><u></u></p>
<p><span>Sstate summary: Wanted 0 Found 0 Missed 0 Current 0 (0% match, 0% =
complete)</span><u></u><u></u></p>
<p><span><b>NOTE</b>: No setscene tasks</span><u></u><u></u></p>
<p><span><b>NOTE</b>: Executing Tasks</span><u></u><u></u></p>
<p><span><b>WARNING</b></span><span>: </span><span>ca-certificates-20211016=
-r0 do_fetch: Failed to fetch URL git://<a href=3D"http://salsa.debian.org/=
debian/ca-certificates.git;protocol=3Dhttps" target=3D"_blank">salsa.debian=
.org/debian/ca-certificates.git;protocol=3Dhttps</a>, attempting MIRRORS if=
 available</span><u></u><u></u></p>
<p><span><b>ERROR</b></span><span>: </span><span>ca-certificates-20211016-r=
0 do_fetch: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; expo=
rt PATH=3D&quot;/home/dwatkins/workspace/mgos/apollo17/build/tmp/sysroots-u=
ninative/x86_64-linux/usr/bin:/home/dwatkins/workspace/mgos/apollo17/upstre=
am/yocto/poky/scripts:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work=
/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/usr/bin/a=
llarch-poky-linux:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all=
-poky-linux/ca-certificates/20211016-r0/recipe-sysroot/usr/bin/crossscripts=
:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-ce=
rtificates/20211016-r0/recipe-sysroot-native/usr/sbin:/home/dwatkins/worksp=
ace/mgos/apollo17/build/tmp/work/all-poky-linux/ca-certificates/20211016-r0=
/recipe-sysroot-native/usr/bin:/home/dwatkins/workspace/mgos/apollo17/build=
/tmp/work/all-poky-linux/ca-certificates/20211016-r0/recipe-sysroot-native/=
sbin:/home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/c=
a-certificates/20211016-r0/recipe-sysroot-native/bin:/home/dwatkins/workspa=
ce/mgos/apollo17/upstream/yocto/poky/bitbake/bin:/home/dwatkins/workspace/m=
gos/apollo17/build/tmp/hosttools&quot;;
 export HOME=3D&quot;/home/dwatkins&quot;; LANG=3DC git -c core.fsyncobject=
files=3D0 fetch -f --progress &quot;<a href=3D"https://salsa.debian.org/deb=
ian/ca-certificates.git" target=3D"_blank">https://salsa.debian.org/debian/=
ca-certificates.git</a>&quot; refs/*:refs/* failed with exit code 128, no o=
utput</span><u></u><u></u></p>
<p><span><b>ERROR</b></span><span>: </span><span>ca-certificates-20211016-r=
0 do_fetch: Bitbake Fetcher Error: FetchError(&#39;Unable to fetch URL from=
 any source.&#39;, &#39;git://<a href=3D"http://salsa.debian.org/debian/ca-=
certificates.git;protocol=3Dhttps" target=3D"_blank">salsa.debian.org/debia=
n/ca-certificates.git;protocol=3Dhttps</a>&#39;)</span><u></u><u></u></p>
<p><span><b>ERROR</b></span><span>: </span><span>Logfile of failure stored =
in: /home/dwatkins/workspace/mgos/apollo17/build/tmp/work/all-poky-linux/ca=
-certificates/20211016-r0/temp/log.do_fetch.11215</span><u></u><u></u></p>
<p><span><b>ERROR</b></span><span>: </span><span>Task (/home/dwatkins/works=
pace/mgos/apollo17/upstream/yocto/poky/meta/recipes-support/ca-certificates=
/ca-certificates_20211016.bb:do_fetch) failed with exit code &#39;1&#39;</s=
pan><u></u><u></u></p>
<p><span><b>NOTE</b>: Tasks Summary: Attempted 1 tasks of which 0 didn&#39;=
t need to be rerun and 1 failed.</span><u></u><u></u></p>
<p><u></u>=C2=A0<u></u></p>
<p><span>Summary: 1 task failed:</span><u></u><u></u></p>
<p><span>=C2=A0 </span><span>/home/dwatkins/workspace/mgos/apollo17/upstrea=
m/yocto/poky/meta/recipes-support/ca-certificates/ca-certificates_20211016.=
bb:do_fetch</span><u></u><u></u></p>
<p><span>Summary: There were 2 WARNING messages shown.</span><u></u><u></u>=
</p>
<p><span>Summary: There were 2 ERROR messages shown, returning a non-zero e=
xit code.</span><u></u><u></u></p>
<p><span>dwatkins@carmd-ed-n11377-docker-dwatkins_apollo17:</span><span>64b=
it</span><span>
</span><span>build</span><span> $</span><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Looking in the git history, I find a recent commit=
=E2=80=A6<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:rgb(170,171,37)">commit 7158bf0775383eefcec148c47310b4681bfbed86<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">Author: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmai=
l.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">Date: =C2=A0 Tue Oct 19 17:33:29 2021 +0200<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 ca-certificates: update 20210119 -&gt; 20211016<u><=
/u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0=C2=A0 =C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 (From OE-Core rev: 43aa25b523b2c11ce483ea22435196df=
ca259b30)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0=C2=A0 =C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 Signed-off-by: Alexander Kanavin &lt;<a href=3D"mai=
lto:alex@linutronix.de" target=3D"_blank">alex@linutronix.de</a>&gt;<u></u>=
<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 Signed-off-by: Alexandre Belloni &lt;<a href=3D"mai=
lto:alexandre.belloni@bootlin.com" target=3D"_blank">alexandre.belloni@boot=
lin.com</a>&gt;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto=
:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linux=
foundation.org</a>&gt;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 (cherry picked from commit c479b8a810d966d7267af1b4=
dac38a46f55fc547)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 Signed-off-by: Steve Sakoman &lt;<a href=3D"mailto:=
steve@sakoman.com" target=3D"_blank">steve@sakoman.com</a>&gt;<u></u><u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.5pt;font-family:Menlo;col=
or:black">=C2=A0 =C2=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto=
:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linux=
foundation.org</a>&gt;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I don=E2=80=99t think this is necessarily the culpri=
t as I likely fetched long ago and have been using cached content since.<u>=
</u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is this part of that unauthenticated GIT protocol is=
sue?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::=C2=A0=C2=A0=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">=C2=A0</span></b><span lang=
=3D"EN-US"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:red">SIERRA W=
IRELESS</span></b><span lang=3D"EN-US" style=3D"color:red"><u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Direct=C2=A0 +1 604 233 7989=C2=
=A0 =C2=A0::=C2=A0=C2=A0Fax=C2=A0=C2=A0+1 604 231 1109=C2=A0 ::=C2=A0=C2=A0=
Main=C2=A0=C2=A0+1 604 231 1100<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way=C2=A0 ::=C2=
=A0Richmond, BC Canada V6V 3A4<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><a href=3D"mailto:dwatkins@sier=
rawireless.com" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">dwatk=
ins@sierrawireless.com</span></a>=C2=A0::=C2=A0<a href=3D"http://www.sierra=
wireless.com/" target=3D"_blank"><span style=3D"color:rgb(5,99,193)">www.si=
errawireless.com</span></a>
</span><u></u><u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55236): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55236" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55236</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86806146/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86806146/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d8e10f05cfeb947c--

