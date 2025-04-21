Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C825FC369AB
	for <webhook@archiver.kernel.org>; Mon, 21 Apr 2025 14:25:27 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.16407.1745245520505186646
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 07:25:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=2HIot/2l;
 spf=pass (domain: smile.fr, ip: 209.85.128.43, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cf034d4abso35236055e9.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 07:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1745245518; x=1745850318; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sZDq5Z4npyjHBLCe5Puox6Jtb/dE0hU8v5LDmP1T6/8=;
        b=2HIot/2lNjXKrTQ6zXEvvhxswjBtj1B44PhDgdd1eaqUoyvuzc4UVSxCTnA37dSBdQ
         5CD4xjBwQc3kAf63OR+7XA4zaFrdPIu7r07fDuXW1yXt8LfmCO+oa+9QOm1xn+PVdv98
         5SzQTNBEn+1go7L5wsVlOJLI37yUuS3JPuxJU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745245518; x=1745850318;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sZDq5Z4npyjHBLCe5Puox6Jtb/dE0hU8v5LDmP1T6/8=;
        b=Nj6YH+aavcX9Gm4JybEDMTuRGdgkDO+dbrhn4fowlQzH2Dbrfs/ZxknznmM4Oc8sbD
         iC8UW+aNU844fIKNeRC3cfu+toh3CSNsB7KrEuvfYRard2Ei8mN4Qb9WSof5h9KPgfCK
         YH8enBg3oqXCOkDbwH3rwXcnz6KXYkGi7PS8ll8c/vQNm8/WETqO3kqU3tf1Xv+LeLXd
         7cDK4DBitYJuQN15dyl0wiSXUtUF5cufvU6PSaHYmRCG7ZMH41PjWLZw46eVnOvCbF8B
         5QzjkwNcQjYhFkpp9X0cS2lsR3sCGWVEFTAFz6TSdlPHC7bsKzEO70layDcJlcd1nH1x
         JpvQ==
X-Gm-Message-State: AOJu0YybuEMA5rzci/cA9yUUJhdSg2eiDwZ0m0jEQXVTTTwJmvxxpa6I
	KhoLzLnJcmmzSuQ0f3BeHfxQsET0aDWt3H8jxEib4+EYyG9XefGd9m5Km021CUpso6pBIk9eUUq
	NW+OUHu8HVUuH0Qk5YJuHbDHRiTx3JRRNJBbb56lEr6l9ouOcZRs=
X-Gm-Gg: ASbGnct9zqdvmMuwPUeR9Er8+ebFlgFwmyNG8mpX2Bpc8fQEo8WdFw00ytWo0ulBDZ0
	M2tVjSv6z4TIWoabPZYAzdDpE2MOH8gTmSC0Btxx4IScrLobRb9rNi5gBHfjKMMw3n49+DM368s
	9p6Cv6ZCc/2qFBPQ8z5T44iqPAi86o+WuoNmZQ1yzN8VugFkYNZz6k6YS0
X-Google-Smtp-Source: AGHT+IHAJSzvVVEgCOvaJLiGe+M6WGWau7hYPmLU2KlPkCNkuvNqQaK5PunPak7VIyiLwjjyEOwpNgNu5TjgrNws1tY=
X-Received: by 2002:a5d:5c84:0:b0:39a:ca59:a626 with SMTP id
 ffacd0b85a97d-39efba5aeadmr8695623f8f.28.1745245518213; Mon, 21 Apr 2025
 07:25:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a5d:68c2:0:b0:390:d73f:69ef with HTTP; Mon, 21 Apr 2025
 07:25:17 -0700 (PDT)
In-Reply-To: <BL4PR11MB879702BB57439BE0116AF312B9B82@BL4PR11MB8797.namprd11.prod.outlook.com>
References: <BL4PR11MB879702BB57439BE0116AF312B9B82@BL4PR11MB8797.namprd11.prod.outlook.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Mon, 21 Apr 2025 16:25:17 +0200
X-Gm-Features: ATxdqUHoxTm2kgGzek0SA2pFln_bxMH465w6tSArMJ1mNMnkJRaYuZVL2D_iFhE
Message-ID: <CAMSfU+5nXS8Ag9g2TX6AegnTdObT_CPQ1jzh4tTuCsm7JqRUqg@mail.gmail.com>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 4.0.26 (Kirkstone-4.0.26) is Released
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"chee.yang.lee@intel.com" <chee.yang.lee@intel.com>
Cc: "yocto-announce@lists.yoctoproject.org" <yocto-announce@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000028cc4606334aa339"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 14:25:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65210

--00000000000028cc4606334aa339
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le lundi 21 avril 2025, Lee Chee Yang via lists.yoctoproject.org
<chee.yang.lee=3Dintel.com@lists.yoctoproject.org> a =C3=A9crit :
> Hi,
>
> We are pleased to announce the Yocto Project 4.0.26 Release is now
available for download.

Hello,

The branch name in the mail subject is much appreciated.

Thanks!
>
>
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287=
a77d5026b698ac237ab865b2dafd36bb8.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b69=
8ac237ab865b2dafd36bb8.tar.bz2
>
>
>
> A gpg signed version of these release notes is available at:
>
>
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/RELEASENOTES
>
>
>
> Full Test Report:
>
>
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.t=
xt
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
> --------------------------
>
> yocto-4.0.26 Release Notes
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
> Branch: kirkstone
>
> Tag: yocto-4.0.26
>
> Git Revision: d70d287a77d5026b698ac237ab865b2dafd36bb8
>
> Release Artefact: poky-d70d287a77d5026b698ac237ab865b2dafd36bb8
>
> sha: 3ebfadb8bff4c1ca12b3cf3e4ef6e3ac2ce52b73570266daa98436c9959249f2
>
> Download Locations:
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287=
a77d5026b698ac237ab865b2dafd36bb8.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b69=
8ac237ab865b2dafd36bb8.tar.bz2
>
>
>
> Repository Name: openembedded-core
>
> Repository Location: https://git.openembedded.org/openembedded-core
>
> Branch: kirkstone
>
> Tag: yocto-4.0.26
>
> Git Revision: 1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
>
> Release Artefact: oecore-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346
>
> sha: d3805e034dabd0865dbf55488b2c16d4ea0351d37aa826f0054a6bfdde5a8be9
>
> Download Locations:
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/oecore-1efbe=
1004bc82e7c14c1e8bd4ce644f5015c3346.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c=
14c1e8bd4ce644f5015c3346.tar.bz2
>
>
>
> Repository Name: meta-mingw
>
> Repository Location: https://git.yoctoproject.org/meta-mingw
>
> Branch: kirkstone
>
> Tag: yocto-4.0.26
>
> Git Revision: 87c22abb1f11be430caf4372e6b833dc7d77564e
>
> Release Artefact: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e
>
> sha: f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8
>
> Download Locations:
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/meta-mingw-8=
7c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11=
be430caf4372e6b833dc7d77564e.tar.bz2
>
>
>
> Repository Name: meta-gplv2
>
> Repository Location: https://git.yoctoproject.org/meta-gplv2
>
> Branch: kirkstone
>
> Tag: yocto-4.0.26
>
> Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
>
> Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a
>
> sha: c386f59f8a672747dc3d0be1d4234b6039273d0e57933eb87caa20f56b9cca6d
>
> Download Locations:
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/meta-gplv2-d=
2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285=
b72a4ed93450f6703ca27aa42e8a.tar.bz2
>
>
>
> Repository Name: bitbake
>
> Repository Location: https://git.openembedded.org/bitbake
>
> Branch: 2.0
>
> Tag: yocto-4.0.26
>
> Git Revision: 046871d9fd76efdca7b72718b328d8f545523f7e
>
> Release Artefact: bitbake-046871d9fd76efdca7b72718b328d8f545523f7e
>
> sha: e9df0a9f5921b583b539188d66b23f120e1751000e7822e76c3391d5c76ee21a
>
> Download Locations:
>
>
https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/bitbake-0468=
71d9fd76efdca7b72718b328d8f545523f7e.tar.bz2
>
>
https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/bitbake-046871d9fd76efd=
ca7b72718b328d8f545523f7e.tar.bz2
>
>
>
> Repository Name: yocto-docs
>
> Repository Location: https://git.yoctoproject.org/yocto-docs
>
> Branch: kirkstone
>
> Tag: yocto-4.0.26
>
> Git Revision: 9b4c36f7b02dd4bedfec90206744a1e90e37733c
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
> Aleksandar Nikolic
>
> Alessio Cascone
>
> Antonin Godard
>
> Archana Polampalli
>
> Ashish Sharma
>
> Bruce Ashfield
>
> Carlos Dominguez
>
> Deepesh Varatharajan
>
> Divya Chellam
>
> Guocai He
>
> Hitendra Prajapati
>
> Hongxu Jia
>
> Jiaying Song
>
> Johannes Kauffmann
>
> Kai Kang
>
> Lee Chee Yang
>
> Libo Chen
>
> Marta Rybczynska
>
> Michael Halstead
>
> Mingli Yu
>
> Moritz Haase
>
> Narpat Mali
>
> Paulo Neves
>
> Peter Marko
>
> Priyal Doshi
>
> Richard Purdie
>
> Robert Yang
>
> Ross Burton
>
> Sakib Sajal
>
> Steve Sakoman
>
> Vijay Anusuri
>
> Yogita Urade
>
> Zhang Peng
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
> bind: Fix CVE-2024-11187 CVE-2024-12705
>
> binutils: Fix CVE-2025-0840
>
> elfutils: Fix CVE-2025-1352 CVE-2025-1372
>
> ffmpeg: Fix CVE-2024-28661 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616
CVE-2024-36617 CVE-2024-36618 CVE-2025-0518 CVE-2025-25473
>
> ffmpeg: Ignore CVE-2023-46407 CVE-2023-47470 CVE-2024-7272 CVE-2024-22860
CVE-2024-22861 CVE-2024-22862
>
> freetype: Fix CVE-2025-27363
>
> gnutls: Fix CVE-2024-12243
>
> grub: Fix CVE-2024-45774 CVE-2024-45775 CVE-2024-45776 CVE-2024-45777
CVE-2024-45778 CVE-2024-45779 CVE-2024-45780 CVE-2024-45781 CVE-2024-45782
CVE-2024-45783 CVE-2024-56737 CVE-2025-0622 CVE-2025-0624 CVE-2025-0677
CVE-2025-0684 CVE-2025-0685 CVE-2025-0686 CVE-2025-0689 CVE-2025-0678
CVE-2025-0690 CVE-2025-1118 CVE-2025-1125
>
> gstreamer1.0-rtsp-server: fix CVE-2024-44331
>
> libarchive: Fix CVE-2025-25724
>
> libarchive: Ignore CVE-2025-1632
>
> libcap: Fix CVE-2025-1390
>
> linux-yocto/5.10: Fix CVE-2024-36476 CVE-2024-43098 CVE-2024-47143
CVE-2024-48881 CVE-2024-50051 CVE-2024-50074 CVE-2024-50082 CVE-2024-50083
CVE-2024-50099 CVE-2024-50115 CVE-2024-50116 CVE-2024-50117 CVE-2024-50142
CVE-2024-50148 CVE-2024-50150 CVE-2024-50151 CVE-2024-50167 CVE-2024-50168
CVE-2024-50171 CVE-2024-50185 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194
CVE-2024-50195 CVE-2024-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205
CVE-2024-50208 CVE-2024-50209 CVE-2024-50229 CVE-2024-50230 CVE-2024-50233
CVE-2024-50234 CVE-2024-50236 CVE-2024-50237 CVE-2024-50251 CVE-2024-50262
CVE-2024-50264 CVE-2024-50265 CVE-2024-50267 CVE-2024-50268 CVE-2024-50269
CVE-2024-50273 CVE-2024-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50287
CVE-2024-50292 CVE-2024-50296 CVE-2024-50299 CVE-2024-50301 CVE-2024-50302
CVE-2024-53042 CVE-2024-53052 CVE-2024-53057 CVE-2024-53059 CVE-2024-53060
CVE-2024-53061 CVE-2024-53063 CVE-2024-53066 CVE-2024-53096 CVE-2024-53097
CVE-2024-53101 CVE-2024-53103 CVE-2024-53104 CVE-2024-53145 CVE-2024-53146
CVE-2024-53150 CVE-2024-53155 CVE-2024-53156 CVE-2024-53157 CVE-2024-53161
CVE-2024-53165 CVE-2024-53171 CVE-2024-53173 CVE-2024-53174 CVE-2024-53194
CVE-2024-53197 CVE-2024-53217 CVE-2024-53226 CVE-2024-53227 CVE-2024-53237
CVE-2024-53239 CVE-2024-55916 CVE-2024-56548 CVE-2024-56558 CVE-2024-56567
CVE-2024-56568 CVE-2024-56569 CVE-2024-56572 CVE-2024-56574 CVE-2024-56581
CVE-2024-56587 CVE-2024-56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598
CVE-2024-56600 CVE-2024-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605
CVE-2024-56606 CVE-2024-56615 CVE-2024-56619 CVE-2024-56623 CVE-2024-56629
CVE-2024-56634 CVE-2024-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56650
CVE-2024-56659 CVE-2024-56662 CVE-2024-56670 CVE-2024-56688 CVE-2024-56698
CVE-2024-56704 CVE-2024-56716 CVE-2024-56720 CVE-2024-56723 CVE-2024-56724
CVE-2024-56728 CVE-2024-56739 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748
CVE-2024-56754 CVE-2024-56756 CVE-2024-56770 CVE-2024-56779 CVE-2024-56780
CVE-2024-56781 CVE-2024-56785 CVE-2024-57802 CVE-2024-57807 CVE-2024-57850
CVE-2024-57874 CVE-2024-57890 CVE-2024-57896 CVE-2024-57900 CVE-2024-57901
CVE-2024-57902 CVE-2024-57910 CVE-2024-57911 CVE-2024-57913 CVE-2024-57922
CVE-2024-57938 CVE-2024-57939 CVE-2024-57946 CVE-2024-57951 CVE-2025-21638
CVE-2025-21687 CVE-2025-21689 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697
CVE-2025-21699
>
> linux-yocto/5.15: Fix CVE-2024-57979 CVE-2024-58034 CVE-2024-58052
CVE-2024-58055 CVE-2024-58058 CVE-2024-58063 CVE-2024-58069 CVE-2024-58071
CVE-2024-58076 CVE-2024-58083 CVE-2025-21700 CVE-2025-21703 CVE-2025-21715
CVE-2025-21722 CVE-2025-21727 CVE-2025-21731 CVE-2025-21753 CVE-2025-21756
CVE-2025-21760 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-21764
CVE-2025-21796 CVE-2025-21811 CVE-2025-21887 CVE-2025-21898 CVE-2025-21904
CVE-2025-21905 CVE-2025-21912 CVE-2025-21917 CVE-2025-21919 CVE-2025-21920
CVE-2025-21922 CVE-2025-21934 CVE-2025-21943 CVE-2025-21948 CVE-2025-21951
>
> libpcre2: Ignore CVE-2022-1586
>
> libtasn1: Fix CVE-2024-12133
>
> libxml2: Fix CVE-2022-49043 CVE-2024-56171 CVE-2025-24928 CVE-2025-27113
>
> libxslt: Fix CVE-2024-55549 CVE-2025-24855
>
> llvm: Fix CVE-2024-0151
>
> mpg123: Fix CVE-2024-10573
>
> openssh: Fix CVE-2025-26465
>
> ovmf: Revert Fix for CVE-2023-45236 CVE-2023-45237
>
> perl: Ignore CVE-2023-47038
>
> puzzles: Ignore CVE-2024-13769 CVE-2024-13770 CVE-2025-0837
>
> python3: Fix CVE-2025-0938
>
> ruby: Fix CVE-2024-41946 CVE-2025-27219 CVE-2025-27220
>
> subversion: Ignore CVE-2024-45720
>
> systemd: Fix CVE-2022-3821 CVE-2022-4415 CVE-2022-45873 CVE-2023-7008
>
> tiff: mark CVE-2023-30774 as patched with existing patch
>
> u-boot: Fix CVE-2022-2347 CVE-2022-30767 CVE-2022-30790 CVE-2024-57254
CVE-2024-57255 CVE-2024-57256 CVE-2024-57257 CVE-2024-57258 CVE-2024-57259
>
> vim: Fix CVE-2025-1215 CVE-2025-22134  CVE-2025-24014 CVE-2025-26603
CVE-2025-27423  CVE-2025-29768
>
> xserver-xorg: Fix CVE-2022-49737 CVE-2025-26594 CVE-2025-26595
CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600
CVE-2025-26601
>
> xwayland: Fix CVE-2022-49737 CVE-2024-9632 CVE-2024-21885 CVE-2024-21886
CVE-2024-31080 CVE-2024-31081 CVE-2024-31083 CVE-2025-26594 CVE-2025-26595
CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600
CVE-2025-26601
>
> zlib: Fix CVE-2014-9485
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
> bind: Upgrade to 9.18.33
>
> bitbake: cache: bump cache version
>
> bitbake: siggen.py: Improve taskhash reproducibility
>
> boost: fix do_fetch error
>
> build-appliance-image: Update to kirkstone head revision
>
> contributor-guide/submit-changes: add policy on AI generated code
>
> cve-update-nvd2-native: handle missing vulnStatus
>
> docs: Add favicon for the documentation html
>
> docs: Remove all mention of core-image-lsb
>
> libtasn1: upgrade to 4.20.0
>
> libxcrypt-compat: Remove libcrypt.so to fix conflict with libcrypt
>
> libxml2: fix compilation of explicit child axis in pattern
>
> linux-yocto/5.10: update to v5.10.234
>
> linux-yocto/5.15: update to v5.15.179
>
> mesa: Fix missing GLES3 headers in SDK sysroot
>
> mesa: Update SRC_URI
>
> meta: Enable '-o pipefail' for the SDK installer
>
> migration-guides: add release notes for 4.0.25
>
> poky.conf: add ubuntu2404 to SANITY_TESTED_DISTROS
>
> poky.conf: bump version for 4.0.26
>
> procps: replaced one use of fputs(3) with a write(2) call
>
> ref-manual: don't refer to poky-lsb
>
> scripts/install-buildtools: Update to 4.0.24
>
> scritps/runqemu: Ensure we only have two serial ports
>
> systemd: upgrade to 250.14
>
> tzcode-native: Fix compiler setting from 2023d version
>
> tzcode: Update SRC_URI
>
> tzdata/tzcode-native: upgrade 2025a
>
> vim: Upgrade to 9.1.1198
>
> virglrenderer: fix do_fetch error
>
> vulnerabilities/classes: remove references to cve-check text format
>
> xz: Update SRC_URI
>
> yocto-uninative: Update to 4.7 for glibc 2.41
>
>
>

--=20
Yoann Congal
Smile ECS

--00000000000028cc4606334aa339
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<br><br>Le lundi 21 avril 2025, Lee Chee Yang via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;chee.yang.lee=3D<a href=3D"=
mailto:intel.com@lists.yoctoproject.org">intel.com@lists.yoctoproject.org</=
a>&gt; a =C3=A9crit=C2=A0:<br>&gt; Hi,<br>&gt;<br>&gt; We are pleased to an=
nounce the Yocto Project 4.0.26 Release is now available for download.<br><=
br>Hello, <br><br>The branch name in the mail subject is much appreciated.<=
br><br>Thanks!<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; <a href=3D"https://do=
wnloads.yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287a77d5026b6=
98ac237ab865b2dafd36bb8.tar.bz2">https://downloads.yoctoproject.org/release=
s/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab865b2dafd36bb8.tar.bz2<=
/a><br>&gt;<br>&gt; <a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto=
-4.0.26/poky-d70d287a77d5026b698ac237ab865b2dafd36bb8.tar.bz2">https://mirr=
ors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab865b=
2dafd36bb8.tar.bz2</a><br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; A gpg signed =
version of these release notes is available at:<br>&gt;<br>&gt; =C2=A0<br>&=
gt;<br>&gt; <a href=3D"https://downloads.yoctoproject.org/releases/yocto/yo=
cto-4.0.26/RELEASENOTES">https://downloads.yoctoproject.org/releases/yocto/=
yocto-4.0.26/RELEASENOTES</a><br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Full T=
est Report:<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; <a href=3D"https://downl=
oads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.txt">https://d=
ownloads.yoctoproject.org/releases/yocto/yocto-4.0.26/testreport.txt</a><br=
>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Thank you for everyone&#39;s contribut=
ions to this release.<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Chee Yang<br>&=
gt;<br>&gt; <a href=3D"mailto:chee.yang.lee@intel.com">chee.yang.lee@intel.=
com</a><br>&gt;<br>&gt; Yocto Project Build and Release<br>&gt;<br>&gt;<br>=
&gt; --------------------------<br>&gt;<br>&gt; yocto-4.0.26 Release Notes<=
br>&gt;<br>&gt; --------------------------<br>&gt;<br>&gt; =C2=A0<br>&gt;<b=
r>&gt; =C2=A0<br>&gt;<br>&gt; --------------------------<br>&gt;<br>&gt; Re=
positories/Downloads<br>&gt;<br>&gt; --------------------------<br>&gt;<br>=
&gt; =C2=A0<br>&gt;<br>&gt; Repository Name: poky<br>&gt;<br>&gt; Repositor=
y Location: <a href=3D"https://git.yoctoproject.org/poky">https://git.yocto=
project.org/poky</a><br>&gt;<br>&gt; Branch: kirkstone<br>&gt;<br>&gt; Tag:=
 yocto-4.0.26<br>&gt;<br>&gt; Git Revision: d70d287a77d5026b698ac237ab865b2=
dafd36bb8<br>&gt;<br>&gt; Release Artefact: poky-d70d287a77d5026b698ac237ab=
865b2dafd36bb8<br>&gt;<br>&gt; sha: 3ebfadb8bff4c1ca12b3cf3e4ef6e3ac2ce52b7=
3570266daa98436c9959249f2<br>&gt;<br>&gt; Download Locations:<br>&gt;<br>&g=
t; <a href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.2=
6/poky-d70d287a77d5026b698ac237ab865b2dafd36bb8.tar.bz2">https://downloads.=
yoctoproject.org/releases/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237a=
b865b2dafd36bb8.tar.bz2</a><br>&gt;<br>&gt; <a href=3D"https://mirrors.kern=
el.org/yocto/yocto/yocto-4.0.26/poky-d70d287a77d5026b698ac237ab865b2dafd36b=
b8.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/poky-d70d28=
7a77d5026b698ac237ab865b2dafd36bb8.tar.bz2</a><br>&gt;<br>&gt; =C2=A0<br>&g=
t;<br>&gt; Repository Name: openembedded-core<br>&gt;<br>&gt; Repository Lo=
cation: <a href=3D"https://git.openembedded.org/openembedded-core">https://=
git.openembedded.org/openembedded-core</a><br>&gt;<br>&gt; Branch: kirkston=
e<br>&gt;<br>&gt; Tag: yocto-4.0.26<br>&gt;<br>&gt; Git Revision: 1efbe1004=
bc82e7c14c1e8bd4ce644f5015c3346<br>&gt;<br>&gt; Release Artefact: oecore-1e=
fbe1004bc82e7c14c1e8bd4ce644f5015c3346<br>&gt;<br>&gt; sha: d3805e034dabd08=
65dbf55488b2c16d4ea0351d37aa826f0054a6bfdde5a8be9<br>&gt;<br>&gt; Download =
Locations:<br>&gt;<br>&gt; <a href=3D"https://downloads.yoctoproject.org/re=
leases/yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346.t=
ar.bz2">https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/oeco=
re-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346.tar.bz2</a><br>&gt;<br>&gt; <a =
href=3D"https://mirrors.kernel.org/yocto/yocto/yocto-4.0.26/oecore-1efbe100=
4bc82e7c14c1e8bd4ce644f5015c3346.tar.bz2">https://mirrors.kernel.org/yocto/=
yocto/yocto-4.0.26/oecore-1efbe1004bc82e7c14c1e8bd4ce644f5015c3346.tar.bz2<=
/a><br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; Repository Name: meta-mingw<br>&=
gt;<br>&gt; Repository Location: <a href=3D"https://git.yoctoproject.org/me=
ta-mingw">https://git.yoctoproject.org/meta-mingw</a><br>&gt;<br>&gt; Branc=
h: kirkstone<br>&gt;<br>&gt; Tag: yocto-4.0.26<br>&gt;<br>&gt; Git Revision=
: 87c22abb1f11be430caf4372e6b833dc7d77564e<br>&gt;<br>&gt; Release Artefact=
: meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e<br>&gt;<br>&gt; sha: =
f0bc4873e2e0319fb9d6d6ab9b98eb3f89664d4339a167d2db6a787dd12bc1a8<br>&gt;<br=
>&gt; Download Locations:<br>&gt;<br>&gt; <a href=3D"https://downloads.yoct=
oproject.org/releases/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11be430caf437=
2e6b833dc7d77564e.tar.bz2">https://downloads.yoctoproject.org/releases/yoct=
o/yocto-4.0.26/meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2<=
/a><br>&gt;<br>&gt; <a href=3D"https://mirrors.kernel.org/yocto/yocto/yocto=
-4.0.26/meta-mingw-87c22abb1f11be430caf4372e6b833dc7d77564e.tar.bz2">https:=
//mirrors.kernel.org/yocto/yocto/yocto-4.0.26/meta-mingw-87c22abb1f11be430c=
af4372e6b833dc7d77564e.tar.bz2</a><br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; R=
epository Name: meta-gplv2<br>&gt;<br>&gt; Repository Location: <a href=3D"=
https://git.yoctoproject.org/meta-gplv2">https://git.yoctoproject.org/meta-=
gplv2</a><br>&gt;<br>&gt; Branch: kirkstone<br>&gt;<br>&gt; Tag: yocto-4.0.=
26<br>&gt;<br>&gt; Git Revision: d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a<b=
r>&gt;<br>&gt; Release Artefact: meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca=
27aa42e8a<br>&gt;<br>&gt; sha: c386f59f8a672747dc3d0be1d4234b6039273d0e5793=
3eb87caa20f56b9cca6d<br>&gt;<br>&gt; Download Locations:<br>&gt;<br>&gt; <a=
 href=3D"https://downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/met=
a-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2">https://downloads=
.yoctoproject.org/releases/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285b72a4e=
d93450f6703ca27aa42e8a.tar.bz2</a><br>&gt;<br>&gt; <a href=3D"https://mirro=
rs.kernel.org/yocto/yocto/yocto-4.0.26/meta-gplv2-d2f8b5cdb285b72a4ed93450f=
6703ca27aa42e8a.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4.0.2=
6/meta-gplv2-d2f8b5cdb285b72a4ed93450f6703ca27aa42e8a.tar.bz2</a><br>&gt;<b=
r>&gt; =C2=A0<br>&gt;<br>&gt; Repository Name: bitbake<br>&gt;<br>&gt; Repo=
sitory Location: <a href=3D"https://git.openembedded.org/bitbake">https://g=
it.openembedded.org/bitbake</a><br>&gt;<br>&gt; Branch: 2.0<br>&gt;<br>&gt;=
 Tag: yocto-4.0.26<br>&gt;<br>&gt; Git Revision: 046871d9fd76efdca7b72718b3=
28d8f545523f7e<br>&gt;<br>&gt; Release Artefact: bitbake-046871d9fd76efdca7=
b72718b328d8f545523f7e<br>&gt;<br>&gt; sha: e9df0a9f5921b583b539188d66b23f1=
20e1751000e7822e76c3391d5c76ee21a<br>&gt;<br>&gt; Download Locations:<br>&g=
t;<br>&gt; <a href=3D"https://downloads.yoctoproject.org/releases/yocto/yoc=
to-4.0.26/bitbake-046871d9fd76efdca7b72718b328d8f545523f7e.tar.bz2">https:/=
/downloads.yoctoproject.org/releases/yocto/yocto-4.0.26/bitbake-046871d9fd7=
6efdca7b72718b328d8f545523f7e.tar.bz2</a><br>&gt;<br>&gt; <a href=3D"https:=
//mirrors.kernel.org/yocto/yocto/yocto-4.0.26/bitbake-046871d9fd76efdca7b72=
718b328d8f545523f7e.tar.bz2">https://mirrors.kernel.org/yocto/yocto/yocto-4=
.0.26/bitbake-046871d9fd76efdca7b72718b328d8f545523f7e.tar.bz2</a><br>&gt;<=
br>&gt; =C2=A0<br>&gt;<br>&gt; Repository Name: yocto-docs<br>&gt;<br>&gt; =
Repository Location: <a href=3D"https://git.yoctoproject.org/yocto-docs">ht=
tps://git.yoctoproject.org/yocto-docs</a><br>&gt;<br>&gt; Branch: kirkstone=
<br>&gt;<br>&gt; Tag: yocto-4.0.26<br>&gt;<br>&gt; Git Revision: 9b4c36f7b0=
2dd4bedfec90206744a1e90e37733c<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; =C2=
=A0<br>&gt;<br>&gt; ---------------<br>&gt;<br>&gt; Contributors<br>&gt;<br=
>&gt; ---------------<br>&gt;<br>&gt; Aleksandar Nikolic<br>&gt;<br>&gt; Al=
essio Cascone<br>&gt;<br>&gt; Antonin Godard<br>&gt;<br>&gt; Archana Polamp=
alli<br>&gt;<br>&gt; Ashish Sharma<br>&gt;<br>&gt; Bruce Ashfield<br>&gt;<b=
r>&gt; Carlos Dominguez<br>&gt;<br>&gt; Deepesh Varatharajan<br>&gt;<br>&gt=
; Divya Chellam<br>&gt;<br>&gt; Guocai He<br>&gt;<br>&gt; Hitendra Prajapat=
i<br>&gt;<br>&gt; Hongxu Jia<br>&gt;<br>&gt; Jiaying Song<br>&gt;<br>&gt; J=
ohannes Kauffmann<br>&gt;<br>&gt; Kai Kang<br>&gt;<br>&gt; Lee Chee Yang<br=
>&gt;<br>&gt; Libo Chen<br>&gt;<br>&gt; Marta Rybczynska<br>&gt;<br>&gt; Mi=
chael Halstead<br>&gt;<br>&gt; Mingli Yu<br>&gt;<br>&gt; Moritz Haase<br>&g=
t;<br>&gt; Narpat Mali<br>&gt;<br>&gt; Paulo Neves<br>&gt;<br>&gt; Peter Ma=
rko<br>&gt;<br>&gt; Priyal Doshi<br>&gt;<br>&gt; Richard Purdie<br>&gt;<br>=
&gt; Robert Yang<br>&gt;<br>&gt; Ross Burton<br>&gt;<br>&gt; Sakib Sajal<br=
>&gt;<br>&gt; Steve Sakoman<br>&gt;<br>&gt; Vijay Anusuri<br>&gt;<br>&gt; Y=
ogita Urade<br>&gt;<br>&gt; Zhang Peng<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&g=
t; =C2=A0<br>&gt;<br>&gt; ---------------<br>&gt;<br>&gt; Known Issues<br>&=
gt;<br>&gt; ---------------<br>&gt;<br>&gt; N/A<br>&gt;<br>&gt; =C2=A0<br>&=
gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; ---------------<br>&gt;<br>&gt; Security=
 Fixes<br>&gt;<br>&gt; ---------------<br>&gt;<br>&gt; bind: Fix CVE-2024-1=
1187 CVE-2024-12705<br>&gt;<br>&gt; binutils: Fix CVE-2025-0840<br>&gt;<br>=
&gt; elfutils: Fix CVE-2025-1352 CVE-2025-1372<br>&gt;<br>&gt; ffmpeg: Fix =
CVE-2024-28661 CVE-2024-35369 CVE-2024-36613 CVE-2024-36616 CVE-2024-36617 =
CVE-2024-36618 CVE-2025-0518 CVE-2025-25473<br>&gt;<br>&gt; ffmpeg: Ignore =
CVE-2023-46407 CVE-2023-47470 CVE-2024-7272 CVE-2024-22860 CVE-2024-22861 C=
VE-2024-22862<br>&gt;<br>&gt; freetype: Fix CVE-2025-27363<br>&gt;<br>&gt; =
gnutls: Fix CVE-2024-12243<br>&gt;<br>&gt; grub: Fix CVE-2024-45774 CVE-202=
4-45775 CVE-2024-45776 CVE-2024-45777 CVE-2024-45778 CVE-2024-45779 CVE-202=
4-45780 CVE-2024-45781 CVE-2024-45782 CVE-2024-45783 CVE-2024-56737 CVE-202=
5-0622 CVE-2025-0624 CVE-2025-0677 CVE-2025-0684 CVE-2025-0685 CVE-2025-068=
6 CVE-2025-0689 CVE-2025-0678 CVE-2025-0690 CVE-2025-1118 CVE-2025-1125<br>=
&gt;<br>&gt; gstreamer1.0-rtsp-server: fix CVE-2024-44331<br>&gt;<br>&gt; l=
ibarchive: Fix CVE-2025-25724<br>&gt;<br>&gt; libarchive: Ignore CVE-2025-1=
632<br>&gt;<br>&gt; libcap: Fix CVE-2025-1390<br>&gt;<br>&gt; linux-yocto/5=
.10: Fix CVE-2024-36476 CVE-2024-43098 CVE-2024-47143 CVE-2024-48881 CVE-20=
24-50051 CVE-2024-50074 CVE-2024-50082 CVE-2024-50083 CVE-2024-50099 CVE-20=
24-50115 CVE-2024-50116 CVE-2024-50117 CVE-2024-50142 CVE-2024-50148 CVE-20=
24-50150 CVE-2024-50151 CVE-2024-50167 CVE-2024-50168 CVE-2024-50171 CVE-20=
24-50185 CVE-2024-50192 CVE-2024-50193 CVE-2024-50194 CVE-2024-50195 CVE-20=
24-50198 CVE-2024-50201 CVE-2024-50202 CVE-2024-50205 CVE-2024-50208 CVE-20=
24-50209 CVE-2024-50229 CVE-2024-50230 CVE-2024-50233 CVE-2024-50234 CVE-20=
24-50236 CVE-2024-50237 CVE-2024-50251 CVE-2024-50262 CVE-2024-50264 CVE-20=
24-50265 CVE-2024-50267 CVE-2024-50268 CVE-2024-50269 CVE-2024-50273 CVE-20=
24-50278 CVE-2024-50279 CVE-2024-50282 CVE-2024-50287 CVE-2024-50292 CVE-20=
24-50296 CVE-2024-50299 CVE-2024-50301 CVE-2024-50302 CVE-2024-53042 CVE-20=
24-53052 CVE-2024-53057 CVE-2024-53059 CVE-2024-53060 CVE-2024-53061 CVE-20=
24-53063 CVE-2024-53066 CVE-2024-53096 CVE-2024-53097 CVE-2024-53101 CVE-20=
24-53103 CVE-2024-53104 CVE-2024-53145 CVE-2024-53146 CVE-2024-53150 CVE-20=
24-53155 CVE-2024-53156 CVE-2024-53157 CVE-2024-53161 CVE-2024-53165 CVE-20=
24-53171 CVE-2024-53173 CVE-2024-53174 CVE-2024-53194 CVE-2024-53197 CVE-20=
24-53217 CVE-2024-53226 CVE-2024-53227 CVE-2024-53237 CVE-2024-53239 CVE-20=
24-55916 CVE-2024-56548 CVE-2024-56558 CVE-2024-56567 CVE-2024-56568 CVE-20=
24-56569 CVE-2024-56572 CVE-2024-56574 CVE-2024-56581 CVE-2024-56587 CVE-20=
24-56593 CVE-2024-56595 CVE-2024-56596 CVE-2024-56598 CVE-2024-56600 CVE-20=
24-56601 CVE-2024-56602 CVE-2024-56603 CVE-2024-56605 CVE-2024-56606 CVE-20=
24-56615 CVE-2024-56619 CVE-2024-56623 CVE-2024-56629 CVE-2024-56634 CVE-20=
24-56642 CVE-2024-56643 CVE-2024-56648 CVE-2024-56650 CVE-2024-56659 CVE-20=
24-56662 CVE-2024-56670 CVE-2024-56688 CVE-2024-56698 CVE-2024-56704 CVE-20=
24-56716 CVE-2024-56720 CVE-2024-56723 CVE-2024-56724 CVE-2024-56728 CVE-20=
24-56739 CVE-2024-56746 CVE-2024-56747 CVE-2024-56748 CVE-2024-56754 CVE-20=
24-56756 CVE-2024-56770 CVE-2024-56779 CVE-2024-56780 CVE-2024-56781 CVE-20=
24-56785 CVE-2024-57802 CVE-2024-57807 CVE-2024-57850 CVE-2024-57874 CVE-20=
24-57890 CVE-2024-57896 CVE-2024-57900 CVE-2024-57901 CVE-2024-57902 CVE-20=
24-57910 CVE-2024-57911 CVE-2024-57913 CVE-2024-57922 CVE-2024-57938 CVE-20=
24-57939 CVE-2024-57946 CVE-2024-57951 CVE-2025-21638 CVE-2025-21687 CVE-20=
25-21689 CVE-2025-21692 CVE-2025-21694 CVE-2025-21697 CVE-2025-21699<br>&gt=
;<br>&gt; linux-yocto/5.15: Fix CVE-2024-57979 CVE-2024-58034 CVE-2024-5805=
2 CVE-2024-58055 CVE-2024-58058 CVE-2024-58063 CVE-2024-58069 CVE-2024-5807=
1 CVE-2024-58076 CVE-2024-58083 CVE-2025-21700 CVE-2025-21703 CVE-2025-2171=
5 CVE-2025-21722 CVE-2025-21727 CVE-2025-21731 CVE-2025-21753 CVE-2025-2175=
6 CVE-2025-21760 CVE-2025-21761 CVE-2025-21762 CVE-2025-21763 CVE-2025-2176=
4 CVE-2025-21796 CVE-2025-21811 CVE-2025-21887 CVE-2025-21898 CVE-2025-2190=
4 CVE-2025-21905 CVE-2025-21912 CVE-2025-21917 CVE-2025-21919 CVE-2025-2192=
0 CVE-2025-21922 CVE-2025-21934 CVE-2025-21943 CVE-2025-21948 CVE-2025-2195=
1<br>&gt;<br>&gt; libpcre2: Ignore CVE-2022-1586<br>&gt;<br>&gt; libtasn1: =
Fix CVE-2024-12133<br>&gt;<br>&gt; libxml2: Fix CVE-2022-49043 CVE-2024-561=
71 CVE-2025-24928 CVE-2025-27113<br>&gt;<br>&gt; libxslt: Fix CVE-2024-5554=
9 CVE-2025-24855<br>&gt;<br>&gt; llvm: Fix CVE-2024-0151<br>&gt;<br>&gt; mp=
g123: Fix CVE-2024-10573<br>&gt;<br>&gt; openssh: Fix CVE-2025-26465<br>&gt=
;<br>&gt; ovmf: Revert Fix for CVE-2023-45236 CVE-2023-45237<br>&gt;<br>&gt=
; perl: Ignore CVE-2023-47038<br>&gt;<br>&gt; puzzles: Ignore CVE-2024-1376=
9 CVE-2024-13770 CVE-2025-0837<br>&gt;<br>&gt; python3: Fix CVE-2025-0938<b=
r>&gt;<br>&gt; ruby: Fix CVE-2024-41946 CVE-2025-27219 CVE-2025-27220<br>&g=
t;<br>&gt; subversion: Ignore CVE-2024-45720<br>&gt;<br>&gt; systemd: Fix C=
VE-2022-3821 CVE-2022-4415 CVE-2022-45873 CVE-2023-7008<br>&gt;<br>&gt; tif=
f: mark CVE-2023-30774 as patched with existing patch<br>&gt;<br>&gt; u-boo=
t: Fix CVE-2022-2347 CVE-2022-30767 CVE-2022-30790 CVE-2024-57254 CVE-2024-=
57255 CVE-2024-57256 CVE-2024-57257 CVE-2024-57258 CVE-2024-57259<br>&gt;<b=
r>&gt; vim: Fix CVE-2025-1215 CVE-2025-22134=C2=A0 CVE-2025-24014 CVE-2025-=
26603=C2=A0 CVE-2025-27423=C2=A0 CVE-2025-29768<br>&gt;<br>&gt; xserver-xor=
g: Fix CVE-2022-49737 CVE-2025-26594 CVE-2025-26595 CVE-2025-26596 CVE-2025=
-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-26600 CVE-2025-26601<br>&gt;<=
br>&gt; xwayland: Fix CVE-2022-49737 CVE-2024-9632 CVE-2024-21885 CVE-2024-=
21886 CVE-2024-31080 CVE-2024-31081 CVE-2024-31083 CVE-2025-26594 CVE-2025-=
26595 CVE-2025-26596 CVE-2025-26597 CVE-2025-26598 CVE-2025-26599 CVE-2025-=
26600 CVE-2025-26601<br>&gt;<br>&gt; zlib: Fix CVE-2014-9485<br>&gt;<br>&gt=
; =C2=A0<br>&gt;<br>&gt; =C2=A0<br>&gt;<br>&gt; ---------------<br>&gt;<br>=
&gt; Fixes<br>&gt;<br>&gt; ---------------<br>&gt;<br>&gt; bind: Upgrade to=
 9.18.33<br>&gt;<br>&gt; bitbake: cache: bump cache version<br>&gt;<br>&gt;=
 bitbake: siggen.py: Improve taskhash reproducibility<br>&gt;<br>&gt; boost=
: fix do_fetch error<br>&gt;<br>&gt; build-appliance-image: Update to kirks=
tone head revision<br>&gt;<br>&gt; contributor-guide/submit-changes: add po=
licy on AI generated code<br>&gt;<br>&gt; cve-update-nvd2-native: handle mi=
ssing vulnStatus<br>&gt;<br>&gt; docs: Add favicon for the documentation ht=
ml<br>&gt;<br>&gt; docs: Remove all mention of core-image-lsb<br>&gt;<br>&g=
t; libtasn1: upgrade to 4.20.0<br>&gt;<br>&gt; libxcrypt-compat: Remove lib=
crypt.so to fix conflict with libcrypt<br>&gt;<br>&gt; libxml2: fix compila=
tion of explicit child axis in pattern<br>&gt;<br>&gt; linux-yocto/5.10: up=
date to v5.10.234<br>&gt;<br>&gt; linux-yocto/5.15: update to v5.15.179<br>=
&gt;<br>&gt; mesa: Fix missing GLES3 headers in SDK sysroot<br>&gt;<br>&gt;=
 mesa: Update SRC_URI<br>&gt;<br>&gt; meta: Enable &#39;-o pipefail&#39; fo=
r the SDK installer<br>&gt;<br>&gt; migration-guides: add release notes for=
 4.0.25<br>&gt;<br>&gt; poky.conf: add ubuntu2404 to SANITY_TESTED_DISTROS<=
br>&gt;<br>&gt; poky.conf: bump version for 4.0.26<br>&gt;<br>&gt; procps: =
replaced one use of fputs(3) with a write(2) call<br>&gt;<br>&gt; ref-manua=
l: don&#39;t refer to poky-lsb<br>&gt;<br>&gt; scripts/install-buildtools: =
Update to 4.0.24<br>&gt;<br>&gt; scritps/runqemu: Ensure we only have two s=
erial ports<br>&gt;<br>&gt; systemd: upgrade to 250.14<br>&gt;<br>&gt; tzco=
de-native: Fix compiler setting from 2023d version<br>&gt;<br>&gt; tzcode: =
Update SRC_URI<br>&gt;<br>&gt; tzdata/tzcode-native: upgrade 2025a<br>&gt;<=
br>&gt; vim: Upgrade to 9.1.1198<br>&gt;<br>&gt; virglrenderer: fix do_fetc=
h error<br>&gt;<br>&gt; vulnerabilities/classes: remove references to cve-c=
heck text format<br>&gt;<br>&gt; xz: Update SRC_URI<br>&gt;<br>&gt; yocto-u=
ninative: Update to 4.7 for glibc 2.41<br>&gt;<br>&gt;<br>&gt;<br><br>-- <b=
r><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div>=
<font face=3D"Raleway, regular">Smile ECS</font></div></div><br>

--00000000000028cc4606334aa339--

