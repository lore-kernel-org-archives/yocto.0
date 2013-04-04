Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A08ABE014DD
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:24:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2013 10:23:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,410,1363158000"; d="scan'208";a="312444139"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 04 Apr 2013 10:23:51 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 293142C8001
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:23:42 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Apr 2013 20:23:29 +0300
Message-Id: <fc592f96d17c6f4df7daf41712e59ae131a2fb7b.1365095192.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1365095192.git.stefanx.stanacar@intel.com>
References: <cover.1365095192.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1365095192.git.stefanx.stanacar@intel.com>
References: <cover.1365095192.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 2/2] nightly.conf, yoctoAB.conf: enable the new QA1-nightly-extra buildset
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
X-List-Received-Date: Thu, 04 Apr 2013 17:24:01 -0000

Add the new buildset to the nightly target

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly.conf | 2 +-
 buildset-config/yoctoAB.conf | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
index 0b334ff..e2eee6d 100644
--- a/buildset-config/nightly.conf
+++ b/buildset-config/nightly.conf
@@ -69,7 +69,7 @@ steps: [{'SetDest':{}},
                               'nightly-x32': {},
                               'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
                               'nightly-x86': {}, 'nightly-x86-lsb': {},
-                              'poky-tiny': {}}}},
+                              'poky-tiny': {}, 'QA1-nightly-extra': {}}}},
         {'PrepPkgIndex' : {}},
         {'BuildImages': {'images': 'package-index'}},
         {'BuildImages': {'images': 'adt-installer'}},
diff --git a/buildset-config/yoctoAB.conf b/buildset-config/yoctoAB.conf
index 5f29400..94612b1 100644
--- a/buildset-config/yoctoAB.conf
+++ b/buildset-config/yoctoAB.conf
@@ -4,4 +4,5 @@ order: ['nightly', 'eclipse-plugin', 'nightly-arm', 'nightly-arm-lsb', 'nightly-
         'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
         'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
         'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
-        'nightly-intel-gpl', 'poky-tiny', 'build-appliance']
+        'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
+        'QA1-nightly-extra']
-- 
1.8.1.4


