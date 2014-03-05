Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBB18E00AA3
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:09 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200404"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 026E15F82A4A; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:07 -0800
Message-Id: <dc5cd0eeba93a736f5d043c61915036d97fadba2.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 16/27] SyncPersistDB.py: First run failure correction
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:09 -0000

persistdb does not exist on first run. Allow pass if it does
not exist.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
index 8fa7768..68e887f 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SyncPersistDB.py
@@ -41,9 +41,10 @@ class SyncPersistDB(ShellCommand):
         self.buildername=self.getProperty("buildername")
         self.branch=self.getProperty("branch_poky")
         if self.getProperty("repourl_poky") == "git://git.yoctoproject.org/poky" and os.environ.get('MAINTAIN_PERSISTDB') == "True" and self.branch=="master":
-            self.command = "mkdir -p ./build/tmp/cache/; cp -R " + os.environ.get('PERSISTDB_DIR') + "/" + self.buildername + \
+            self.command = "mkdir -p ./build/tmp/cache/; if [ -b '/tmp/yocto-autobuilder/persistdb/nightly-arm/master/poky/bb_persist_data.sqlite3' ]; " \
+                           "then cp -R " + os.environ.get('PERSISTDB_DIR') + "/" + self.buildername + \
                    "/" + self.branch + "/" + self.distro + \
-                   "/bb_persist_data.sqlite3 ./build/tmp/cache/bb_persist_data.sqlite3 "
+                   "/bb_persist_data.sqlite3 ./build/tmp/cache/bb_persist_data.sqlite3; fi "
             if str(self.commit) == 'True':
                 self.command = "cp -R ./build/tmp/cache/bb_persist_data.sqlite3 " + os.environ.get('PERSISTDB_DIR') + \
                                "/" + self.buildername + "/" + self.branch + "/" + self.distro + "/bb_persist_data.sqlite3"
-- 
1.8.1.2


