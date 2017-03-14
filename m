Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8531E0088B; Mon, 13 Mar 2017 19:20:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B51ACE00655
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 19:20:07 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 19:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,162,1486454400"; d="scan'208";a="75056757"
Received: from nuritamo-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com.fritz.box) ([10.255.160.31])
	by orsmga005.jf.intel.com with ESMTP; 13 Mar 2017 19:20:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 14 Mar 2017 15:19:57 +1300
Message-Id: <20170314021959.12676-1-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.9.3
Subject: [layerindex-web][PATCH 1/3] utils.py: split out parse_conf() from parse_layer_conf()
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
X-List-Received-Date: Tue, 14 Mar 2017 02:20:11 -0000

If we want to parse a configuration file (e.g. a distro conf file) then
we need convenient access to bitbake's conf parsing code, so create a
parse_conf() function to provide that.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 layerindex/utils.py | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/layerindex/utils.py b/layerindex/utils.py
index 50734fc..3b45b07 100644
--- a/layerindex/utils.py
+++ b/layerindex/utils.py
@@ -160,6 +160,15 @@ def is_layer_valid(layerdir):
         return False
     return True
 
+def parse_conf(conf_file, d):
+    if hasattr(bb.parse, "handle"):
+        # Newer BitBake
+        data = bb.parse.handle(conf_file, d, include=True)
+    else:
+        # Older BitBake (1.18 and below)
+        data = bb.cooker._parse(conf_file, d)
+    return data
+
 def parse_layer_conf(layerdir, data, logger=None):
     conf_file = os.path.join(layerdir, "conf", "layer.conf")
 
@@ -169,12 +178,7 @@ def parse_layer_conf(layerdir, data, logger=None):
         return
 
     data.setVar('LAYERDIR', str(layerdir))
-    if hasattr(bb, "cookerdata"):
-        # Newer BitBake
-        data = bb.cookerdata.parse_config_file(conf_file, data)
-    else:
-        # Older BitBake (1.18 and below)
-        data = bb.cooker._parse(conf_file, data)
+    data = parse_conf(conf_file, data)
     data.expandVarref('LAYERDIR')
 
 def runcmd(cmd, destdir=None, printerr=True, logger=None):
-- 
2.9.3


