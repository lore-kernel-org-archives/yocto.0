Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67DB2E009AC; Wed,  6 Jul 2016 13:16:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B22E009AC
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 13:16:47 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP; 06 Jul 2016 13:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,320,1464678000"; d="scan'208";a="990298252"
Received: from wcrandle-mobl1.jf.intel.com ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2016 13:16:47 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  6 Jul 2016 13:16:40 -0700
Message-Id: <1467836200-30512-3-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
In-Reply-To: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
References: <1467836200-30512-1-git-send-email-william.c.randle@intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] publish build artifacts for wic images
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
X-List-Received-Date: Wed, 06 Jul 2016 20:16:49 -0000

Publish the wic images created by the nightly-wic build so they are
available for QA testing.

[YOCTO #9397]

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 buildset-config.controller/nightly-wic.conf        |  8 ++---
 .../autobuilder/buildsteps/PublishArtifacts.py     | 35 ++++++++++++++++------
 2 files changed, 28 insertions(+), 15 deletions(-)

diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-config.controller/nightly-wic.conf
index 7d2ae88..27584cb 100644
--- a/buildset-config.controller/nightly-wic.conf
+++ b/buildset-config.controller/nightly-wic.conf
@@ -19,10 +19,6 @@ steps: [{'SetDest':{}},
         {'BuildImages':{'images':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk', 'target_img':'core-image-sato'}},
         {'CreateWicImages':{'wic_img_type':'directdisk-gpt', 'target_img':'core-image-sato'}},
-        {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}}]
-
-
-
-
-
+        {'CreateWicImages':{'wic_img_type':'mkefidisk', 'target_img':'core-image-sato'}},
+        {'PublishArtifacts': {'artifacts': ['qemux86-64', 'genericx86-64']}}]
 
diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 952a458..f9df16c 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -174,7 +174,14 @@ class PublishArtifacts(ShellCommand):
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
                     command += self.generateMD5cmd(artifact, deploy_image_dir)
                     command=command+"mkdir -p " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
-                    command=command+"cp -R --no-dereference --preserve=links " + \
+                    if "-wic" in buildername:
+                        deploy_image_dir += "/*/*/build";
+                        command=command+"cp --no-dereference --preserve=links " + \
+                                    deploy_image_dir + "/*\.direct " + \
+                                    deploy_image_dir + "/*\.direct.md5sum " + \
+                                    DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
+                    else:
+                        command=command+"cp -R --no-dereference --preserve=links " + \
                                     deploy_image_dir + \
                                     "/*" + artifact + "* " + DEST + "/" + QEMU_PUBLISH_DIR + "/" + artifact_name + ";"
                 elif "mpc8315e" in artifact:
@@ -213,18 +220,26 @@ class PublishArtifacts(ShellCommand):
                        "genericx86-64" in artifact:
                         command = command+"echo 'Skipping copy of genericx86-64.'; "
                     else:
-                        command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                        if "beagle" in artifact:
-                            command=command+"cp -R --no-dereference --preserve=links " + \
+                        command += self.generateMD5cmd(artifact, deploy_image_dir)
+                        if "-wic" in buildername:
+                            deploy_image_dir += "/*/*/build";
+                            command=command+"mkdir -p " + DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
+                            command=command+"cp --no-dereference --preserve=links " + \
+                                    deploy_image_dir + "/*\.direct " + \
+                                    deploy_image_dir + "/*\.direct.md5sum " + \
+                                    DEST + "/" + MACHINE_PUBLISH_DIR + "/" + artifact_name + ";"
+                        else:
+                            command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                            if "beagle" in artifact:
+                                command=command+"cp -R --no-dereference --preserve=links " + \
                                              deploy_image_dir + \
                                              "/*Image* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                            command=command+"cp -R --no-dereference --preserve=links " + \
+                                command=command+"cp -R --no-dereference --preserve=links " + \
                                              deploy_image_dir + \
                                              "/u-boot* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                        command=command+"cp -R --no-dereference --preserve=links " + \
+                            command=command+"cp -R --no-dereference --preserve=links " + \
                                          deploy_image_dir + \
                                          "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                    command += self.generateMD5cmd(artifact, deploy_image_dir)
             self.command = command
         else:
             self.command = "echo 'Skipping Step.'"
@@ -241,8 +256,10 @@ class PublishArtifacts(ShellCommand):
         artifact_name = artifact
         if "-lsb" in buildername:
             artifact_name = artifact_name + "-lsb"
-        if artifact_name is "md5sums":
-            deploy_dir_image = os.path.join(self.tmpdir, "deploy/images/")
+        if "-wic" in buildername:
+            deploy_dir_image = os.path.join(os.path.join(self.tmpdir, "deploy/wic_images/"), artifact)
+        elif artifact_name is "md5sums":
+            deploy_dir_image = os.path.join(self.tmpdir, "deploy/images/")
         else:
             if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                 deploy_dir_image = os.path.join(os.path.join(self.tmpdir, "deploy/images/"), artifact)
-- 
2.5.5


