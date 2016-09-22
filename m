Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52AF9E00AD2; Thu, 22 Sep 2016 03:19:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB9C2E0050B
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 03:19:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u8MAJmcY009791
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 03:19:49 -0700 (PDT)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Sep 2016 03:19:48 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 22 Sep 2016 06:19:47 -0400
Message-ID: <1474539587-223754-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
Subject: [meta-selinux][PATCH] selinux: update policy-version to 30
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
X-List-Received-Date: Thu, 22 Sep 2016 10:19:52 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Both selinux 2.5 and kernel 4.8 support Max Policy Version 30.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_common.inc | 2 +-
 recipes-security/selinux/libsemanage.inc        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index a9dc466..ea98139 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -125,7 +125,7 @@ path = ${STAGING_DIR_NATIVE}${sbindir_native}/sefcontext_compile
 args = \$@
 [end]
 
-policy-version = 28
+policy-version = 30
 EOF
 
 	# Create policy store and build the policy
diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/selinux/libsemanage.inc
index 6bb57a0..41fd3f5 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage.inc
@@ -44,7 +44,7 @@ do_install() {
             PYLIBDIR='${D}/${libdir}/$(PYLIBVER)'
 
     # Update "policy-version" for semanage.conf
-    sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 28/' \
+    sed -i 's/^#\s*\(policy-version\s*=\).*$/\1 30/' \
 	${D}/etc/selinux/semanage.conf
 }
 
-- 
2.8.1


