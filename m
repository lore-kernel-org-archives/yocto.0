Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web10.7603.1611914848159891747
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 02:07:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=VtrxOb9W;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id y187so6693064wmd.3
        for <yocto@lists.yoctoproject.org>; Fri, 29 Jan 2021 02:07:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=vI+exlQ2uyVsow4x0zafO524v+q6jJStVrUO/E8ME6c=;
        b=VtrxOb9WGGYRFEBMNf2LfTgHJEo5ZOcOBWiBJ7NsnBVSmYFv8SG/L1uL7Q9ISOTi1/
         pvoWG1ED5OJPmsxmDELmWiDuPrxqfwuB0poIwpxOJQmIu7aKjiXaFUvLSq18qT+kdaDJ
         V7Z9ARZXmHVQ6fOlvhwj29RxGTnnHvuGY6K9g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vI+exlQ2uyVsow4x0zafO524v+q6jJStVrUO/E8ME6c=;
        b=VgjIOk8bB3gIv5uP3Xjcdn5KmL5V51pP8rMw+sRNi81V3IRwjTjBGEo6u6K55bChf0
         e/x9CLmeM9a3h39ITuG546Smkj7bPWswItZ1k9BCB2jEWXC+F07k0SZOO0g4O5xYL2Az
         +kQl2uU3GW+5leyUitNPBTEX/mxvE2fQHhK7as7XwZEU9+e7dZufNaGRoGPExt7dY1+F
         BbJpPFm7Zh2iEWwObI2p8Lr1YkBKyI7cEzxIRzYB3OxS9jAUWpar/3yrdA92nkNYZrfb
         GG6rOd6zyjYRfD3zyVnS1cUIOBIaIobCDTAvrz7EysenSs1G89HPCxFk6cC+03HrmHQ4
         pM7g==
X-Gm-Message-State: AOAM531j+zU/joP6nSU8i2rWDO4CqfJL4Ygzs1nfGAtC3Bgg37TNn3Bv
	IMcTPgcAXxmM3Y6Odb4QNRUdsYApzdLSxg==
X-Google-Smtp-Source: ABdhPJxWctoQbCryLHMhoFGuevTpnR+z2BDj1jRAep4lyfCHBTRolahzxMjZFhzy942rb98lS2gIHg==
X-Received: by 2002:a7b:c1c6:: with SMTP id a6mr3020129wmj.23.1611914846662;
        Fri, 29 Jan 2021 02:07:26 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:93ef:509c:4f16:14ff])
        by smtp.gmail.com with ESMTPSA id b2sm9834636wmd.41.2021.01.29.02.07.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jan 2021 02:07:26 -0800 (PST)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 3/3] grep: Update to work with autoconf 2.70
Date: Fri, 29 Jan 2021 10:07:24 +0000
Message-Id: <20210129100724.1359686-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210129100724.1359686-1-richard.purdie@linuxfoundation.org>
References: <20210129100724.1359686-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../grep/grep-2.5.1a/autoconf270.patch        | 27 +++++++++++++++++++
 recipes-extended/grep/grep_2.5.1a.bb          |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 recipes-extended/grep/grep-2.5.1a/autoconf270.patch

diff --git a/recipes-extended/grep/grep-2.5.1a/autoconf270.patch b/recipes-extended/grep/grep-2.5.1a/autoconf270.patch
new file mode 100644
index 0000000..fe2cb0b
--- /dev/null
+++ b/recipes-extended/grep/grep-2.5.1a/autoconf270.patch
@@ -0,0 +1,27 @@
+Update to add the required gettext version to work with autoconf 2.70
+
+Also the script needs CPP so add the appropriate macro.
+
+Upstream-Status: Inappropriate [needed for old GPLv2 version only]
+RP - 2021/1/28
+
+Index: grep-2.5.1a/configure.in
+===================================================================
+--- grep-2.5.1a.orig/configure.in
++++ grep-2.5.1a/configure.in
+@@ -27,6 +27,7 @@ AC_PROG_AWK
+ AC_PROG_CC
+ AC_PROG_INSTALL
+ AC_PROG_RANLIB
++AC_PROG_CPP
+ 
+ dnl Checks for typedefs, structures, and compiler characteristics.
+ AC_SYS_LARGEFILE
+@@ -73,6 +74,7 @@ esac
+ dnl I18N feature
+ ALL_LINGUAS="cs de el eo es et fr gl hr id it ja ko nl no pl pt_BR ru sl sv"
+ AM_GNU_GETTEXT([external])
++AM_GNU_GETTEXT_VERSION([0.21])
+ 
+ dnl DOS file name convention
+ dnl sets HAVE_DOS_FILE_NAMES
diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index d3b4ddc..5445c7e 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -18,6 +18,7 @@ SRC_URI = "${GNU_MIRROR}/grep/grep-${PV}.tar.bz2 \
            file://grep-egrep-fgrep-Fix-LSB-NG-cases.patch \
            file://search-fix-compilation-error-with-security-flags-ena.patch \
            file://0001-Fix-builds-with-gettext-0.20.patch \
+           file://autoconf270.patch \
            "
 
 SRC_URI[md5sum] = "52202fe462770fa6be1bb667bd6cf30c"
-- 
2.27.0

