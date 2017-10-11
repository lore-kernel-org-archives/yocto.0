Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBD96E00C01; Tue, 10 Oct 2017 20:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EB20E00B53
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 20:26:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v9B3QRFP027556
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK)
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 20:26:27 -0700
Received: from ala-lpggp5.wrs.com (147.11.105.121) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 10 Oct 2017 20:26:26 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <mark.hatle@windriver.com>
Date: Tue, 10 Oct 2017 20:26:26 -0700
Message-ID: <20171011032626.163301-1-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.13.0
MIME-Version: 1.0
Subject: [meta-selinux][PATCH v2] policycoreutils: add PACKAGECONFIG for libpam, audit
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
X-List-Received-Date: Wed, 11 Oct 2017 03:26:29 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

* make pam and audit support configurable;
* remove INITDIR from EXTRA_OEMAKE, the variable is not supported now.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/selinux/policycoreutils.inc | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/recipes-security/selinux/policycoreutils.inc b/recipes-security/selinux/policycoreutils.inc
index 442b086..ff981cb 100644
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
2.13.0


