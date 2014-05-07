Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A63E8E00B45; Wed,  7 May 2014 12:49:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=RCVD_IN_DNSWL_MED,URI_HEX
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.3 URI_HEX URI: URI hostname has long hexadecimal sequence
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDEE9E009E7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 12:49:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s47JnfZ8005951
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 May 2014 12:49:41 -0700 (PDT)
Received: from yow-asskicker.wrs.com (128.224.56.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 7 May 2014 12:49:41 -0700
From: Joe MacDonald <joe@deserted.net>
To: <yocto@yoctoproject.org>, <hongxu.jia@windriver.com>
Date: Wed, 7 May 2014 15:49:27 -0400
Message-ID: <1399492168-13096-9-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1399492168-13096-1-git-send-email-joe@deserted.net>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 8/9] refpolicy: remove PRINC warning
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 May 2014 19:49:42 -0000
Content-Type: text/plain

From: Hongxu Jia <hongxu.jia@windriver.com>

Bump up PR and remove PRINC.  Set it to something suitably large that it's
unlikely to break anyone's package feed and so that it shows it's clearly
an exception case.  Obviously this is just a staging activity until the
next update when we don't include anything of the sort.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb      |    2 +-
 recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb  |    2 ++
 recipes-security/refpolicy/refpolicy-mls_2.20130424.bb      |    2 +-
 recipes-security/refpolicy/refpolicy-standard_2.20130424.bb |    2 +-
 recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb |    1 +
 recipes-security/refpolicy/refpolicy_2.20130424.inc         |    2 --
 recipes-security/refpolicy/refpolicy_common.inc             |    2 --
 7 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
index adb8e4a..9288e2a 100644
--- a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
@@ -6,7 +6,7 @@ level. This is useful on systems where a hierarchical policy (MLS) isn't \
 needed (pretty much all systems) but the non-hierarchical categories are. \
 "
 
-PR = "r0"
+PR = "r99"
 
 POLICY_TYPE = "mcs"
 
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
index e904810..ae9cb43 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20130424.bb
@@ -1,3 +1,5 @@
+PR = "r99"
+
 include refpolicy-targeted_${PV}.bb
 
 SUMMARY = "SELinux minimum policy"
diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb b/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
index b20f130..e586ac2 100644
--- a/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
@@ -5,7 +5,7 @@ It allows giving data labels such as \"Top Secret\" and preventing \
 such data from leaking to processes or files with lower classification. \
 "
 
-PR = "r0"
+PR = "r99"
 
 POLICY_TYPE = "mls"
 
diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb b/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
index 922df42..98bc26b 100644
--- a/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 This is the reference policy for SELinux built with type enforcement \
 only."
 
-PR = "r3"
+PR = "r99"
 
 POLICY_TYPE = "standard"
 
diff --git a/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb b/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
index 2d112b3..1f20caa 100644
--- a/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-targeted_2.20130424.bb
@@ -12,6 +12,7 @@ POLICY_NAME = "targeted"
 POLICY_TYPE = "mcs"
 POLICY_MLS_SENS = "0"
 
+PR = "r99"
 include refpolicy_${PV}.inc
 
 SRC_URI += "file://refpolicy-fix-optional-issue-on-sysadm-module.patch \
diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
index dcce3ba..5dbb2dc 100644
--- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
+++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
@@ -1,5 +1,3 @@
-PRINC = "1"
-
 SRC_URI = "http://oss.tresys.com/files/refpolicy/refpolicy-${PV}.tar.bz2;"
 SRC_URI[md5sum] = "6a5c975258cc8eb92c122f11b11a5085"
 SRC_URI[sha256sum] = "6039ba854f244a39dc727cc7db25632f7b933bb271c803772d754d4354f5aef4"
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 76c3efb..4d05382 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,3 @@
-PRINC = "4"
-
 SECTION = "base"
 LICENSE = "GPLv2"
 
-- 
1.7.10.4


