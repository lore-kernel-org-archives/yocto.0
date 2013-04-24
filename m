Return-Path: <stefanx.stanacar@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D26E014E0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 15:29:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 24 Apr 2013 15:27:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,546,1363158000"; d="scan'208";a="324228605"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 24 Apr 2013 15:29:18 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 46D012C8002;
	Wed, 24 Apr 2013 15:29:09 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Thu, 25 Apr 2013 01:29:14 +0300
Message-Id: <256320dbec959f747294fce3317a914dd425be23.1366841959.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366841959.git.stefanx.stanacar@intel.com>
References: <cover.1366841959.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 4/6] nightly.conf, yoctoAB.conf: enable the new buildsets
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
X-List-Received-Date: Wed, 24 Apr 2013 22:29:18 -0000

Add the new nightly-qa-extras and nightly-qa-systemd
buildsets to the nightly target.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly.conf | 3 ++-
 buildset-config/yoctoAB.conf | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
index 58a8531..ffbc271 100644
--- a/buildset-config/nightly.conf
+++ b/buildset-config/nightly.conf
@@ -67,7 +67,8 @@ steps: [{'SetDest':{}},
                               'nightly-x32': {},
                               'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
                               'nightly-x86': {}, 'nightly-x86-lsb': {},
-                              'poky-tiny': {}}}},
+                              'poky-tiny': {},
+                              'nightly-qa-extras': {}, 'nightly-qa-systemd': {}}}},
         {'PrepPkgIndex' : {}},
         {'BuildImages': {'images': 'package-index'}},
         {'CreateAutoConf': {'machine': 'atom-pc', 'SDKMACHINE' : 'x86_64', 
diff --git a/buildset-config/yoctoAB.conf b/buildset-config/yoctoAB.conf
index 5f29400..2f22767 100644
--- a/buildset-config/yoctoAB.conf
+++ b/buildset-config/yoctoAB.conf
@@ -4,4 +4,5 @@ order: ['nightly', 'eclipse-plugin', 'nightly-arm', 'nightly-arm-lsb', 'nightly-
         'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
         'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
         'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
-        'nightly-intel-gpl', 'poky-tiny', 'build-appliance']
+        'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
+        'nightly-qa-extras', 'nightly-qa-systemd']
-- 
1.8.1.4


