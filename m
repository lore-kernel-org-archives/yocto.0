Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48CEFE00C39; Thu, 15 Sep 2016 22:08:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C4EE00C31
	for <yocto@yoctoproject.org>; Thu, 15 Sep 2016 22:08:52 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP; 15 Sep 2016 22:08:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,343,1470726000"; 
   d="scan'208";a="9405408"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga005.fm.intel.com with ESMTP; 15 Sep 2016 22:08:51 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 15 Sep 2016 22:08:20 -0700
Message-Id: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Fri, 16 Sep 2016 05:08:56 -0000

We are no longer supporting kepler or luna. Remove the build set for those and
remove luna from yoctoAB.conf.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.controller/eclipse-plugin-kepler.conf | 10 ----------
 buildset-config.controller/eclipse-plugin-luna.conf   | 11 -----------
 buildset-config.controller/yoctoAB.conf               |  1 -
 3 files changed, 22 deletions(-)
 delete mode 100644 buildset-config.controller/eclipse-plugin-kepler.conf
 delete mode 100644 buildset-config.controller/eclipse-plugin-luna.conf

diff --git a/buildset-config.controller/eclipse-plugin-kepler.conf b/buildset-config.controller/eclipse-plugin-kepler.conf
deleted file mode 100644
index 9948852..0000000
--- a/buildset-config.controller/eclipse-plugin-kepler.conf
+++ /dev/null
@@ -1,10 +0,0 @@
-[eclipse-plugin-kepler]
-builders: 'example-worker'
-repos: [{'eclipse-poky-kepler':
-            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
-             'branch':'kepler-master'}}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-kepler'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-kepler']}}]
diff --git a/buildset-config.controller/eclipse-plugin-luna.conf b/buildset-config.controller/eclipse-plugin-luna.conf
deleted file mode 100644
index d745af3..0000000
--- a/buildset-config.controller/eclipse-plugin-luna.conf
+++ /dev/null
@@ -1,11 +0,0 @@
-[eclipse-plugin-luna]
-builders: 'example-worker'
-repos: [{'eclipse-poky-luna':
-            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
-             'branch':'luna-master' }}]
-steps: [{'SetDest':{}},
-        {'CheckOutLayers': {}},
-        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-luna'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-luna']}}]
-
diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-config.controller/yoctoAB.conf
index fe9750b..309a5ab 100644
--- a/buildset-config.controller/yoctoAB.conf
+++ b/buildset-config.controller/yoctoAB.conf
@@ -1,6 +1,5 @@
 [BuildSets]
 order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars', 
-        'eclipse-plugin-luna',
         'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb', 
         'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb', 
         'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
-- 
2.7.0


