Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 003F8E0150E
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2013 11:52:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 23 Apr 2013 11:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,536,1363158000"; d="scan'208";a="323722138"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 23 Apr 2013 11:52:12 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 9E8302C8001;
	Tue, 23 Apr 2013 11:52:03 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Tue, 23 Apr 2013 21:52:04 +0300
Message-Id: <79cdbb353bc357b6e21c37d42d6014062f2fdbf8.1366742537.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1366742537.git.stefanx.stanacar@intel.com>
References: <cover.1366742537.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][RFC 4/6] nightly.conf, yoctoAB.conf: enable the new buildsets
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
X-List-Received-Date: Tue, 23 Apr 2013 18:52:13 -0000

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


