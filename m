Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 942D9E00BB9; Mon, 21 Mar 2016 11:25:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF87AE00973
	for <yocto@yoctoproject.org>; Mon, 21 Mar 2016 11:25:30 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP; 21 Mar 2016 11:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,373,1455004800"; d="scan'208";a="768444869"
Received: from wcrandle-mobl1.jf.intel.com ([10.24.6.123])
	by orsmga003.jf.intel.com with ESMTP; 21 Mar 2016 11:25:30 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 21 Mar 2016 11:24:48 -0700
Message-Id: <1458584688-24408-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.0
Subject: [PATCH] poky-sanity.bbclass: update conf/templateconf.cfg for existing installations
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
X-List-Received-Date: Mon, 21 Mar 2016 18:25:32 -0000

Updates of existing installations for the meta-yocto to meta-poky transition will
update the bblayers.conf file, but not the templateconf.cfg file. This
patch updates the template file to point to meta-poky/conf, if necessary.

Fixes [YOCTO #9278]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 meta-poky/classes/poky-sanity.bbclass | 42 +++++++++++++++++++++++++++++++----
 meta-poky/conf/layer.conf             |  2 +-
 2 files changed, 39 insertions(+), 5 deletions(-)

diff --git a/meta-poky/classes/poky-sanity.bbclass b/meta-poky/classes/poky-sanity.bbclass
index 287a9e3..4add57e 100644
--- a/meta-poky/classes/poky-sanity.bbclass
+++ b/meta-poky/classes/poky-sanity.bbclass
@@ -3,10 +3,44 @@
 python poky_update_bblayersconf() {
     current_version = int(d.getVar('POKY_BBLAYERS_CONF_VERSION', True) or -1)
     latest_version = int(d.getVar('REQUIRED_POKY_BBLAYERS_CONF_VERSION', True) or -1)
+    if current_version == -1 or latest_version == -1:
+        # one or the other missing => malformed configuration
+        raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
 
-    # No version transitions here yet
-    raise NotImplementedError("You need to update bblayers.conf manually for this version transision")
+    success = True
+
+    # check for out of date templateconf.cfg file
+    lines = []
+    fn = os.path.join(d.getVar('TOPDIR', True), 'conf/templateconf.cfg')
+
+    lines = sanity_conf_read(fn)
+    index, meta_yocto_line = sanity_conf_find_line(r'^meta-yocto/', lines)
+    if meta_yocto_line:
+        lines[index] = meta_yocto_line.replace('meta-yocto', 'meta-poky')
+        with open(fn, "w") as f:
+            f.write(''.join(lines))
+        bb.note("Your conf/templateconf.cfg file was updated from meta-yocto to meta-poky")
+
+    # add any additional layer checks/changes here
+
+    if success:
+        current_version = latest_version
+        bblayers_fn = bblayers_conf_file(d)
+        lines = sanity_conf_read(bblayers_fn)
+        # sanity_conf_update() will erroneously find a match when the var name
+        # is used in a comment, so do our own here. The code below can be
+        # removed when sanity_conf_update() is fixed in OE-Core.
+        #sanity_conf_update(bblayers_fn, lines, 'POKY_BBLAYERS_CONF_VERSION', current_version)
+        index, line = sanity_conf_find_line(r'^POKY_BBLAYERS_CONF_VERSION', lines)
+        lines[index] = 'POKY_BBLAYERS_CONF_VERS = "%d"\n' % current_version
+        with open(bblayers_fn, "w") as f:
+            f.write(''.join(lines))
+        bb.note("Your conf/bblayers.conf has been automatically updated.")
+    if success:
+        return
+
+    raise NotImplementedError("You need to update bblayers.conf manually for this version transition")
 }
 
-# Prepend to ensure our function runs before the OE-Core one
-BBLAYERS_CONF_UPDATE_FUNCS =+ "conf/bblayers.conf:POKY_BBLAYERS_CONF_VERSION:REQUIRED_POKY_BBLAYERS_CONF_VERSION:poky_update_bblayersconf"
+# ensure our function runs after the OE-Core one
+BBLAYERS_CONF_UPDATE_FUNCS += "conf/bblayers.conf:POKY_BBLAYERS_CONF_VERSION:REQUIRED_POKY_BBLAYERS_CONF_VERSION:poky_update_bblayersconf"
diff --git a/meta-poky/conf/layer.conf b/meta-poky/conf/layer.conf
index b5ffd9e..8b7b33d 100644
--- a/meta-poky/conf/layer.conf
+++ b/meta-poky/conf/layer.conf
@@ -15,4 +15,4 @@ LAYERVERSION_yocto = "3"
 
 LAYERDEPENDS_yocto = "core"
 
-REQUIRED_POKY_BBLAYERS_CONF_VERSION = "1"
+REQUIRED_POKY_BBLAYERS_CONF_VERSION = "2"
-- 
2.5.0


