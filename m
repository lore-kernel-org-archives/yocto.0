Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E921E00EAD; Thu, 21 Dec 2017 08:33:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41057E00E82
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 08:33:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Dec 2017 08:33:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,436,1508828400"; d="scan'208";a="160761442"
Received: from kanavin-desktop.fi.intel.com ([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 21 Dec 2017 08:33:17 -0800
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 21 Dec 2017 18:27:21 +0200
Message-Id: <e8c77b46015785676a777c9707f279c5443ee280.1513873401.git.alexander.kanavin@linux.intel.com>
X-Mailer: git-send-email 2.15.1
MIME-Version: 1.0
In-Reply-To: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
References: <cover.1513873401.git.alexander.kanavin@linux.intel.com>
Subject: [auh][PATCH 13/21] Add protection measures and information against running with existing build directories.
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
X-List-Received-Date: Thu, 21 Dec 2017 16:33:19 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This should help e.g. with the following issue:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=7174

Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
---
 README           | 12 ++++++++----
 upgradehelper.py | 14 ++++++++++++++
 weeklyjob.sh     |  2 +-
 3 files changed, 23 insertions(+), 5 deletions(-)

diff --git a/README b/README
index fabde5c..27b0977 100644
--- a/README
+++ b/README
@@ -17,10 +17,14 @@ Setup
    $ git config --global user.name "Some Name"
    $ git config --global user.email "somename@somedomain.com"
 
-1. Ensure you have a working copy of the build system that is configured
-   and ready to run, i.e. you've run the oe-init-build-env script to
-   create a build directory and edited local.conf / bblayers.conf as
-   desired.
+1. Run the oe-init-build-env script to create a fresh build directory, solely
+   for the purpose of running AUH:
+
+   $ . ./oe-init-build-env build-auh
+
+   Re-using existing build directories and configurations is not recommended
+   as they may contains tweaks that will break AUH or make it behave in
+   undesirable ways.
 
 2. Prepare a configuration file, by default in $BUILDDIR/upgrade-helper/
    upgrade-helper.conf, as below:
diff --git a/upgradehelper.py b/upgradehelper.py
index a33a3bf..9110efc 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -788,6 +788,8 @@ if __name__ == "__main__":
 
     if not os.getenv('BUILDDIR', False):
         E(" You must source oe-init-build-env before running this script!\n")
+        E(" It is recommended to create a fresh build directory with it:\n")
+        E(" $ . oe-init-build-env build-auh\n")
         exit(1)
 
     devnull = open(os.devnull, 'wb')
@@ -796,6 +798,18 @@ if __name__ == "__main__":
         E(" Git isn't configured please configure user name and email\n")
         exit(1)
 
+    with open(os.getenv('BUILDDIR')+"/conf/local.conf") as f:
+        import re
+        for line in f.readlines():
+            if re.match(r"^MACHINE\s*=", line):
+                E(" The following line found in local.conf - please use ?= or ?== instead as otherwise AUH will not be able to set the desired target machine\n")
+                E(" {}".format(line))
+                exit(1)
+            if re.match(r"^TCLIBC\s*=", line):
+                E(" The following line found in local.conf - please use ?= or ?== instead as otherwise AUH will not be able to set the desired C library\n")
+                E(" {}".format(line))
+                exit(1)
+
     signal.signal(signal.SIGINT, close_child_processes)
 
     debug_levels = [log.CRITICAL, log.ERROR, log.WARNING, log.INFO, log.DEBUG]
diff --git a/weeklyjob.sh b/weeklyjob.sh
index 8dd0a1c..ac50461 100755
--- a/weeklyjob.sh
+++ b/weeklyjob.sh
@@ -10,7 +10,7 @@
 # Re-assign these to match your setup!
 auh_dir=~/auto-upgrade-helper
 poky_dir=~/poky
-build_dir=~/build
+build_dir=~/build-tmp-auh-upgrades
 sstate_dir=~/sstate-cache
 
 pushd $poky_dir
-- 
2.15.1


