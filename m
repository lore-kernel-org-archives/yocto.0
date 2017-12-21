Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E847E00E38; Thu, 21 Dec 2017 08:33:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E103E00E14
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:06 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761294"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:03 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:09 +0200
Message-Id: <c92784689e100b6cab05330f2423b76a47ad20d4.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 01/21] upgradehelper.py: fix checking for do_checkpkg
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:07 -0000

From: Robert Yang <liezhi.yang@windriver.com>

The error message in the log is:
Initialising tasks...ERROR: Task do_checkpkg does not exist for target strace [snip]

So line.find("ERROR: Task do_checkpkg does not exist") == 0 doesn't
work, use != -1 to fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 71ee0b0..4797fd8 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -646,7 +646,7 @@ class UniverseUpdater(Updater):
             self.bb.checkpkg(recipe)
         except Error as e:
             for line in e.stdout.split('\n'):
-                if line.find("ERROR: Task do_checkpkg does not exist") == 0:
+                if line.find("ERROR: Task do_checkpkg does not exist") != -1:
                     C(" \"distrodata.bbclass\" not inherited. Consider adding "
                       "the following to your local.conf:\n\n"
                       "INHERIT =+ \"distrodata\"\n")
-- 
2.15.1


