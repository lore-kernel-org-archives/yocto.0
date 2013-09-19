Return-Path: <alexandrux.palalau@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 505F5E015F0
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2013 06:03:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Sep 2013 06:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,936,1371106800"; d="scan'208";a="398106308"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by fmsmga001.fm.intel.com with ESMTP; 19 Sep 2013 06:03:17 -0700
Received: from localhost.localdomain (unknown [10.237.112.121])
	by linux.intel.com (Postfix) with ESMTP id 8368B2C8001;
	Thu, 19 Sep 2013 06:03:14 -0700 (PDT)
From: Alexandru Palalau <alexandrux.palalau@intel.com>
To: yocto@yoctoproject.org,
	elizabeth.flanagan@intel.com
Date: Thu, 19 Sep 2013 16:04:25 +0300
Message-Id: <1379595865-22999-1-git-send-email-alexandrux.palalau@intel.com>
X-Mailer: git-send-email 1.7.11.7
Cc: Alexandru Palalau <alexandrux.palalau@intel.com>
Subject: [yocto-autobuilder][PATCH] buildset-config: small improvement to nightly-qa-logrotate scenario
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
X-List-Received-Date: Thu, 19 Sep 2013 13:03:22 -0000

Replaced DISTRO_EXTRA_RDEPENDS (which applies only for images that
include packagegroup-base) with IMAGE_INSTALL_append in order to add
logrotate package to the image.

Signed-off-by: Alexandru Palalau <alexandrux.palalau@intel.com>
---
 buildset-config/nightly-qa-logrotate.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config/nightly-qa-logrotate.conf b/buildset-config/nightly-qa-logrotate.conf
index c82206e..1a60bd3 100644
--- a/buildset-config/nightly-qa-logrotate.conf
+++ b/buildset-config/nightly-qa-logrotate.conf
@@ -8,7 +8,7 @@ steps: [{'SetDest':{}},
         {'CheckOutLayers': {}},
         {'RunPreamble': {}},
         {'GetDistroVersion' : {'distro': 'poky'}},
-        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nDISTRO_EXTRA_RDEPENDS += "logrotate"\n'}},
+        {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' : 'i686', 'distro': 'poky', 'atextappend' : '\nIMAGE_INSTALL_append = " logrotate"\n'}},
         {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
         {'BuildImages': {'images': 'core-image-sato'}},
         {'RunSanityTests': {'images': 'core-image-sato', 'suitesappend' : 'logrotate'}}]
-- 
1.7.11.7


