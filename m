Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF988E01334
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 20:26:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Oct 2011 20:26:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="59111624"
Received: from unknown (HELO localhost) ([10.255.15.15])
	by orsmga001.jf.intel.com with ESMTP; 04 Oct 2011 20:25:59 -0700
From: tom.zanussi@intel.com
To: elizabeth.flanagan@intel.com, scott.m.rifenbark@intel.com,
	yocto@yoctoproject.org
Date: Tue,  4 Oct 2011 22:26:32 -0500
Message-Id: <b2a88d588518d0b841b68af53294418633d1f04d.1317784655.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <0b5bf1f86c99488e715cd44b8bae306aee20dd3d.1317784655.git.tom.zanussi@intel.com>
References: <0b5bf1f86c99488e715cd44b8bae306aee20dd3d.1317784655.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1317784655.git.tom.zanussi@intel.com>
References: <cover.1317784655.git.tom.zanussi@intel.com>
Subject: [PATCH 7/7] meta-sugarbay: update README.sources
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
X-List-Received-Date: Wed, 05 Oct 2011 03:26:01 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Update README.sources to reflect final Yocto tarball location for
edison.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-sugarbay/README.sources |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-sugarbay/README.sources b/meta-sugarbay/README.sources
index 5c8b5c7..8e006fb 100644
--- a/meta-sugarbay/README.sources
+++ b/meta-sugarbay/README.sources
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


