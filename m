Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B97E00B43
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 13:58:13 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Mar 2014 13:51:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,688,1389772800"; d="scan'208";a="475935019"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2014 13:55:05 -0700
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id EAB845F82A4A; Wed, 19 Mar 2014 13:51:33 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 19 Mar 2014 13:51:04 -0700
Message-Id: <5e8cad7d2dda81574a4a1fbf357ed6f51115bed1.1395261635.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1395261635.git.elizabeth.flanagan@intel.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 06/22] CheckOutLayers.py: Remove unset Props
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
X-List-Received-Date: Wed, 19 Mar 2014 20:58:13 -0000

We no longer set these trigger* props, so let's remove them.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
index 90b90c5..5e95189 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/CheckOutLayers.py
@@ -82,10 +82,6 @@ class CheckOutLayers(YoctoGit):
            self.getProperty('commit_resolvedhead_'+self.layername) is not None:
             log.msg("Using Resolved HEAD")
             self.commit = self.getProperty('commit_resolvedhead_'+self.layername)
-        elif self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler):
-            self.commit = self.getProperty('commit_trigger_'+self.layername+"_"+self.scheduler)
-        elif self.getProperty('commit_triggerer_'+self.layername+"_"+self.scheduler) :
-            self.commit = self.getProperty('commit_triggerer_'+self.layername+"_"+self.scheduler)
         elif self.getProperty('commit_'+self.layername):
             self.commit = self.getProperty('commit_'+self.layername)
         else:
-- 
1.8.1.2


