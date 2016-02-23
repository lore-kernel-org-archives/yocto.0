Return-Path: <alejandro.franco@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A172FE00C2F; Tue, 23 Feb 2016 07:42:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF84BE00AD8
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 07:42:15 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 23 Feb 2016 07:41:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,489,1449561600"; d="scan'208";a="53255000"
Received: from afshjern.zpn.intel.com ([10.219.5.147])
	by fmsmga004.fm.intel.com with ESMTP; 23 Feb 2016 07:41:37 -0800
From: Alex Franco <alejandro.franco@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Feb 2016 09:42:43 -0600
Message-Id: <1456242163-12255-1-git-send-email-alejandro.franco@linux.intel.com>
X-Mailer: git-send-email 2.7.1
Subject: [RFC] [autobuilder] Autobuilder.py: add verbose buildset parse error
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
X-List-Received-Date: Tue, 23 Feb 2016 15:42:22 -0000

From: Alejandro Franco <alejandro.franco@linux.intel.com>

Add a more verbose Exception when a buildset parse operation fails

Signed-off-by: Alejandro Franco <alejandro.franco@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 3174784..f200974 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -118,12 +118,15 @@ class Autobuilder:
     def parseRepos(self, buildset=None):
         buildset=buildset
         if self.configdict[buildset].has_key('repos'):
-            for layer in ast.literal_eval(self.configdict[buildset]['repos']):
-                if layer.iterkeys().next() not in self.repos:
-                    schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
-                    self.schedprops.extend(schedpropstoextend)
-                    self.checkoutprops.update(newcheckoutprops)
-                    self.repos.append(layer.iterkeys().next())
+            try:
+                for layer in ast.literal_eval(self.configdict[buildset]['repos']):
+                    if layer.iterkeys().next() not in self.repos:
+                        schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
+                        self.schedprops.extend(schedpropstoextend)
+                        self.checkoutprops.update(newcheckoutprops)
+                        self.repos.append(layer.iterkeys().next())
+            except SyntaxError as err:
+                raise ABConfigError("%s found in %s" % (err, buildset))
         return
 
     def parseProps(self, buildset):
-- 
1.9.1


