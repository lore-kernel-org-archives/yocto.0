Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5591BE00DEF; Fri, 17 Jun 2016 09:04:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E51FCE00C72
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 09:04:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 17 Jun 2016 09:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,484,1459839600"; d="scan'208";a="1000078460"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.35])
	by orsmga002.jf.intel.com with ESMTP; 17 Jun 2016 09:04:12 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 17 Jun 2016 11:05:10 -0500
Message-Id: <1466179510-9651-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [PATCH][yocto-autobuilder] autobuilder/Autobuilder.p: Add missing import of buildbot.util.
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
X-List-Received-Date: Fri, 17 Jun 2016 16:04:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

When try to start Autobuilder fails with the next exception,

2016-06-07 17:06:45-0500 [-] LOADING CONFIG FILE
2016-06-07 17:06:45-0500 [-] error while parsing config file:

Traceback (most recent call last):
          File
"/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-packages/Twisted-12.2.0-py2.7-linux-x86_64.egg/twisted/internet/defer.py",
line 551, in _runCallbacks
......
......
......
          File
"/home/alimon/repos/yocto-autobuilder/lib/python2.7/site-packages/autobuilder/Autobuilder.py",
line 54, in createBuildsets
            util.naturalSort(buildersSorted)
        exceptions.NameError: global name 'util' is not defined

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 6c3e578..23f0a74 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -19,6 +19,7 @@ from buildbot.schedulers.basic  import SingleBranchScheduler
 from buildbot.changes import filter
 from buildbot.changes.pb import PBChangeSource
 from buildbot.changes.gitpoller import *
+from buildbot import util
 from lib.ABTools import capitalize
 import ast
 import BuildSet
-- 
2.1.4


