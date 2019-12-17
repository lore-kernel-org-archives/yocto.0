Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web09.529.1576598376228626528
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 07:59:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZK0t67LR;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id p9so3458232wmc.2
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 07:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=+AZiqcav3qpUl0MF0vbEr4PaahvXqqz80Crc2LZYiB8=;
        b=ZK0t67LRTwsTMbqS9e+WB44Cfwvq749PIA8DI+6vSfAD/bEtA5taA22eDRyrgyfanv
         2tC/U/MyxleiD5vREI0iTUSQqxT+f6knRXFeDCpBSga86obDkjAxC9AVpuL07NWqgITC
         mM/StecqqC8NDPStIUy9/bQvFrVa2n9XWojYoujWxIM8Jv5VIExjkBgS8zv/BdKAp6kd
         RVmLQuUyMsWmLEay6RzdOrXQjYqUFAurAYPQVTbzj2H+TVCtl6ERHHT0BK0/dlJD/YyY
         Lco0A5Uo9W+IR8GHL24ZeamKaxoHITMSGv/ohZjvxRIAWNPxFtu8K7NgplDPvOYqbAMw
         QsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+AZiqcav3qpUl0MF0vbEr4PaahvXqqz80Crc2LZYiB8=;
        b=aqmMoiEPSl/tWJ8AIwNCpgtsxdkaNspQtIdYpCFQK8Off+SFtu1kRO/H/pHgxHzdqL
         fZfPeQnIHjxBOmRFkiYsPdfZ7p++99o0oYW2Yce1kJ9BabakskvDY8+3F/GVDc5rluaq
         CO0ZlLsULGKhjlIlvOPpmzZqUj8jOxH/AECTXyyB7l/2nbgAfmDRr0WadeqHne/dVTmb
         vdt3HKI0VKDLE1Eoia8PvGqbuULWlT8b8P9Y2c+HUEkINrUX4tEgJ+3sMDK4KiHtNqKS
         o92ebc4moJkviffdZd1701ZLSHPmxzz1XJpsBUUhkzJxDDBubD7P4wkp0+S3t6BKPL8P
         CTtw==
X-Gm-Message-State: APjAAAU27U57hnDKsPNxHEZuQCBYujgsqUcpRhNFF11jWZrijRK6s52F
	V4azHYm3b1jvubk7r9TQJ2zji/pwlSg=
X-Google-Smtp-Source: APXvYqw/lQZjgfwDhXXBF8Zb3OF9joPouVRLDZZcNYnooY3FqoA3Gupa9hfoimG7qD0lQjkwpZFkug==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr6392487wma.62.1576598374455;
        Tue, 17 Dec 2019 07:59:34 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from alexander-box.rd.corpintra.net ([141.113.66.202])
        by smtp.gmail.com with ESMTPSA id o194sm3576879wme.45.2019.12.17.07.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 07:59:33 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-gplv2][PATCH 1/3] grep: fix builds with gettext 0.20.x
Date: Tue, 17 Dec 2019 16:59:27 +0100
Message-Id: <20191217155929.3178-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 .../0001-Fix-builds-with-gettext-0.20.patch   | 38 +++++++++++++++++++
 recipes-extended/grep/grep_2.5.1a.bb          |  3 +-
 2 files changed, 40 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch

diff --git a/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch b/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch
new file mode 100644
index 0000000..a8042eb
--- /dev/null
+++ b/recipes-extended/grep/grep-2.5.1a/0001-Fix-builds-with-gettext-0.20.patch
@@ -0,0 +1,38 @@
+From e11be23d694c8bd4e62252874d163d06b6de3117 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Tue, 17 Dec 2019 16:46:05 +0100
+Subject: [PATCH] Fix builds with gettext 0.20
+
+Upstream-Status: Inappropriate [fixing an old version]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ Makefile.am  | 2 +-
+ configure.in | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index e4b58c4..a851b9d 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -1,7 +1,7 @@
+ ## Process this file with automake to create Makefile.in
+ AUTOMAKE_OPTIONS = no-dependencies
+ 
+-SUBDIRS = intl po lib doc src tests m4 vms bootstrap
++SUBDIRS = po lib doc src tests m4 vms bootstrap
+ 
+ EXTRA_DIST = TODO README README-alpha PATCHES.AC PATCHES.AM
+ 
+diff --git a/configure.in b/configure.in
+index 2fa6c71..c042a10 100644
+--- a/configure.in
++++ b/configure.in
+@@ -70,7 +70,7 @@ esac
+ 
+ dnl I18N feature
+ ALL_LINGUAS="cs de el eo es et fr gl hr id it ja ko nl no pl pt_BR ru sl sv"
+-AM_GNU_GETTEXT
++AM_GNU_GETTEXT([external])
+ 
+ dnl DOS file name convention
+ dnl sets HAVE_DOS_FILE_NAMES
diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index b331fee..d3b4ddc 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -17,7 +17,8 @@ SRC_URI = "${GNU_MIRROR}/grep/grep-${PV}.tar.bz2 \
            file://fix-for-texinfo-5.1.patch \
            file://grep-egrep-fgrep-Fix-LSB-NG-cases.patch \
            file://search-fix-compilation-error-with-security-flags-ena.patch \
-          "
+           file://0001-Fix-builds-with-gettext-0.20.patch \
+           "
 
 SRC_URI[md5sum] = "52202fe462770fa6be1bb667bd6cf30c"
 SRC_URI[sha256sum] = "38c8a2bb9223d1fb1b10bdd607cf44830afc92fd451ac4cd07619bf92bdd3132"
-- 
2.17.1

