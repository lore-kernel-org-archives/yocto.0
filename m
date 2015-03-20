Return-Path: <joshua.lock@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5E2EE00754; Fri, 20 Mar 2015 07:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [93.93.135.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3E57E00839
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 07:22:22 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: joshuagl) with ESMTPSA id 1B127600741
From: Joshua Lock <joshua.lock@collabora.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 20 Mar 2015 14:14:53 +0000
Message-Id: <1426860894-13604-2-git-send-email-joshua.lock@collabora.co.uk>
X-Mailer: git-send-email 2.1.0
In-Reply-To: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
References: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
Subject: [PATCH 1/2] PublishArtifacts.py: respect TMP_DIR if it's set
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
X-List-Received-Date: Fri, 20 Mar 2015 14:22:23 -0000

If TMP_DIR is set look there for artifacts to publish, rather than a tmp
directory which is a child of basedir.

Signed-off-by: Joshua Lock <joshua.lock@collabora.co.uk>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     | 39 ++++++++++++----------
 1 file changed, 21 insertions(+), 18 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index e636fe5..aee3d1f 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -47,6 +47,9 @@ class PublishArtifacts(ShellCommand):
         self.basedir=os.path.join(os.path.join(
                                     self.workerdir, buildername),
                                     "build/build/")
+        self.tmpdir = os.environ.get("TMP_DIR")
+        if self.tmpdir is None:
+            self.tmpdir = os.path.join(self.basedir, "tmp")
         command=""
         DATESTAMP=datetime.datetime.now().strftime("%Y%m%d")
         if str(os.environ.get('PUBLISH_BUILDS')) == "True":
@@ -72,17 +75,17 @@ class PublishArtifacts(ShellCommand):
                 if artifact == "adt-installer":
                     command=command+"mkdir -p " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/") + \
                                     "*adt* " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
                 elif artifact == "adt-installer-QA":
                     command=command+"mkdir -p " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/") + \
                                     "*adt* " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR)+ ";"
                 elif artifact == "adtrepo-dev":
                     adt_dev_dest= os.environ.get("ADTREPO_DEV_PATH") + "/" + distroversion + "-" + got_revision_poky + '-' + self.getProperty("branch_poky")
                     command=command+"mkdir -p " + adt_dev_dest + "/adt-ipk;"
-                    command=command+"rsync -av " + os.path.join(self.basedir, "tmp/deploy/ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
+                    command=command+"rsync -av " + os.path.join(self.tmpdir, "deploy/ipk/") + " " +  adt_dev_dest + "/adt-ipk;"
                     command=command+"rm -rf " + adt_dev_dest + "/rootfs; mkdir -p " + adt_dev_dest + "/rootfs;"
                     command=command+"for x in `ls " + DEST + "/machines/qemu/|grep -v tiny`; do ln -s " + DEST + "/machines/qemu/$x " + adt_dev_dest + "/rootfs/$x; done;"
                     if self.layerversion_yocto is not None and int(self.layerversion_yocto) < 2:
@@ -98,49 +101,49 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + DEST + "/" + BA_PUBLISH_DIR + ";"
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86-64/*.zip") + \
+                                        os.path.join(self.tmpdir, "deploy/images/qemux86-64/*.zip") + \
                                         " " + DEST + "/" + BA_PUBLISH_DIR + ";"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/*.zip") + \
+                                        os.path.join(self.tmpdir, "deploy/images/*.zip") + \
                                         " " + DEST + "/" + BA_PUBLISH_DIR + ";"
                 elif artifact == "buildtools-tarball":
                     command=command+"mkdir -p " + DEST + "/buildtools;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/*.sh") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/*.sh") + \
                                     " " + DEST + "/buildtools;"
                 elif artifact == "rpm":
                     command=command+"mkdir -p " + os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/rpm/* ") + \
+                                    os.path.join(self.tmpdir, "deploy/rpm/* ") + \
                                     os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
                 elif artifact == "deb":
                     command=command+"mkdir -p " + os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/deb/* ") + \
+                                    os.path.join(self.tmpdir, "deploy/deb/* ") + \
                                     os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
                 elif artifact == "ipk":
                     command=command+"mkdir -p " + os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/ipk/* ") + \
+                                    os.path.join(self.tmpdir, "deploy/ipk/* ") + \
                                     os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
                 elif artifact == "toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/poky-*i686-core-image*.sh ") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/poky-*i686-core-image*.sh ") + \
                                     os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/poky-*x86_64-core-image*.sh ") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/poky-*x86_64-core-image*.sh ") + \
                                     os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                 elif artifact == "oe-toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/oecore-i686* ") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/oecore-i686* ") + \
                                     os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
-                                    os.path.join(self.basedir, "tmp/deploy/sdk/oecore-x86_64* ") + \
+                                    os.path.join(self.tmpdir, "deploy/sdk/oecore-x86_64* ") + \
                                     os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
 
                 elif "qemu" in artifact:
@@ -162,11 +165,11 @@ class PublishArtifacts(ShellCommand):
                     command += self.generateMD5cmd(artifact, QEMU_PUBLISH_DIR + "/qemu-tiny")
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86/* ") + \
+                                        os.path.join(self.tmpdir, "deploy/images/qemux86/* ") + \
                                         " " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/*") + \
+                                        os.path.join(self.tmpdir, "deploy/images/*") + \
                                         DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                 elif artifact == "conf":
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
@@ -216,12 +219,12 @@ class PublishArtifacts(ShellCommand):
         if "-lsb" in buildername:
             artifact_name = artifact_name + "-lsb"
         if artifact_name is "md5sums":
-            deploy_dir_image = os.path.join(self.basedir, "tmp/deploy/images/")
+            deploy_dir_image = os.path.join(self.tmpdir, "deploy/images/")
         else:
             if self.layerversion_core is not None and int(self.layerversion_core) > 2:
-                deploy_dir_image = os.path.join(os.path.join(self.basedir, "tmp/deploy/images/"), artifact)
+                deploy_dir_image = os.path.join(os.path.join(self.tmpdir, "deploy/images/"), artifact)
             else:
-                deploy_dir_image = os.path.join(self.basedir, "tmp/deploy/images/")
+                deploy_dir_image = os.path.join(self.tmpdir, "deploy/images/")
         return artifact_name, deploy_dir_image
 
     def describe(self, done=False):
-- 
2.1.0


