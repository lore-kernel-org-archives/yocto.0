Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0EB5E009A6; Wed,  7 May 2014 16:01:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5753CE009A7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 16:01:06 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s47JnYOK005632
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 May 2014 12:49:36 -0700 (PDT)
Received: from yow-asskicker.wrs.com (128.224.56.79) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Wed, 7 May 2014 12:49:34 -0700
From: Joe MacDonald <joe@deserted.net>
To: <yocto@yoctoproject.org>, <hongxu.jia@windriver.com>
Date: Wed, 7 May 2014 15:49:20 -0400
Message-ID: <1399492168-13096-2-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1399492168-13096-1-git-send-email-joe@deserted.net>
References: <1399492168-13096-1-git-send-email-joe@deserted.net>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 1/9] policycoreutils: remove PRINC warning
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
X-List-Received-Date: Wed, 07 May 2014 23:01:09 -0000
Content-Type: text/plain

From: Hongxu Jia <hongxu.jia@windriver.com>

Bump up PR and remove PRINC.  Set it to something suitably large that it's
unlikely to break anyone's package feed and so that it shows it's clearly
an exception case.  Obviously this is just a staging activity until the
next update when we don't include anything of the sort.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/selinux/policycoreutils.inc      |    2 --
 recipes-security/selinux/policycoreutils_2.2.5.bb |    2 +-
 recipes-security/selinux/policycoreutils_git.bb   |    2 +-
 3 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 521e70b..a4d174c 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -1,5 +1,3 @@
-PRINC = "1"
-
 SUMMARY = "SELinux policy core utilities"
 DESCRIPTION = "policycoreutils contains the policy core utilities that are required \
 for basic operation of a SELinux system.  These utilities include \
diff --git a/recipes-security/selinux/policycoreutils_2.2.5.bb b/recipes-security/selinux/policycoreutils_2.2.5.bb
index 560cee6..2bbf541 100644
--- a/recipes-security/selinux/policycoreutils_2.2.5.bb
+++ b/recipes-security/selinux/policycoreutils_2.2.5.bb
@@ -1,4 +1,4 @@
-PR = "r1"
+PR = "r99"
 
 include selinux_20131030.inc
 include ${BPN}.inc
diff --git a/recipes-security/selinux/policycoreutils_git.bb b/recipes-security/selinux/policycoreutils_git.bb
index 92f6c26..823edb2 100644
--- a/recipes-security/selinux/policycoreutils_git.bb
+++ b/recipes-security/selinux/policycoreutils_git.bb
@@ -1,4 +1,4 @@
-PR = "r0"
+PR = "r99"
 PV = "2.2.5+git${SRCPV}"
 
 include selinux_git.inc
-- 
1.7.10.4


