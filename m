Return-Path: <monserratx.sedeno.bustos@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15168E00C8E; Wed,  5 Oct 2016 13:54:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0BF5E00C5D
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 13:54:00 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga101.jf.intel.com with ESMTP; 05 Oct 2016 13:54:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,302,1473145200"; d="scan'208";a="16612192"
Received: from msedeno.gv.intel.com ([10.219.106.154])
	by fmsmga005.fm.intel.com with ESMTP; 05 Oct 2016 13:53:59 -0700
From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  5 Oct 2016 15:54:19 -0500
Message-Id: <1475700859-14414-1-git-send-email-monserratx.sedeno.bustos@intel.com>
X-Mailer: git-send-email 2.7.4
Cc: joshua.g.lock@intel.com,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: [[yocto-autobuilder][PATCHv3]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 20:54:06 -0000

As part of the process to set new OS distribution as supported on Yoctoc Project
a new patch was created with the list of build sets that should be executed.

Detailed information:
https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Sets

Fixes [YOCTO #9905]

Note:In order to add a new distro as supported all the build sets should be PASS

Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
---
 .../nightly-qa-distro.conf                         | 44 ++++++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 buildset-config.autobuilder-qa/nightly-qa-distro.conf

diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
new file mode 100644
index 0000000..6c02a91
--- /dev/null
+++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
@@ -0,0 +1,44 @@
+[nightly-qa-distro]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'meta-qt4':
+            {'repourl':'git://git.yoctoproject.org/meta-qt4',
+             'branch':'master'}},
+        {'meta-qt3':
+            {'repourl':'git://git.yoctoproject.org/meta-qt3',
+             'branch':'master'}}]
+props: [{'fp_date':{'prop_type':'StringParameter',
+                       'size': 20,
+                       'name': 'fp_date',
+                       'label':'Full Pass date:'}}]
+steps: [{'SetDest':{}},
+        {'CheckOutLayers': {}},
+        {'RunPreamble': {}},
+        {'TriggerBuilds': {'schedulerName': 'dist-build', 
+		           'waitForFinish': 'True',
+                           'schedulerNames': {
+			   	'nightly-oe-selftest': {},
+			   	'nightly-rpm': {},
+		           	'nightly-deb': {},
+                           	'nightly-ipk': {},
+                          	'nightly-world': {}, 
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
+				'nightly-qa-skeleton': {},
+                           	'nightly-qa-logrotate': {}, 
+                           	'nightly-qa-pam': {},
+				'buildtools': {}},
+                           'schedulerNames_nowait': {}}},]
+
-- 
2.7.4


