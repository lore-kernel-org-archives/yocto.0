Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web12.509.1576598376915849098
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Dec 2019 07:59:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jf4J5jHX;
 spf=pass (domain: gmail.com, ip: 209.85.128.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f46.google.com with SMTP id b19so3449855wmj.4
        for <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2019 07:59:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EvooyCJ1ogFMgAAywY4UMNI6LLigZcchFgjVIH0fb9c=;
        b=Jf4J5jHXz/OaJKSqjkATnOLhRB57OhqRRbj9o6OfaKenzSYGmeEbz8AapMCHoaJNj2
         4XFi511ySskJAhTU0fhSMLs22w42fPOde/1KLTwlb3ETkNBe3ZnHqbt15TuWxRf3cUSC
         6ZmV9T927wPNu58dzxp37OSmKuyncYS1RinUW6O8FGixddBVC2jZP81DVf/8HyjzUzEN
         Ubx10ucP9KxP2Y2m7yKtRY2/MluG/e1PCwkeFEVdk9OOIMgTBaDPS+oBXtLseJEYY8in
         tGhLB0D5sjrAi8YY4ZW8C2OhjjhW4nDNXj6cXpjTVDcALOYuPdu+y1+vMuQXhqXt+vNE
         CslQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EvooyCJ1ogFMgAAywY4UMNI6LLigZcchFgjVIH0fb9c=;
        b=iQswk540pd2Sn2nSBqkmxphZdUtACXhmXNn7vss67EdbDWT3rg1jfURJj17fzS6o8E
         HtF+OKk2GLP90tEPVhk1ayKeZ87OIFTKt8QkrW3offNMS4NYtal7LWC8rLIW8v+lTbc7
         RJaxqq0TRcelR/mJtkDzrvXWQCqSXcKszxs6vO8eM71Jt6aD0GTuu5EkzGNG3876UciH
         fjrXAVJlT0HvRrVBhS2ITjYDHuHqVR2jsNOEv+csoOCVRBenyTIn/l5vWVG0FwFDSspa
         RzYZPYK8RIU33yrrHn32ICjKFkYLeg3Nu3xrGBRNGqLYtP3Eq8gPRzElW0cjgEbunBPR
         tlJA==
X-Gm-Message-State: APjAAAXmQMmNxeiGPuIjQzNMf9GARbFBPGIniSquq3iStgG+u1uxTzW0
	fNdXq8QkfAB+VkjJOWorcYIUkhvv6rs=
X-Google-Smtp-Source: APXvYqwuH0QvUYwhx0gq7DHm0ONUFcqlrJsu50bwelQrIKn/THxmNcun8sTxVqb0+NclLBTQBCh5kg==
X-Received: by 2002:a1c:2504:: with SMTP id l4mr6360478wml.134.1576598375270;
        Tue, 17 Dec 2019 07:59:35 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from alexander-box.rd.corpintra.net ([141.113.66.202])
        by smtp.gmail.com with ESMTPSA id o194sm3576879wme.45.2019.12.17.07.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2019 07:59:34 -0800 (PST)
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [meta-gplv2][PATCH 2/3] mc: fix builds with gettext 0.20
Date: Tue, 17 Dec 2019 16:59:28 +0100
Message-Id: <20191217155929.3178-2-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217155929.3178-1-alex.kanavin@gmail.com>
References: <20191217155929.3178-1-alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 ...0001-Fix-builds-wit-the-gettext-0.20.patch | 52 +++++++++++++++++++
 recipes-extended/mc/mc_4.7.5.2.bb             |  1 +
 2 files changed, 53 insertions(+)
 create mode 100644 recipes-extended/mc/mc/0001-Fix-builds-wit-the-gettext-0.20.patch

diff --git a/recipes-extended/mc/mc/0001-Fix-builds-wit-the-gettext-0.20.patch b/recipes-extended/mc/mc/0001-Fix-builds-wit-the-gettext-0.20.patch
new file mode 100644
index 0000000..dbf18ca
--- /dev/null
+++ b/recipes-extended/mc/mc/0001-Fix-builds-wit-the-gettext-0.20.patch
@@ -0,0 +1,52 @@
+From 56aef108be94019c7828c14f0c4849336f811847 Mon Sep 17 00:00:00 2001
+From: Alexander Kanavin <alex.kanavin@gmail.com>
+Date: Tue, 17 Dec 2019 16:34:06 +0100
+Subject: [PATCH] Fix builds wit the gettext 0.20
+
+Upstream-Status: Inappropriate [fixing an old version]
+Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
+---
+ Makefile.am     | 2 +-
+ configure.ac    | 2 +-
+ src/Makefile.am | 2 +-
+ 3 files changed, 3 insertions(+), 3 deletions(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index ab4f9b7..b27ab4a 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -1,7 +1,7 @@
+ ## Process this file with automake to create Makefile.in.
+ AUTOMAKE_OPTIONS = 1.5
+ 
+-SUBDIRS = intl po lib src doc contrib misc
++SUBDIRS = po lib src doc contrib misc
+ 
+ EXTRA_DIST = 
+ 
+diff --git a/configure.ac b/configure.ac
+index c05902d..0430714 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -88,7 +88,7 @@ fi
+ dnl
+ dnl Internationalization
+ dnl
+-AM_GNU_GETTEXT(no-libtool, need-ngettext)
++AM_GNU_GETTEXT([external],no-libtool, need-ngettext)
+ AM_GNU_GETTEXT_VERSION(0.14.3)
+ 
+ if test "x$USE_INCLUDED_LIBINTL" = xyes; then
+diff --git a/src/Makefile.am b/src/Makefile.am
+index 2da86c3..1859f0d 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -52,7 +52,7 @@ else
+ mc_LDADD += $(GLIB_LIBS)
+ endif
+ 
+-mc_LDADD += $(PCRE_LIBS) $(LIBICONV) $(INTLLIBS)
++mc_LDADD += $(PCRE_LIBS) $(INTLLIBS)
+ 
+ SRC_mc_conssaver = \
+ 	cons.handler.c consaver/cons.saver.h
diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
index ca84966..e26bfd9 100644
--- a/recipes-extended/mc/mc_4.7.5.2.bb
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -11,6 +11,7 @@ PR = "r3"
 SRC_URI = "http://www.midnight-commander.org/downloads/${BPN}-${PV}.tar.bz2 \
            file://mc-CTRL.patch \
            file://0001-disable-Ctrl-g-key-and-Ctrl-key.patch \
+           file://0001-Fix-builds-wit-the-gettext-0.20.patch \
            "
 
 SRC_URI[md5sum] = "bdae966244496cd4f6d282d80c9cf3c6"
-- 
2.17.1

