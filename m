Return-Path: <stefanx.stanacar@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EBE8E003FA
	for <yocto@yoctoproject.org>; Fri, 30 Aug 2013 08:20:06 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 30 Aug 2013 08:20:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,991,1367996400"; d="scan'208";a="288945259"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by AZSMGA002.ch.intel.com with ESMTP; 30 Aug 2013 08:20:05 -0700
Received: from thunderbird.rb.intel.com (thunderbird.rb.intel.com
	[10.237.105.57])
	by linux.intel.com (Postfix) with ESMTP id A3E346A4093;
	Fri, 30 Aug 2013 08:20:02 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Aug 2013 18:19:23 +0300
Message-Id: <1377875963-7282-1-git-send-email-stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
Subject: [PATCH][yocto-autobuilder] nightly-x32.conf: make use of new test
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
X-List-Received-Date: Fri, 30 Aug 2013 15:20:06 -0000

Needs to be added only to sato, no ssh in minimal.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 buildset-config/nightly-x32.conf | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/buildset-config/nightly-x32.conf b/buildset-config/nightly-x32.conf
index f4dcbca..cd43a88 100644
--- a/buildset-config/nightly-x32.conf
+++ b/buildset-config/nightly-x32.conf
@@ -15,4 +15,6 @@ steps: [{'SetDest':{}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'PublishLayerTarballs':{}},
         {'BuildImages': {'images': 'core-image-minimal core-image-sato'}},
-        {'RunSanityTests': {'images': 'core-image-minimal core-image-sato'}}]
+        {'RunSanityTests': {'images': 'core-image-minimal'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'x86_64', 'x32': True, 'distro': 'poky'}},
+        {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'x32lib'}}]
-- 
1.8.1.4


