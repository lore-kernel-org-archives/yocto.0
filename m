Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4864AE00B89
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3E1ruQH003673
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:56 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Apr 2014 18:53:56 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<randy.macleod@windriver.com>
Date: Mon, 14 Apr 2014 09:53:44 +0800
Message-ID: <f14d1b840a28c99d63830551808804b7e436b357.1397439775.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1397439775.git.hongxu.jia@windriver.com>
References: <cover.1397439775.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 1/8] refpolicy: remove PRINC warning
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
X-List-Received-Date: Mon, 14 Apr 2014 01:53:57 -0000
Content-Type: text/plain

Bump up PR and remove PRINC.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb      | 2 +-
 recipes-security/refpolicy/refpolicy-mls_2.20130424.bb      | 2 +-
 recipes-security/refpolicy/refpolicy-standard_2.20130424.bb | 2 +-
 recipes-security/refpolicy/refpolicy_2.20130424.inc         | 2 --
 recipes-security/refpolicy/refpolicy_common.inc             | 2 --
 5 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
index adb8e4a..17a73c7 100644
--- a/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-mcs_2.20130424.bb
@@ -6,7 +6,7 @@ level. This is useful on systems where a hierarchical policy (MLS) isn't \
 needed (pretty much all systems) but the non-hierarchical categories are. \
 "
 
-PR = "r0"
+PR = "r4"
 
 POLICY_TYPE = "mcs"
 
diff --git a/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb b/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
index b20f130..b4b6bf8 100644
--- a/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-mls_2.20130424.bb
@@ -5,7 +5,7 @@ It allows giving data labels such as \"Top Secret\" and preventing \
 such data from leaking to processes or files with lower classification. \
 "
 
-PR = "r0"
+PR = "r4"
 
 POLICY_TYPE = "mls"
 
diff --git a/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb b/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
index 922df42..4084421 100644
--- a/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
+++ b/recipes-security/refpolicy/refpolicy-standard_2.20130424.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "\
 This is the reference policy for SELinux built with type enforcement \
 only."
 
-PR = "r3"
+PR = "r7"
 
 POLICY_TYPE = "standard"
 
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
index fbf9441..76790af 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -1,5 +1,3 @@
-PRINC = "4"
-
 SECTION = "base"
 LICENSE = "GPLv2"
 
-- 
1.8.1.2


