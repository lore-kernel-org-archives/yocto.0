Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0FD7E00B66; Thu,  8 May 2014 09:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F161E0073D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:53:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id AEBAB61969
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:09 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mSwROYZVR69d for <yocto@yoctoproject.org>;
	Thu,  8 May 2014 18:40:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id F05B761971
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:05 +0200 (CEST)
Received: from linuxdev.toradex.int (unknown [46.140.72.82])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 8C3296195B;
	Thu,  8 May 2014 18:40:04 +0200 (CEST)
From: stefan@agner.ch
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu,  8 May 2014 18:44:28 +0200
Message-Id: <fd5736c2b8f79d2af363af719a8c707decd978e9.1399561605.git.stefan@agner.ch>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: stefan@agner.ch
Subject: [yocto-autobuilder][PATCH v1 4/4] GetDeployDir.py/PublishArtifacts.py: get deploy dir from bitbake
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
X-List-Received-Date: Thu, 08 May 2014 16:53:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan@agner.ch>

Since the deploy dir is configureable (also through TMPDIR), we
need to have a more generic variant to get that path. Also the
Ångstrom distribution adds "-eglibc" to the TMPDIR. Hence, the
safest way to get the deployment dir is to parse buildbots
environment.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 .../autobuilder/buildsteps/GetDeployDir.py         | 47 +++++++++++++++++++++
 .../autobuilder/buildsteps/PublishArtifacts.py     | 48 ++++++++++++----------
 2 files changed, 73 insertions(+), 22 deletions(-)
 create mode 100644 lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py
new file mode 100644
index 0000000..944fcf0
--- /dev/null
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetDeployDir.py
@@ -0,0 +1,47 @@
+'''
+Created on Mai 8, 2014
+
+__author__ = "Stefan Agner"
+__copyright__ = "Copyright 2014, Toradex AG"
+__credits__ = ["Stefan Agner"]
+__license__ = "GPL"
+__version__ = "2.0"
+__maintainer__ = "Stefan Agner"
+__email__ = "stefan@agner.ch"
+'''
+from buildbot.steps.shell import ShellCommand
+from buildbot.status import progress
+from buildbot.status.results import SUCCESS, FAILURE, WARNINGS
+from buildbot.process.properties import WithProperties
+from twisted.python import log
+from autobuilder.config import *
+
+class GetDeployDir(ShellCommand):
+    haltOnFailure = False
+    flunkOnFailure = True
+    name = "GetDeployDir"
+    def __init__(self, factory, argdict=None, **kwargs):
+        for k, v in argdict.iteritems():
+            setattr(self, k, v)
+        self.description = "Get Deploy Directory"
+        self.deploydir = None
+        ShellCommand.__init__(self, **kwargs)
+
+    def start(self):
+        cmd = '. ./oe-init-build-env; bitbake -e | grep "^DEPLOY_DIR="'
+        self.command = cmd
+        ShellCommand.start(self)
+
+    def commandComplete(self, cmd):
+        if cmd.didFail():
+            return
+        result = cmd.logs['stdio'].getText()
+        if "=" not in result:
+            self.finished(FAILURE)
+        param, value = result.split("=")
+        deploydir = value.replace('"', '').strip()
+        self.setProperty('deploydir', deploydir, "Setting Deploy Directory")
+        self.finished(SUCCESS)
+
+    def getText(self, cmd, results):
+        return ShellCommand.getText(self, cmd, results)
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index ebc761f..303df36 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -19,10 +19,10 @@ class PublishArtifacts(ShellCommand):
 
     haltOnFailure = False
     flunkOnFailure = True
-    name = "Publishing Artifacts"
+    name = "PublishArtifacts"
+    description = "Publishing Artifacts"
     def __init__(self, factory, argdict=None, **kwargs):
         self.factory = factory
-        self.description = "Publishing Artifacts"
         self.slavedir=os.path.join(os.path.join(YOCTO_ABBASE, "yocto-slave"))
         for k, v in argdict.iteritems():
             if type(v) is bool:
@@ -42,10 +42,14 @@ class PublishArtifacts(ShellCommand):
         self.layerversion_yoctobsp = self.getProperty("layerversion_yoctobsp")
         self.layerversion_yocto = self.getProperty("layerversion_yocto")
         self.layerversion_core = self.getProperty("layerversion_core")
+        self.deploydir = self.getProperty("deploydir")
         log.msg(layerversion_yoctobsp)
-        self.basedir=os.path.join(os.path.join(
-                                    self.slavedir, buildername),
-                                    "build/build/")
+        self.basedir = os.path.join(self.slavedir, buildername, "build/build/")
+
+        # Deploydir might not be set in case the step did not run, fallback to default
+        if self.deploydir is None:
+            self.deploydir = os.path.join(self.basedir, "tmp/deploy/")
+
         command=""
         DATESTAMP=datetime.datetime.now().strftime("%Y%m%d")
         if str(os.environ.get('PUBLISH_BUILDS')) == "True":
@@ -70,17 +74,17 @@ class PublishArtifacts(ShellCommand):
                 if artifact == "adt-installer":
                     command=command+"mkdir -p " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/") + \
+                                    os.path.join(self.deploydir, "sdk/") + \
                                     "*adt* " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
                 elif artifact == "adt-installer-QA":
                     command=command+"mkdir -p " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/") + \
+                                    os.path.join(self.deploydir, "sdk/") + \
                                     "*adt* " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR)+ ";"
                 elif artifact == "adtrepo-dev":
                     adt_dev_dest= os.environ.get("ADTREPO_DEV_PATH") + "/" + distroversion + "-" + got_revision_poky + '-' + self.getProperty("branch_poky")
                     command=command+"mkdir -p " + adt_dev_dest + "/adt-ipk;"
-                    command=command+"rsync -av " + os.path.join(self.basedir, "tmp/deploy/ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
+                    command=command+"rsync -av " + os.path.join(self.deploydir, "ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
                     command=command+"rm -rf " + adt_dev_dest + "/rootfs; mkdir -p " + adt_dev_dest + "/rootfs;"
                     command=command+"for x in `ls " + DEST + "/machines/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " + adt_dev_dest + "/rootfs/$x; done;"
                     if self.layerversion_yocto is not None and int(self.layerversion_yocto) < 2:
@@ -101,49 +105,49 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + DEST + "/" + BA_PUBLISH_DIR + ";"
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86-64/*.zip") + \
+                                        os.path.join(self.deploydir, "images/qemux86-64/*.zip") + \
                                         " " + DEST + "/" + BA_PUBLISH_DIR + ";"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/*.zip") + \
+                                        os.path.join(self.deploydir, "images/*.zip") + \
                                         " " + DEST + "/" + BA_PUBLISH_DIR + ";"
                 elif artifact == "buildtools-tarball":
                     command=command+"mkdir -p " + DEST + "/buildtools;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/*.sh") + \
+                                    os.path.join(self.deploydir, "sdk/*.sh") + \
                                     " " + DEST + "/buildtools;"
                 elif artifact == "rpm":
                     command=command+"mkdir -p " + os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/rpm/* ") + \
+                                    os.path.join(self.deploydir, "rpm/* ") + \
                                     os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
                 elif artifact == "deb":
                     command=command+"mkdir -p " + os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/deb/* ") + \
+                                    os.path.join(self.deploydir, "deb/* ") + \
                                     os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
                 elif artifact == "ipk":
                     command=command+"mkdir -p " + os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/ipk/* ") + \
+                                    os.path.join(self.deploydir, "ipk/* ") + \
                                     os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
                 elif artifact == "toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/poky-eglibc-i686* ") + \
+                                    os.path.join(self.deploydir, "sdk/poky-eglibc-i686* ") + \
                                     os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/poky-eglibc-x86_64* ") + \
+                                    os.path.join(self.deploydir, "sdk/poky-eglibc-x86_64* ") + \
                                     os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                 elif artifact == "oe-toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/oecore-i686* ") + \
+                                    os.path.join(self.deploydir, "sdk/oecore-i686* ") + \
                                     os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/oecore-x86_64* ") + \
+                                    os.path.join(self.deploydir, "sdk/oecore-x86_64* ") + \
                                     os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
 
                 elif "qemu" in artifact:
@@ -162,11 +166,11 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86/* ") + \
+                                        os.path.join(self.deploydir, "images/qemux86/* ") + \
                                         " " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/*") + \
+                                        os.path.join(self.deploydir, "images/*") + \
                                         DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                 elif artifact == "conf":
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
@@ -208,9 +212,9 @@ class PublishArtifacts(ShellCommand):
         if "-lsb" in buildername:
             artifact_name = artifact_name + "-lsb"
         if self.layerversion_core is not None and int(self.layerversion_core) > 2:
-            deploy_dir_image = os.path.join(os.path.join(self.basedir, "tmp/deploy/images/"), artifact)
+            deploy_dir_image = os.path.join(os.path.join(self.deploydir, "images/"), artifact)
         else:
-            deploy_dir_image = os.path.join(self.basedir, "tmp/deploy/images/")
+            deploy_dir_image = os.path.join(self.deploydir, "images/")
         return artifact_name, deploy_dir_image
 
     def describe(self, done=False):
-- 
1.9.0


