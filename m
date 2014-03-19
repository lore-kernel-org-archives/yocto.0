Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F21E00B45
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:55:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Mar 2014 13:55:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="502283035"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2014 13:55:06 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id B5E125F82A4A; Wed, 19 Mar 2014 13:51:34 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:17 -0700
Message-Id: <911d5a75c094485592c6f00568828d394292cab6.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 19/22] SetDest.py: Use new UI variables.
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
X-List-Received-Date: Wed, 19 Mar 2014 20:55:30 -0000

From: Beth Flanagan <elizabeth.flanagan@intel.com>

How we name releases is a lot more complex than the old UI could
handle. This alligns us a bit more with what we actually do.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
index cf901cb..8c1edc5 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SetDest.py
@@ -49,8 +49,11 @@ class SetDest(ShellCommand):
         else:
             buildername=self.getProperty("buildername")
             self.workdir=os.path.join(self.slaveworkdir, buildername)
-            if str(self.getProperty("custom_release_me_" + buildername)) == "True":
-                rel_name = self.getProperty("custom_release_name_"  + buildername)
+            if str(self.getProperty("custom_release_me")) == "True":
+                poky_name = self.getProperty("custom_poky_name")
+                poky_number = self.getProperty("custom_poky_number")
+                yocto_number = self.getProperty("custom_yocto_number")
+                rel_name = 'yocto-'+ yocto_number
                 if not rel_name or rel_name == "":
                     rel_name == self.getProperty(commit-description)
                 DEST=os.path.normpath(os.path.join(
-- 
1.8.1.2


