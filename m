Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B9464C80039
	for <yocto@yoctoproject.org>; Tue, 21 Dec 2010 11:24:53 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,208,1291622400"; d="scan'208";a="585876438"
Received: from eflanlinux.jf.intel.com (HELO localhost) ([10.7.201.149])
	by orsmga002.jf.intel.com with ESMTP; 21 Dec 2010 09:24:52 -0800
Message-Id: <1c44231eb7e81b4b9fcb2706116bad5193ab1523.1292951846.git.elizabeth.flanagan@intel.com>
In-Reply-To: <cover.1292951846.git.elizabeth.flanagan@intel.com>
References: <cover.1292951846.git.elizabeth.flanagan@intel.com>
From: Beth Flanagan <elizabeth.flanagan@intel.com>
Date: Tue, 21 Dec 2010 09:04:11 -0800
To: yocto@yoctoproject.org
Subject: [PATCH 3/3] Change to poky-autobuild to source correct file:
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
X-List-Received-Date: Tue, 21 Dec 2010 17:24:53 -0000

A change to poky-init-build-env in poky master broke the autobuilder.
Switching this to source poky-init-build-env instead of
poky-env-internal.

Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
---
 scripts/poky-autobuild |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/scripts/poky-autobuild b/scripts/poky-autobuild
index 5ea61bb..882df97 100755
--- a/scripts/poky-autobuild
+++ b/scripts/poky-autobuild
@@ -32,7 +32,7 @@ cd $CURRDIR
 echo "Changed to $CURRDIR"
 
 BDIR="build"
-. ./scripts/poky-env-internal
+. ./scripts/poky-init-build-env
 POSTPROCESS=`which poky-autobuild-postprocess`
 
 if [ "xcomplete" = "x$1" ]; then
-- 
1.7.1


