Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 438F9E00D7E; Wed,  6 Dec 2017 23:37:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B1AEE00D6F
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB77bmft014757
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 6 Dec 2017 23:37:48 -0800 (PST)
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:47 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:10 +0800
Message-ID: <075b84a16d6fccc6f64f93cb5a105f4244a1c94f.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 05/12] modules/steps.py: fix warn when skip compilation
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:52 -0000
Content-Type: text/plain

* The previous code lacks a "% var" in the end:
  W(" %s: Compilation was skipped by user choice!")

* Move the skipping steps to upgradehelper.py rather than
  modules/steps.py, do not run compile is more straight-forward  than
  return early from it when skipping.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 modules/steps.py | 4 ----
 upgradehelper.py | 7 +++++--
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/modules/steps.py b/modules/steps.py
index 677d101..c78cabc 100644
--- a/modules/steps.py
+++ b/modules/steps.py
@@ -136,10 +136,6 @@ def unpack_original_workdir(bb, git, opts, pkg_ctx):
         pass
 
 def compile(bb, git, opts, pkg_ctx):
-    if opts['skip_compilation']:
-        W(" %s: Compilation was skipped by user choice!" % pkg_ctx['PN'])
-        return
-
     for machine in opts['machines']:
         I(" %s: compiling for %s ..." % (pkg_ctx['PN'], machine))
         pkg_ctx['recipe'].compile(machine)
diff --git a/upgradehelper.py b/upgradehelper.py
index 4a3f3f0..605114b 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -56,6 +56,7 @@ from utils.emailhandler import Email
 
 from statistics import Statistics
 from steps import upgrade_steps
+from steps import compile
 from testimage import TestImage
 
 help_text = """Usage examples:
@@ -179,7 +180,6 @@ class Updater(object):
         self.opts['send_email'] = self.args.send_emails
         self.opts['author'] = "Upgrade Helper <%s>" % \
                 settings.get('from', 'uh@not.set')
-        self.opts['skip_compilation'] = self.args.skip_compilation
         self.opts['buildhistory'] = self._buildhistory_is_enabled()
         self.opts['testimage'] = self._testimage_is_enabled()
 
@@ -231,7 +231,7 @@ class Updater(object):
                       " but need BUILDHISTORY_COMMIT=1 please set.")
                     exit(1)
 
-                if self.opts['skip_compilation']:
+                if self.args.skip_compilation:
                     W(" Buildhistory disabled because user" \
                             " skip compilation!")
                 else:
@@ -577,6 +577,9 @@ class Updater(object):
             try:
                 I(" %s: Upgrading to %s" % (pkg_ctx['PN'], pkg_ctx['NPV']))
                 for step, msg in upgrade_steps:
+                    if step == compile and self.args.skip_compilation:
+                        W(" %s: Skipping compile by user choice" % pkg_ctx['PN'])
+                        continue
                     if msg is not None:
                         I(" %s: %s" % (pkg_ctx['PN'], msg))
                     step(self.bb, self.git, self.opts, pkg_ctx)
-- 
2.7.4


