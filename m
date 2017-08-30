Return-Path: <sonia.leon.bautista@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB9F8E0091D; Wed, 30 Aug 2017 10:27:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7A07E00349
	for <yocto@yoctoproject.org>; Wed, 30 Aug 2017 10:27:39 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Aug 2017 10:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,449,1498546800"; d="scan'208";a="145741067"
Received: from sleonbau-mobl2.zpn.intel.com ([10.219.4.142])
	by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2017 10:27:38 -0700
From: Sonia Leon Bautista <sonia.leon.bautista@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 30 Aug 2017 12:27:10 -0500
Message-Id: <20170830172710.23531-1-sonia.leon.bautista@intel.com>
X-Mailer: git-send-email 2.9.4
MIME-Version: 1.0
Cc: joshua.g.lock@intel.com
Subject: [PATCH][yocto-autobuilder] buildset-config.yocto-qa: Update the nightly-qa-distro.conf
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
X-List-Received-Date: Wed, 30 Aug 2017 17:27:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Aníbal Limón <anibal.limon@linux.intel.com>

Some buildsets was removed:

nigthly-{deb,ipk,rpm}: Merge into nigthly-packagemanagers, see rev
    faabab725053b4.
nigthly-qa*: Merge into nigthly-qa-extras, see rev 363a472366a61.
nightly-intel-gpl: Removed on rev 61355851e575.

Signed-off-by: Sonia Leon Bautista <sonia.leon.bautista@intel.com>
Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
---
 buildset-config.yocto-qa/nightly-deb.conf             | 1 -
 buildset-config.yocto-qa/nightly-ipk.conf             | 1 -
 buildset-config.yocto-qa/nightly-packagemanagers.conf | 1 +
 buildset-config.yocto-qa/nightly-qa-distro.conf       | 9 +--------
 buildset-config.yocto-qa/nightly-qa-logrotate.conf    | 1 -
 buildset-config.yocto-qa/nightly-qa-pam.conf          | 1 -
 buildset-config.yocto-qa/nightly-qa-skeleton.conf     | 1 -
 buildset-config.yocto-qa/nightly-qa-systemd.conf      | 1 -
 buildset-config.yocto-qa/nightly-qa-targetbuilds.conf | 1 -
 buildset-config.yocto-qa/nightly-rpm.conf             | 1 -
 10 files changed, 2 insertions(+), 16 deletions(-)
 delete mode 120000 buildset-config.yocto-qa/nightly-deb.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-ipk.conf
 create mode 120000 buildset-config.yocto-qa/nightly-packagemanagers.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-qa-logrotate.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-qa-pam.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-qa-skeleton.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-qa-systemd.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
 delete mode 120000 buildset-config.yocto-qa/nightly-rpm.conf

diff --git a/buildset-config.yocto-qa/nightly-deb.conf b/buildset-config.yocto-qa/nightly-deb.conf
deleted file mode 120000
index 4ae053c..0000000
--- a/buildset-config.yocto-qa/nightly-deb.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-deb.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-ipk.conf b/buildset-config.yocto-qa/nightly-ipk.conf
deleted file mode 120000
index 4f92036..0000000
--- a/buildset-config.yocto-qa/nightly-ipk.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-ipk.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-packagemanagers.conf b/buildset-config.yocto-qa/nightly-packagemanagers.conf
new file mode 120000
index 0000000..8e69fc0
--- /dev/null
+++ b/buildset-config.yocto-qa/nightly-packagemanagers.conf
@@ -0,0 +1 @@
+../buildset-config.controller/nightly-packagemanagers.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-qa-distro.conf b/buildset-config.yocto-qa/nightly-qa-distro.conf
index d7c6c0d..0d02d15 100644
--- a/buildset-config.yocto-qa/nightly-qa-distro.conf
+++ b/buildset-config.yocto-qa/nightly-qa-distro.conf
@@ -35,9 +35,7 @@ steps: [{'SetDest':{}},
              'schedulerNames': {
                  'nightly-oe-selftest': {},
                  'nightly-oecore': {},
-                 'nightly-rpm': {},
-                 'nightly-deb': {},
-                 'nightly-ipk': {},
+                 'nightly-packagemanagers': {},
                  'nightly-world': {}, 
                  'nightly-arm': {}, 
                  'nightly-multilib': {}, 
@@ -45,12 +43,7 @@ steps: [{'SetDest':{}},
                  'nightly-x86': {},
                  'nightly-x32': {},
                  'poky-tiny': {}, 
-                 'nightly-qa-systemd': {},
                  'nightly-qa-extras': {}, 
-                 'nightly-qa-targetbuilds': {},
-                 'nightly-qa-skeleton': {},
-                 'nightly-qa-logrotate': {}, 
-                 'nightly-qa-pam': {},
                  'buildtools': {}},
                  'eclipse-plugin-neon': {},
              'schedulerNames_nowait': {}}},]
diff --git a/buildset-config.yocto-qa/nightly-qa-logrotate.conf b/buildset-config.yocto-qa/nightly-qa-logrotate.conf
deleted file mode 120000
index 9cdb7b3..0000000
--- a/buildset-config.yocto-qa/nightly-qa-logrotate.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-qa-logrotate.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-qa-pam.conf b/buildset-config.yocto-qa/nightly-qa-pam.conf
deleted file mode 120000
index fe05369..0000000
--- a/buildset-config.yocto-qa/nightly-qa-pam.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-qa-pam.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-qa-skeleton.conf b/buildset-config.yocto-qa/nightly-qa-skeleton.conf
deleted file mode 120000
index 516b3fb..0000000
--- a/buildset-config.yocto-qa/nightly-qa-skeleton.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-qa-skeleton.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-qa-systemd.conf b/buildset-config.yocto-qa/nightly-qa-systemd.conf
deleted file mode 120000
index bc4b7ed..0000000
--- a/buildset-config.yocto-qa/nightly-qa-systemd.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-qa-systemd.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf b/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
deleted file mode 120000
index 316746a..0000000
--- a/buildset-config.yocto-qa/nightly-qa-targetbuilds.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-qa-targetbuilds.conf
\ No newline at end of file
diff --git a/buildset-config.yocto-qa/nightly-rpm.conf b/buildset-config.yocto-qa/nightly-rpm.conf
deleted file mode 120000
index 7051b63..0000000
--- a/buildset-config.yocto-qa/nightly-rpm.conf
+++ /dev/null
@@ -1 +0,0 @@
-../buildset-config.controller/nightly-rpm.conf
\ No newline at end of file
-- 
2.9.4


