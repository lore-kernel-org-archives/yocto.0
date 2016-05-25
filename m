Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FC16E00D6B; Wed, 25 May 2016 13:28:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E67FE00D53
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 13:28:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 25 May 2016 13:28:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,365,1459839600"; d="scan'208";a="962338075"
Received: from wcrandle-mobl.amr.corp.intel.com (HELO
	wcrandle-mobl.jf.intel.com) ([10.7.199.158])
	by orsmga001.jf.intel.com with ESMTP; 25 May 2016 13:28:26 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 13:28:09 -0700
Message-Id: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] GetLayerVersion.py: set new layer version only if cmd was sucessful and not already set
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
X-List-Received-Date: Wed, 25 May 2016 20:28:31 -0000

Fixed a bug where GetLayerVersion set the layerversion to -1 when a
meta-poky layer.conf was not found.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 .../autobuilder/buildsteps/GetLayerVersion.py             | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
index de5c203..3f167e8 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
@@ -44,15 +44,12 @@ class GetLayerVersion(ShellCommand):
         ShellCommand.start(self)
 
     def commandComplete(self, cmd):
-        result = cmd.logs['stdio'].getText()
-        layerv= result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
-        if cmd.didFail():
-           layerv = "-1"
-        if self.getProperty('layerversion_' + self.layerfile):
-            self.finished(SUCCESS)
-        else:
-            self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
-            self.finished(SUCCESS)
+        if not cmd.didFail():
+            result = cmd.logs['stdio'].getText()
+            layerv = result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
+            if not self.getProperty('layerversion_' + self.layerfile):
+                self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
+        self.finished(SUCCESS)
 
     def getText(self, cmd, results):
         return ShellCommand.getText(self, cmd, results)
-- 
2.5.5


