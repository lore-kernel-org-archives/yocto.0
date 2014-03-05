Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8171E00AF2
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 10:27:56 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 10:23:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="494628100"
Received: from qana.jf.intel.com ([10.7.201.148])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2014 10:26:50 -0800
Received: by qana.jf.intel.com (Postfix, from userid 1000)
	id 9D2F75F8262E; Wed,  5 Mar 2014 10:23:32 -0800 (PST)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Mar 2014 10:23:02 -0800
Message-Id: <3f82e0682124717198a26c619f90c601976370f6.1394042358.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.8.1.2
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1394042358.git.elizabeth.flanagan@intel.com>
References: <cover.1394042358.git.elizabeth.flanagan@intel.com>
Subject: [AB PATCH 11/27] trigger.py: Allow wait and nowait triggers
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
X-List-Received-Date: Wed, 05 Mar 2014 18:27:56 -0000

From: Richard Purdie <richard.purdie@linuxfoundation.org>

This is from RP. It's a little hacky, but gets around our broken parser.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>

Author: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../buildbot-0.8.8-py2.7.egg/buildbot/steps/trigger.py    | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/trigger.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/trigger.py
index a375df6..f23f708 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/trigger.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/trigger.py
@@ -31,7 +31,7 @@ class Trigger(LoggingBuildStep):
     def __init__(self, schedulerNames=[], sourceStamp = None, sourceStamps = None,
                  updateSourceStamp=None, alwaysUseLatest=False,
                  waitForFinish=False, set_properties={}, 
-                 copy_properties=[], **kwargs):
+                 copy_properties=[], noWait=[], **kwargs):
         if not schedulerNames:
             config.error(
                 "You must specify a scheduler to trigger")
@@ -46,6 +46,7 @@ class Trigger(LoggingBuildStep):
                 "You can't specify both alwaysUseLatest and updateSourceStamp"
             )
         self.schedulerNames = schedulerNames
+        self.noWait = noWait
         self.sourceStamps = sourceStamps or []
         if sourceStamp:
             self.sourceStamps.append(sourceStamp)
@@ -146,12 +147,22 @@ class Trigger(LoggingBuildStep):
         ss_for_trigger = self.prepareSourcestampListForTrigger()
 
         dl = []
+        nowait = []
         triggered_names = []
         for sch in triggered_schedulers:
-            dl.append(sch.trigger(ss_for_trigger, set_props=props_to_set))
+            if sch.name in self.noWait:
+                import time
+                time.sleep(5)
+                nowait.append(sch.trigger(ss_for_trigger, set_props=props_to_set))
+            else:
+                dl.append(sch.trigger(ss_for_trigger, set_props=props_to_set))
             triggered_names.append(sch.name)
         self.step_status.setText(['triggered'] + triggered_names)
 
+        for d in nowait:
+            d.addErrback(log.err,
+                '(ignored) while invoking Triggerable schedulers:')
+
         if self.waitForFinish:
             rclist = yield defer.DeferredList(dl, consumeErrors=1)
         else:
-- 
1.8.1.2


