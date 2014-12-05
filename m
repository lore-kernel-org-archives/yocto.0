Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84DB5E008FB; Fri,  5 Dec 2014 07:28:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.228 listed in list.dnswl.org]
Received: from cdptpa-oedge-vip.email.rr.com
	(cdptpa-outbound-snat.email.rr.com [107.14.166.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A3EE0087C
	for <yocto@yoctoproject.org>; Fri,  5 Dec 2014 07:28:25 -0800 (PST)
Received: from [98.100.91.242] ([98.100.91.242:34167]
	helo=ih3-development-ubuntu-vm.melinkcorp.local)
	by cdptpa-oedge01 (envelope-from <bevenson@melinkcorp.com>)
	(ecelerity 3.5.0.35861 r(Momo-dev:tip)) with ESMTP
	id 21/FA-29844-4CEC1845; Fri, 05 Dec 2014 15:27:00 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: yocto@yoctoproject.org, california.l.sullivan@intel.com,
	elizabeth.flanagan@intel.com, bevenson@melinkcorp.com
Date: Fri,  5 Dec 2014 10:26:52 -0500
Message-Id: <1417793213-26974-2-git-send-email-bevenson@melinkcorp.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
References: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
X-RR-Connecting-IP: 107.14.168.118:25
X-Cloudmark-Score: 0
Subject: [autobuilder][PATCH 1/2] Autobuilder.py: Import gitpoller module
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
X-List-Received-Date: Fri, 05 Dec 2014 15:28:28 -0000

For the GitPoller changesource to work, Autobuilder.py needs the
Buildbot GitPoller module.  This commit imports the GitPoller
module in Autobuilder.py.

Signed-off-by: Bryan Evenson <bevenson@melinkcorp.com>
---
 .../site-packages/autobuilder/Autobuilder.py       |    1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index b76c213..0dae5dc 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -18,6 +18,7 @@ from buildbot.schedulers import timed
 from buildbot.schedulers.basic  import SingleBranchScheduler
 from buildbot.changes import filter
 from buildbot.changes.pb import PBChangeSource
+from buildbot.changes.gitpoller import *
 from lib.ABTools import capitalize
 import ast
 import BuildSet
-- 
1.7.9.5


