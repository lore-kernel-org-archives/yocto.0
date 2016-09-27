Return-Path: <mariano.lopez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED85FE00404; Tue, 27 Sep 2016 07:33:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05F0AE002AC
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 07:33:21 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga101.jf.intel.com with ESMTP; 27 Sep 2016 07:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,405,1470726000"; d="scan'208";a="173715895"
Received: from mlopezva-mobl2.zpn.intel.com (HELO localhost.localdomain)
	([10.219.5.40])
	by fmsmga004.fm.intel.com with ESMTP; 27 Sep 2016 07:33:21 -0700
From: mariano.lopez@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue, 27 Sep 2016 09:34:22 -0500
Message-Id: <1474986862-6910-1-git-send-email-mariano.lopez@linux.intel.com>
X-Mailer: git-send-email 1.9.1
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] PublishArtifacts.py: Make PublishArtifacts step to fail when cp fails
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
X-List-Received-Date: Tue, 27 Sep 2016 14:33:24 -0000

From: Mariano Lopez <mariano.lopez@linux.intel.com>

When publishing the artifacts, sometimes the cp commands fails
because it can't find the origin files, but the step in te autobuilder
is green, like there were no errors at all. This will catch these
errors, and will mark the build step as failed when cp fails.

[YOCTO #10319]

Signed-off-by: Mariano Lopez <mariano.lopez@linux.intel.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py     | 54 +++++++++++-----------
 1 file changed, 28 insertions(+), 26 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index e738521..633600c 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -34,6 +34,7 @@ class PublishArtifacts(ShellCommand):
         ShellCommand.__init__(self, **kwargs)
 
     def start(self):
+        pipeline = "|| export PA_FAIL=1"
         layerversion_yoctobsp=1
         DEST=self.getProperty("DEST")
         buildername=self.getProperty("buildername")
@@ -80,12 +81,12 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/sdk/") + \
-                                    "*adt* " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
+                                    "*adt* " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "adt-installer-QA":
                     command=command+"mkdir -p " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/sdk/") + \
-                                    "*adt* " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR)+ ";"
+                                    "*adt* " + os.path.join(DEST, ADTQA_INST_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "adtrepo-dev":
                     adt_dev_dest= os.environ.get("ADTREPO_DEV_PATH") + "/" + distroversion + "-" + got_revision_poky + '-' + self.getProperty("branch_poky")
                     command=command+"mkdir -p " + adt_dev_dest + "/adt-ipk;"
@@ -105,39 +106,39 @@ class PublishArtifacts(ShellCommand):
                     command=command+"cp --no-dereference --preserve=links " + \
                                      os.path.join(deploy_dir, "org.*.zip") + \
                                      " " + os.path.join(deploy_dir, "org.*.md5sum") + \
-                                     " " + DEST + "/eclipse-plugin/"+ artifact_base +";"
+                                     " " + DEST + "/eclipse-plugin/"+ artifact_base + pipeline + ";"
                 elif artifact == "build-appliance":
                     command=command+"mkdir -p " + DEST + "/" + BA_PUBLISH_DIR + ";"
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.tmpdir, "deploy/images/qemux86-64/*.zip") + \
-                                        " " + DEST + "/" + BA_PUBLISH_DIR + ";"
+                                        " " + DEST + "/" + BA_PUBLISH_DIR + pipeline + ";"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.tmpdir, "deploy/images/*.zip") + \
-                                        " " + DEST + "/" + BA_PUBLISH_DIR + ";"
+                                        " " + DEST + "/" + BA_PUBLISH_DIR + pipeline + ";"
                 elif artifact == "buildtools-tarball":
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command=command+self.generateMD5cmd(artifact, deploy_image_dir)
                     command=command+"mkdir -p " + DEST + "/buildtools;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(deploy_image_dir, "*buildtools*") + \
-                                    " " + DEST + "/buildtools;"
+                                    " " + DEST + "/buildtools" + pipeline + ";"
                 elif artifact == "rpm":
                     command=command+"mkdir -p " + os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/rpm/* ") + \
-                                    os.path.join(DEST, RPM_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, RPM_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "deb":
                     command=command+"mkdir -p " + os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/deb/* ") + \
-                                    os.path.join(DEST, DEB_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, DEB_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "ipk":
                     command=command+"mkdir -p " + os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/ipk/* ") + \
-                                    os.path.join(DEST, IPK_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, IPK_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "sstate":
                     if str(os.environ.get("PUBLISH_SSTATE")) == "True":
                         sstate_dir = os.environ.get("SSTATE_DIR")
@@ -145,7 +146,7 @@ class PublishArtifacts(ShellCommand):
                         if sstate_dir is not None and pub_dir is not None:
                             command=command+"mkdir -p " + pub_dir + ";"
                             command=command+"cp -R --no-dereference --preserve=links " + \
-                                     sstate_dir + "/* " + pub_dir + ";"
+                                     sstate_dir + "/* " + pub_dir + pipeline + ";"
                         else:
                             command=command+"echo 'Skipping copy of sstate, directories not configured.';"
                     else:
@@ -156,31 +157,31 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(deploy_image_dir, "poky-*i686-core-image*.sh ") + \
-                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + pipeline + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(deploy_image_dir, "poky-*x86_64-core-image*.sh ") + \
-                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "uninative":
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command=command+self.generateMD5cmd(artifact, deploy_image_dir)
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(deploy_image_dir, "i686-nativesdk-libc* ") + \
-                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + pipeline + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(deploy_image_dir, "x86_64-nativesdk-libc* ") + \
-                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + pipeline + ";"
                 elif artifact == "oe-toolchain":
                     command=command+"mkdir -p " + os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/sdk/oecore-i686* ") + \
-                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X86TC_PUBLISH_DIR) + pipeline + ";"
                     command=command+"mkdir -p " + os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     os.path.join(self.tmpdir, "deploy/sdk/oecore-x86_64* ") + \
-                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + ";"
+                                    os.path.join(DEST, X8664TC_PUBLISH_DIR) + pipeline + ";"
                 elif "qemu" in artifact:
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command += self.generateMD5cmd(artifact, deploy_image_dir)
@@ -190,35 +191,35 @@ class PublishArtifacts(ShellCommand):
                         command=command+"cp --no-dereference --preserve=links " + \
                                     deploy_image_dir + "/*\.direct " + \
                                     deploy_image_dir + "/*\.direct.md5sum " + \
-                                    DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
+                                    DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + pipeline + ";"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                     deploy_image_dir + \
-                                    "/*" + artifact + "* " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
+                                    "/*" + artifact + "* " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + pipeline + ";"
                 elif "mpc8315e" in artifact:
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command += self.generateMD5cmd(artifact, deploy_image_dir)
                     command=command+"mkdir -p " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                     deploy_image_dir + \
-                                    "/*mpc8315* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
+                                    "/*mpc8315* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + pipeline + ";"
                 elif artifact == "tiny":
                     command=command+"mkdir -p " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     command += self.generateMD5cmd(artifact, QEMU_PUBLISH_DIR + "/qemu-tiny")
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.tmpdir, "deploy/images/qemux86/* ") + \
-                                        " " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
+                                        " " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny" + pipeline + ";"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
                                         os.path.join(self.tmpdir, "deploy/images/*") + \
-                                        DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
+                                        DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny" +  pipeline + ";"
                 elif artifact == "conf":
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
                     command=command+"cp -R --no-dereference " + \
                                      os.path.join(self.basedir, "conf/") + \
-                                     "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf;"
+                                     "/* " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + "/conf" +  pipeline + ";"
                 elif artifact == "md5sums":
                     command = command + "echo 'MD5sums are generated and deployed from the image or toolchain artifact';"
                 elif artifact == "None":
@@ -238,19 +239,20 @@ class PublishArtifacts(ShellCommand):
                             command=command+"cp --no-dereference --preserve=links " + \
                                     deploy_image_dir + "/*\.direct " + \
                                     deploy_image_dir + "/*\.direct.md5sum " + \
-                                    DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
+                                    DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + pipeline + ";"
                         else:
                             command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
                             if "beagle" in artifact:
                                 command=command+"cp -R --no-dereference --preserve=links " + \
                                              deploy_image_dir + \
-                                             "/*Image* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                                             "/*Image* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + pipeline + ";"
                                 command=command+"cp -R --no-dereference --preserve=links " + \
                                              deploy_image_dir + \
-                                             "/u-boot* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                                             "/u-boot* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + pipeline + ";"
                             command=command+"cp -R --no-dereference --preserve=links " + \
                                          deploy_image_dir + \
-                                         "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                                         "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + pipeline + ";"
+            command=command+'if [ "$PA_FAIL" = "1" ]; then exit 1; fi;'
             self.command = command
         else:
             self.command = "echo 'Skipping Step.'"
-- 
1.9.1


