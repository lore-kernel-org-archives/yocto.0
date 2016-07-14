Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4BE0E00D2D; Thu, 14 Jul 2016 10:06:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59954E00E9C
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2016 10:06:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 14 Jul 2016 10:06:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,363,1464678000"; d="scan'208";a="1016960657"
Received: from wcrandle-mobl1.amr.corp.intel.com (HELO
	wcrandle-mobl1.jf.intel.com) ([10.7.199.71])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2016 10:06:03 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 14 Jul 2016 10:05:49 -0700
Message-Id: <1468515952-12949-2-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
References: <1468515952-12949-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 1/4] remote_kick.py: add default entry for new 'create_eventlog' property
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
X-List-Received-Date: Thu, 14 Jul 2016 17:06:50 -0000

Default eventlog creating to False when starting an AB build session
from the command line.

[YOCTO #9884]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 bin/remote_kick.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/bin/remote_kick.py b/bin/remote_kick.py
index 20a7b7e..7320162 100644
--- a/bin/remote_kick.py
+++ b/bin/remote_kick.py
@@ -44,6 +44,7 @@ class RemoteBuild():
         kw['branch_eclipse-poky-luna'] = 'luna-master'
         kw['branch_eclipse-poky-mars'] = 'mars-master'
         kw['branch_oecore'] = 'master'
+        kw['custom_create_eventlog'] = 'False'
         kw['custom_deploy_artifacts'] = 'False'
         kw['custom_is_milestone'] = 'False'
         kw['custom_milestone_number'] = ''
-- 
2.5.5


