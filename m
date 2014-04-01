Return-Path: <stefanx.stanacar@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DAE1E00C59
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 03:46:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Apr 2014 03:46:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,771,1389772800"; d="scan'208";a="512261306"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 01 Apr 2014 03:46:44 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.160])
	by linux.intel.com (Postfix) with ESMTP id 4886C6A4083;
	Tue,  1 Apr 2014 03:46:29 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  1 Apr 2014 13:47:03 +0300
Message-Id: <1396349224-14532-2-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.9.0
Subject: [yocto-autobuilder][PATCH] nightly-ipk/deb: drop some test suites for sato-sdk
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
X-List-Received-Date: Tue, 01 Apr 2014 10:46:48 -0000

We don't have these on dora and I'd prefer not to check
for each valid test in RunSanity.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config.master/nightly-deb.conf | 2 +-
 buildset-config.master/nightly-ipk.conf | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/buildset-config.master/nightly-deb.conf b/buildset-config.master/nightly-deb.conf
index d58772d..c4cc872 100644
--- a/buildset-config.master/nightly-deb.conf
+++ b/buildset-config.master/nightly-deb.conf
@@ -16,4 +16,4 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images': 'core-image-minimal'}},
         {'RunSanityTests': {'images' : 'core-image-sato', 'suites' : 'ping ssh auto'}},
-        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}}]
+        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc dmesg'}}]
diff --git a/buildset-config.master/nightly-ipk.conf b/buildset-config.master/nightly-ipk.conf
index 974596f..c6455bc 100644
--- a/buildset-config.master/nightly-ipk.conf
+++ b/buildset-config.master/nightly-ipk.conf
@@ -16,4 +16,4 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
         {'RunSanityTests': {'images' : 'core-image-minimal'}},
         {'RunSanityTests': {'images' : 'core-image-sato', 'suites' : 'ping ssh auto'}},
-        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}}]
+        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc dmesg'}}]
-- 
1.9.0


