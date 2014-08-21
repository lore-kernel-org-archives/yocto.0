Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06197E00814; Thu, 21 Aug 2014 04:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62003E00807
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 04:57:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2014 04:51:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,908,1400050800"; d="scan'208";a="561597153"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by orsmga001.jf.intel.com with ESMTP; 21 Aug 2014 04:57:34 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Aug 2014 15:00:31 +0300
Message-Id: <1408622431-16479-3-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1408622431-16479-1-git-send-email-marius.avram@intel.com>
References: <1408622431-16479-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 2/2] Kill suprocesses when pressing ctrl+c
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
X-List-Received-Date: Thu, 21 Aug 2014 11:57:37 -0000

This way the created bitbake subprocesses from the upgrade script
are killed as well when you press ctrl+c.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 upgradehelper.py |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/upgradehelper.py b/upgradehelper.py
index 771c981..7db89a7 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -35,6 +35,7 @@ from logging import warning as W
 from logging import error as E
 from logging import critical as C
 import re
+import signal
 import sys
 import ConfigParser as cp
 from datetime import datetime
@@ -645,11 +646,16 @@ class UniverseUpdater(Updater):
         self.prepare()
         super(UniverseUpdater, self).run()
 
+def close_child_processes(signal_id, frame):
+    pid = os.getpid()
+    os.killpg(pid, signal.SIGKILL)
 
 if __name__ == "__main__":
     global settings
     global maintainer_override
 
+    signal.signal(signal.SIGINT, close_child_processes)
+
     debug_levels = [log.CRITICAL, log.ERROR, log.WARNING, log.INFO, log.DEBUG]
     args = parse_cmdline()
     log.basicConfig(format='%(levelname)s:%(message)s',
-- 
1.7.9.5


