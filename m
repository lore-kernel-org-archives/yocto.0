Return-Path: <stefanx.stanacar@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BB0E0149A
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:01:43 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 May 2013 09:01:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="334464439"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga002.fm.intel.com with ESMTP; 08 May 2013 09:01:42 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id 127786A4083;
	Wed,  8 May 2013 09:01:32 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Wed,  8 May 2013 19:01:47 +0300
Message-Id: <9e364d333f7c5f3848c5bfafa5ed91c5e4c99fe2.1368028857.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 2/4] nightly-multilib: remove Publish steps
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
X-List-Received-Date: Wed, 08 May 2013 16:01:43 -0000

Save some space by removing Publish steps, I think
nobody downloads the multilib images from AB.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-multilib.conf | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/buildset-config/nightly-multilib.conf b/buildset-config/nightly-multilib.conf
index 79d0011..bdb0193 100644
--- a/buildset-config/nightly-multilib.conf
+++ b/buildset-config/nightly-multilib.conf
@@ -26,6 +26,4 @@ steps: [{'SetDest':{}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato'}},
         {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'i686', 'multilib': 'lib64', 'distro': 'poky'}},
-        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}},
-        {'PublishLayerTarballs':{}},
-        {'PublishArtifacts': {'artifacts': ['qemux86-64']}}]
+        {'BuildImages': {'images': 'lib64-core-image-sato lib64-core-image-sato-sdk lib64-core-image-lsb-sdk'}}]
-- 
1.8.1.4


