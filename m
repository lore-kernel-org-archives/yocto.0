Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06AB7E014D7
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 13:23:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Apr 2013 13:23:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,394,1363158000"; d="scan'208";a="279823645"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 02 Apr 2013 13:23:30 -0700
Received: from localhost.localdomain (unknown [10.237.112.141])
	by linux.intel.com (Postfix) with ESMTP id B28522C8001;
	Tue,  2 Apr 2013 13:23:22 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  2 Apr 2013 23:23:23 +0300
Message-Id: <1364934203-14031-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [yocto-autobuilder][PATCH] nightly-multilib.conf: add more builds to multilib target
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
X-List-Received-Date: Tue, 02 Apr 2013 20:23:31 -0000

Add a build for core-image-sato (with IMAGE_INSTALL_append = " lib32-connman-gnome").
A qemuimage test in poky (and a RunSanityTests step here) needs to be added at some point,
so that the test is complete.
Also add builds for lib64-core-image-{sato,sato-sdk,lsb-sdk}.
lib64-core-image-sato it's a safe build, but sato-sdk usually fails.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-multilib.conf | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/buildset-config/nightly-multilib.conf b/buildset-config/nightly-multilib.conf
index 095205d..f9ae8b7 100644
--- a/buildset-config/nightly-multilib.conf
+++ b/buildset-config/nightly-multilib.conf
@@ -15,6 +15,10 @@ steps: [{'SetDest':{}},
         {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': True, 'distro': 'poky'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'lib32-core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'multilib': 'lib32', 'distro': 'poky', 'atextappend' : '\nIMAGE_INSTALL_append = " lib32-connman-gnome"\n'}},
+        {'BuildImages': {'images': 'core-image-sato'}},
+        {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
+        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}},
         {'PublishLayerTarballs':{}},
         {'PublishArtifacts': {'artifacts': ['qemux86-64']}}]
 
-- 
1.8.1.4


