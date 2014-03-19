Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E132BE00B44
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935025"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 357965F82A4A; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:09 -0700
Message-Id: <3cf5d83752b67c8f8f8dc855af5f3a7799f52301.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 11/22] yoctogit.py: Use self.srcdir, not local srcdir construct.
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

Since we're now constructing the objects srcdir property, there
is no need to use a local srcdir prop.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                        | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index fcbc2cb..1924612 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -258,12 +258,6 @@ class YoctoGit(Source):
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
-        if self.mirrordir:
-            mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
-            if self.mirrorexists:
-                srcdir=mirror
-            else: 
-                srcdir='source/'+self.repourl
         if "poky" in self.layername or \
            "oecore" in self.layername or \
            "eclipse" in self.layername:
@@ -275,7 +269,7 @@ class YoctoGit(Source):
         d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': srcdir,
+                                          {'fromdir': self.srcdir,
                                            'todir': todir,
                                            'logEnviron': self.logEnviron,
                                            'timeout': self.timeout,})
@@ -311,8 +305,6 @@ class YoctoGit(Source):
         # method probably won't work correctly crossing filesystems, so utilize 
         # movecopy with caution.
 
-        srcdir='source/'+self.repourl
-
         cmd = buildstep.RemoteCommand('mv', {'fromdir': self.workdir,
                                              'todir': self.storedir + '/' + self.getProperty("DEST") + '/' + 
                                                         str(int(time.time())) + '-'  + 
@@ -338,7 +330,7 @@ class YoctoGit(Source):
 
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
-                                          {'fromdir': srcdir,
+                                          {'fromdir': self.srcdir,
                                            'todir': todir,
                                            'logEnviron': self.logEnviron,
                                            'timeout': self.timeout,})
-- 
1.8.1.2


