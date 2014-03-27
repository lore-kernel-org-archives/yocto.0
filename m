Return-Path: <stefanx.stanacar@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF21E00A71
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 09:31:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Mar 2014 09:31:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,743,1389772800"; d="scan'208";a="508336443"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 27 Mar 2014 09:29:33 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.160])
	by linux.intel.com (Postfix) with ESMTP id 4AFA16A4007;
	Thu, 27 Mar 2014 09:29:18 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Mar 2014 18:29:47 +0200
Message-Id: <1395937787-9207-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.5.3
Subject: [yocto-autobuilder][PATCH] nightly-deb/ipk: don't use the default tests
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
X-List-Received-Date: Thu, 27 Mar 2014 16:31:20 -0000

We can't use RunSanityTests as it is because the default
test suites (which are defined in testimage.bbclass) include rpm and smart.
Anything included in TEST_SUITES is a mandatory test and will be a fail in this
buildset as obviously this images don't have rpm/smart.
Also we can't use 'ping auto' either (which will run all the tests suitable for the image),
because for core-image-sato-sdk that will run cvs/iptables/sudoku build tests which
take a long time (and we have another buildset nightly-qa-targetbuild for that) so we need
to hardcode the list of tests - the same as the defaults for a rpm core-image-sato-sdk,
minus rpm and smart (and without smart this RunSanity will take half of the time)

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config.master/nightly-deb.conf | 6 +++++-
 buildset-config.master/nightly-ipk.conf | 6 +++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/buildset-config.master/nightly-deb.conf b/buildset-config.master/nightly-deb.conf
index 648401b..7ed5eed 100644
--- a/buildset-config.master/nightly-deb.conf
+++ b/buildset-config.master/nightly-deb.conf
@@ -15,5 +15,9 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'ipk'}},
+        {'RunSanityTests': {'images' 'core-image-sato', 'suites' : 'ping ssh auto'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'ipk'}},
+        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}}]
diff --git a/buildset-config.master/nightly-ipk.conf b/buildset-config.master/nightly-ipk.conf
index bf7c613..c96d098 100644
--- a/buildset-config.master/nightly-ipk.conf
+++ b/buildset-config.master/nightly-ipk.conf
@@ -15,5 +15,9 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'SyncPersistDB' : {'distro' : 'poky'}},
         {'BuildImages': {'images': 'core-image-sato core-image-sato-dev core-image-sato-sdk core-image-minimal core-image-minimal-dev'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato core-image-sato-sdk'}},
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'ipk'}},
+        {'RunSanityTests': {'images' 'core-image-sato', 'suites' : 'ping ssh auto'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'buildhistory' : True, 'packages': 'ipk'}},
+        {'RunSanityTests': {'images' : 'core-image-sato-sdk', 'suites' : 'ping ssh df connman syslog xorg scp vnc date perl ldd gcc kernelmodule dmesg python'}},
         {'SyncPersistDB' : {'commit' : True, 'distro':'poky'}}]
-- 
1.8.5.3


