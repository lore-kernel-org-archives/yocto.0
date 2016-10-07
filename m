Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE904E00C4B; Fri,  7 Oct 2016 13:49:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E97AE00C45
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 13:49:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 07 Oct 2016 13:49:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,456,1473145200"; d="scan'208";a="1061943298"
Received: from alimonb-mobl1.zpn.intel.com ([10.219.5.33])
	by orsmga002.jf.intel.com with ESMTP; 07 Oct 2016 13:49:37 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Oct 2016 15:50:38 -0500
Message-Id: <1475873438-24691-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: [[yocto-autobuilder][PATCHv4]] ] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Fri, 07 Oct 2016 20:49:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>

As part of the process to set new OS distribution as supported on Yoctoc Project
a new patch was created with the list of build sets that should be executed.

Detailed information:
https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Sets

Fixes [YOCTO #9905]

Note:In order to add a new distro as supported all the build sets should be PASS

Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 .../nightly-qa-distro.conf                         | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 buildset-config.autobuilder-qa/nightly-qa-distro.conf

diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
new file mode 100644
index 0000000..def4118
--- /dev/null
+++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
@@ -0,0 +1,55 @@
+[nightly-qa-distro]
+builders: 'example-worker'
+repos: [{'poky':
+            {'repourl':'git://git.yoctoproject.org/poky',
+             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
+             'branch':'master'}},
+        {'oecore':
+            {'repourl':'git://git.openembedded.org/openembedded-core',
+             'layerversion':'core',
+             'checkout':False,
+             'branch':'master'}},
+        {'bitbake':
+            {'repourl':'git://git.openembedded.org/bitbake',
+             'checkout':False,
+             'branch':'master'}},
+        {'eclipse-poky-neon':
+            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
+             'checkout':False,
+             'branch':'neon-master'}},
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
+             'waitForFinish': 'True',
+             'schedulerNames': {
+                 'nightly-oe-selftest': {},
+                 'nightly-oecore': {},
+                 'nightly-deb': {},
+                 'nightly-ipk': {},
+                 'nightly-world': {}, 
+                 'nightly-arm': {}, 
+                 'nightly-multilib': {}, 
+                 'nightly-x86-64-lsb': {},
+                 'nightly-x86': {},
+                 'nightly-x32': {},
+                 'poky-tiny': {}, 
+                 'nightly-qa-systemd': {},
+                 'nightly-qa-extras': {}, 
+                 'nightly-qa-targetbuilds': {},
+                 'nightly-qa-skeleton': {},
+                 'nightly-qa-logrotate': {}, 
+                 'nightly-qa-pam': {},
+                 'buildtools': {}},
+                 'eclipse-plugin-neon': {},
+             'schedulerNames_nowait': {}}},]
-- 
2.1.4


