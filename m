Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EEC6E00A92
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga102.ch.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606572"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 6E2F45F82A4A; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:12 -0800
Message-Id: <21d9b98532d38657febf8ac03fffcd97cd04ed79.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 21/27] PublishArtifacts.py: Fix poky-tiny publish
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:52 -0000

There is a missing space between origin and dest for the cp.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 38f1980..1967b42 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -152,7 +152,7 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     if self.layerversion_core is not None and int(self.layerversion_core) > 2:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86/*") + \
+                                        os.path.join(self.basedir, "tmp/deploy/images/qemux86/* ") + \
                                         " " + DEST + "/" + QEMU_PUBLISH_DIR + "/qemu-tiny;"
                     else:
                         command=command+"cp -R --no-dereference --preserve=links " + \
-- 
1.8.1.2


