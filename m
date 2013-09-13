Return-Path: <laurentiu.palcu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2271BE0155F
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 04:23:28 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Sep 2013 04:23:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,897,1371106800"; d="scan'208";a="359988929"
Received: from lpalcu-linux.rb.intel.com ([10.237.105.165])
	by azsmga001.ch.intel.com with ESMTP; 13 Sep 2013 04:23:26 -0700
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 13 Sep 2013 14:23:25 +0300
Message-Id: <1379071405-19866-1-git-send-email-laurentiu.palcu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH][yocto-autobuilder] PublishArtifacts.py: do not rename qemux86-64 rootfs directory
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
X-List-Received-Date: Fri, 13 Sep 2013 11:23:31 -0000

With the latest changes to adt-installer, the rootfs directory name in
the repo should match the MACHINE. Hence, qemux86-64 should not be
renamed to qemux86_64.

Also, one of my vim plugins, automatically eliminated some EOL
whitespaces in the process. So, I thought, it wouldn't hurt to commit
those too.

[YOCTO #5181]

Signed-off-by: Laurentiu Palcu <laurentiu.palcu@intel.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     |   19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 10eb7af..e2b5b49 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -12,14 +12,14 @@ __email__ = "elizabeth.flanagan@intel.com"
 
 from buildbot.steps.shell import ShellCommand
 from twisted.python import log
-import os, datetime 
+import os, datetime
 from autobuilder.config import *
 
 class PublishArtifacts(ShellCommand):
 
-    haltOnFailure = False 
-    flunkOnFailure = True 
-    name = "Publishing Artifacts" 
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "Publishing Artifacts"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
         self.description = "Publishing Artifacts"
@@ -43,7 +43,7 @@ class PublishArtifacts(ShellCommand):
         self.layerversion_core = self.getProperty("layerversion_core")
         log.msg(layerversion_yoctobsp)
         self.basedir=os.path.join(os.path.join(
-                                    self.slavedir, buildername), 
+                                    self.slavedir, buildername),
                                     "build/build/")
         command=""
         DATESTAMP=datetime.datetime.now().strftime("%Y%m%d")
@@ -70,19 +70,18 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + adt_dev_dest + "/adt-ipk;"
                     command=command+"cp -R " + os.path.join(self.basedir, "tmp/deploy/ipk/*") + " " + adt_dev_dest + "/adt-ipk;"
                     command=command+"rsync -av " + os.path.join(self.basedir, "tmp/deploy/ipk/") + " " + DEST + "/ipk;"
-                    command=command+"mkdir -p " + adt_dev_dest + "/rootfs;" 
+                    command=command+"mkdir -p " + adt_dev_dest + "/rootfs;"
                     command=command+"for x in `ls " + DEST + "/machines/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " + adt_dev_dest + "/rootfs/$x; done;"
-                    command=command+"mv " + adt_dev_dest + "/rootfs/qemux86-64 " + adt_dev_dest + "/rootfs/qemux86_64;" 
                 elif artifact == "eclipse-plugin-juno":
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/juno;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                     os.path.join(os.path.join(self.slavedir, buildername), 
+                                     os.path.join(os.path.join(self.slavedir, buildername),
                                                  "build/eclipse-poky-juno/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/juno;"
                 elif artifact == "eclipse-plugin-kepler":
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/kepler;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                     os.path.join(os.path.join(self.slavedir, buildername), 
+                                     os.path.join(os.path.join(self.slavedir, buildername),
                                                  "build/eclipse-poky-kepler/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/kepler;"
                 elif artifact == "build-appliance":
@@ -159,7 +158,7 @@ class PublishArtifacts(ShellCommand):
                     command=command+"echo 'Skipping copy of " + artifact + ".'"
                 else:
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
-                    
+
                     command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                      deploy_image_dir + \
-- 
1.7.9.5


