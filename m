Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EE53E00A45; Thu,  9 Jul 2015 01:04:32 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B89E00A16
	for <yocto@yoctoproject.org>; Thu,  9 Jul 2015 01:04:31 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.1/8.15.1) with ESMTPS id t6984V89022605
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 Jul 2015 01:04:31 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.224.2; Thu, 9 Jul 2015 01:04:30 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Jul 2015 15:58:56 +0800
Message-ID: <1436428736-31071-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH 1/1][meta-selinux] refpolicy: correct SELINUX_DEVEL_PATH
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
X-List-Received-Date: Thu, 09 Jul 2015 08:04:32 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

The sepolgen.conf should be installed with devel package to correct
the default value of SELINUX_DEVEL_PATH, Makefile will be searched from
that path while building policies on target.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index 0dc055e..620e7c0 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -15,7 +15,10 @@ FILES_${PN} = " \
 	${sysconfdir}/selinux/${POLICY_NAME}/ \
 	${datadir}/selinux/${POLICY_NAME}/*.pp \
 	"
-FILES_${PN}-dev =+ "${datadir}/selinux/${POLICY_NAME}/include/"
+FILES_${PN}-dev =+ " \
+        ${datadir}/selinux/${POLICY_NAME}/include/ \
+        ${sysconfdir}/selinux/sepolgen.conf \
+"
 
 DEPENDS += "checkpolicy-native policycoreutils-native m4-native"
 RDEPENDS_${PN} += "selinux-config"
@@ -122,3 +125,8 @@ do_install () {
 	rebuild_policy
 	install_misc_files
 }
+
+do_install_append(){
+	# While building policies on target, Makefile will be searched from SELINUX_DEVEL_PATH
+	echo "SELINUX_DEVEL_PATH=${datadir}/selinux/${POLICY_NAME}/include" > ${D}${sysconfdir}/selinux/sepolgen.conf
+}
-- 
1.9.1


