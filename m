Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 466BDE00B3D; Wed,  6 Jan 2016 21:50:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9C70E00ACF
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 21:49:57 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u075nu7t025936
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 6 Jan 2016 21:49:56 -0800 (PST)
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 6 Jan 2016 21:49:55 -0800
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Jan 2016 00:49:54 -0500
Message-ID: <1452145794-215108-1-git-send-email-wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-selinux] refpolicy git: update SRCREV and PV to 2.20151208
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
X-List-Received-Date: Thu, 07 Jan 2016 05:50:00 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

Update git repos rev to latest stable release and use PV to indicate
the exact release version just like all of the *_git.bb recipes has
been done in oe-core.

ref: https://github.com/TresysTechnology/refpolicy/wiki

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d031f81..22c56cd 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,10 +1,12 @@
 SRC_URI = "git://github.com/TresysTechnology/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
 SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=refpolicy-contrib;destsuffix=refpolicy/policy/modules/contrib"
 
-SRCREV_refpolicy = "${AUTOREV}"
-SRCREV_refpolicy-contrib = "${AUTOREV}"
+SRCREV_refpolicy = "4fd44dc0f663b85cb897530a748843f79c9e4660"
+SRCREV_refpolicy-contrib = "db307d1f1d43e10c4405c0aa925a014b2934e853"
 SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
 
+PV = "2.20151208"
+
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
 
 # Fix file contexts for Poky
-- 
1.9.1


