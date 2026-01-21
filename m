Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3E5C44501
	for <webhook@archiver.kernel.org>; Wed, 21 Jan 2026 10:38:30 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8832.1768991909127920515
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jan 2026 02:38:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=bofU34+0;
 spf=pass (domain: smile.fr, ip: 209.85.221.47, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-432d2c96215so5137199f8f.3
        for <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 02:38:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768991907; cv=none;
        d=google.com; s=arc-20240605;
        b=XsRenWCYUckxF+wzhHVg5rTYwoW60HXTqb6twjzx5bvDqXtBUnzj6h8hdrgfsWeUse
         etr0jbo2X4w0fPCPItdW2Z64x2DL67k8YqXiKwV5hG5lKcwkmh7puOYGOWOU8H62ENwH
         dCmscZiWy+Th6jAtagX5d92K0+vJ7tLnsa1Z3WCOyaiPEcvqIjCAfnWTEsotnCmZCeGb
         CDUdekP3KLDdRBdI2kBcZryT13nWrB97hqglvOnXbaHuKcCB824bUdaIATjaDDZWjA1X
         RMaMGVwZ8BurrQ8coySfOPpY0fBbQmmEQr9lyRIXG18/01UMhVgRzSj8VhC0iqo0rvtz
         m5Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ibXXnAEfaBywNhvc+f1eELxmObjPgg1+vXe/UtymqeY=;
        fh=Xulo/uNdS8B1H8mk8yxPHS1joJHk2vLg1y2kAzKVVHw=;
        b=e0+m7dMd2a9tfEPej2OO/rzoceZrIz67Lz/46ocBOJxiJArodfBN+M3YkbndeHpFpm
         6aGCpNhHT2RwmRJq0lBUU3xE+JlHNFGRlqhnoMvCB7NxDQ6gDC4Z+ryGeREbEoomafl1
         53e/mnoYJxSmOi3ItKwvYEwjSY7Q0Y3QPfYvj0vRe4TZG93tBya/tJVVaxuYbvc1tD5O
         iu4NuDWjBIr/fZV+kWqqhztca0jOSiFN8mk8ndZdHb52HsLxsKjiywut4kqnsETy/YML
         sj7mzUkEbb349rDGHerdoyR5qrZkmqty05ZRM5+qONQaAcBLYPdseHByZd3brwtm0vFI
         MjDg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1768991907; x=1769596707; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ibXXnAEfaBywNhvc+f1eELxmObjPgg1+vXe/UtymqeY=;
        b=bofU34+0zfOKIG2+qpaPURaQNYtFQw2YG04241K+r77KnSHZEdeMKkJ00b1Z81VHmP
         X1wr2F6ti3tNKC88jTrf8HfnBKoIw3o822Vz+61AO0+FndflGehQ1JBdOOlyqk9A6aG7
         WCPyS2QPr0QKIXu6k4WdiN6oYB7NvcZ0gqEOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768991907; x=1769596707;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ibXXnAEfaBywNhvc+f1eELxmObjPgg1+vXe/UtymqeY=;
        b=H2c/mKdidpxM+VlQCxnqQdLrdl6klAoLlvbYV4QpE7vG2JQUnj3DNKTO8rCEeyIcIv
         EHjQnmN0Fdx3l9j71FFDlgblG1cSFVjv4KyFjFlJXb1WDemhk1MyW5pBQlChuHD61upy
         4rm0kjQ9EVyfTwaNsJWNh+IiYN275gvSqIU7eG6lKRZn8ORPtEQRVQetXQ+wZ+OUiKkp
         GrI8OGHQEupFcBS3xEq3yqjp+FaLzs8LpWZpb19Hw6wVsib/HWD/37YZ692l0LqwEYYW
         d12U7n8gk5gaKWVcVm8ota+lPoLOzKLXnTyDREIQQWSuccGgtuU+hsjDlmF+kZpuDmto
         bzvg==
X-Gm-Message-State: AOJu0Yyl03cSHn9Bore1E1PnQImLYYNapaGoLcUcb1kJb2EEWmDC/HCU
	m8wlpU5wqOBegBCxwGV7WmGDPUEvO1Dq0OV/U3yL6ffS+vDVHfxlHCMFUuTPId+NgNFWsyEePrH
	XvuvRgiagoDhtIB1ZoBMfchXrSUHWEW4HymUOhmWe5g==
X-Gm-Gg: AZuq6aKaXiU56zGhxGI9sJjahRpSu5K5QlkVE58RoAHiDOadIHkWh6F5dLcrdqph8ul
	y/iFMd4dLHgM36ICE0IKO40OuXpOMI509UhJaAjuhhpZKwFKDXDHPKng+DZHsRelopHZFaEZjy9
	MaJPukkzy321CTwmTlPmmN7db4ngRrwivK2YWIZsjah4EZi+oeyqL7b99RP/TPbo3zSPuZtjBNF
	YZM4koeucdMRzkRzhBpXmSnJsaEEY27CekoGhD19NuXSu2nU67O4UYy+vOYDnJ0IHN78f5t/Q==
X-Received: by 2002:a05:6000:2307:b0:431:5d2:4526 with SMTP id
 ffacd0b85a97d-43569998dbcmr23878834f8f.19.1768991907224; Wed, 21 Jan 2026
 02:38:27 -0800 (PST)
MIME-Version: 1.0
References: <BL4PR11MB8797B987D5F7D6B03DBACE5EB996A@BL4PR11MB8797.namprd11.prod.outlook.com>
 <CAMSfU+4og5iAxadRkffgabZmuH=wEYATyMVbwiATUYU_s1CUPg@mail.gmail.com> <BL4PR11MB8797013E2F4556DA2548FC42B996A@BL4PR11MB8797.namprd11.prod.outlook.com>
In-Reply-To: <BL4PR11MB8797013E2F4556DA2548FC42B996A@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 21 Jan 2026 11:38:00 +0100
X-Gm-Features: AZwV_QiQIHfxQZ72V88uERMpz7x_V3MiqWkJnKfcfwd_cWKUDYx-nhuur3sl5v8
Message-ID: <CAMSfU+6fFqbEWa68BO11et55=47tQEtWQS=hfdoREwR2z9DZTw@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5.0.15) is Released
To: "Lee, Chee Yang" <chee.yang.lee@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003db3520648e3866d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jan 2026 10:38:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66168

--0000000000003db3520648e3866d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 21 janv. 2026 =C3=A0 11:33, Lee, Chee Yang <chee.yang.lee@intel.com=
> a
=C3=A9crit :

> The sync to mirrors.kernel.org is in progress, might take some time to
> fully sync. =F0=9F=99=82
>

Ok, I will remember to wait a little before clicking :)

Thanks!


> ------------------------------
> *From:* Yoann Congal <yoann.congal@smile.fr>
> *Sent:* Wednesday, 21 January 2026 6:22 pm
> *To:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Lee,
> Chee Yang <chee.yang.lee@intel.com>
> *Cc:* yocto-announce@lists.yoctoproject.org <
> yocto-announce@lists.yoctoproject.org>
> *Subject:* Re: [yocto] [ANNOUNCEMENT] Yocto Project
> 5.0.15(scarthgap-5.0.15) is Released
>
> Hello,
>
> Le mer. 21 janv. 2026 =C3=A0 11:02, Lee Chee Yang via lists.yoctoproject.=
org
> <chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hi
>
> We are pleased to announce the Yocto Project 5.0.15 Release is now
> available for download.
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983=
ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
>
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebc=
eb45edc7a8f0f6d5f4fe715c.tar.bz2
>
>
>
> FYI, right now, the https://mirrors.kernel.org/... URL returns 404 (the
> directory is present but the files are not)
>
>
> A gpg signed version of these release notes is available at:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOT=
ES
>
>
> Full Test Report:
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport=
.txt
>
>
> Thank you for everyone's contributions to this release.
>
> Chee Yang
> chee.yang.lee@intel.com
> Yocto Project Build and Release
>
>
> --------------------------
> yocto-5.0.15 Release Notes
> --------------------------
>
> Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen
> obtuse failures in the execution of tar in various tasks after recent hos=
t
> distro updates. These newer versions of tar contain a CVE fix
> which uses a new glibc call/syscall (openat2). The fix is to update to a
> newer pseudo version which handles this syscall. This is not included in
> this stable release but we aim to include it in the next one.
>
> --------------------------
>  Repositories/Downloads
> --------------------------
>
> Repository Name: yocto-docs
> Repository Location: https://git.yoctoproject.org/yocto-docs
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518
> Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518
> sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-docs=
-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4f=
c505e8386693306b6a90b0064c0518.tar.bz2
>
> Repository Name: poky
> Repository Location: https://git.yoctoproject.org/poky
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c
> sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983=
ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebc=
eb45edc7a8f0f6d5f4fe715c.tar.bz2
>
> Repository Name: openembedded-core
> Repository Location: https://git.openembedded.org/openembedded-core
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1
> Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1
> sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-698=
8157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad98397=
8ffd6b12bcefedd4deaffdbbd1.tar.bz2
>
> Repository Name: meta-yocto
> Repository Location: https://git.yoctoproject.org/meta-yocto
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815
> Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815
> sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yocto=
-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa333=
3cda3a4ae4706ce6577b987ba3a815.tar.bz2
>
> Repository Name: meta-mingw
> Repository Location: https://git.yoctoproject.org/meta-mingw
> Branch: scarthgap
> Tag: yocto-5.0.15
> Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-mingw=
-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec=
005be3c3a6d7f8b99d8116daf70c4f.tar.bz2
>
> Repository Name: bitbake
> Repository Location: https://git.openembedded.org/bitbake
> Branch: 2.8
> Tag: yocto-5.0.15
> Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a
> Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a
> sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8d=
cf084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c=
66a6639b5f117f554fde9b6b45a.tar.bz2
>
>
> ---------------
>  Contributors
> ---------------
>
> Thanks to the following people who contributed to this release:
>
> Adarsh Jagadish Kamini
> Aleksandar Nikolic
> Alexander Kanavin
> Benjamin Robin (Schneider Electric)
> Changqing Li
> Daniel Turull
> Deepak Rathore
> Deepesh Varatharajan
> Enrico J=C3=B6rns
> Gyorgy Sarvari
> Hitendra Prajapati
> Hongxu Jia
> Hugo SIMELIERE
> Jiaying Song
> Kai Kang
> Kamel Bouhara (Schneider Electric)
> Lee Chee Yang
> Martin Jansa
> Mingli Yu
> Moritz Haase
> Osama Abdelkader
> Ovidiu Panait
> Peter Marko
> Praveen Kumar
> Quentin Schulz
> Robert P. J. Day
> Ross Burton
> Steve Sakoman
> Vijay Anusuri
> Walter Werner SCHNEIDER
> Yash Shinde
> Yogita Urade
>
> ---------------
>  Known Issues
> ---------------
> N/A
>
>
> ---------------
> Security Fixes
> ---------------
> binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840
> cmake-native: Fix CVE-2025-9301
> cups: Fix CVE-2025-58436 CVE-2025-61915
> gnutls: Fix CVE-2025-9820
> go: Fix CVE-2025-61727 CVE-2025-61729
> go: Update CVE-2025-58187 patches
> grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663
> CVE-2025-61664
> libarchive: Fix CVE-2025-60753
> libarchive: Fix 2 security issue (
> https://github.com/libarchive/libarchive/pull/2753 and
> https://github.com/libarchive/libarchive/pull/2768)
> libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable
> experimental code
> libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018
> CVE-2025-66293
> libsoup: Fix CVE-2025-12105
> libssh2: Fix CVE-2023-48795
> libxml2: Fix CVE-2025-7425
> libxslt: Fix CVE-2025-11731
> musl: Fix CVE-2025-26519
> python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471
> python3: Fix CVE-2025-6075
> qemu: Fix CVE-2025-12464
> rsync: Fix CVE-2025-10158
> ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594
> sqlite3: Fix CVE-2025-7709
> xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
> xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231
>
>
> ---------------
> Fixes/Feature Changes
> ---------------
> build-appliance-image: Update to scarthgap head revision
> classes/create-spdx-2.2: Define SPDX_VERSION to 2.2
> cml1.bbclass: use consistent make flags for menuconfig
> cross.bbclass: Propagate dependencies to outhash
> curl: Ensure 'CURL_CA_BUNDLE' from host env is indeed respected
> curl: Use host CA bundle by default for native(sdk) builds
> cve-check: extract extending CVE_STATUS to library function
> dev-manual/layers.rst: document "bitbake-layers show-machines"
> dev-manual/new-recipe.rst: replace 'bitbake -e' with 'bitbake-getvar'
> dev-manual/new-recipe.rst: typo, "whith" -> "which"
> dev-manual/new-recipe.rst: update "recipetool -h" output
> dev-manual/sbom.rst: reflect that create-spdx is enabled by default
> dev-manual: debugging: use bitbake-getvar in Viewing Variable Values
> section
> documentation: link to the Releases page on yoctoproject.org instead of
> wiki
> glslang: fix compiling with gcc15
> go: add sdk test
> go: extend runtime test
> go: remove duplicate arch map in sdk test
> goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures
> kernel-dev: add disable config example
> kernel-dev: common: migrate bitbake -e to bitbake-getvar
> kernel.bbclass: Add task to export kernel configuration to SPDX
> libssh2: fix regression in KEX method validation (GH-1553)
> libssh2: upgrade to 1.11.1
> migration-guides: add release notes for 4.0.31 and 5.0.13
> oe/sdk: fix empty SDK manifests
> oeqa/sdk/buildepoxy: skip test in eSDK
> oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and
> PACKAGECONFIG
> oeqa: drop unnecessary dependency from go runtime tests
> oeqa: fix package detection in go sdk tests
> overview-manual: migrate to SVG + fix typo
> poky.conf: bump version for 5.0.15
> ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar
> ruby: Upgrade to 3.3.10
> rust-target-config: fix nativesdk-libstd-rs build with baremetal
> scripts/install-buildtools: Update to 5.0.14
> spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM
> spdx30: fix cve status for patch files in VEX
> spdx30: provide all CVE_STATUS, not only Patched status
> spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX
> spdx: Revert "spdx: Update for bitbake changes"
> spdx: extend CVE_STATUS variables
> testsdk: allow user to specify which tests to run
> vex.bbclass: add a new class
> vex: fix rootfs manifest
> xserver-xorg: remove redundant patch
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66165):
> https://lists.yoctoproject.org/g/yocto/message/66165
> Mute This Topic: https://lists.yoctoproject.org/mt/117378981/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>
> --
> Yoann Congal
> Smile ECS
>


--=20
Yoann Congal
Smile ECS

--0000000000003db3520648e3866d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mer. 21=
 janv. 2026 =C3=A0=C2=A011:33, Lee, Chee Yang &lt;<a href=3D"mailto:chee.ya=
ng.lee@intel.com">chee.yang.lee@intel.com</a>&gt; a =C3=A9crit=C2=A0:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg6874=
823132129657514">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The sync to <a href=3D"http://mirrors.kernel.org" target=3D"_blank">mirrors=
.kernel.org</a> is in progress, might take some time to fully sync.
<span id=3D"m_-3251081575842796027=F0=9F=99=82">=F0=9F=99=82</span></div></=
div></div></blockquote><div><br></div><div>Ok, I will remember to wait a li=
ttle before clicking :)</div><div><br></div><div>Thanks!</div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg6874=
823132129657514"><div dir=3D"ltr"><div style=3D"font-family:Aptos,Aptos_Emb=
eddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;c=
olor:rgb(0,0,0)"><span id=3D"m_-3251081575842796027=F0=9F=99=82"></span></d=
iv>
<div id=3D"m_-3251081575842796027appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3251081575842796027divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank=
">yoann.congal@smile.fr</a>&gt;<br>
<b>Sent:</b> Wednesday, 21 January 2026 6:22 pm<br>
<b>To:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;; Lee, Ch=
ee Yang &lt;<a href=3D"mailto:chee.yang.lee@intel.com" target=3D"_blank">ch=
ee.yang.lee@intel.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto-announce@lists.yoctoproject.org" target=
=3D"_blank">yocto-announce@lists.yoctoproject.org</a> &lt;<a href=3D"mailto=
:yocto-announce@lists.yoctoproject.org" target=3D"_blank">yocto-announce@li=
sts.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.0.15(scarthgap-5=
.0.15) is Released</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div dir=3D"ltr">Hello,</div>
<br>
<div>
<div dir=3D"ltr">Le=C2=A0mer. 21 janv. 2026 =C3=A0=C2=A011:02, Lee Chee Yan=
g via
<a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproj=
ect.org</a> &lt;chee.yang.lee=3D<a href=3D"mailto:intel.com@lists.yoctoproj=
ect.org" target=3D"_blank">intel.com@lists.yoctoproject.org</a>&gt; a =C3=
=A9crit=C2=A0:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi=C2=A0<br>
<br>
We are pleased to announce the Yocto Project 5.0.15 Release is now availabl=
e for download.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a id=3D"m_-3251081575842796027x_m_3204446991504922251m_7311700050034234464=
anchor-57774d4f-b677-b841-b1dd-9dfc8e00b2f9" href=3D"https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f=
6d5f4fe715c.tar.bz2" target=3D"_blank">https://downloads.yoctoproject.org/r=
eleases/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.ta=
r.bz2</a>=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a id=3D"m_-3251081575842796027x_m_3204446991504922251m_7311700050034234464=
anchor-817928c9-4311-d0a0-ee95-dd1bc63bd8b2" href=3D"https://mirrors.kernel=
.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c=
.tar.bz2" target=3D"_blank">https://mirrors.kernel.org/yocto/yocto/yocto-5.=
0.15/poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a>=C2=A0</div>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>FYI, right now, the=C2=A0<a href=3D"https://mirrors.kernel.org/." targ=
et=3D"_blank">https://mirrors.kernel.org/.</a>.. URL returns 404 (the direc=
tory is present but the files are not)</div>
<div>=C2=A0</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
A gpg signed version of these release notes is available at:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a id=3D"m_-3251081575842796027x_m_3204446991504922251m_7311700050034234464=
anchor-689ef0b6-4dab-d744-c887-4be34bcd890a" href=3D"https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES" target=3D"_blank">ht=
tps://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/RELEASENOTES</=
a>=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Full Test Report:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a id=3D"m_-3251081575842796027x_m_3204446991504922251m_7311700050034234464=
anchor-6b272b1e-3f88-f5a3-d9d2-dd700e907ea9" href=3D"https://downloads.yoct=
oproject.org/releases/yocto/yocto-5.0.15/testreport.txt" target=3D"_blank">=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/testreport.t=
xt</a>=C2=A0<br>
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thank you for everyone&#39;s contributions to this release.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Chee Yang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"mailto:chee.yang.lee@intel.com" target=3D"_blank">chee.yang.lee@=
intel.com</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Yocto Project Build and Release<br>
<br>
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
yocto-5.0.15 Release Notes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Users of Alma 9, Rocky 9 and Centos Stream 9 rolling releases have seen obt=
use failures in the execution of tar in various tasks after recent host dis=
tro updates. These newer versions of tar contain a CVE fix<br>
which uses a new glibc call/syscall (openat2). The fix is to update to a ne=
wer pseudo version which handles this syscall. This is not included in this=
 stable release but we aim to include it in the next one.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0Repositories/Downloads</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
--------------------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: yocto-docs</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/yocto-docs" ta=
rget=3D"_blank">
https://git.yoctoproject.org/yocto-docs</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: yocto-docs-d84d916d4fc505e8386693306b6a90b0064c0518</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: 9020251d0bc11277df0afc1baad05566433d665f31c0b3a45e6cd01c0de6c099</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/y=
octo-docs-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/yocto-doc=
s-d84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d=
84d916d4fc505e8386693306b6a90b0064c0518.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/yocto-docs-d84d916d4fc505e83866=
93306b6a90b0064c0518.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: poky</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/poky" target=
=3D"_blank">
https://git.yoctoproject.org/poky</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: 72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: poky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: d5336d1ef1dd48b88cb92748c669360901004d458b7786ddc1918da12fef4edd</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/p=
oky-72983ac391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" target=3D"_blank">htt=
ps://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/poky-72983ac391=
008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac=
391008ebceb45edc7a8f0f6d5f4fe715c.tar.bz2" target=3D"_blank">https://mirror=
s.kernel.org/yocto/yocto/yocto-5.0.15/poky-72983ac391008ebceb45edc7a8f0f6d5=
f4fe715c.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: openembedded-core</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.openembedded.org/openembedded-c=
ore" target=3D"_blank">
https://git.openembedded.org/openembedded-core</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: 6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: oecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: 98a691ce87f9aba57007e91b56bbe0af6d6c8f62aacb68820026478ff8e1f819</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/o=
ecore-6988157ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2" target=3D"_blank">h=
ttps://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/oecore-698815=
7ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-69881=
57ad983978ffd6b12bcefedd4deaffdbbd1.tar.bz2" target=3D"_blank">https://mirr=
ors.kernel.org/yocto/yocto/yocto-5.0.15/oecore-6988157ad983978ffd6b12bcefed=
d4deaffdbbd1.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: meta-yocto</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/meta-yocto" ta=
rget=3D"_blank">
https://git.yoctoproject.org/meta-yocto</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: meta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: 91a1f0c65bd4fff4af2aef4b583d1366efc347726feb36a4d2cdfb480774cc19</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/m=
eta-yocto-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-yoct=
o-e1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e=
1363aa3333cda3a4ae4706ce6577b987ba3a815.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-yocto-e1363aa3333cda3a4ae4=
706ce6577b987ba3a815.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: meta-mingw</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.yoctoproject.org/meta-mingw" ta=
rget=3D"_blank">
https://git.yoctoproject.org/meta-mingw</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: scarthgap</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: meta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: ab073def6487f237ac125d239b3739bf02415270959546b6b287778664f0ae65</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/m=
eta-mingw-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2" target=3D"_blan=
k">https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/meta-ming=
w-bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-b=
d9fef71ec005be3c3a6d7f8b99d8116daf70c4f.tar.bz2" target=3D"_blank">https://=
mirrors.kernel.org/yocto/yocto/yocto-5.0.15/meta-mingw-bd9fef71ec005be3c3a6=
d7f8b99d8116daf70c4f.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Name: bitbake</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Repository Location: <a href=3D"https://git.openembedded.org/bitbake" targe=
t=3D"_blank">
https://git.openembedded.org/bitbake</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Branch: 2.8</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Tag: yocto-5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Git Revision: 8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Release Artefact: bitbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sha: 766eda21f2a914276d2723b1d8248be11507f954aef8fc5bb1767f3cb65688dd</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Download Locations:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/b=
itbake-8dcf084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2" target=3D"_blank">=
https://downloads.yoctoproject.org/releases/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf=
084522b9c66a6639b5f117f554fde9b6b45a.tar.bz2" target=3D"_blank">https://mir=
rors.kernel.org/yocto/yocto/yocto-5.0.15/bitbake-8dcf084522b9c66a6639b5f117=
f554fde9b6b45a.tar.bz2</a></div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0Contributors</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks to the following people who contributed to this release:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Adarsh Jagadish Kamini</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Aleksandar Nikolic</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Alexander Kanavin</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Benjamin Robin (Schneider Electric)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Changqing Li</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Daniel Turull</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Deepak Rathore</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Deepesh Varatharajan</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Enrico J=C3=B6rns</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Gyorgy Sarvari</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hitendra Prajapati</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hongxu Jia</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hugo SIMELIERE</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Jiaying Song</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Kai Kang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Kamel Bouhara (Schneider Electric)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Lee Chee Yang</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Martin Jansa</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Mingli Yu</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Moritz Haase</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Osama Abdelkader</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Ovidiu Panait</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Peter Marko</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Praveen Kumar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Quentin Schulz</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Robert P. J. Day</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Ross Burton</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Steve Sakoman</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Vijay Anusuri</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Walter Werner SCHNEIDER</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Yash Shinde</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Yogita Urade</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
=C2=A0Known Issues</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
N/A</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Security Fixes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
binutils: Fix CVE-2025-11494 CVE-2025-11839 CVE-2025-11840</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
cmake-native: Fix CVE-2025-9301</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
cups: Fix CVE-2025-58436 CVE-2025-61915</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
gnutls: Fix CVE-2025-9820</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
go: Fix CVE-2025-61727 CVE-2025-61729</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
go: Update CVE-2025-58187 patches</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
grub: Fix CVE-2025-54770 CVE-2025-61661 CVE-2025-61662 CVE-2025-61663 CVE-2=
025-61664</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libarchive: Fix CVE-2025-60753</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libarchive: Fix 2 security issue (<a href=3D"https://github.com/libarchive/=
libarchive/pull/2753" target=3D"_blank">https://github.com/libarchive/libar=
chive/pull/2753</a> and =C2=A0<a href=3D"https://github.com/libarchive/liba=
rchive/pull/2768" target=3D"_blank">https://github.com/libarchive/libarchiv=
e/pull/2768</a>)=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libmicrohttpd: Ignore CVE-2025-59777 CVE-2025-62689 by disable experimental=
 code</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libpng: Fix CVE-2025-64505 CVE-2025-64506 CVE-2025-64720 CVE-2025-65018 CVE=
-2025-66293</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libsoup: Fix CVE-2025-12105</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libssh2: Fix CVE-2023-48795</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libxml2: Fix CVE-2025-7425</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libxslt: Fix CVE-2025-11731</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
musl: Fix CVE-2025-26519</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
python3-urllib3: Fix CVE-2025-66418 CVE-2025-66471</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
python3: Fix CVE-2025-6075</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
qemu: Fix CVE-2025-12464</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
rsync: Fix CVE-2025-10158</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ruby: Fix CVE-2025-24294 CVE-2025-25186 CVE-2025-61594</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
sqlite3: Fix CVE-2025-7709</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
xserver-xorg: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
xwayland: Fix CVE-2025-62229 CVE-2025-62230 CVE-2025-62231</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Fixes/Feature Changes</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
---------------</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
build-appliance-image: Update to scarthgap head revision</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
classes/create-spdx-2.2: Define SPDX_VERSION to 2.2</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
cml1.bbclass: use consistent make flags for menuconfig</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
cross.bbclass: Propagate dependencies to outhash</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
curl: Ensure &#39;CURL_CA_BUNDLE&#39; from host env is indeed respected</di=
v>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
curl: Use host CA bundle by default for native(sdk) builds</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
cve-check: extract extending CVE_STATUS to library function</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual/layers.rst: document &quot;bitbake-layers show-machines&quot;</d=
iv>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual/new-recipe.rst: replace &#39;bitbake -e&#39; with &#39;bitbake-g=
etvar&#39;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual/new-recipe.rst: typo, &quot;whith&quot; -&gt; &quot;which&quot;<=
/div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual/new-recipe.rst: update &quot;recipetool -h&quot; output</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual/sbom.rst: reflect that create-spdx is enabled by default</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
dev-manual: debugging: use bitbake-getvar in Viewing Variable Values sectio=
n</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
documentation: link to the Releases page on <a href=3D"http://yoctoproject.=
org" target=3D"_blank">
yoctoproject.org</a> instead of wiki</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
glslang: fix compiling with gcc15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
go: add sdk test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
go: extend runtime test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
go: remove duplicate arch map in sdk test</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
goarch.bbclass: do not leak TUNE_FEATURES into crosssdk task signatures</di=
v>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
kernel-dev: add disable config example</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
kernel-dev: common: migrate bitbake -e to bitbake-getvar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
kernel.bbclass: Add task to export kernel configuration to SPDX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libssh2: fix regression in KEX method validation (GH-1553)</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
libssh2: upgrade to 1.11.1</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
migration-guides: add release notes for 4.0.31 and 5.0.13</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
oe/sdk: fix empty SDK manifests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
oeqa/sdk/buildepoxy: skip test in eSDK</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
oeqa/selftest: oe-selftest: Add SPDX tests for kernel config and PACKAGECON=
FIG</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
oeqa: drop unnecessary dependency from go runtime tests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
oeqa: fix package detection in go sdk tests</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
overview-manual: migrate to SVG + fix typo</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
poky.conf: bump version for 5.0.15</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ref-manual: variables: migrate the OVERRIDES note to bitbake-getvar</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
ruby: Upgrade to 3.3.10</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
rust-target-config: fix nativesdk-libstd-rs build with baremetal</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
scripts/install-buildtools: Update to 5.0.14</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx30: Provide software_packageUrl field in SPDX 3.0 SBOM</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx30: fix cve status for patch files in VEX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx30: provide all CVE_STATUS, not only Patched status</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx30_tasks: Add support for exporting PACKAGECONFIG to SPDX</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx: Revert &quot;spdx: Update for bitbake changes&quot;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
spdx: extend CVE_STATUS variables</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
testsdk: allow user to specify which tests to run</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
vex.bbclass: add a new class</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
vex: fix rootfs manifest</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
xserver-xorg: remove redundant patch</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
<br>
<br>
</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66165): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66165" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/message/66165</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117378981/431=
6185" rel=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/mt/117378981/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">
yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">
https://lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:yoann.c=
ongal@smile.fr" target=3D"_blank">yoann.congal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div>
</blockquote>
</div>
<div><br clear=3D"all">
</div>
<br>
<span>-- </span><br>
<div dir=3D"ltr">
<div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font>
<div><font face=3D"Raleway, regular">Smile ECS</font></div>
</div>
</div>
</div>
</div>
</div>
</div>

</div></blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><di=
v><font face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--0000000000003db3520648e3866d--

