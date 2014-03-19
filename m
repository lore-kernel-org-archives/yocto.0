Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A23EE00B43
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:11 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2014 13:55:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="495375053"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id A59635F80921; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:16 -0700
Message-Id: <709d3e1c20afa9e573bbbd701085390b6f973fe9.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 18/22] PublishArtifacts.py: Exclude genericx86-64 pre-1.5
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
X-List-Received-Date: Wed, 19 Mar 2014 20:55:11 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

We don't build it so we shouldn't publish it.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 .../autobuilder/buildsteps/PublishArtifacts.py            | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index e23ecbf..ef9ad81 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -169,11 +169,16 @@ class PublishArtifacts(ShellCommand):
                     command=command+"echo 'Skipping copy of " + artifact + ".'"
                 else:
                     artifact_name, deploy_image_dir = self.getDeployNames(artifact, buildername)
-
-                    command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
-                    command=command+"cp -R --no-dereference --preserve=links " + \
-                                     deploy_image_dir + \
-                                     "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                    self.layerversion_yoctobsp = self.getProperty("layerversion_yoctobsp")
+                    if self.layerversion_yoctobsp is not None and \
+                       int(self.layerversion_yoctobsp) < 2 and \
+                       "genericx86-64" in artifacts:
+                        command = command+"echo 'Skipping copy of genericx86-64.'; "
+                    else:
+                        command=command+"mkdir -p " + DEST + "/"+ MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
+                        command=command+"cp -R --no-dereference --preserve=links " + \
+                                         deploy_image_dir + \
+                                         "/*"+artifact+"* " + DEST + "/" + MACHINE_PUBLISH_DIR +"/" + artifact_name + ";"
 
 
             self.command = command
-- 
1.8.1.2


