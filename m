Return-Path: <joe.slater@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41153E0083D; Mon,  7 Mar 2016 14:15:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18FA9E0077F
	for <yocto@yoctoproject.org>; Mon,  7 Mar 2016 14:15:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id u27MFBdB021394
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 7 Mar 2016 14:15:11 -0800 (PST)
Received: from ala-jslater-lx3.wrs.com (147.11.152.42) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.248.2; Mon, 7 Mar 2016 14:15:10 -0800
From: Joe Slater <jslater@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 7 Mar 2016 14:15:10 -0800
Message-ID: <1457388910-3768-1-git-send-email-jslater@windriver.com>
X-Mailer: git-send-email 1.7.3.4
MIME-Version: 1.0
Cc: joe.slater@windriver.com
Subject: [meta-selinux][PATCH 1/1] refpolicy_git: change SRCREV names
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
X-List-Received-Date: Mon, 07 Mar 2016 22:15:15 -0000
Content-Type: text/plain

When we define several SRCREV_x variables, it is not safe
to make any name a subset of another one because SRCREV_FORMAT
may be expanded improperly. This occurs only rarely, but it
does happen.

Signed-off-by: Joe Slater <jslater@windriver.com>
---
 recipes-security/refpolicy/refpolicy_git.inc |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d031f81..dbbfa09 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -1,9 +1,9 @@
 SRC_URI = "git://github.com/TresysTechnology/refpolicy.git;protocol=git;branch=master;name=refpolicy;destsuffix=refpolicy"
-SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=refpolicy-contrib;destsuffix=refpolicy/policy/modules/contrib"
+SRC_URI += "git://github.com/TresysTechnology/refpolicy-contrib.git;protocol=git;branch=master;name=contrib;destsuffix=refpolicy/policy/modules/contrib"
 
 SRCREV_refpolicy = "${AUTOREV}"
-SRCREV_refpolicy-contrib = "${AUTOREV}"
-SRCREV_FORMAT = "refpolicy.refpolicy-contrib"
+SRCREV_contrib = "${AUTOREV}"
+SRCREV_FORMAT = "refpolicy.contrib"
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/refpolicy-git:"
 
-- 
1.7.9.5


