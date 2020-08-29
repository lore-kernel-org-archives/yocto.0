Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.18351.1598729470023101705
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Aug 2020 12:31:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cloTXegW;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D19BE020CF; Sat, 29 Aug 2020 12:31:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55896E020CD
	for <yocto@yoctoproject.org>; Sat, 29 Aug 2020 12:31:05 -0700 (PDT)
Received: by mail-pj1-f68.google.com with SMTP id q1so1048578pjd.1
        for <yocto@yoctoproject.org>; Sat, 29 Aug 2020 12:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=e7oZ1dd+BLhNuT8Uu0NhH8NOIoxEBRfCMfZj1UsOK1Q=;
        b=cloTXegWjFarHCQJX4ZwsShyv78VuJahGsmWM2trGCxJbh42nJVirbyqkUbYnE0uT+
         uVzdR5XzO+i7wlwTpPbRb4nkJWSoKHnZyzUsIjweWJOwBZmNMFNiKDpIF81VePKFBDmy
         q4sxHy6rmGXAZOvPv9y7kHh9ioa30XrAS6avdRPfnPRcBbvfU5wFoJm/XvEX5+9WpHo2
         0yFTY7nejlfi1hQbbyc/pEc4LYaoQzDq8vplyqC84+m30W6wDXqMv6Um+o0ks5La4LVO
         QFlOtKSzeUGgEzeF8wCo32Wq+O0Wm7pap6B6Jw0IO7F7ro+umVF+bg9ivWPDpNd1s86d
         HhmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=e7oZ1dd+BLhNuT8Uu0NhH8NOIoxEBRfCMfZj1UsOK1Q=;
        b=gQEjFltVou7ipZ05VjSvnq3fzs1BA3CL9qV9U8O3yGOdP5JRxTn/tDO6h5c2Qo2NTB
         YuD4DJQbauURCBop5lPN7DrW+YD/jhMTNbwlYKhRb2Ucim24bYBsBs/e/zS9084FI38/
         fwUns3qXy8NTuAvaCbxFjOKu2UBjhy0FpFkH/1DGhF3BCdO/phcWXaul30Q9YLhD01VP
         R9eMOuPre6m4BLFQC+aQl67OWpA9hToszzTXEervPNW2FHTliBAp0ttai+CGdYZNG24k
         QY8WntHNE1w1jCUcfhhemJ4w5NVWw8aw6BFA7PEiOYX6XIPRGYGln8ncDEca/4VVCVcH
         /IVg==
X-Gm-Message-State: AOAM5336Ve9iMntQyxFjz7hTWBuq4mTbMbEnSKd1/x8ig9aKh3F6YAzT
	RnRNQtxF/nIPRIY8Br9G/Fq5HpTn7c4=
X-Google-Smtp-Source: ABdhPJz/iayJT+VF30qpSqFnPfyncuU6l9LeJSAa5Q84ND7+0v+KiZfcCXX53jZl4cqwPzVMj7JwUQ==
X-Received: by 2002:a17:90b:4c4d:: with SMTP id np13mr4153785pjb.209.1598729465076;
        Sat, 29 Aug 2020 12:31:05 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:58c0:b92f:294c:a6e0])
        by smtp.gmail.com with ESMTPSA id lb1sm2501850pjb.26.2020.08.29.12.31.04
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 12:31:04 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH] cryptsetup-tpm-incubator: drop recipe
Date: Sat, 29 Aug 2020 12:31:03 -0700
Message-Id: <20200829193103.31577-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

The upstream package appears to tbe dead so drop it.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptsetup-tpm-incubator_0.9.9.bb         | 47 -------------------
 .../files/configure_fix.patch                 | 16 -------
 2 files changed, 63 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
 delete mode 100644 meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch

diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
deleted file mode 100644
index 2617162..0000000
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/cryptsetup-tpm-incubator_0.9.9.bb
+++ /dev/null
@@ -1,47 +0,0 @@
-SUMMARY = "An extension to cryptsetup/LUKS that enables use of the TPM 2.0 via tpm2-tss"
-DESCRIPTION = "Cryptsetup is utility used to conveniently setup disk encryption based on DMCrypt kernel module."
-
-SECTION = "security/tpm"
-LICENSE = "LGPL-2.1 | GPL-2.0"
-LIC_FILES_CHKSUM = "file://COPYING;md5=32107dd283b1dfeb66c9b3e6be312326 \
-                    file://COPYING.LGPL;md5=1960515788100ce5f9c98ea78a65dc52 \
-                    "
-
-DEPENDS = "autoconf-archive pkgconfig gettext libtss2-dev libdevmapper popt libgcrypt json-c"
-
-SRC_URI = "git://github.com/AndreasFuchsSIT/cryptsetup-tpm-incubator.git;branch=luks2tpm \
-           file://configure_fix.patch "
-
-SRCREV = "15c283195f19f1d980e39ba45448683d5e383179"
-
-S = "${WORKDIR}/git"
-
-inherit autotools pkgconfig gettext
-
-PACKAGECONFIG ??= "openssl"
-PACKAGECONFIG[openssl] = "--with-crypto_backend=openssl,,openssl"
-PACKAGECONFIG[gcrypt] = "--with-crypto_backend=gcrypt,,libgcrypt"
-
-EXTRA_OECONF = "--enable-static"
-
-RRECOMMENDS_${PN} = "kernel-module-aes-generic \
-                     kernel-module-dm-crypt \
-                     kernel-module-md5 \
-                     kernel-module-cbc \
-                     kernel-module-sha256-generic \
-                     kernel-module-xts \
-                    "
-
-FILES_${PN} += "${libdir}/tmpfiles.d"
-RDEPENDS_${PN} += "lvm2 libdevmapper"
-RRECOMMENDS_${PN} += "lvm2-udevrules"
-
-RPROVIDES_${PN} = "cryptsetup"
-RREPLACES_${PN} = "cryptsetup"
-RCONFLICTS_${PN}  ="cryptsetup"
-
-RPROVIDES_${PN}-dev = "cryptsetup-dev"
-RREPLACES_${PN}-dev = "cryptsetup-dev"
-RCONFLICTS_${PN}-dev  ="cryptsetup-dev"
-
-BBCLASSEXTEND = "native nativesdk"
diff --git a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch b/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch
deleted file mode 100644
index 8c7b6da..0000000
--- a/meta-tpm/recipes-tpm2/cryptsetup-tpm-incubator/files/configure_fix.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-Upstream-Status: OE specific
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Index: git/configure.ac
-===================================================================
---- git.orig/configure.ac
-+++ git/configure.ac
-@@ -16,7 +16,7 @@ AC_CONFIG_HEADERS([config.h:config.h.in]
- 
- # For old automake use this
- #AM_INIT_AUTOMAKE(dist-xz subdir-objects)
--AM_INIT_AUTOMAKE([dist-xz 1.12 serial-tests subdir-objects])
-+AM_INIT_AUTOMAKE([dist-xz 1.12 serial-tests subdir-objects foreign])
- 
- if test "x$prefix" = "xNONE"; then
- 	sysconfdir=/etc
-- 
2.17.1

