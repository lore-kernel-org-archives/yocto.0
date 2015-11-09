Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22093E00A7D; Mon,  9 Nov 2015 14:01:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91720E00927
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 14:01:18 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2015 14:01:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,267,1444719600"; d="scan'208";a="832113666"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 09 Nov 2015 14:01:13 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  9 Nov 2015 16:01:36 -0600
Message-Id: <1447106501-470-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
References: <1447106501-470-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 05/10][AUH] upgradehelper.py: Add sanity test for ensure that git is configured.
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
X-List-Received-Date: Mon, 09 Nov 2015 22:01:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

[YOCTO #8390]

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 upgradehelper.py | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 9b321f6..ae40fb1 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -28,6 +28,7 @@
 
 import argparse
 import os
+from subprocess import call
 import logging as log
 from logging import debug as D
 from logging import info as I
@@ -734,17 +735,22 @@ if __name__ == "__main__":
     global settings
     global maintainer_override
 
+    if not os.getenv('BUILDDIR', False):
+        E(" You must source oe-init-build-env before running this script!\n")
+        exit(1)
+
+    devnull = open(os.devnull, 'wb');
+    if call(["git", "config", "user.name"], stdout=devnull, stderr=devnull) or \
+        call(["git", "config", "user.email"], stdout=devnull, stderr=devnull):
+        E(" Git isn't configure please configure user name and email\n")
+        exit(1)
+
     signal.signal(signal.SIGINT, close_child_processes)
 
     debug_levels = [log.CRITICAL, log.ERROR, log.WARNING, log.INFO, log.DEBUG]
     args = parse_cmdline()
     log.basicConfig(format='%(levelname)s:%(message)s',
                     level=debug_levels[args.debug_level - 1])
-
-    if not os.getenv('BUILDDIR', False):
-        E(" You must source oe-init-build-env before running this script!\n")
-        exit(1)
-
     settings, maintainer_override = parse_config_file(args.config_file)
 
     if args.recipe == "all":
-- 
2.1.4


