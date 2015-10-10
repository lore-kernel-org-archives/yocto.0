Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FF57E00CC6; Fri,  9 Oct 2015 23:26:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F7B0E01006
	for <yocto@yoctoproject.org>; Fri,  9 Oct 2015 23:24:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t9A6ODJ5010640
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 9 Oct 2015 23:24:13 -0700 (PDT)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 9 Oct 2015 23:24:12 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 9 Oct 2015 23:24:12 -0700
Message-ID: <1444458252-17301-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH] libsepol: DEPENDS on flex-native
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
X-List-Received-Date: Sat, 10 Oct 2015 06:26:19 -0000
Content-Type: text/plain

Fixed when build libsepol-native:
/bin/sh: 1: flex: not found

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-security/selinux/libsepol.inc |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/libsepol.inc b/recipes-security/selinux/libsepol.inc
index b24ed28..a8ee749 100644
--- a/recipes-security/selinux/libsepol.inc
+++ b/recipes-security/selinux/libsepol.inc
@@ -12,4 +12,6 @@ inherit lib_package
 # local ranlib.
 EXTRA_OEMAKE += "RANLIB='$(AR) s'"
 
+DEPENDS += "flex-native"
+
 BBCLASSEXTEND = "native"
-- 
1.7.9.5


