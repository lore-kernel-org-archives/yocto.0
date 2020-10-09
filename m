Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web12.14594.1602252498726688888
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Oct 2020 07:08:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DbUcWhTU;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id r21so3904109pgj.5
        for <yocto@lists.yoctoproject.org>; Fri, 09 Oct 2020 07:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=H7AoPMoCrXDWjJ805r7GgKc6/VJzJ6NPvprGdCTcM0E=;
        b=DbUcWhTUZLvi/XcF/JNps8yAAYMoNPBgpntwIlHcm+mnC3ij3+EwhRvff5r40y3aTi
         /xE+7uzCw/Ilma+tabhmQry+D/FUvmWpDLWWHklJ2YuOu+timiT9b7cEVp/o2K5AS2H5
         qJmaDBWHOHM9qIoVSXgUCGrd81jz3KFksxfu+nsq1h+ZBvfb/3cOanSldupf465JzXLm
         z6zJqryQo4bOl0m1Ea3ewyqTV7NddJXA/ebl7QQ72PQQ1HbjTpyA5yxSRX27Qd6NZbv5
         SCnrzLXBlzFdm8bfsRfFZ/thknkAsp0wC8tBELREMnrd2RA2almzuMQifwDE1F9QivtE
         LzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=H7AoPMoCrXDWjJ805r7GgKc6/VJzJ6NPvprGdCTcM0E=;
        b=OdOjsCre/TLgeBChl2lWNROkuyjriWoIIJYtCeOOESgIVAUA8pwp9kOYEIzz91ro+9
         sNDKaU8cPk5oxcwkhUvjlTkEiluQtwZdKDlsZySySoNTg+BlTN5sSEt/qWStvepep238
         9aer6oIS8I6O2ME+zPVsk0JoO1cfXWRJbba4DxhJJ5dHCrDBN94pChoPURY0YlpFFb8L
         iupuPezYlvdFimrQelbKVzNE6W8ieFhP9hfjK7pTGKhqNYvNjs+obRA34NG6kLPp2zJf
         c5y0LmPb/HFAVd58coPRAp4ZNjP94W19fj9PRRPp/zu6Qca3vntX4BYUYcTWYPLCx6Rt
         QDDw==
X-Gm-Message-State: AOAM531JCd/z09P5jat8D4uUawrYKe/g/MFZeluMl2e/HsErOgG8xJpL
	FJDh2U/+F61/aTOy9iNQEGW9KZtRN60=
X-Google-Smtp-Source: ABdhPJzv2jpB0eXa6ZycEBSe+mg0hQK2iQxjM48MXQPFi+TiumTpX0UupnOmEQdNZ4AilP0Z4sarzg==
X-Received: by 2002:a63:1414:: with SMTP id u20mr3254677pgl.297.1602252498005;
        Fri, 09 Oct 2020 07:08:18 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:f1c6:e45a:6950:664b])
        by smtp.gmail.com with ESMTPSA id k9sm10119710pfc.96.2020.10.09.07.08.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2020 07:08:17 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/7] sssd: update to latest ltm 1.16.5
Date: Fri,  9 Oct 2020 07:08:10 -0700
Message-Id: <20201009140812.21765-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201009140812.21765-1-akuster808@gmail.com>
References: <20201009140812.21765-1-akuster808@gmail.com>

fix musl support

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...defines-which-otherwise-are-availabl.patch | 32 +++++++++++++++++++
 .../sssd/{sssd_1.16.4.bb => sssd_1.16.5.bb}   |  8 +++--
 2 files changed, 37 insertions(+), 3 deletions(-)
 create mode 100644 recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
 rename recipes-security/sssd/{sssd_1.16.4.bb => sssd_1.16.5.bb} (94%)

diff --git a/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch b/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
new file mode 100644
index 0000000..1a22332
--- /dev/null
+++ b/recipes-security/sssd/files/0002-Provide-missing-defines-which-otherwise-are-availabl.patch
@@ -0,0 +1,32 @@
+From 37a0999e5a9f54e1c61a02a7fbab6fcd04738b3c Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Thu, 8 Oct 2020 05:54:13 -0700
+Subject: [PATCH] Provide missing defines which otherwise are available on
+ glibc system headers
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+Upsteam-Status: Pending
+
+---
+ src/util/util.h | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/src/util/util.h b/src/util/util.h
+index 8a754dbfd..6e55b4bdc 100644
+--- a/src/util/util.h
++++ b/src/util/util.h
+@@ -76,6 +76,10 @@
+ #define MAX(a, b)  (((a) > (b)) ? (a) : (b))
+ #endif
+ 
++#ifndef ALLPERMS
++# define ALLPERMS (S_ISUID|S_ISGID|S_ISVTX|S_IRWXU|S_IRWXG|S_IRWXO)/* 07777 */
++#endif
++
+ #define SSSD_MAIN_OPTS SSSD_DEBUG_OPTS
+ 
+ #define SSSD_SERVER_OPTS(uid, gid) \
+-- 
+2.17.1
+
diff --git a/recipes-security/sssd/sssd_1.16.4.bb b/recipes-security/sssd/sssd_1.16.5.bb
similarity index 94%
rename from recipes-security/sssd/sssd_1.16.4.bb
rename to recipes-security/sssd/sssd_1.16.5.bb
index e54fa98..9784ec7 100644
--- a/recipes-security/sssd/sssd_1.16.4.bb
+++ b/recipes-security/sssd/sssd_1.16.5.bb
@@ -6,7 +6,9 @@ LICENSE = "GPLv3+"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
-DEPENDS += "libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
+DEPENDS_append = " libldb dbus libtalloc libpcre glib-2.0 popt e2fsprogs libtevent"
+
+DEPENDS_append_libc-musl = " musl-nscd"
 
 # If no crypto has been selected, default to DEPEND on nss, since that's what
 # sssd will pick if no active choice is made during configure
@@ -19,10 +21,10 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
            file://fix-ldblibdir.patch \
            file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
            file://0001-nss-Collision-with-external-nss-symbol.patch \
+           file://0002-Provide-missing-defines-which-otherwise-are-availabl.patch \
            "
 
-SRC_URI[md5sum] = "757bbb6f15409d8d075f4f06cb678d50"
-SRC_URI[sha256sum] = "6bb212cd6b75b918e945c24e7c3f95a486fb54d7f7d489a9334cfa1a1f3bf959"
+SRC_URI[sha256sum] = "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d17aa0fa756e4d0c0"
 
 inherit autotools pkgconfig gettext python3-dir features_check systemd
 
-- 
2.17.1

