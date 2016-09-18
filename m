Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 455FDE00D72; Sun, 18 Sep 2016 11:04:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12196E0050B
	for <yocto@yoctoproject.org>; Sun, 18 Sep 2016 11:04:38 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 18 Sep 2016 11:04:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,358,1470726000"; d="scan'208";a="881171092"
Received: from wharding-mobl.amr.corp.intel.com (HELO
	alimonb-mobl1.zpn.intel.com) ([10.255.81.119])
	by orsmga003.jf.intel.com with ESMTP; 18 Sep 2016 11:04:37 -0700
From: =?UTF-8?q?An=C3=ADbal=20Lim=C3=B3n?= <anibal.limon@linux.intel.com>
To: yocto@yoctoproject.org
Date: Sun, 18 Sep 2016 13:05:17 -0500
Message-Id: <1474221917-26367-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [PATCH][yocto-autobuilder] nigthly-qa-*, nigthly-rpm*: Move RunSanityTests before SendErrorReport
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
X-List-Received-Date: Sun, 18 Sep 2016 18:04:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

If RunSanityTests executes after SendErrorReport and fails, the error
report was not send to the errors.yp.org server.

Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.controller/nightly-qa-extras.conf       | 4 ++--
 buildset-config.controller/nightly-qa-logrotate.conf    | 6 ++----
 buildset-config.controller/nightly-qa-pam.conf          | 5 ++---
 buildset-config.controller/nightly-qa-skeleton.conf     | 5 ++---
 buildset-config.controller/nightly-qa-systemd.conf      | 4 ++--
 buildset-config.controller/nightly-qa-targetbuilds.conf | 6 +++---
 buildset-config.controller/nightly-rpm-non-rpm.conf     | 4 ++--
 buildset-config.controller/nightly-rpm.conf             | 4 ++--
 8 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/buildset-config.controller/nightly-qa-extras.conf b/buildset-config.controller/nightly-qa-extras.conf
index 2ec7b50..f796bb1 100644
--- a/buildset-config.controller/nightly-qa-extras.conf
+++ b/buildset-config.controller/nightly-qa-extras.conf
@@ -18,6 +18,6 @@ steps: [{'SetDest':{}},
                             'distro': 'poky', 'buildhistory' : False,
                             'atextappend' : '\nROOT_HOME = "/root"\n'}},
         {'BuildImages': {'images': 'core-image-minimal'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images': 'core-image-minimal'}}]
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-qa-logrotate.conf b/buildset-config.controller/nightly-qa-logrotate.conf
index 41dd135..1545509 100644
--- a/buildset-config.controller/nightly-qa-logrotate.conf
+++ b/buildset-config.controller/nightly-qa-logrotate.conf
@@ -13,8 +13,6 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nIMAGE_INSTALL_append = " logrotate"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}}]
-
-
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-qa-pam.conf b/buildset-config.controller/nightly-qa-pam.conf
index 5cec2c8..3fdb76f 100644
--- a/buildset-config.controller/nightly-qa-pam.conf
+++ b/buildset-config.controller/nightly-qa-pam.conf
@@ -13,7 +13,6 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nDISTRO_FEATURES_append = " pam"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'pam'}},
         {'SendErrorReport': {}},
-        {'DownloadErrorReports': {}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'pam'}}]
-
+        {'DownloadErrorReports': {}}]
diff --git a/buildset-config.controller/nightly-qa-skeleton.conf b/buildset-config.controller/nightly-qa-skeleton.conf
index c29ca7b..9ac4c5e 100644
--- a/buildset-config.controller/nightly-qa-skeleton.conf
+++ b/buildset-config.controller/nightly-qa-skeleton.conf
@@ -13,7 +13,6 @@ steps: [{'SetDest':{}},
                             'atextappend' : '\nIMAGE_INSTALL_append = " service hello-mod"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto', 'layerdirs': ['meta-skeleton']}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'skeletoninit'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'skeletoninit'}}]
-
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-qa-systemd.conf b/buildset-config.controller/nightly-qa-systemd.conf
index 662caa6..bb6da0b 100644
--- a/buildset-config.controller/nightly-qa-systemd.conf
+++ b/buildset-config.controller/nightly-qa-systemd.conf
@@ -27,6 +27,6 @@ steps: [{'SetDest':{}},
                             'buildhistory' : False, 'distro': 'poky',
                             'initmgr' : 'systemd'}},
         {'BuildImages': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'systemd'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'systemd'}}]
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-qa-targetbuilds.conf b/buildset-config.controller/nightly-qa-targetbuilds.conf
index e31af26..c36f518 100644
--- a/buildset-config.controller/nightly-qa-targetbuilds.conf
+++ b/buildset-config.controller/nightly-qa-targetbuilds.conf
@@ -27,7 +27,7 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemuppc', 'SDKMACHINE' : 'x86_64',
                             'buildhistory' : False, 'distro': 'poky'}},
         {'BuildImages': {'images': 'core-image-sato-sdk'}},
-        {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
         {'RunSanityTests': {'images': 'core-image-sato-sdk',
-                            'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}}]
+                            'suites' : 'ping ssh buildsudoku buildcvs buildiptables'}},
+        {'DownloadErrorReports': {}},
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-rpm-non-rpm.conf b/buildset-config.controller/nightly-rpm-non-rpm.conf
index 5290d6d..4ac743a 100644
--- a/buildset-config.controller/nightly-rpm-non-rpm.conf
+++ b/buildset-config.controller/nightly-rpm-non-rpm.conf
@@ -13,6 +13,6 @@ steps: [{'SetDest':{}},
                             'packages': 'rpm'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images' : 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}}]
+        {'SendErrorReport': {}}]
diff --git a/buildset-config.controller/nightly-rpm.conf b/buildset-config.controller/nightly-rpm.conf
index 2ea2d6e..646127f 100644
--- a/buildset-config.controller/nightly-rpm.conf
+++ b/buildset-config.controller/nightly-rpm.conf
@@ -13,6 +13,6 @@ steps: [{'SetDest':{}},
                             'packages': 'rpm'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images' : 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
+        {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}},
         {'DownloadErrorReports': {}},
-        {'SendErrorReport': {}},
-        {'RunSanityTests': {'images' : 'core-image-minimal core-image-sato core-image-sato-sdk'}}]
+        {'SendErrorReport': {}}]
-- 
2.1.4


