Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB6B8E01331
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 20:25:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2011 20:25:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,489,1312182000"; d="scan'208";a="70403046"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 04 Oct 2011 20:25:53 -0700
From: tom.zanussi@intel.com
To: elizabeth.flanagan@intel.com, scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 22:26:30 -0500
Message-Id: <2fa3fce338dc926974d2343ecc464df7616020c8.1317784655.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0b5bf1f86c99488e715cd44b8bae306aee20dd3d.1317784655.git.tom.zanussi@intel.com>
References: <0b5bf1f86c99488e715cd44b8bae306aee20dd3d.1317784655.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317784655.git.tom.zanussi@intel.com>
References: <cover.1317784655.git.tom.zanussi@intel.com>
Subject: [PATCH 5/7] meta-jasperforest: update README.sources
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Oct 2011 03:25:54 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update README.sources to reflect final Yocto tarball location for
edison.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/README.sources |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-jasperforest/README.sources b/meta-jasperforest/README.sources
index 5c8b5c7..8e006fb 100644
--- a/meta-jasperforest/README.sources
+++ b/meta-jasperforest/README.sources
@@ -1,13 +1,13 @@
 The sources for the packages comprising the images shipped with this
 BSP can be found at the following location:
 
-http://autobuilder.yoctoproject.org/sources/
+http://downloads.yoctoproject.org/mirror/sources/
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can be found at the
 following location:
 
-http://autobuilder.yoctoproject.org/downloads/yocto-1.0/poky-bernard-5.0.tar.bz2
+http://www.yoctoproject.org/downloads/yocto-1.1/poky-edison-6.0.tar.bz2
 
 The metadata used to generate the images shipped with this BSP, in
 addition to the code contained in this BSP, can also be found at the
-- 
1.7.0.4


