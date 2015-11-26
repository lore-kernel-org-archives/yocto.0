Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0183E0088C; Wed, 25 Nov 2015 16:00:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4760E009F3
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 16:00:05 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 25 Nov 2015 16:00:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="847188934"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.171])
	by fmsmga001.fm.intel.com with ESMTP; 25 Nov 2015 16:00:05 -0800
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 25 Nov 2015 18:00:34 -0600
Message-Id: <1448496046-13186-6-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
References: <1448496046-13186-1-git-send-email-anibal.limon@linux.intel.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [[AUH] 05/17] buildhistory: Add option for enable in upgrade-helper.conf
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
X-List-Received-Date: Thu, 26 Nov 2015 00:00:06 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Make consistent the enablement for this feature it need to be
explicit enable into upgrade-helper.conf and also needs configuration
in local.conf.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 README           |  9 +++++++--
 modules/steps.py |  6 +++---
 upgradehelper.py | 40 ++++++++++++++++++++++++++--------------
 3 files changed, 36 insertions(+), 19 deletions(-)

diff --git a/README b/README
index 44c3bf1..ee1bd1f 100644
--- a/README
+++ b/README
@@ -58,6 +58,10 @@ drop_previous_commits=yes
 
 # machines to test build with
 machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
+
+# optional features
+buildhistory=no
+
 --------------- snip ---------------
 
 3. Enable distrodata and supply appropriate additional metadata. For
@@ -75,8 +79,9 @@ WARNING: if you are using the default maintainers.inc file supplied
          emails to the default maintainers. Please be careful not to
          do this :)
 
-4. Enable buildhistory by adding the following lines to your
-conf/local.conf file:
+4. If you want to enable buildhistory (optional) you need to enable in
+upgrade-helper.conf also add the following lines to your conf/local.conf
+file:
 
 --------------- snip ---------------
 INHERIT =+ "buildhistory"
diff --git a/modules/steps.py b/modules/steps.py
index b85a0dc..4a2eee3 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -85,7 +85,7 @@ def detect_recipe_type(bb, git, opts, pkg_ctx):
             pkg_ctx['recipe_dir'], bb, git)
 
 def buildhistory_init(bb, git, opts, pkg_ctx):
-    if not opts['buildhistory_enabled']:
+    if not opts['buildhistory']:
         return
 
     pkg_ctx['buildhistory'] = BuildHistory(bb, pkg_ctx['PN'],
@@ -118,11 +118,11 @@ def compile(bb, git, opts, pkg_ctx):
     for machine in opts['machines']:
         I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
         pkg_ctx['recipe'].compile(machine)
-        if opts['buildhistory_enabled']:
+        if opts['buildhistory']:
             pkg_ctx['buildhistory'].add()
 
 def buildhistory_diff(bb, git, opts, pkg_ctx):
-    if not opts['buildhistory_enabled']:
+    if not opts['buildhistory']:
         return
 
     I(" %s: Checking buildhistory ..." % pkg_ctx['PN'])
diff --git a/upgradehelper.py b/upgradehelper.py
index e526597..c841c2a 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -156,7 +156,7 @@ class Updater(object):
         self.opts['machines'] = settings.get('machines',
                 'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
         self.opts['skip_compilation'] = skip_compilation
-        self.opts['buildhistory_enabled'] = self._buildhistory_is_enabled()
+        self.opts['buildhistory'] = self._buildhistory_is_enabled()
 
         self.uh_dir = os.path.join(build_dir, "upgrade-helper")
         if not os.path.exists(self.uh_dir):
@@ -180,22 +180,34 @@ class Updater(object):
     def _buildhistory_is_enabled(self):
         enabled = False
 
-        if 'buildhistory' in self.base_env['INHERIT']:
-            if not 'BUILDHISTORY_COMMIT' in self.base_env:
-                E(" Buildhistory was enabled but need"\
-                        " BUILDHISTORY_COMMIT=1 please set.")
-                exit(1)
+        if settings.get("buildhistory", "no") == "yes":
+            if 'buildhistory' in self.base_env['INHERIT']:
+                if not 'BUILDHISTORY_COMMIT' in self.base_env:
+                    E(" Buildhistory was INHERIT in conf/local.conf"\
+                      " but need BUILDHISTORY_COMMIT=1 please set.")
+                    exit(1)
 
-            if not self.base_env['BUILDHISTORY_COMMIT'] == '1':
-                E(" Buildhistory was enabled but need"\
-                        " BUILDHISTORY_COMMIT=1 please set.")
-                exit(1)
+                if not self.base_env['BUILDHISTORY_COMMIT'] == '1':
+                    E(" Buildhistory was INHERIT in conf/local.conf"\
+                      " but need BUILDHISTORY_COMMIT=1 please set.")
+                    exit(1)
 
-            if self.opts['skip_compilation']:
-                W(" Buildhistory disabled because user" \
-                        " skip compilation!")
+                if self.opts['skip_compilation']:
+                    W(" Buildhistory disabled because user" \
+                            " skip compilation!")
+                else:
+                    enabled = True
             else:
-                enabled = True
+                E(" Buildhistory was enabled in upgrade-helper.conf"\
+                  " but isn't INHERIT in conf/local.conf, if you want"\
+                  " to enable please set.")
+                exit(1)
+        else:
+            if 'buildhistory' in self.base_env['INHERIT']:
+                E(" Buildhistory was INHERIT in conf/local.conf"\
+                  " but buildhistory=yes isn't in upgrade-helper.conf,"\
+                  " if you want to enable please set.")
+                exit(1)
 
         return enabled
 
-- 
2.1.4


