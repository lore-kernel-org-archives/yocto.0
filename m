Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDCEDE01494
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:35 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 05 Apr 2013 00:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,413,1363158000"; d="scan'208";a="317283705"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2013 00:49:35 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id 2C2502C8001
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 00:49:27 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2013 10:49:22 +0300
Message-Id: <42428863e33a4278e68a0535d41cb63e234be0d6.1365147946.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1365147946.git.stefanx.stanacar@intel.com>
References: <cover.1365147946.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1365147946.git.stefanx.stanacar@intel.com>
References: <cover.1365147946.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH v2 2/2] nightly.conf, yoctoAB.conf: enable the new nightly-qa-extras buildset
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
X-List-Received-Date: Fri, 05 Apr 2013 07:49:36 -0000

Add the new buildset to the nightly target

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly.conf | 2 +-
 buildset-config/yoctoAB.conf | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/buildset-config/nightly.conf b/buildset-config/nightly.conf
index 0b334ff..5b286f0 100644
--- a/buildset-config/nightly.conf
+++ b/buildset-config/nightly.conf
@@ -69,7 +69,7 @@ steps: [{'SetDest':{}},
                               'nightly-x32': {},
                               'nightly-x86-64': {}, 'nightly-x86-64-lsb': {},
                               'nightly-x86': {}, 'nightly-x86-lsb': {},
-                              'poky-tiny': {}}}},
+                              'poky-tiny': {}, 'nightly-qa-extras': {}}}},
         {'PrepPkgIndex' : {}},
         {'BuildImages': {'images': 'package-index'}},
         {'BuildImages': {'images': 'adt-installer'}},
diff --git a/buildset-config/yoctoAB.conf b/buildset-config/yoctoAB.conf
index 5f29400..a478ec7 100644
--- a/buildset-config/yoctoAB.conf
+++ b/buildset-config/yoctoAB.conf
@@ -4,4 +4,5 @@ order: ['nightly', 'eclipse-plugin', 'nightly-arm', 'nightly-arm-lsb', 'nightly-
         'nightly-x86-64', 'nightly-x86-64-lsb', 'nightly-x86',
         'nightly-x86-lsb', 'nightly-x32', 'nightly-multilib',
         'nightly-world', 'nightly-non-gpl3', 'nightly-oecore',
-        'nightly-intel-gpl', 'poky-tiny', 'build-appliance']
+        'nightly-intel-gpl', 'poky-tiny', 'build-appliance',
+        'nightly-qa-extras']
-- 
1.8.1.4


