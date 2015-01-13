Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AEE9E00906; Tue, 13 Jan 2015 01:25:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C633E00571
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 01:25:41 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 13 Jan 2015 01:22:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,748,1413270000"; d="scan'208";a="636510201"
Received: from ikatz2-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.193])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2015 01:25:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Jan 2015 09:25:29 +0000
Message-Id: <1421141130-10354-1-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
Subject: [meta-security][PATCH 1/2] libseccomp: fix SRC_URI for multilib
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
X-List-Received-Date: Tue, 13 Jan 2015 09:25:45 -0000

${BPN} should be used instead of ${PN} where you want the name without
any prefix (and ${BP} is short for ${BPN}-${PV}).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 recipes-security/libseccomp/libseccomp_2.1.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/libseccomp/libseccomp_2.1.1.bb b/recipes-security/libseccomp/libseccomp_2.1.1.bb
index 5e0b962..0663656 100644
--- a/recipes-security/libseccomp/libseccomp_2.1.1.bb
+++ b/recipes-security/libseccomp/libseccomp_2.1.1.bb
@@ -4,7 +4,7 @@ SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${PN}-${PV}.tar.gz \
+SRC_URI = "http://sourceforge.net/projects/libseccomp/files/${BP}.tar.gz \
            file://compiler.patch \
            file://0001-tests-create-install-tests-target.patch \
            file://0002-tests-install-python-tests-if-appropriate.patch \
-- 
1.9.3


