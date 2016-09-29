Return-Path: <monserratx.sedeno.bustos@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91E7CE00C88; Thu, 29 Sep 2016 14:44:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C315E00C4B
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 14:44:02 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP; 29 Sep 2016 14:44:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,417,1473145200"; d="scan'208";a="14703864"
Received: from msedeno.gv.intel.com ([10.219.106.154])
	by fmsmga005.fm.intel.com with ESMTP; 29 Sep 2016 14:44:01 -0700
From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Sep 2016 16:44:18 -0500
Message-Id: <1475185458-16324-1-git-send-email-monserratx.sedeno.bustos@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: [PATCH] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Thu, 29 Sep 2016 21:44:06 -0000

Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
---
 nightly-qa-distro.conf | 45 +++++++++++++++++++++------------------------
 1 file changed, 21 insertions(+), 24 deletions(-)

diff --git a/nightly-qa-distro.conf b/nightly-qa-distro.conf
index 2d2c828..8529345 100644
--- a/nightly-qa-distro.conf
+++ b/nightly-qa-distro.conf
@@ -7,9 +7,6 @@ repos: [{'poky':
         {'meta-qt4':
             {'repourl':'git://git.yoctoproject.org/meta-qt4',
              'branch':'master'}},
-        {'meta-qt4':
-            {'repourl':'git://git.yoctoproject.org/meta-qt4',
-             'branch':'master'}},
         {'meta-qt3':
             {'repourl':'git://git.yoctoproject.org/meta-qt3',
              'branch':'master'}}]
@@ -20,28 +17,28 @@ props: [{'fp_date':{'prop_type':'StringParameter',
 steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
-        {'TriggerBuilds': {'schedulerName': 'main-build', 
+        {'TriggerBuilds': {'schedulerName': 'dist-build', 
 		           'waitForFinish': 'True',
                            'schedulerNames': {
-			   'nightly-oe-selftest': {},
-			   'nightly-rpm': {}
-		           'nightly-deb':{}
-                           'nightly-ipk':{}
-                           'nightly-world': {}, 
-			   'buildtools': {},
-                           'nightly-arm': {}, 
-                           'nightly-mips': {},
-                           'nightly-wic':{},
-                           'nightly-multilib': {}, 
-                           'nightly-x86-64': {}, 
-                           'nightly-x86-64-lsb': {},
-                           'nightly-x86': {},
-                           'poky-tiny': {}, 
-                           'nightly-qa-systemd': {},
-                           'nightly-qa-extras': {}, 
-                           'nightly-qa-targetbuilds': {},
-                           'nightly-qa-logrotate': {}, 
-                           'nightly-qa-pam': {},
-                           'nightly-qa-skeleton': {}},
+			   	'nightly-oe-selftest': {},
+			   	'nightly-rpm': {},
+		           	'nightly-deb': {},
+                           	'nightly-ipk': {},
+                          	'nightly-world': {}, 
+			   	'buildtools': {},
+                           	'nightly-arm': {}, 
+                           	'nightly-mips': {},
+                           	'nightly-wic':{},
+                           	'nightly-multilib': {}, 
+                           	'nightly-x86-64': {}, 
+                           	'nightly-x86-64-lsb': {},
+                           	'nightly-x86': {},
+                           	'poky-tiny': {}, 
+                           	'nightly-qa-systemd': {},
+                           	'nightly-qa-extras': {}, 
+                           	'nightly-qa-targetbuilds': {},
+                           	'nightly-qa-logrotate': {}, 
+                           	'nightly-qa-pam': {},
+                           	'nightly-qa-skeleton': {}},
                            'schedulerNames_nowait': {}}},]
 
-- 
2.7.4


