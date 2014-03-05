Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC39EE00A99
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="492922491"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 10:26:51 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id A5E1A5F825EE; Wed,  5 Mar 2014 10:23:33 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:15 -0800
Message-Id: <e33ced7579d06a422837d47df4df37aa1f9f09cc.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 24/27] PublishArtifacts.py: Change where we find eclipse artifacts
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

Now that we're checking things out correctly, set where we find
eclipse artifacts.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 .../site-packages/autobuilder/buildsteps/PublishArtifacts.py          | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
index b7dc680..00f6852 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishArtifacts.py
@@ -79,13 +79,13 @@ class PublishArtifacts(ShellCommand):
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/juno;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                      os.path.join(os.path.join(self.slavedir, buildername), 
-                                                 "build/eclipse-poky-juno/scripts/org.*.zip") + \
+                                                 "build/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/juno;"
                 elif artifact == "eclipse-plugin-kepler":
                     command=command+"mkdir -p " + DEST + "/eclipse-plugin/kepler;"
                     command=command+"cp -R --no-dereference --preserve=links " + \
                                      os.path.join(os.path.join(self.slavedir, buildername), 
-                                                 "build/eclipse-poky-kepler/scripts/org.*.zip") + \
+                                                 "build/scripts/org.*.zip") + \
                                      " " + DEST + "/eclipse-plugin/kepler;"
                 elif artifact == "build-appliance":
                     command=command+"mkdir -p " + DEST + "/" + BA_PUBLISH_DIR + ";"
-- 
1.8.1.2


