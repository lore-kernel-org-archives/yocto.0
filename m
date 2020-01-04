Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web10.12099.1578172469100679278
 for <yocto@lists.yoctoproject.org>;
 Sat, 04 Jan 2020 13:14:29 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.44, mailfrom: andre.draszik@gmail.com)
Received: by mail-wm1-f44.google.com with SMTP id m24so11275995wmc.3
        for <yocto@lists.yoctoproject.org>; Sat, 04 Jan 2020 13:14:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=DHX/ilJ2PoYPMXJsvbYPWQ4NV9Q8LpghqPQ8mHqlOTs=;
        b=g4v9+odZhok13rqIYukfOpb6drbKCM4ZIXRRy0muQMautD1BWCBCD2RlvdBJNhyBlD
         IR1qti6haMm87vRqe7HnfcGnyKGSKISHEDHGAWwCwye63fGVTRW064cKI0/kbNOfwgQR
         eqzG+YvPVZYCMUVPbiz93L76MO4LRGAffpYdue7Jc0d8MW+4vRbzWAc3D27TFfY9fNX4
         DKVgobKQ+fsSrOKIJR4wrOXEWrOlBnzQ4/eH7QjRIFEG0WHAvovMWJ6VeD/FthK6+cTb
         j60jXeap8iX0AUONM8xNdTdHo6Wm+ZMc20VQvLx2te2lavhUR7QncDwUodnEF77ynfnD
         OZ7g==
X-Gm-Message-State: APjAAAVU2T5pKe5Vtj8CgKTltN1VNgeFt1B3Hi/o1fxXiN78COZ1GAHZ
	C5ZmLjB7WwLpULzrFdTpqBMPrUgb
X-Google-Smtp-Source: APXvYqxVvNRGj/Oa8XQEVefLEIAzYx+eIinMkFchIHFgqwJf9HbwTk+6FozpKVusCOsxLdHfGFSwZg==
X-Received: by 2002:a1c:7e0b:: with SMTP id z11mr24499703wmc.88.1578172467252;
        Sat, 04 Jan 2020 13:14:27 -0800 (PST)
Return-Path: <andre.draszik@gmail.com>
Received: from tfsielt31850.fritz.box ([79.97.20.138])
        by smtp.gmail.com with ESMTPSA id z123sm17294132wme.18.2020.01.04.13.14.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2020 13:14:26 -0800 (PST)
Message-ID: <d5c1f12ef8c3397b2b6ab2ff5cc543ec31ce60e1.camel@andred.net>
Subject: Re: [yocto] [meta-gplv2][PATCH 1/3] grep: fix builds with gettext 0.20.x
From: "Andr? Draszik" <git@andred.net>
To: yocto@lists.yoctoproject.org
Date: Sat, 04 Jan 2020 21:14:26 +0000
In-Reply-To: <20191217155929.3178-1-alex.kanavin@gmail.com>
References: <20191217155929.3178-1-alex.kanavin@gmail.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 2019-12-17 at 16:59 +0100, Alexander Kanavin wrote:
> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>

This patch looks to be missing something (using musl here):

../../grep-2.5.1a/src/dfa.c: In function 'dfaparse':
../../grep-2.5.1a/src/dfa.c:1366:34: error: 'LC_COLLATE' undeclared (first use in this function); did you mean
'REG_ECOLLATE'?
 1366 |   hard_LC_COLLATE = hard_locale (LC_COLLATE);
      |                                  ^~~~~~~~~~
      |                                  REG_ECOLLATE
../../grep-2.5.1a/src/dfa.c:1366:34: note: each undeclared identifier is reported only once for each function it appears
in
chmod a+x fgrep
make[2]: *** [Makefile:448: dfa.o] Error 1
make[2]: *** Waiting for unfinished jobs....


I might have a look next week, unless somebody else beats me to it...

Cheers,
Andre'



> ---
>  .../0001-Fix-builds-with-gettext-0.20.patch   | 38 +++++++++++++++++++
>  recipes-extended/grep/grep_2.5.1a.bb          |  3 +-
>  2 files changed, 40 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch
> 
> diff --git a/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch b/recipes-extended/grep/grep-
> 2.5.1a/0001-Fix-builds-with-gettext-0.20.patch
> new file mode 100644
> index 0000000..a8042eb
> --- /dev/null
> +++ b/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch
> @@ -0,0 +1,38 @@
> +From e11be23d694c8bd4e62252874d163d06b6de3117 Mon Sep 17 00:00:00 2001
> +From: Alexander Kanavin <alex.kanavin@gmail.com>
> +Date: Tue, 17 Dec 2019 16:46:05 +0100
> +Subject: [PATCH] Fix builds with gettext 0.20
> +
> +Upstream-Status: Inappropriate [fixing an old version]
> +Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
> +---
> + Makefile.am  | 2 +-
> + configure.in | 2 +-
> + 2 files changed, 2 insertions(+), 2 deletions(-)
> +
> +diff --git a/Makefile.am b/Makefile.am
> +index e4b58c4..a851b9d 100644
> +--- a/Makefile.am
> ++++ b/Makefile.am
> +@@ -1,7 +1,7 @@
> + ## Process this file with automake to create Makefile.in
> + AUTOMAKE_OPTIONS = no-dependencies
> + 
> +-SUBDIRS = intl po lib doc src tests m4 vms bootstrap
> ++SUBDIRS = po lib doc src tests m4 vms bootstrap
> + 
> + EXTRA_DIST = TODO README README-alpha PATCHES.AC PATCHES.AM
> + 
> +diff --git a/configure.in b/configure.in
> +index 2fa6c71..c042a10 100644
> +--- a/configure.in
> ++++ b/configure.in
> +@@ -70,7 +70,7 @@ esac
> + 
> + dnl I18N feature
> + ALL_LINGUAS="cs de el eo es et fr gl hr id it ja ko nl no pl pt_BR ru sl sv"
> +-AM_GNU_GETTEXT
> ++AM_GNU_GETTEXT([external])
> + 
> + dnl DOS file name convention
> + dnl sets HAVE_DOS_FILE_NAMES
> diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
> index b331fee..d3b4ddc 100644
> --- a/recipes-extended/grep/grep_2.5.1a.bb
> +++ b/recipes-extended/grep/grep_2.5.1a.bb
> @@ -17,7 +17,8 @@ SRC_URI = "${GNU_MIRROR}/grep/grep-${PV}.tar.bz2 \
>             file://fix-for-texinfo-5.1.patch \
>             file://grep-egrep-fgrep-Fix-LSB-NG-cases.patch \
>             file://search-fix-compilation-error-with-security-flags-ena.patch \
> -          "
> +           file://0001-Fix-builds-with-gettext-0.20.patch \
> +           "
>  
>  SRC_URI[md5sum] = "52202fe462770fa6be1bb667bd6cf30c"
>  SRC_URI[sha256sum] = "38c8a2bb9223d1fb1b10bdd607cf44830afc92fd451ac4cd07619bf92bdd3132"
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> 
> View/Reply Online (#47731): https://lists.yoctoproject.org/g/yocto/message/47731
> Mute This Topic: https://lists.yoctoproject.org/mt/68764156/3617338
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [git@andred.net]
> -=-=-=-=-=-=-=-=-=-=-=-

