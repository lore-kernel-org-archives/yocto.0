Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AC09E00E88; Thu, 21 Dec 2017 08:33:17 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE07E00E82
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:17 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761429"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:16 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:20 +0200
Message-Id: <578e67a2c752b84ae52e7b46e05e961dc38220f3.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 12/21] Add support for compiling against non-default C libraries
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:17 -0000

Particularly, musl is a notorious source of failures and so it's
very useful to do at least one build against it by default.

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README                   | 4 +++-
 modules/utils/bitbake.py | 7 ++++++-
 upgradehelper.py         | 2 +-
 3 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/README b/README
index 20b2e5d..fabde5c 100644
--- a/README
+++ b/README
@@ -65,7 +65,9 @@ clean_sstate=yes
 clean_tmp=yes
 
 # machines to test build with
-machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
+# append _libc-name to test with alternative C library implementations
+# e.g. qemux86_musl
+machines=qemux86 qemux86_musl qemux86-64 qemuarm qemumips qemuppc
 
 # optional features
 buildhistory=no
diff --git a/modules/utils/bitbake.py b/modules/utils/bitbake.py
index 8b7c5ed..2ae3a1c 100644
--- a/modules/utils/bitbake.py
+++ b/modules/utils/bitbake.py
@@ -121,7 +121,12 @@ class Bitbake(object):
         return self._cmd(recipe, "-c cleansstate")
 
     def complete(self, recipe, machine):
-        return self._cmd(recipe, env_var="MACHINE=" + machine)
+        if "_" in machine:
+            machine, libc = machine.split("_")
+            env = "MACHINE={} TCLIBC={}".format(machine, libc)
+        else:
+            env = "MACHINE={}".format(machine)
+        return self._cmd(recipe, env_var=env)
 
     def dependency_graph(self, package_list):
         return self._cmd(package_list, "-g")
diff --git a/upgradehelper.py b/upgradehelper.py
index 4623199..a33a3bf 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -171,7 +171,7 @@ class Updater(object):
             self.git = Git(os.path.dirname(os.getenv('PATH', False).split(':')[0]))
             self.poky_git = None
             self.opts['machines'] = settings.get('machines',
-                'qemux86 qemux86-64 qemuarm qemumips qemuppc').split()
+                'qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl').split()
 
         self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
-- 
2.15.1


