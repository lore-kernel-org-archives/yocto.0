Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A0DC352B6
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:53 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web09.3335.1649880294856771718
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Apr 2022 13:04:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid
 domain name (domain: windriver.com, ip: 147.11.3.146,
 mailfrom: joe.slater@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 23DK4r4K006577
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 13:04:53 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 23DK4q56015164
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 13:04:53 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Apr 2022 13:04:51 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Wed, 13 Apr 2022 13:04:50 -0700
From: Joe Slater <joe.slater@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: <joe.slater@windriver.com>, <randy.macleod@windriver.com>
Subject: [meta-selinux][PATCH 1/1] LICENSE: update to SPDX standard names
Date: Wed, 13 Apr 2022 13:04:50 -0700
Message-ID: <20220413200450.11240-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56767

Use convert-spdx-licenses.py to update LICENSE names in recipes.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 recipes-security/selinux/checkpolicy_3.3.bb     | 2 +-
 recipes-security/selinux/libsemanage_3.3.bb     | 2 +-
 recipes-security/selinux/libsepol_3.3.bb        | 2 +-
 recipes-security/selinux/mcstrans_3.3.bb        | 2 +-
 recipes-security/selinux/policycoreutils_3.3.bb | 2 +-
 recipes-security/selinux/restorecond_3.3.bb     | 2 +-
 recipes-security/selinux/selinux-dbus_3.3.bb    | 2 +-
 recipes-security/selinux/selinux-gui_3.3.bb     | 2 +-
 recipes-security/selinux/selinux-python_3.3.bb  | 2 +-
 recipes-security/selinux/selinux-sandbox_3.3.bb | 2 +-
 recipes-security/selinux/semodule-utils_3.3.bb  | 2 +-
 recipes-security/setools/setools_4.4.0.bb       | 2 +-
 13 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index dffc34a..96d0da1 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,5 @@
 SECTION = "admin"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
diff --git a/recipes-security/selinux/checkpolicy_3.3.bb b/recipes-security/selinux/checkpolicy_3.3.bb
index 99ac470..ad90cc2 100644
--- a/recipes-security/selinux/checkpolicy_3.3.bb
+++ b/recipes-security/selinux/checkpolicy_3.3.bb
@@ -6,7 +6,7 @@ binary policy. checkpolicy uses the static libsepol since it deals \
 with low level details of the policy that have not been \
 encapsulated/abstracted by a proper shared library interface."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/libsemanage_3.3.bb b/recipes-security/selinux/libsemanage_3.3.bb
index 0a6ff95..b17eb68 100644
--- a/recipes-security/selinux/libsemanage_3.3.bb
+++ b/recipes-security/selinux/libsemanage_3.3.bb
@@ -4,7 +4,7 @@ It is used by checkpolicy (the policy compiler) and similar tools, as well \
 as by programs like load_policy that need to perform specific transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION = "base"
-LICENSE = "LGPLv2.1+"
+LICENSE = "LGPL-2.1-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/libsepol_3.3.bb b/recipes-security/selinux/libsepol_3.3.bb
index 48d5f49..80d8819 100644
--- a/recipes-security/selinux/libsepol_3.3.bb
+++ b/recipes-security/selinux/libsepol_3.3.bb
@@ -4,7 +4,7 @@ It is used by checkpolicy (the policy compiler) and similar tools, as well \
 as by programs like load_policy that need to perform specific transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION = "base"
-LICENSE = "LGPLv2+"
+LICENSE = "LGPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/mcstrans_3.3.bb b/recipes-security/selinux/mcstrans_3.3.bb
index 4d99e18..cd8780b 100644
--- a/recipes-security/selinux/mcstrans_3.3.bb
+++ b/recipes-security/selinux/mcstrans_3.3.bb
@@ -4,7 +4,7 @@ DESCRIPTION = "\
 mcstrans provides an translation daemon to translate SELinux categories \
 from internal representations to user defined representation."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/policycoreutils_3.3.bb b/recipes-security/selinux/policycoreutils_3.3.bb
index 04f8ef7..552d354 100644
--- a/recipes-security/selinux/policycoreutils_3.3.bb
+++ b/recipes-security/selinux/policycoreutils_3.3.bb
@@ -5,7 +5,7 @@ load_policy to load policies, setfiles to label filesystems, newrole \
 to switch roles, and run_init to run /etc/init.d scripts in the proper \
 context."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/restorecond_3.3.bb b/recipes-security/selinux/restorecond_3.3.bb
index 75e65a8..ee1cb44 100644
--- a/recipes-security/selinux/restorecond_3.3.bb
+++ b/recipes-security/selinux/restorecond_3.3.bb
@@ -5,7 +5,7 @@ The restorecond daemon uses inotify to watch files listed in the \
 will make sure they have the correct file context associated with \
 the policy."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-dbus_3.3.bb b/recipes-security/selinux/selinux-dbus_3.3.bb
index badf392..936baed 100644
--- a/recipes-security/selinux/selinux-dbus_3.3.bb
+++ b/recipes-security/selinux/selinux-dbus_3.3.bb
@@ -2,7 +2,7 @@ SUMMARY = "SELinux dbus service files"
 DESCRIPTION = "\
 Provide SELinux dbus service files and scripts."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-gui_3.3.bb b/recipes-security/selinux/selinux-gui_3.3.bb
index 5534ec6..9916afb 100644
--- a/recipes-security/selinux/selinux-gui_3.3.bb
+++ b/recipes-security/selinux/selinux-gui_3.3.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 Provide SELinux Management tool (system-config-selinux) and SELinux \
 Policy Generation Tool (selinux-polgengui)"
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-python_3.3.bb b/recipes-security/selinux/selinux-python_3.3.bb
index d130900..1bf1f63 100644
--- a/recipes-security/selinux/selinux-python_3.3.bb
+++ b/recipes-security/selinux/selinux-python_3.3.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 This package contains Python modules sepolgen, sepolicy; And the \
 SELinux utilities audit2allow, chcat, semanage ..."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/selinux-sandbox_3.3.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
index a20982c..cc9baad 100644
--- a/recipes-security/selinux/selinux-sandbox_3.3.bb
+++ b/recipes-security/selinux/selinux-sandbox_3.3.bb
@@ -4,7 +4,7 @@ Run application within a tightly confined SELinux domain. The default \
 sandbox domain only allows applications the ability to read and write \
 stdin, stdout and any other file descriptors handed to it."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/selinux/semodule-utils_3.3.bb b/recipes-security/selinux/semodule-utils_3.3.bb
index a8bca0e..06e28f4 100644
--- a/recipes-security/selinux/semodule-utils_3.3.bb
+++ b/recipes-security/selinux/semodule-utils_3.3.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 The utilities to create, expand, link and show the dependencies between \
 the SELinux policy module packages."
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index b78af36..f1557b1 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -6,7 +6,7 @@ libraries designed to facilitate SELinux policy analysis. \
 This meta-package depends upon the main packages necessary to run \
 SETools."
 SECTION = "base"
-LICENSE = "GPLv2 & LGPLv2.1"
+LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
-- 
2.35.1


