Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53F55E013BA
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 10:52:44 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Jul 2013 10:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1037,1363158000"; d="scan'208";a="266533123"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Jul 2013 10:52:43 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.73])
	by linux.intel.com (Postfix) with ESMTP id CA0F56A4092;
	Wed, 10 Jul 2013 10:52:41 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Wed, 10 Jul 2013 20:32:36 +0300
Message-Id: <364ace100dbe76f7d8c4e27428b19ad41fb39507.1373474163.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1373474163.git.stefanx.stanacar@intel.com>
References: <cover.1373474163.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 2/3] nightly-multilib, qa-systemd.conf: enable specific tests with the new class
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
X-List-Received-Date: Wed, 10 Jul 2013 17:52:46 -0000

Enable specific tests for some builds (like systemd and multilib which aren't
by default enabled in the testimage class)
Also because one of the multilib builds is an ipk build and the default suite
contains rpm and smart we need to overwrite the suite.

[YOCTO #4838]

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-multilib.conf   | 8 ++++----
 buildset-config/nightly-qa-systemd.conf | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/buildset-config/nightly-multilib.conf b/buildset-config/nightly-multilib.conf
index bdb0193..cc01797 100644
--- a/buildset-config/nightly-multilib.conf
+++ b/buildset-config/nightly-multilib.conf
@@ -15,15 +15,15 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'lib32-core-image-minimal'}},
-        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot'}},
+        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot', 'suites' : 'ping'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky', 'packages' : 'ipk'}},
         {'BuildImages': {'images': 'lib32-core-image-minimal'}},
-        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot'}},
+        {'RunSanityTests': {'images': 'lib32-core-image-minimal', 'scene' : 'sanity:boot', 'suites' : 'ping'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': 'lib32', 'distro': 'poky', 'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'multilib'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': 'lib32', 'distro': 'poky', 'packages' : 'ipk', 'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suites' : 'ping ssh connman xorg multilib dmesg auto'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
         {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}}]
diff --git a/buildset-config/nightly-qa-systemd.conf b/buildset-config/nightly-qa-systemd.conf
index e35e6b1..0467040 100644
--- a/buildset-config/nightly-qa-systemd.conf
+++ b/buildset-config/nightly-qa-systemd.conf
@@ -11,10 +11,10 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'systemd sysvinit'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'systemd'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'sysvinit systemd'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'initmgr' : 'systemd'}},
         {'BuildImages': {'images': 'core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-sato'}}]
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'systemd'}}]
-- 
1.8.1.4


