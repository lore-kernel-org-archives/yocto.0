Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EFB0C28B2E
	for <webhook@archiver.kernel.org>; Mon, 10 Mar 2025 09:46:36 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.33561.1741599991737102695
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 02:46:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=oF5pZCCP;
 spf=pass (domain: smile.fr, ip: 209.85.128.42, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cfba466b2so4655005e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 02:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1741599990; x=1742204790; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OcZtoY4UOou4Cn66rCuujrCBTIarFEGJsA9WLKoPIfg=;
        b=oF5pZCCP3rHSY75Sa7CE0rB7p5hWcJqTciYNJtGkZCuUVjJiWHdW1/rGIRY7RrRwEY
         2JdL6MgADQLbfTeJtl+6Gc14sIj7MJmoudLHQaQYpOC5xl69IWYMqjs90PyJLzAzS3fW
         yDzMlmH7OwmJHyPPIKcT5qMXT1JH6rQI0xxXM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741599990; x=1742204790;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OcZtoY4UOou4Cn66rCuujrCBTIarFEGJsA9WLKoPIfg=;
        b=tBr706xDByxxfz7lHj34HEInnbzSO6m9V18C5mWMPNlW0vJG4Rz1+Y32YcdGlUr6zB
         SkLyjwAV9bJXi+uTKXYhmbhWzhPJhZxXxUjI5TptPdzCzqgy0NaXbgBOAqN6ylz9EXaB
         4LkTWSiWQhArB723n3qy6JWecmOAnff0VE0+zRZhvhORdJ0pG5Pedy/3KkIgwM/H55Px
         Ulw87SjkyEMDIPx0j+n7mk0bI62Cacpnf4u1U5/gn7OUp9P+P+L8SNHROE2fWVhX00X6
         nLeC7PA7hGfwmSHhiWArxUDET7o/ltHpp9bK/IZYbybhGYRb4wVDxEWboWg8YI2nCK0R
         8hdw==
X-Gm-Message-State: AOJu0YzTHYJ1yw1jJvbQ4JWZPzf8ixvA/fA6mkDqzkZw6snjWkMOTGh+
	789JpCZV/zmGeJ90q6jJiumK0LOBKl++iHb/vvaxJb+CBxLNBD/l/ILSGrE4nRjdgxM72TYyHfh
	jIJs7IqOa09OBMjrJelxv+Omb9DoS9VygK/AYA7RUBcpudAWA4Wg=
X-Gm-Gg: ASbGncu7WWE0jTbYPSYVWBU8n92vrxFRN1dahFtq21pp4Ejbpo61ac+h/Wyrom1/9aD
	1IYp7LuBOsZjsF5fWOxdDpD+3u8D+Ga/iqrchcZCNGgcP2OnD9Lijapll8jQYN3T/rwIgyijbW5
	3+lNXDv+TdnmGpYqNAdSMRMSGp1UnI9rBXtJDvnLBLVKyC9E0o8RPTkvUKyPTZXfrlfzON8w==
X-Google-Smtp-Source: AGHT+IHBVUgR1267rbUk4hyoMyejWkyallAO/0A8i8rxpd935oyBo1hA/rx6KogvpVzdAS4G70AgXy86M95lXXbI8io=
X-Received: by 2002:a05:600c:46c8:b0:43c:f3e4:d6f7 with SMTP id
 5b1f17b1804b1-43cf3e4d9d7mr28481535e9.31.1741599989868; Mon, 10 Mar 2025
 02:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2@BL4PR11MB8797.namprd11.prod.outlook.com>
In-Reply-To: <BL4PR11MB8797E9C0A5A9A9D43EE4E10EB9CA2@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Mon, 10 Mar 2025 10:46:03 +0100
X-Gm-Features: AQ5f1Jr4kA9M0pbE9mwARYb1wJOMEoGWyKJMsG4SJhY1KnP901CfUWJtrFxUI50
Message-ID: <CAMSfU+6iqK5fbLAAyKH5Oo6tUMNGfy66fisxPqk-6u-NovuqjA@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 5.1.3 is Released
To: yocto@lists.yoctoproject.org, chee.yang.lee@intel.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 09:46:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64933

Hello,

Thanks for these nice release emails!

Would it be possible to put the release branch ("kirkstone",
"scarthgap", ...) in the commit title? (Those branch names are more
used than their numerical equivalent)
For this mail, something like : "Yocto Project 5.1.3 (styhead) is
Released" ? I don't know how strict/free the format is...

Best regards,


Le jeu. 6 mars 2025 =C3=A0 06:17, Lee Chee Yang via lists.yoctoproject.org
<chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hi
>
> We are pleased to announce the Yocto Project 5.1.3 Release is now availab=
le for download.
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/poky-11a8de=
c6e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/ yocto-5.1.3/poky-11a8dec6e29ac0b2=
fd942c0fc00dd7fc30658841.tar.bz2
>
>
>
> A gpg signed version of these release notes is available at:
>
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/RELEASENOTE=
S
>
>
>
> Full Test Report:
>
>
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/testreport.=
txt
>
>
>
> Thank you for everyone's contributions to this release.
>
>
>
> Chee Yang
>
> chee.yang.lee@intel.com
>
> Yocto Project Build and Release
>
>
>
>
> --------------------------
>
> yocto-5.1.3 Release Notes
>
> --------------------------
>
>
>
>
>
> --------------------------
>
> Repositories/Downloads
>
> --------------------------
>
>
>
> Repository Name: poky
>
> Repository Location: https://git.yoctoproject.org/poky
>
> Branch: styhead
>
> Tag: yocto-5.1.3
>
> Git Revision: 11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
>
> Release Artefact: poky-11a8dec6e29ac0b2fd942c0fc00dd7fc30658841
>
> sha: 9ebcacaab53058fd97b06134e06b5883df3c7ddb25dae43a2f3809c4f65d24b5
>
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/poky-11a8de=
c6e29ac0b2fd942c0fc00dd7fc30658841.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/poky-11a8dec6e29ac0b2f=
d942c0fc00dd7fc30658841.tar.bz2
>
>
>
> Repository Name: openembedded-core
>
> Repository Location: https://git.openembedded.org/openembedded-core
>
> Branch: styhead
>
> Tag: yocto-5.1.3
>
> Git Revision: 35ffa0ed523ba95f069dff5b7df3f819ef031015
>
> Release Artefact: oecore-35ffa0ed523ba95f069dff5b7df3f819ef031015
>
> sha: 67efedf0afa9ac9e4664f02923a4c5c2429f2f1be697e39f9cbffb9e3f2d9d2c
>
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/oecore-35ff=
a0ed523ba95f069dff5b7df3f819ef031015.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/oecore-35ffa0ed523ba95=
f069dff5b7df3f819ef031015.tar.bz2
>
>
>
> Repository Name: meta-mingw
>
> Repository Location: https://git.yoctoproject.org/meta-mingw
>
> Branch: styhead
>
> Tag: yocto-5.1.3
>
> Git Revision: 77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
>
> Release Artefact: meta-mingw-77fe18d4f8ec34501045c5d92ce7e13b1bd129e9
>
> sha: 4c7f8100a3675d9863e51825def3df5b263ffc81cd57bae26eedbc156d771534
>
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/meta-mingw-=
77fe18d4f8ec34501045c5d92ce7e13b1bd129e9.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/meta-mingw-77fe18d4f8e=
c34501045c5d92ce7e13b1bd129e9.tar.bz2
>
>
>
> Repository Name: bitbake
>
> Repository Location: https://git.openembedded.org/bitbake
>
> Branch: 2.10
>
> Tag: yocto-5.1.3
>
> Git Revision: 58e5c70a0572ff5994dc181694e05cd5d3ddaf66
>
> Release Artefact: bitbake-58e5c70a0572ff5994dc181694e05cd5d3ddaf66
>
> sha: 8b1d8aa3de6ca8c520f1b528e342e06de0cff918a11d77862c499185a9ba8fec
>
> Download Locations:
>
> https://downloads.yoctoproject.org/releases/yocto/yocto-5.1.3/bitbake-58e=
5c70a0572ff5994dc181694e05cd5d3ddaf66.tar.bz2
>
> https://mirrors.kernel.org/yocto/yocto/yocto-5.1.3/bitbake-58e5c70a0572ff=
5994dc181694e05cd5d3ddaf66.tar.bz2
>
>
>
> Repository Name: yocto-docs
>
> Repository Location: https://git.yoctoproject.org/yocto-docs
>
> Branch: styhead
>
> Tag: yocto-5.1.3
>
> Git Revision: fd9c744d6e73a5719e61a3c0063b1602ca386e91
>
>
>
>
>
> ---------------
>
> Contributors
>
> ---------------
>
> Adrian Freihofer
>
> Aleksandar Nikolic
>
> Alexander Kanavin
>
> Antonin Godard
>
> Bruce Ashfield
>
> Chris Laplante
>
> Divya Chellam
>
> Harish Sadineni
>
> Jiaying Song
>
> Joerg Schmidt
>
> Lee Chee Yang
>
> Mikko Rapeli
>
> Peter Marko
>
> Richard Purdie
>
> Ross Burton
>
> Simon A. Eugster
>
> Steve Sakoman
>
>
>
>
>
> ---------------
>
> Known Issues
>
> ---------------
>
> N/A
>
>
>
>
>
> ---------------
>
> Security Fixes
>
> ---------------
>
> go: Fix CVE-2024-45336 CVE-2024-45341 CVE-2025-22866
>
> linux-yocto/6.6: Fix CVE-2024-36476 CVE-2024-53179 CVE-2024-56582 CVE-202=
4-56703 CVE-2024-57801 CVE-2024-57802 CVE-2024-57841 CVE-2024-57882 CVE-202=
4-57887 CVE-2024-57890 CVE-2024-57892 CVE-2024-57895 CVE-2024-57896 CVE-202=
4-57900 CVE-2024-57901 CVE-2024-57902 CVE-2024-57906 CVE-2024-57907 CVE-202=
4-57908 CVE-2024-57910 CVE-2024-57911 CVE-2024-57912 CVE-2024-57913 CVE-202=
4-57916 CVE-2024-57922 CVE-2024-57925 CVE-2024-57926 CVE-2024-57933 CVE-202=
4-57938 CVE-2024-57939 CVE-2024-57940 CVE-2024-57949 CVE-2024-57951 CVE-202=
5-21631 CVE-2025-21636 CVE-2025-21637 CVE-2025-21638 CVE-2025-21639 CVE-202=
5-21640 CVE-2025-21642 CVE-2025-21652 CVE-2025-21658 CVE-2025-21665 CVE-202=
5-21666 CVE-2025-21667 CVE-2025-21669 CVE-2025-21670 CVE-2025-21671 CVE-202=
5-21673 CVE-2025-21674 CVE-2025-21675 CVE-2025-21676 CVE-2025-21680 CVE-202=
5-21681 CVE-2025-21683 CVE-2025-21684 CVE-2025-21687 CVE-2025-21689 CVE-202=
5-21690 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699
>
> pyhton3: Fix CVE-2024-12254, CVE-2025-0938 and 3 other vulnerabilities (g=
h-80222, gh-119511 and gh-126108).
>
> socat: Fix CVE-2024-54661
>
> vim: Fix CVE-2025-22134 CVE-2025-24014
>
>
>
>
>
> ---------------
>
> Fixes
>
> ---------------
>
> bitbake: bblayers/query: Fix using "removeprefix" string method
>
> bitbake: cooker: Make cooker 'skiplist' per-multiconfig/mc
>
> bitbake: tests/fetch: Fix git shallow test failure with git >=3D 2.48
>
> boost: fix do_fetch error
>
> build-appliance-image: Update to styhead head revision
>
> classes/nativesdk: also override TUNE_PKGARCH
>
> classes/qemu: use tune to select QEMU_EXTRAOPTIONS, not package architect=
ure
>
> cmake: apply parallel build settings to ptest tasks
>
> contributor-guide/submit-changes: add policy on AI generated code
>
> cve-check: fix cvesInRecord
>
> cve-check: restore CVE_CHECK_SHOW_WARNINGS functionality
>
> dev-manual/building: document the initramfs-framework recipe
>
> devtool: ide-sdk recommend DEBUG_BUILD
>
> devtool: ide-sdk remove the plugin from eSDK installer
>
> devtool: ide-sdk sort cmake preset
>
> devtool: modify support debug-builds
>
> docs: Add favicon for the documentation html
>
> docs: Fix typo in standards.md
>
> docs: Update autobuilder URLs to valkyrie
>
> enchant2: correct SRC_URI and other uris
>
> go: upgrade to 1.22.12
>
> libnsl2: set CVE_PRODUCT
>
> libxml-parser-perl: correct SRC_URI
>
> linux-yocto/6.6: update to v6.6.75
>
> linux: Modify kernel configuration to fix runqlat issue
>
> lrzsz: update SRC_URI to avoid redirect
>
> migration-guides: add release notes for 4.0.24, 5.0.6, 5.0.7 and 5.1.2
>
> oe-selftest: devtool ide-sdk use modify debug-build
>
> oeqa/gitarchive: Fix syntax warning
>
> poky.conf: bump version for 5.1.3
>
> python3: upgrade 3.12.9
>
> ref-manual/faq: add q&a on systemd as default
>
> resulttool/store: Fix permissions of logarchive
>
> rust-target-config: Fix TARGET_C_INT_WIDTH with correct size
>
> scripts/install-buildtools: Update to 5.1.2
>
> sdk-manual: extensible.rst: devtool ide-sdk improve
>
> sdk-manual: extensible.rst: update devtool ide-sdk
>
> systemd: set CVE_PRODUCT
>
> test-manual/ptest: link to common framework ptest classes
>
> test-manual/reproducible-builds: fix reproducible links
>
> vim: Upgrade 9.1.1043
>
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64928): https://lists.yoctoproject.org/g/yocto/messag=
e/64928
> Mute This Topic: https://lists.yoctoproject.org/mt/111543108/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@s=
mile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--
Yoann Congal
Smile ECS - Tech expert

