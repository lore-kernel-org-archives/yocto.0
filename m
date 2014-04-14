Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C491EE00B8A
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:58 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3E1rwGw017819
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:53:58 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Apr 2014 18:53:57 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<randy.macleod@windriver.com>
Date: Mon, 14 Apr 2014 09:53:45 +0800
Message-ID: <ce0cdf307cb204cf19f55c24c7f494a4ea27c4e0.1397439775.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1397439775.git.hongxu.jia@windriver.com>
References: <cover.1397439775.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 2/8] checkpolicy: remove PRINC warning
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
X-List-Received-Date: Mon, 14 Apr 2014 01:53:58 -0000
Content-Type: text/plain

Bump up PR and remove PRINC.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-security/selinux/checkpolicy.inc    | 2 --
 recipes-security/selinux/checkpolicy_2.2.bb | 2 +-
 recipes-security/selinux/checkpolicy_git.bb | 2 +-
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/selinux/checkpolicy.inc
index 54edc11..e0c7377 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy.inc
@@ -1,5 +1,3 @@
-PRINC = "1"
-
 SUMMARY = "SELinux policy compiler"
 DESCRIPTION = "\
 This package contains checkpolicy, the SELinux policy compiler. Only \
diff --git a/recipes-security/selinux/checkpolicy_2.2.bb b/recipes-security/selinux/checkpolicy_2.2.bb
index 8388e0f..bef3f24 100644
--- a/recipes-security/selinux/checkpolicy_2.2.bb
+++ b/recipes-security/selinux/checkpolicy_2.2.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 
 include selinux_20131030.inc
 include ${BPN}.inc
diff --git a/recipes-security/selinux/checkpolicy_git.bb b/recipes-security/selinux/checkpolicy_git.bb
index bf6250d..99ecf61 100644
--- a/recipes-security/selinux/checkpolicy_git.bb
+++ b/recipes-security/selinux/checkpolicy_git.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 PV = "2.2+git${SRCPV}"
 
 include selinux_git.inc
-- 
1.8.1.2


