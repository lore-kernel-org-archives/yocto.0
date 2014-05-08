Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F858E00B3D; Thu,  8 May 2014 09:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5049FE0077C
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:53:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id CD972615DB
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:08 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1W63fmM0Jurr for <yocto@yoctoproject.org>;
	Thu,  8 May 2014 18:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 99A046196D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:05 +0200 (CEST)
Received: from linuxdev.toradex.int (unknown [46.140.72.82])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id 430E461961;
	Thu,  8 May 2014 18:40:02 +0200 (CEST)
From: stefan@agner.ch
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu,  8 May 2014 18:44:27 +0200
Message-Id: <5903b02d2d1f2121ac07c48fe6f3ecadf3cee57b.1399561605.git.stefan@agner.ch>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: stefan@agner.ch
Subject: [yocto-autobuilder][PATCH v1 3/4] master.py/botmaster.py: use builders list for builders order
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
X-List-Received-Date: Thu, 08 May 2014 16:53:39 -0000

From: Stefan Agner <stefan@agner.ch>

This patch uses the order of the list builderNames when requesting
builder names. This order is relevant for the Waterfall order.

However, the order of builderNames is not meaningful by default,
hence the change in botmaster.py makes sure the builderNames is
taken form the configuration files list of builder.

Hence we can get rid of the environment work around (which also
did not honor non Autobuilder builders).

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py  | 17 +++++++++--------
 .../buildbot/process/botmaster.py                       |  3 ++-
 .../buildbot-0.8.8-py2.7.egg/buildbot/status/master.py  | 12 ++----------
 3 files changed, 13 insertions(+), 19 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 4c33489..cf8672f 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -38,20 +38,21 @@ class Autobuilder:
                 self.cfile = "./buildset-config/yoctoAB.conf"
 
     def createBuildsets(self):
-        beenHere=[]
+        buildersSorted=[]
         sort = True
         if self.config.has_option('BuildSets', 'order'):
             sort = False
             for set in ast.literal_eval(self.config.get('BuildSets', 'order')):
-                beenHere.append(set)
+                buildersSorted.append(set)
+
         for key in self.configdict:
-            if key not in beenHere and key != "BuildSets":
-                beenHere.append(key)
+            if key not in buildersSorted and key != "BuildSets":
+                buildersSorted.append(key)
+
         if sort:
-            beenHere.sort()
-        # REALLY crappy way to do this, but better than setting globals.
-        os.environ["YOCTO_SORTED_BUILDERS"]= str(beenHere)
-        for buildset in beenHere:
+            util.naturalSort(buildersSorted)
+
+        for buildset in buildersSorted:
             self.schedprops = []
             self.checkoutprops={}
             self.set_props = {}
diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/process/botmaster.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/process/botmaster.py
index d5597f7..f2c3b9f 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/process/botmaster.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/process/botmaster.py
@@ -262,7 +262,8 @@ class BotMaster(config.ReconfigurableServiceMixin, service.MultiService):
                 builder.master = self.master
                 builder.setServiceParent(self)
 
-        self.builderNames = self.builders.keys()
+        # Use order according to configuration files builders list
+        self.builderNames = list([ (bc.name) for bc in new_config.builders ])
 
         metrics.MetricCountEvent.log("num_builders",
                 len(self.builders), absolute=True)
diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/master.py b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/master.py
index b5fe741..df122b4 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/master.py
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/master.py
@@ -221,16 +221,8 @@ class Status(config.ReconfigurableServiceMixin, service.MultiService):
 
     def getBuilderNames(self, categories=None):
         if categories == None:
-            #YOCTO PROJECT ADDITION
-            import os
-            import ast
-            sortbuilders=""
-            sortbuilders=ast.literal_eval(os.environ.get('YOCTO_SORTED_BUILDERS'))
-            #I hate the way this is sorted. This is the laziest way to get this
-            #in the format I want.
-            return sortbuilders
-            #YOCTO PROJECT ADDITION
-            #return util.naturalSort(self.botmaster.builderNames) # don't let them break it
+            # assume this is already sorted...
+            return self.botmaster.builderNames
         
         l = []
         # respect addition order
-- 
1.9.0


