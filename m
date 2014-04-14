Return-Path: <Hongxu.Jia@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 572F2E00B94
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:54:02 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3E1s2s1017825
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 13 Apr 2014 18:54:02 -0700 (PDT)
Received: from pek-hjia-d1.corp.ad.wrs.com (128.224.162.194) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.169.1; Sun, 13 Apr 2014 18:54:01 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>,
	<randy.macleod@windriver.com>
Date: Mon, 14 Apr 2014 09:53:47 +0800
Message-ID: <c8c42f0650d923bf2677240a2684da3c6e32f8c9.1397439775.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1397439775.git.hongxu.jia@windriver.com>
References: <cover.1397439775.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 4/8] libsemanage: remove PRINC warning
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
X-List-Received-Date: Mon, 14 Apr 2014 01:54:02 -0000
Content-Type: text/plain

Bump up PR and remove PRINC.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-security/selinux/libsemanage.inc    | 2 --
 recipes-security/selinux/libsemanage_2.2.bb | 2 +-
 recipes-security/selinux/libsemanage_git.bb | 2 +-
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index d01bf6f..7742c30 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -1,5 +1,3 @@
-PRINC = "1"
-
 SUMMARY = "SELinux binary policy manipulation library"
 DESCRIPTION = "libsemanage provides an API for the manipulation of SELinux binary policies. \
 It is used by checkpolicy (the policy compiler) and similar tools, as well \
diff --git a/recipes-security/selinux/libsemanage_2.2.bb b/recipes-security/selinux/libsemanage_2.2.bb
index 93daf9f..bc87287 100644
--- a/recipes-security/selinux/libsemanage_2.2.bb
+++ b/recipes-security/selinux/libsemanage_2.2.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 
 include selinux_20131030.inc
 include ${BPN}.inc
diff --git a/recipes-security/selinux/libsemanage_git.bb b/recipes-security/selinux/libsemanage_git.bb
index a32ebc3..513fefe 100644
--- a/recipes-security/selinux/libsemanage_git.bb
+++ b/recipes-security/selinux/libsemanage_git.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r1"
 PV = "2.2+git${SRCPV}"
 
 include selinux_git.inc
-- 
1.8.1.2


