Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web11.517.1576598377853133558
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 07:59:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LhaiJCSH;
 spf=pass (domain: gmail.com, ip: 209.85.221.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wr1-f54.google.com with SMTP id z3so4348619wru.3
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 07:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NAy9RFoovFxQtLwMai/F4zLgjW6LTfPw96P//EoovJs=;
        b=LhaiJCSH97XaOTh+qTllAD54PXQwoewHegiKK67mV/jjCDnnmHItxCA5akomesgbVt
         o1bU5twf29iEn4laKhPT8rIdMAqraF8nQp/jG5+wpARubG6qs8byMSKK8LtACHK1V1mt
         tRl5v64WOM1KuhY6+LmxR18Q1JxKjp7mqKi4IC82/zBEgTQxRRcV7QZtFXSHqQ8+FM3V
         t8OG2kgQqLYve4cYHm7jxUQQqIEBeDDYy/+wlpPUO+SoYD3kivbG93HmzkZolf0ZIjsT
         8PxwLszx3q1+R8BKFDREkHZ4C0AIXpYRyqw/837bzbipDZMaKyHGJQzydN2baU3wyLtl
         uSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NAy9RFoovFxQtLwMai/F4zLgjW6LTfPw96P//EoovJs=;
        b=a9HU2vb4XdzK7IMZEG7J1V1/OFe+XFy5sqVMYHTXIy2C6luq82lUs0kCPDTYhlP+hO
         LNwpQLPhMbrkAaUx1qhecxr/oYVCgC34ecUTp2lfKM899lkXHqkHwXzt/MsHUFQPnrXD
         COXxoJf7deiKrnPViT3ZYUu7pJF/k98MWkOpDycEH5jssgC68yzci+4IIMkLLo6rXUDm
         PJvE/nuos7K65z2BoBsLUVmqnRvc3s4yOhWs8mhLyc+aoswk27vijQNTELbmjRyRzxNK
         kOUswa6Un56W2XrVRT/aTgDUAlTM0CByaxoE//pqkBf7p6jjc8/Jlb57UvsrHn6JQMsd
         7ZIA==
X-Gm-Message-State: APjAAAUcYF1PcIw7CgaQaPdFEDERMH5fPeD7NmMegDmyjhYmvq587go/
	KSKukcvT1lEcUVrvbCb/hQYkMNErFRY=
X-Google-Smtp-Source: APXvYqyzN+5v/v9YEHViWGNY/v+XK6sIdFaA0KPWLseCQ7so+fGl+NjdWZT66/wb+BJIOV/+j96BIQ==
X-Received: by 2002:a5d:530d:: with SMTP id e13mr37713838wrv.125.1576598376154;
        Tue, 17 Dec 2019 07:59:36 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from alexander-box.rd.corpintra.net ([141.113.66.202])
        by smtp.gmail.com with ESMTPSA id o194sm3576879wme.45.2019.12.17.07.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 07:59:35 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-gplv2][PATCH 3/3] sed: fix builds with gettext 0.20.x
Date: Tue, 17 Dec 2019 16:59:29 +0100
Message-Id: <20191217155929.3178-3-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217155929.3178-1-alex.kanavin@gmail.com>
References: <20191217155929.3178-1-alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 .../0001-Fix-builds-with-gettext-0.20.patch   | 38 +++++++++++++++++++
 recipes-extended/sed/sed_4.1.2.bb             |  4 +-
 2 files changed, 41 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/sed/sed-4.1.2/0001-Fix-builds-with-gettext-0.20.patch

diff --git a/recipes-extended/sed/sed-4.1.2/0001-Fix-builds-with-gettext-0.20.patch b/recipes-extended/sed/sed-4.1.2/0001-Fix-builds-with-gettext-0.20.patch
new file mode 100644
index 0000000..e366b5a
--- /dev/null
+++ b/recipes-extended/sed/sed-4.1.2/0001-Fix-builds-with-gettext-0.20.patch
@@ -0,0 +1,38 @@
+From 2792bccbfd41427a79edd462906aba78144b8c6a Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Tue, 17 Dec 2019 16:40:58 +0100
+Subject: [PATCH] Fix builds with gettext 0.20
+
+Upstream-Status: Inappropriate [fixing an old version]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ Makefile.am  | 2 +-
+ configure.ac | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index f0aaa7f..1ebc805 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -6,7 +6,7 @@ ACLOCAL_AMFLAGS = -I config
+ 
+ PACKAGE = sed
+ 
+-SUBDIRS = intl lib po sed doc testsuite
++SUBDIRS = lib po sed testsuite
+ 
+ noinst_DATA = bootstrap.sh
+ noinst_HEADERS = basicdefs.h
+diff --git a/configure.ac b/configure.ac
+index e08c9a3..df20044 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -130,7 +130,7 @@ AM_CONDITIONAL(TEXI2HTML_HTML, test "x$enable_html" = xtexi2html)
+ 
+ ALL_LINGUAS="af ca cs da de el eo es et fi fr ga gl he hr hu id it ja ko nl pl pt_BR ro ru sk sl sr sv tr zh_CN"
+ AM_GNU_GETTEXT_VERSION(0.11)
+-AM_GNU_GETTEXT(, need-ngettext)
++AM_GNU_GETTEXT([external], need-ngettext)
+ 
+ AC_CONFIG_FILES([bootstrap.sh], chmod +x bootstrap.sh)
+ AC_CONFIG_FILES([Makefile doc/Makefile \
diff --git a/recipes-extended/sed/sed_4.1.2.bb b/recipes-extended/sed/sed_4.1.2.bb
index 40e3a53..4a58442 100644
--- a/recipes-extended/sed/sed_4.1.2.bb
+++ b/recipes-extended/sed/sed_4.1.2.bb
@@ -9,7 +9,9 @@ PR = "r7"
 SRC_URI = "${GNU_MIRROR}/sed/sed-${PV}.tar.gz \
            file://fix_return_type.patch \
            file://sed-4.1.2_fix_for_automake-1.12.patch \
-           file://Makevars"
+           file://Makevars \
+           file://0001-Fix-builds-with-gettext-0.20.patch \
+           "
 
 SRC_URI[md5sum] = "928f0e06422f414091917401f1a834d0"
 SRC_URI[sha256sum] = "638e837ba765d5da0a30c98b57c2953cecea96827882f594612acace93ceeeab"
-- 
2.17.1

