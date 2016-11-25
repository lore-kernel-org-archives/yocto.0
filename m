Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB9E0E00C37; Fri, 25 Nov 2016 07:47:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1ABAE00B63
	for <yocto@yoctoproject.org>; Fri, 25 Nov 2016 07:47:00 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP; 25 Nov 2016 07:46:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,547,1473145200"; d="scan'208";a="195615528"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.5.31])
	by fmsmga004.fm.intel.com with ESMTP; 25 Nov 2016 07:46:59 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 25 Nov 2016 09:46:30 -0600
Message-Id: <1480088790-8987-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Subject: [patchwork][PATCH] README: Describe repository and links
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
X-List-Received-Date: Fri, 25 Nov 2016 15:47:04 -0000

This change creates the README file with repository
description and links.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 README | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 README

diff --git a/README b/README
new file mode 100644
index 0000000..fbd8d18
--- /dev/null
+++ b/README
@@ -0,0 +1,17 @@
+Patchwork
+=========
+
+This fork from the freedesktop.org edition of patchwork is hosted and used by Open Embedded at
+https://patchwork.openembedded.org/
+
+Patchwork is a web patch tracking system for projects using a mailing list for contributions and reviews.
+
+
+Where to Send Patches
+=====================
+
+Patchwork patches must be sent to the Yocto Project mailing list including the "[patchwork]" prefix in the message subject, for example: [yocto][patchwork][patch 1/2] file.txt: change description
+
+    Git repository: git://git.yoctoproject.org/patchwork
+    Mailing list: yocto@yoctoproject.org
+
-- 
1.9.1


