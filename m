Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B2ACE00A97
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:26:57 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Mar 2014 10:26:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="492922485"
Received: from qana.jf.intel.com ([10.7.201.148])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 277CB5F825EE; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:00 -0800
Message-Id: <6ac77aad66b4f334f7362ed512fd3229871b8aa1.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 09/27] Autobuilder.py: remove DEBUG code
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

From: Beth Flanagan <elizabeth.flanagan@intel.com>

No need for a global DEBUG hanging about.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index c6c4bc0..5d7ff7c 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -107,8 +107,6 @@ class Autobuilder:
 
     def parseRepos(self, buildset=None):
         buildset=buildset
-        if DEBUG is True:
-            log.msg(buildset + " uses these repos:")
         for layer in ast.literal_eval(self.configdict[buildset]['repos']):
             if layer.iterkeys().next() not in self.repos:
                 schedpropstoextend, newcheckoutprops = self.CreateLayerSchedulerParams(layer=layer, trigger=buildset, triggerer=True)
@@ -147,8 +145,6 @@ class Autobuilder:
     def parseBuilders(self, buildset):
         buildset=buildset
         builders=ast.literal_eval(self.configdict[buildset]['builders'])
-        if DEBUG is True:
-            log.msg(buildset + " is built on " + str(builders))
         return builders 
 
     def parseConfig(self):
-- 
1.8.1.2


