Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2402AE00902; Tue, 13 Jan 2015 01:25:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 598BCE00752
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 01:25:42 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 13 Jan 2015 01:22:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,748,1413270000"; d="scan'208";a="636510207"
Received: from ikatz2-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.193])
	by orsmga001.jf.intel.com with ESMTP; 13 Jan 2015 01:25:39 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Jan 2015 09:25:30 +0000
Message-Id: <1421141130-10354-2-git-send-email-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1421141130-10354-1-git-send-email-paul.eggleton@linux.intel.com>
References: <1421141130-10354-1-git-send-email-paul.eggleton@linux.intel.com>
Subject: [meta-security][PATCH 2/2] nikto: fix SRC_URI for multilib
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
 recipes-security/nikto/nikto_2.1.5.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/nikto/nikto_2.1.5.bb b/recipes-security/nikto/nikto_2.1.5.bb
index 40b5b72..8080d4a 100644
--- a/recipes-security/nikto/nikto_2.1.5.bb
+++ b/recipes-security/nikto/nikto_2.1.5.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
 
-SRC_URI = "http://cirt.net/nikto/${PN}-${PV}.tar.gz \
+SRC_URI = "http://cirt.net/nikto/${BP}.tar.gz \
            file://location.patch"
 
 SRC_URI[md5sum] = "efcc98a918becb77471ee9a5df0a7b1e"
-- 
1.9.3


