Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41BDFE0070F; Mon, 19 May 2014 23:39:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 180C1E00342
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 23:39:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2014 23:39:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,872,1392192000"; d="scan'208";a="534660020"
Received: from kai-fedora.bj.intel.com ([10.238.154.79])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2014 23:39:51 -0700
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 14:45:37 +0800
Message-Id: <1400568337-19253-1-git-send-email-kangkai.yin@intel.com>
X-Mailer: git-send-email 1.8.2.1
Subject: [PATCH] PublishArtifacts.py: check files before copy
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
X-List-Received-Date: Tue, 20 May 2014 06:39:57 -0000

Check files existence before copy, otherwise might fail.  For example,
if I do not enable "MakeImageMD5s" step, "PublishArtifacts" will fail.

Signed-off-by: Yin Kangkai <kangkai.yin@intel.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py           | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 2080030..95276a4 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -12,7 +12,7 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from twisted.python import log
-import os, datetime
+import os, datetime, glob
 from autobuilder.config import *
 
 class PublishArtifacts(ShellCommand):
@@ -152,7 +152,8 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     deploy_image_dir + \
                                     "/*" + artifact + "* " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
-                    command=command+"cp -R --no-dereference --preserve=links " + \
+                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
+                        command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.basedir, "tmp/deploy/images/") + \
                                     "/*.md5sum " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
                 elif "mpc8315e" in artifact:
@@ -161,7 +162,8 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     deploy_image_dir + \
                                     "/*mpc8315* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
-                    command=command+"cp -R --no-dereference --preserve=links " + \
+                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
+                        command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.basedir, "tmp/deploy/images/") + \
                                     "/*.md5sum " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
                 elif artifact == "tiny":
@@ -174,7 +176,9 @@ class PublishArtifacts(ShellCommand):
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.basedir, "tmp/deploy/images/*") + \
                                         DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
-                    command=command+"cp -R --no-dereference --preserve=links " + \
+
+                    if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
+                        command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.basedir, "tmp/deploy/images/") + \
                                     "/*.md5sum " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
 
@@ -205,7 +209,9 @@ class PublishArtifacts(ShellCommand):
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                          deploy_image_dir + \
                                          "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                        command=command+"cp -R --no-dereference --preserve=links " + \
+
+                        if glob.glob(os.path.join(self.basedir, "tmp/deploy/images/") + "*.md5sum"):
+                            command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.basedir, "tmp/deploy/images/") + \
                                         "/*.md5sum " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
 
-- 
1.8.2.1


