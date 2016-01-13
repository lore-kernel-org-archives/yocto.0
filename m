Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7834FE00B70; Wed, 13 Jan 2016 13:50:36 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4491EE00B66
	for <yocto@yoctoproject.org>; Wed, 13 Jan 2016 13:50:31 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Jan 2016 13:50:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,291,1449561600"; d="scan'208";a="633000561"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.151])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jan 2016 13:50:30 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Jan 2016 15:52:10 -0600
Message-Id: <1452721931-18829-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[PATCH][AUH] 1/2] buildhistory.py: Add the ability for generate full and simple output.
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
X-List-Received-Date: Wed, 13 Jan 2016 21:50:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Now buildhistroy generate two diff files,

	- buildhistory-diff.txt: Simple diff generated without -a
	  option.
	- buildhistory-diff-full.txt: Full diff generated contains
	  all the packages including -dbg and -dev.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 modules/buildhistory.py | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/modules/buildhistory.py b/modules/buildhistory.py
index d8ca46d..9085233 100644
--- a/modules/buildhistory.py
+++ b/modules/buildhistory.py
@@ -61,15 +61,21 @@ class BuildHistory(object):
         rev_initial = self.revs[0]
         rev_final = self.revs[-1]
 
-        cmd = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
-                rev_initial, rev_final)
-
         try:
+            cmd = "buildhistory-diff -p %s %s %s"  % (self.buildhistory_dir, 
+                rev_initial, rev_final)
             stdout, stderr = bb.process.run(cmd)
-
             if stdout and os.path.exists(self.workdir):
                 with open(os.path.join(self.workdir, "buildhistory-diff.txt"),
                         "w+") as log:
                     log.write(stdout)
+
+            cmd_full = "buildhistory-diff -a -p %s %s %s"  % (self.buildhistory_dir, 
+                        rev_initial, rev_final)
+            stdout, stderr = bb.process.run(cmd_full)
+            if stdout and os.path.exists(self.workdir):
+                with open(os.path.join(self.workdir, "buildhistory-diff-full.txt"),
+                        "w+") as log:
+                    log.write(stdout)
         except bb.process.ExecutionError as e:
             W( "%s: Buildhistory checking fails\n%s" % (self.pn, e.stdout))
-- 
2.1.4


