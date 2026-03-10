Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C9CAEB1048
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 10:28:51 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.37053.1773138507280978790
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 03:28:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=OJiV14Im;
 spf=pass (domain: smile.fr, ip: 209.85.128.44, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4853c3c2fe7so12032085e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 03:28:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1773138506; x=1773743306; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TfrsbJb0+oltoAvcM5OZdpkbogTbgV0lFMb5GNpcylQ=;
        b=OJiV14ImJCn3dbRRRATwf09qfMr4+lBz0hV0GYYVymoY+AbtC8h9/11OO9uTA4BdEn
         5VBrhgQczHpIV0U7cCf26veRjsG+iVh99aYXNpFYzTg++WgDdgg7/pYiZz9W1SpfABnl
         ZWF+ZfH4yEpXEpCAot6D1GVGTPbIGxqvfpvtw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773138506; x=1773743306;
        h=in-reply-to:references:to:cc:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TfrsbJb0+oltoAvcM5OZdpkbogTbgV0lFMb5GNpcylQ=;
        b=msRLxnmwbUGUDyLFEU3tPmVZR21/YPIMTnXVw9mHNxLgSUJa50/URYE3oktBm/UYLN
         dkVn+NVfe70e2iC1r9BU8toD7v4J9NFcEgfxw8fn1kHeEe/QMdll7De1M3sPrhXxlIfy
         hTTKEqa42qnXz8ld2aAeKlWmD0ZQxmCymAprZuS2WNXLOo8evwQGsz3LL58aAy56bBh2
         87t0eorfiVWkJceFAc2j8y05hO4H1AV1apycCXAE4X3hCxAbG+GCt0oU6f+UbdRhSgMT
         uiuUuGiErlFLJUtiAbxoa03UBMzotFSI6QuOhoDaAUyVE1VD/sIspnb4+U1M/WzWQik8
         t4iw==
X-Forwarded-Encrypted: i=1; AJvYcCWWiXpPqrkhZGQ6bO9moM9u0L2md6UmnDGugDp39Jvud4AoHi0fvomydp3BGS/yzt3FhMrR/Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzZFkenxi5MBojL7G0Q/LPsw4S0gvjPCWgrt0gCsy6o11mtTd2y
	SJbcxzYEfYYxgJwkgi/XUdLKOnjzJeFxoXmMltp+rWx/9tS5qka8njU3I/v5zJsFdBk=
X-Gm-Gg: ATEYQzwmrLQOP5wA1bE1wFmrimTW/Doprp2u++EKmI3oWOPWnxG6kcuKjD6JGDHZwJv
	OSC4nRvtupUEgFX7EIQ6OPEtVWGQa8USXuwOlHZNtG6miZaWJvalym0siTg28EhFpV556WnK8qK
	YEXy8rcJv/Dxc1Tydwvu3EmPqVa9eMaHnEn1QdT6klh+JDEbGbm1SkieAC+kiW+BpSkBzDoyoHz
	PZeJAETp0beBxF4Ck/iL4ftFyGbwxk6+OUsVo0eVoi1mEnv+oxxoFcogs18d6UmiRuBnn09eX1D
	vTt52H2yZ8fCa1oj2TgmywwMz5ucahBTT/O6OC8bCUx91sSk/UpkK+54/4rQjBWj1DF2gkE9Rej
	TiV+RBuSr/fODXQ7I3qK+OkKnkTVyHnpewdOanq240BleV9zIixcVZj0RVus/ofX9O7atCvMfKU
	IKw/av2uaGyhzo0s59pvDYyc7s0cLFi2n1+PldQo7q+csGMU6pGoz6tEsvJnM54gHq4PTm1lDmu
	yNlnwpuZesDy2w=
X-Received: by 2002:a05:600c:3f05:b0:485:3f72:3230 with SMTP id 5b1f17b1804b1-4853f723386mr87421265e9.15.1773138505435;
        Tue, 10 Mar 2026 03:28:25 -0700 (PDT)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-485419c2930sm112152615e9.0.2026.03.10.03.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2026 03:28:24 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 10 Mar 2026 11:28:24 +0100
Message-Id: <DGZ153Q9FNSV.1VGOTZNCW95C4@smile.fr>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 5.0.16
 (scarthgap-5.0.16) is Released
From: "Yoann Congal" <yoann.congal@smile.fr>
Cc: "Niko Mauno" <niko.mauno@vaisala.com>
To: <tero.kinnunen@vaisala.com>, "yocto-announce@lists.yoctoproject.org"
 <yocto-announce@lists.yoctoproject.org>, "Yocto-mailing-list"
 <yocto@lists.yoctoproject.org>, "chee.yang.lee@intel.com"
 <chee.yang.lee@intel.com>
X-Mailer: aerc 0.20.0
References: <BL4PR11MB87973FBA4E52B68C1974AFD3B946A@BL4PR11MB8797.namprd11.prod.outlook.com> <PA4PR06MB726108A2AE68E2DD5D911438E446A@PA4PR06MB7261.eurprd06.prod.outlook.com>
In-Reply-To: <PA4PR06MB726108A2AE68E2DD5D911438E446A@PA4PR06MB7261.eurprd06.prod.outlook.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 10:28:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66313

On Tue Mar 10, 2026 at 11:22 AM CET, Tero Kinnunen via lists.yoctoproject.o=
rg wrote:
>   Hello,
>
> We noticed that for meta-yocto, yocto-5.0.16 and yocto-5.0.15 tags seem t=
o point to same commit. [1]
>
> In poky repository yocto-5.0.16 commit, the DISTRO_VERSION appears to be =
still 5.0.15. [2]
>
> Wonder if this is intentional?

Intentional, no.

Note that it is cited in the "Known Issues" of this release:
> The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor i=
ssue, if a workaround is needed please cherry-pick:
>  - poky commit 06210079b2e10d6d3fb943afe87864267e329821, or
>  - meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.


> [1] https://git.yoctoproject.org/meta-yocto/commit/?h=3Dscarthgap&id=3D9b=
b6e6e8b016a0c9dfe290369a6ed91ef4020535
> [2] https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky.con=
f?h=3Dyocto-5.0.16&id=3D1d54d1c4736a114e1cecbe85a0306e3814d5ce70#n3
>
> Best regards,
>
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82- Tero
>
>
>
> ________________________________
> From: yocto-announce@lists.yoctoproject.org <yocto-announce@lists.yoctopr=
oject.org> on behalf of Lee Chee Yang via lists.yoctoproject.org <chee.yang=
.lee=3Dintel.com@lists.yoctoproject.org>
> Sent: Tuesday, March 10, 2026 6:55
> To: yocto-announce@lists.yoctoproject.org <yocto-announce@lists.yoctoproj=
ect.org>; Yocto-mailing-list <yocto@lists.yoctoproject.org>
> Subject: [yocto-announce] [ANNOUNCEMENT] Yocto Project 5.0.16 (scarthgap-=
5.0.16) is Released
>
> Hi
>
> We are pleased to announce the Yocto Project 5.0.16 Release is now availa=
ble for download.
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d54d=
1c4736a114e1cecbe85a0306e3814d5ce70.tar.bz2
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736a114e=
1cecbe85a0306e3814d5ce70.tar.bz2
>
> A gpg signed version of these release notes is available at:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/RELEASENOT=
ES
>
> Full Test Report:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/testreport=
.txt
>
> Thank you for everyone's contributions to this release.
>
> Chee Yang
> chee.yang.lee@intel.com
> Yocto Project Build and Release
>
> --------------------------
> yocto-5.0.16 Release Notes
> --------------------------
>
> This release breaks Ubuntu 20.04 compatibility. Ubuntu 20.04 lack kernel =
header recent enough to support the pseudo-native fixes.
> Ubuntu 20.04 is End-of-Life since 31 May 2025. Impacted users are encoura=
gded to upgrade to a actively supported host ditribution.
> Alternatively, a fix has been merged to scarthgap branch and can be appli=
ed on top of this release:
>  - https://git.openembedded.org/openembedded-core/commit/?h=3Dscarthgap&i=
d=3Dfe2666749094e896736ff24d6885419905488723
>  - https://git.yoctoproject.org/poky/commit/?h=3Dscarthgap&id=3D65c3ebea0=
5dde5cbc9d249e7949fabbc0047313e
>
>
> --------------------------
>  Repositories/Downloads
> --------------------------
>
> Repository Name: yocto-docs
> Repository Location: https://git.yoctoproject.org/yocto-docs
> Branch: scarthgap
> Tag: yocto-5.0.16
> Git Revision: 369f3307368eaea605983e80047377fd19ebd6bf
> Release Artefact: yocto-docs-369f3307368eaea605983e80047377fd19ebd6bf
> sha: e8ea8e2d5da2bfad868178d6fb37093c4f9ff06553f68970f0f730d6fb5cbd26
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/yocto-docs=
-369f3307368eaea605983e80047377fd19ebd6bf.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/yocto-docs-369f3=
307368eaea605983e80047377fd19ebd6bf.tar.bz2
>
> Repository Name: poky
> Repository Location: https://git.yoctoproject.org/poky
> Branch: scarthgap
> Tag: yocto-5.0.16
> Git Revision: 1d54d1c4736a114e1cecbe85a0306e3814d5ce70
> Release Artefact: poky-1d54d1c4736a114e1cecbe85a0306e3814d5ce70
> sha: efb75697fa7a8e35a3f46abcfa706400f56ae1d1b5e360b48d6ffa81f6a675e8
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/poky-1d54d=
1c4736a114e1cecbe85a0306e3814d5ce70.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/poky-1d54d1c4736=
a114e1cecbe85a0306e3814d5ce70.tar.bz2
>
> Repository Name: openembedded-core
> Repository Location: https://git.openembedded.org/openembedded-core
> Branch: scarthgap
> Tag: yocto-5.0.16
> Git Revision: a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
> Release Artefact: oecore-a1f4ae4e569bc0e36c27c1e4651e502e54d63b28
> sha: 10eefd2296206e5cbaf138de7dbd0dbe7bfc413618e924a123cd3f7f9a8418e0
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/oecore-a1f=
4ae4e569bc0e36c27c1e4651e502e54d63b28.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/oecore-a1f4ae4e5=
69bc0e36c27c1e4651e502e54d63b28.tar.bz2
>
> Repository Name: meta-yocto
> Repository Location: https://git.yoctoproject.org/meta-yocto
> Branch: scarthgap
> Tag: yocto-5.0.16
> Git Revision: 9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
> Release Artefact: meta-yocto-9bb6e6e8b016a0c9dfe290369a6ed91ef4020535
> sha: d9cfd2192d12ebc55553bc421f3ab00d1f49c5f5c4c70e48923da695d19e8e2a
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-yocto=
-9bb6e6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-yocto-9bb6e=
6e8b016a0c9dfe290369a6ed91ef4020535.tar.bz2
>
> Repository Name: meta-mingw
> Repository Location: https://git.yoctoproject.org/meta-mingw
> Branch: scarthgap
> Tag: yocto-5.0.16
> Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/meta-mingw=
-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/meta-mingw-bd9fe=
f71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
>
> Repository Name: bitbake
> Repository Location: https://git.openembedded.org/bitbake
> Branch: 2.8
> Tag: yocto-5.0.16
> Git Revision: 10118785e4a670bce4980e1044c0888a8b6e84af
> Release Artefact: bitbake-10118785e4a670bce4980e1044c0888a8b6e84af
> sha: 601a16210d7dc9b7a7306240d3e7013b3f950db8953fdd972151d715e050cc39
> Download Locations:
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.16/bitbake-10=
118785e4a670bce4980e1044c0888a8b6e84af.tar.bz2
> https://mirrors.edge.kernel.org/yocto/yocto/yocto-5.0.16/bitbake-10118785=
e4a670bce4980e1044c0888a8b6e84af.tar.bz2
>
>
> ---------------
>  Contributors
> ---------------
> Adarsh Jagadish Kamini
> Amaury Couderc
> Ankur Tyagi
> Antonin Godard
> Benjamin Robin (Schneider Electric)
> Daniel Turull
> Enrico Scholz
> Fred Bacon
> Het Patel
> Hitendra Prajapati
> Hugo SIMELIERE
> Ken Kurematsu
> Khai Dang
> Lee Chee Yang
> Paul Barker
> Peter Marko
> Quentin Schulz
> Richard Purdie
> Robert Yang
> Vijay Anusuri
> Yoann Congal
> Zoltan Boszormenyi
>
>
> ---------------
>  Known Issues
> ---------------
> The poky DISTRO_VERSION was incorrectly left at 5.0.15. This is a minor i=
ssue, if a workaround is needed please cherry-pick:
>  - poky commit 06210079b2e10d6d3fb943afe87864267e329821, or
>  - meta-yocto commit 03f93c769ec99e5086e492d8145eb308a718e8d3.
>
>
> ---------------
> Security Fixes
> ---------------
> curl: Fix CVE-2025-10148 CVE-2025-14017 CVE-2025-14524 CVE-2025-14819 CVE=
-2025-15079 CVE-2025-15224
> dropbear: Fix CVE-2019-6111
> expat: Fix CVE-2026-24515 CVE-2026-25210
> ffmpeg: Ignore CVE-2025-25469
> glib-2.0: Fix CVE-2025-13601 CVE-2025-14087 CVE-2025-14512 CVE-2026-0988
> glibc: FIx CVE-2025-15281 CVE-2026-0861 CVE-2026-0915
> inetutils: Fix CVE-2026-24061
> libarchive: Fix CVE-2025-60753 (follow-up fix)
> libpcap: Fix CVE-2025-11961 CVE-2025-11964
> libpng: Fix CVE-2026-22695 CVE-2026-22801
> libtasn1: Fix CVE-2025-13151
> libxml2: Fix CVE-2026-0989 CVE-2026-0990 CVE-2026-0992
> python-urllib3: Fix for CVE-2026-21441
> python3: Fix CVE-2025-12084 CVE-2025-13836 CVE-2025-13837
> qemu: Ignore CVE-2025-54566 CVE-2025-54567
> util-linux: Fix CVE-2025-14104
> zlib: Ignore CVE-2026-22184
>
> ---------------
> Fixes
> ---------------
> bitbake: knotty: Make sure getTerminalColumns() returns two integers
> bitbake: knotty: fix TIOCGWINSZ call for Python 3.14 and later
> build-appliance-image: Update to scarthgap head revision
> contributor-guide/recipe-style-guide.rst: explain difference between laye=
r and recipe license(s)
> contributor-guide/submit-changes.rst: remove mention of Upstream-Status
> cups: allow unknown directives in conf files
> dev-manual/packages.rst: fix example recipe version
> dev-manual/packages.rst: pr server: fix and explain why r0.X increments o=
n SRCREV change
> dev-manual/packages.rst: rename r0.0 to r0 when PR server is not enabled
> dev-manual/temporary-source-code.rst: fix definition of WORKDIR
> docbook-xml-dtd4: fix the fetching failure
> docs: Add a new "Security" section
> docs: Makefile: fix rsvg-convert --format capitalization
> ffmpeg: upgrade to 6.1.4
> glibc: stable 2.39 branch updates
> improve_kernel_cve_report: add script for postprocesing of kernel CVE dat=
a
> libtheora: set CVE_PRODUCT
> lighttpd: Fix trailing slash on files in mod_dirlisting
> meta/classes: fix missing vardeps for CVE status variables
> migration-guides: add release notes for 4.0.32, 5.0.14 and 5.0.15
> overview-manual/yp-intro.rst: change removed ECOSYSTEM to ABOUT
> overview-manual/yp-intro.rst: fix SDK type in bullet list
> overview-manual/yp-intro.rst: link to YP members and participants
> overview-manual: convert YP-flow-diagram.png to SVG
> pseudo: Add hard sstate dependencies for pseudo-native
> pseudo: Update to 1.9.3 release
> ref-manual/classes.rst: document the image-container class
> ref-manual/release-process.rst: add a "Development Cycle" section
> ref-manual/svg/releases.svg: mark styhead and walnascar EOL
> ref-manual/svg/releases.svg: mark whinlatter as current release
> ref-manual/variables.rst: document the CCACHE_TOP_DIR variable
> sdk-manual: appending-customizing: use none lexer for BitBake code blocks
> sdk-manual: appendix-obtain: fix default path for eSDK installer script
> sdk-manual: appendix-obtain: replace directory structure PNG with a parse=
d-literal block
> sdk-manual: appendix-obtain: replace eSDK directory structure PNG with a =
parsed-literal block
> sdk-manual: appendix-obtain: use parsed-literal block for naming conventi=
on of the installer scripts
> sdk-manual: delete sdk-title PNG
> sdk-manual: fix improper indent of general form of tarball installer scri=
pts
> sdk-manual: fix incorrect highlight language for console code-blocks
> sdk-manual: fix incorrect highlight language for text code-blocks
> sdk-manual: replace sdk-environment PNG with SVG
> sdk-manual: using: fix SDK filename example
> sdk-manual: working-projects: properly highlight code code-blocks
> test-manual/ptest.rst: detail the exit code and output requirements
> zlib: Add CVE_PRODUCT to exclude false positives
> zlib: cleanup obsolete CVE_STATUS[CVE-2023-45853]


--=20
Yoann Congal
Smile ECS


