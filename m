Return-Path: <asharma@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82708C433EF
	for <webhook@archiver.kernel.org>; Wed, 23 Mar 2022 19:42:11 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web11.1715.1648064530684729217
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 12:42:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=fMgsKW+f;
 spf=pass (domain: mvista.com, ip: 209.85.214.179,
 mailfrom: asharma@mvista.com)
Received: by mail-pl1-f179.google.com with SMTP id e5so2550015pls.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 12:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2XLUK8pJLgSHRlQI3pXpMQjr82Qo3gtvjFLSKyh/g4w=;
        b=fMgsKW+fj+IALmcga4jxo2hKIx8ZDYuq+IbaTeJ/12uPWr2PpHxGQsum194g2LJGog
         ExrNimFyurAp4CQHpVqWNiqhyA4RRwewjVq4lXrcMDIwd9rb8lmYWQ8mm5m5iYiNWEEq
         mMFnwsXx/I2j6p7Rgz64A4FEfajLovr67QMzg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=2XLUK8pJLgSHRlQI3pXpMQjr82Qo3gtvjFLSKyh/g4w=;
        b=VK68QQ57QGDVrtPnyISWsmqtXqR9mxy6nDfY31LnVGPPOr+pg649WHyy2XWWR1mI5j
         Cy5yZHpZhIpfyhbCsalBsam3B2vVpjaVLpm30Lkcqk4oTGgAoisgeJDVCG8oIwxo2ExC
         A7SKod/zXoAj7RQdW//mYBFRidfj6nm5RkDOgBSxroEzzSxeb6daddJoZvW2o3HO95UK
         ZrzTO8AEiXM8VcZT/SL1PkXtCgjakN2bNiYzSa081v3DnbCj/XyJbChOMCHgJMhUYA5S
         uX1h2y0RyuiYoRsMaDCY3IYGDBGgdoKRb30q8ZdH3DeOny9dYJ+atWZ8d6CjHq6zQAqM
         6wuA==
X-Gm-Message-State: AOAM532ZG8QKgY1Mkv+F2MFtjIcam8KVoPDfBaPrHUofZzzT4PuFYn+Q
	eT9caV72tWmLKgOeVdjkABZCy1mWP+Zbag==
X-Google-Smtp-Source: 
 ABdhPJzPSBuHP60gIna70Zmhnsko4cQzMUolHAw3NX6Q0yK0iYMG5ahqtl0wdExdcvbbFb16A0pzGQ==
X-Received: by 2002:a17:902:ccce:b0:154:7a02:2a05 with SMTP id
 z14-20020a170902ccce00b001547a022a05mr1705404ple.42.1648064529822;
        Wed, 23 Mar 2022 12:42:09 -0700 (PDT)
Received: from asharma-Latitude-3400 ([223.190.84.201])
        by smtp.gmail.com with ESMTPSA id
 ca9-20020a17090af30900b001c658fd7b47sm455839pjb.36.2022.03.23.12.42.07
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Mar 2022 12:42:09 -0700 (PDT)
Received: by asharma-Latitude-3400 (sSMTP sendmail emulation);
 Thu, 24 Mar 2022 01:12:01 +0530
From: Ashish Sharma <asharma@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Ashish Sharma <asharma@mvista.com>
Subject: [meta-security][PATCH] meta-security : Use SPDX style licensing
 format
Date: Thu, 24 Mar 2022 01:11:56 +0530
Message-Id: <20220323194156.12208-1-asharma@mvista.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Mar 2022 19:42:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56537

WARNING: selinux-sandbox-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: selinux-gui-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: semodule-utils-3.3-r0.1 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: selinux-dbus-3.3-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2+ [obsolete-license] \
WARNING: libwhisker2-perl-2.5-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPL-1.0+ [obsolete-license] \
WARNING: lib-perl-0.63-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPL-1.0+ [obsolete-license] \
WARNING: libhtp-0.5.39-r0 do_package_qa: QA Issue: Recipe LICENSE includes obsolete licenses GPLv2 [obsolete-license] \
...

Signed-off-by: Ashish Sharma <asharma@mvista.com>
---
 recipes-ids/samhain/samhain.inc                       | 2 +-
 recipes-ids/suricata/suricata.inc                     | 2 +-
 recipes-perl/perl/libwhisker2-perl_2.5.bb             | 2 +-
 recipes-scanners/clamav/clamav_0.104.0.bb             | 2 +-
 recipes-security/bastille/bastille_3.2.1.bb           | 2 +-
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
 recipes-security/nikto/nikto_2.1.6.bb                 | 2 +-
 recipes-security/sssd/sssd_2.5.2.bb                   | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 077e118..d64cddb 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
 HOMEPAGE    = "http://www.la-samhna.de/samhain/"
-LICENSE     = "GPLv2"
+LICENSE     = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
 PV = "4.4.6"
diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index 5754617..906423c 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -1,5 +1,5 @@
 HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 COMPATIBLE_HOST:powerpc = 'null'
diff --git a/recipes-perl/perl/libwhisker2-perl_2.5.bb b/recipes-perl/perl/libwhisker2-perl_2.5.bb
index 5889a05..42c0b42 100644
--- a/recipes-perl/perl/libwhisker2-perl_2.5.bb
+++ b/recipes-perl/perl/libwhisker2-perl_2.5.bb
@@ -1,7 +1,7 @@
 DESCRIPTION = "Libwhisker is a Perl module geared specificly for HTTP testing."
 
 SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
+LICENSE = "Artistic-1.0 | GPL-1.0-or-later"
 
 LIC_FILES_CHKSUM = "file://LICENSE;md5=254b8e29606fce6d1c1a4c9e32354573"
 
diff --git a/recipes-scanners/clamav/clamav_0.104.0.bb b/recipes-scanners/clamav/clamav_0.104.0.bb
index f0889de..491a82f 100644
--- a/recipes-scanners/clamav/clamav_0.104.0.bb
+++ b/recipes-scanners/clamav/clamav_0.104.0.bb
@@ -2,7 +2,7 @@ SUMMARY = "ClamAV anti-virus utility for Unix - command-line interface"
 DESCRIPTION = "ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats."
 HOMEPAGE = "http://www.clamav.net/index.html"
 SECTION = "security"
-LICENSE = "LGPL-2.1"
+LICENSE = "LGPL-2.1-only"
 
 DEPENDS = "glibc llvm libtool db openssl zlib curl libxml2 bison pcre2 json-c libcheck"
  
diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 2d82983..e7852d9 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -2,7 +2,7 @@
 #consult the README file for the meta-security layer for additional information.
 SUMMARY = "Linux hardening tool"
 DESCRIPTION = "Bastille Linux is a Hardening and Reporting/Auditing Program which enhances the security of a Linux box, by configuring daemons, system settings and firewalling."
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 # Bash is needed for set +o privileged (check busybox), might also need ncurses
 DEPENDS = "virtual/kernel"
diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 9aefc32..5f8cf3c 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -6,7 +6,7 @@ DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
 HOMEPAGE = "https://launchpad.net/ecryptfs"
 SECTION = "base"
 
-LICENSE = "GPL-2.0"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 
 DEPENDS = "keyutils libgcrypt intltool-native glib-2.0-native"
diff --git a/recipes-security/nikto/nikto_2.1.6.bb b/recipes-security/nikto/nikto_2.1.6.bb
index 8542d69..8c21b30 100644
--- a/recipes-security/nikto/nikto_2.1.6.bb
+++ b/recipes-security/nikto/nikto_2.1.6.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Nikto is an Open Source web server scanner which performs compreh
 SECTION = "security"
 HOMEPAGE = "https://cirt.net/Nikto2"
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 8bc8787..9f1d627 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -2,7 +2,7 @@ SUMMARY = "system security services daemon"
 DESCRIPTION = "SSSD is a system security services daemon"
 HOMEPAGE = "https://pagure.io/SSSD/sssd/"
 SECTION = "base"
-LICENSE = "GPLv3+"
+LICENSE = "GPL-3.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
-- 
2.33.0


