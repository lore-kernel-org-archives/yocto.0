Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A05F3E00E9C; Wed,  7 Oct 2015 16:36:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6245FE006D5
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 16:36:04 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t97Na4rL013110
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 7 Oct 2015 16:36:04 -0700 (PDT)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Wed, 7 Oct 2015 16:36:03 -0700
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>, <randy.macleod@windriver.com>
Date: Wed, 7 Oct 2015 16:36:03 -0700
Message-ID: <1444260963-11591-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux][PATCH 1/1] refpolicy: SRCREV_FORMAT needed
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
X-List-Received-Date: Wed, 07 Oct 2015 23:36:07 -0000
Content-Type: text/plain

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 6db4b9e..32b3195 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -3,6 +3,7 @@ SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git
 
 SRCREV_refpolicy = "c8c2b8b0c80a59414aefc4d32fdd2e8152ea5af2"
 SRCREV_refpolicy-contrib = "32c25f2d965569e18489913fbda5e0f0c6f90d51"
+SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
 
-- 
1.7.9.5


