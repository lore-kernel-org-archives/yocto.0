Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 426B7E00B54
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:14 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935040"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id E4A4D5F825B8; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:20 -0700
Message-Id: <1c5954b6a863bb3d6d306b16ce750e1aa9f431f1.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 22/22] yoctogit.py: sync on mv
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:14 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

On systems with very high load sometimes the system still thinks the
build dir is there. I've only seen this once, but a sync here ensures
that the system knows that build has been moved.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 4e1a334..c6b8258 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -204,6 +204,7 @@ class YoctoGit(Source):
             return
         elif self.method == 'movecopy':
             yield self.movecopy()
+            yield self._sync()
             yield self._srccopy()
             return
 
@@ -269,6 +270,23 @@ class YoctoGit(Source):
         d.addCallback(lambda _: self.incremental())
         return d
 
+    def _sync(self):
+        cmd = buildstep.RemoteShellCommand(self.workdir,
+                                           'sync',
+                                           env=self.env,
+                                           logEnviron=self.logEnviron,
+                                           timeout=self.timeout)
+        cmd.useLog(self.stdio_log, False)
+        log.msg("syncing filesystem")
+        d = self.runCommand(cmd)
+        def evaluateCommand(cmd):
+            if cmd.didFail():
+                log.msg("Source step failed while running command %s" % cmd)
+                raise buildstep.BuildStepFailed()
+        d.addCallback(lambda _: evaluateCommand(cmd))
+        return d
+
+
     def movecopy(self):
         # This relies on an external method of cleaning up the todir, like a cron job
         # it can be rather disk space intensive.
-- 
1.8.1.2


