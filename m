Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EB2CE00B43; Thu,  8 May 2014 09:53:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
X-Greylist: delayed 535 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 09:53:32 PDT
Received: from mail.kmu-office.ch (unknown [178.209.48.102])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB0EE0070F
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 09:53:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id A44A061964
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:08 +0200 (CEST)
X-Virus-Scanned: by amavisd-new at kmu-office.ch
Received: from mail.kmu-office.ch ([127.0.0.1])
	by localhost (mail.kmu-office.ch [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ivWRdvDyoNOG for <yocto@yoctoproject.org>;
	Thu,  8 May 2014 18:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by mail.kmu-office.ch (Postfix) with ESMTP id 7D05F61966
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 18:40:04 +0200 (CEST)
Received: from linuxdev.toradex.int (unknown [46.140.72.82])
	(Authenticated sender: stefan@agner.ch)
	by mail.kmu-office.ch (Postfix) with ESMTPSA id B48F661955;
	Thu,  8 May 2014 18:40:02 +0200 (CEST)
From: stefan@agner.ch
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu,  8 May 2014 18:44:26 +0200
Message-Id: <5aacc12602f370052ad86affd34033c6b77bd5cc.1399561605.git.stefan@agner.ch>
X-Mailer: git-send-email 1.9.0
In-Reply-To: <cover.1399561605.git.stefan@agner.ch>
References: <cover.1399561605.git.stefan@agner.ch>
X-Mailman-Approved-At: Fri, 09 May 2014 08:12:07 -0700
Cc: stefan@agner.ch
Subject: [yocto-autobuilder][PATCH v1 2/4] README: add high level overview, fix build slave description
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

Replace builders with build slaves, since this are different things
in BuildBot world. Also add a section with some high level view
what Autobuilder actually is.

Signed-off-by: Stefan Agner <stefan@agner.ch>
---
 README                 |  8 ++++----
 README-NEW-AUTOBUILDER | 11 +++++++++++
 2 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/README b/README
index c7c9acf..3b418fd 100644
--- a/README
+++ b/README
@@ -26,7 +26,7 @@ Setup
        connection that I haven't figured out yet. Manually connecting seems to 
        set up the session correctly.)
 
-2. Adding additional builders
+2. Adding additional build slaves
 
     The production yocto autobuilder uses a cluster of build slaves, all sharing
     the same SSTATE_DIR and DL_DIR via an NFS4 mounted NAS. The main nightly 
@@ -36,7 +36,7 @@ Setup
     In theory you could also run your build slaves with NO_NETWORK to enforce a 
     single point of populating DL_DIR.
 
-    Running multiple builders is fairly simple, but does require some setup.
+    Running multiple build slaves is fairly simple, but does require some setup.
 
     1. Ensure the autobuilder.conf for each build slave is appropriate. As
        certain variables are set within this file that are local to each builder
@@ -45,7 +45,7 @@ Setup
     2. Within yocto-master/master.cfg make the following changes substituing 
        <PASS> for your debug password and  max_builds for the number of builds 
        you wish to run on each builder. Your main builder that will run the 
-       nightly trigger buildset should have at least 2 builders running.
+       nightly trigger buildset should have at least 2 build slaves running.
 
 
 c['slaves'] = [BuildSlave("builder1", "<PASS>", max_builds=3),
@@ -53,7 +53,7 @@ c['slaves'] = [BuildSlave("builder1", "<PASS>", max_builds=3),
                BuildSlave("builder3", "<PASS>", max_builds=3),
                BuildSlave("builder4", "<PASS>", max_builds=3)]
 
-    3. For each buildslave change yocto-slave/buildbot.tac to point to the 
+    3. For each build slave change yocto-slave/buildbot.tac to point to the 
        correct build master and port. The default setup points to local host.
 
 buildmaster_host = 'builder1.myproject.org'
diff --git a/README-NEW-AUTOBUILDER b/README-NEW-AUTOBUILDER
index 1e46f5b..acb5387 100644
--- a/README-NEW-AUTOBUILDER
+++ b/README-NEW-AUTOBUILDER
@@ -23,6 +23,17 @@ TODO
 - deploy stuff
 - killing triggers. this has been a long standing issue. look into
 
+What is it
+------------
+Yocto Autobuilder is essentially some extension to the vanilla build bot.
+This extension mainly addresses configuration file handling and Yocto specific
+build steps.
+For better maintainability, the Autobuilder (see Autobuilder.py located at
+lib/python2.7/site-packages/autobuilder/), handles configuration from multiple
+files.
+Additional build steps such as CheckOutLayers.py or CreateBBLayersConf are
+Yocto specific and simplify the bulders configuration.
+
 Setup
 ------------
 Nothing here has changed much. 
-- 
1.9.0


