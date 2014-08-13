Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26143E007D5; Wed, 13 Aug 2014 06:29:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 333DEE007C2
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:23 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867222"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:26:01 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:04 +0300
Message-Id: <1407936728-15722-4-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 3/7] Added error message when buildhistory not active
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
X-List-Received-Date: Wed, 13 Aug 2014 13:29:27 -0000

A graceful close of the script happens when it tries to do
a buildhistory-diff but the bbclass is not inherited. Also
a helping message is presented to the user to avoid the
error at a next run.

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 bitbake.py |   12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/bitbake.py b/bitbake.py
index 2207634..3631896 100644
--- a/bitbake.py
+++ b/bitbake.py
@@ -27,6 +27,7 @@ import logging as log
 from logging import info as I
 from logging import debug as D
 from logging import error as E
+from logging import critical as C
 import sys
 from errors import *
 
@@ -115,13 +116,20 @@ class BuildHistory(object):
         try:
             stdout, stderr = bb.process.run(cmd)
             # Write diff output to log file if there is any
+
             if stdout and os.path.exists(self.work_dir):
                 with open(os.path.join(self.work_dir, "buildhistory.txt"), "w+") as log:
                     log.write(stdout)
                 return True
         except bb.process.ExecutionError as e:
-            D("%s returned:\n%s" % (cmd, e.__str__()))
-            raise Error("\'" + cmd + "\' failed", e.stdout, e.stderr)
+            for line in e.stdout.split('\n'):
+                if line.find("Buildhistory directory \"buildhistory/\" does not exist") == 0:
+                    C(" \"buildhistory.bbclass\" not inherited. Consider adding "
+                      "the following to your local.conf:\n\n"
+                      "INHERIT =+ \"buildhistory\"\n"
+                      "BUILDHISTORY_COMMIT = \"1\"\n\n"
+                      "Do not remove any other inherited class in the process (e.g. distrodata)\n")
+                    exit(1)
 
         return False
 
-- 
1.7.9.5


