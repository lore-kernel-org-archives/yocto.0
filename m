Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B437E00AA7
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:10 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 05 Mar 2014 10:27:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="467200408"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 1FF365F82A97; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:09 -0800
Message-Id: <b7dc24842a6f72006ec8930ff52be4ec854c35d4.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 18/27] yoctogit: Remove use of oe.path.exists()
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:10 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../buildbot/steps/source/yoctogit.py                     | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
index 446631d..64dfe06 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
@@ -246,10 +246,17 @@ class YoctoGit(Source):
                 log.msg("Source step failed while running command %s" % cmd)
                 raise buildstep.BuildStepFailed()
         d.addCallback(lambda _: evaluateCommand(cmd))
+        if self.mirrordir:
+            mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
+            if self.pathExists(mirror):
+                self.srcdir=mirror
+            else:
+                self.srcdir='source/'+self.repourl
+        if self.layername == "poky" or self.layername == "oecore" or "eclipse" in self.layername:
+            self.todir = "build/"
+        else:
+            self.todir = "build/" + self.layername
 
-        self.workdir = 'source/'+self.repourl
-        self.srcdir='source/'+self.repourl
-        self.todir = "build/" + self.layername
         d.addCallback(lambda _: self.incremental())
         def copy(_):
             cmd = buildstep.RemoteCommand('cpdir',
@@ -465,8 +472,6 @@ class YoctoGit(Source):
             args += ['--depth', '1']
         command = ['clone'] + args + [self.repourl, '.']
 
-        import os
-
         mirror = None
         if self.mirrordir:
             mirror = self.mirrordir + "/" + self.repourl.replace("git://", "") + "/"
-- 
1.8.1.2


