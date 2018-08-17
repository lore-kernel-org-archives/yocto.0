Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 834B0E00BC8; Fri, 17 Aug 2018 00:32:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20AA7E00BB3
	for <yocto@yoctoproject.org>; Fri, 17 Aug 2018 00:32:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7H7WOsw019974
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 17 Aug 2018 00:32:24 -0700 (PDT)
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Fri, 17 Aug 2018 00:32:23 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <Joe_MacDonald@mentor.com>, <flihp@twobit.us>,
	<mark.hatle@windriver.com>
Date: Fri, 17 Aug 2018 15:32:14 +0800
Message-ID: <1534491134-23500-3-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1534491134-23500-1-git-send-email-yi.zhao@windriver.com>
References: <1534491134-23500-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [meta-selinux][PATCH 2/2] policycoreutils: add PACKAGECONFIG for libpam, audit
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
X-List-Received-Date: Fri, 17 Aug 2018 07:32:26 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* make pam and audit support configurable;
* remove INITDIR from EXTRA_OEMAKE, the variable is not supported now.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 7825a6c..b7cb510 100644
--- a/recipes-security/selinux/policycoreutils.inc
+++ b/recipes-security/selinux/policycoreutils.inc
@@ -21,8 +21,6 @@ DEPENDS += "${@['', '${EXTRA_DEPENDS}']['${PN}' != '${BPN}-native']}"
 
 inherit selinux pythonnative
 
-DEPENDS += "${@target_selinux(d, 'libpam audit')}"
-
 RDEPENDS_${BPN}-fixfiles += "\
 	${BPN}-setfiles \
 	grep \
@@ -118,11 +116,20 @@ export STAGING_LIBDIR
 export BUILD_SYS
 export HOST_SYS
 
-AUDITH="`ls ${STAGING_INCDIR}/libaudit.h >/dev/null 2>&1 && echo /usr/include/libaudit.h `"
-PAMH="`ls ${STAGING_INCDIR}/security/pam_appl.h >/dev/null 2>&1 && echo /usr/include/security/pam_appl.h `"
-EXTRA_OEMAKE += "${@target_selinux(d, 'PAMH=${PAMH} AUDITH=${AUDITH}', 'PAMH= AUDITH= ')} INOTIFYH=n"
-EXTRA_OEMAKE += "PREFIX=${D}"
-EXTRA_OEMAKE += "INITDIR=${D}/etc/init.d"
+PACKAGECONFIG_class-target ?= "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'libpam', '', d)} \
+        audit \
+"
+
+PACKAGECONFIG[libpam] = ",,libpam,"
+PACKAGECONFIG[audit] = ",,audit,"
+
+EXTRA_OEMAKE += "\
+        ${@bb.utils.contains('PACKAGECONFIG', 'libpam', 'PAMH=y', 'PAMH=', d)} \
+        ${@bb.utils.contains('PACKAGECONFIG', 'audit', 'AUDITH=y', 'AUDITH=', d)} \
+        INOTIFYH=n \
+        PREFIX=${D} \
+"
 
 BBCLASSEXTEND = "native"
 
-- 
2.7.4


