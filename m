Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDE44E00C14; Wed, 20 Sep 2017 18:37:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TRACKER_ID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.3 TRACKER_ID BODY: Incorporates a tracking ID number
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6457CE00D43
	for <yocto@yoctoproject.org>; Wed, 20 Sep 2017 18:37:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Sep 2017 18:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,423,1500966000"; d="scan'208";a="137722444"
Received: from kdjohnso-mobl.amr.corp.intel.com ([10.252.142.102])
	by orsmga002.jf.intel.com with ESMTP; 20 Sep 2017 18:37:06 -0700
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 20 Sep 2017 18:36:17 -0700
Message-Id: <20170921013617.41863-1-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.1
Subject: [yocto-autobuilder][PATCH] CheckYoctoCompat.py: rename yocto-compat-layer to yocto-check-layer
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
X-List-Received-Date: Thu, 21 Sep 2017 01:37:09 -0000

This script name was changed in the following commit:

b46e05677b342df44829ffe8bcfbfc954e906030

This patch updates the script name to match.

[YOCTO #12110]

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
index 134adaa51..62eddae50 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckYoctoCompat.py
@@ -41,11 +41,12 @@ class CheckYoctoCompat(BitbakeShellCommand):
 
         layerversioncore = int(self.getProperty("layerversion_core", "0"))
         # yocto-compat-layer-wrapper was introduced in Pyro
+        # it was renamed to yocto-check-layer-wrapper Rocko
         if layerversioncore >= 10:
             command = ". ./oe-init-build-env;"
             for layer in self.layers:
                 layerpath = os.path.join(builddir, layer)
-                cmd = "yocto-compat-layer-wrapper {}".format(layerpath)
+                cmd = "yocto-check-layer-wrapper {}".format(layerpath)
                 cmd = cmd + " || export CL_FAIL=1;"
                 command = command + cmd
             command = command + 'if [ "$CL_FAIL" = "1" ]; then exit 1; fi;'
-- 
2.14.1


