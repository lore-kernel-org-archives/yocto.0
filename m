Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 505CCE00A96
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:54 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="486606575"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga001.fm.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 789105F82A7A; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:13 -0800
Message-Id: <b57cb77d073687030c8390db74ae58ba6c8e461d.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 22/27] PublishArtifacts.py: genericx86-64 publish
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
X-List-Received-Date: Wed, 05 Mar 2014 18:26:57 -0000

genericx86_64 is not the artifact name.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index 1967b42..b7dc680 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -54,7 +54,7 @@ class PublishArtifacts(ShellCommand):
                     artifact = "genericx86"
                 elif self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and artifact == "genericx86":
                     artifact = "atom-pc"
-                elif self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and artifact == "genericx86_64":
+                elif self.layerversion_yoctobsp is not None and int(self.layerversion_yoctobsp) < 2 and artifact == "genericx86-64":
                     artifact = "None"
                 if artifact == "adt-installer":
                     command=command+"mkdir -p " + os.path.join(DEST, ADT_INST_PUBLISH_DIR) + ";"
-- 
1.8.1.2


