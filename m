Return-Path: <andrei.adrianx.dinu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3466E00717
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 03:13:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Oct 2012 03:13:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,533,1344236400"; d="scan'208";a="219867481"
Received: from adinu-vostro-460 (HELO localhost.localdomain) ([10.237.105.39])
	by orsmga002.jf.intel.com with ESMTP; 04 Oct 2012 03:13:07 -0700
From: Andrei Dinu <andrei.adrianx.dinu@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  4 Oct 2012 13:13:51 +0300
Message-Id: <1349345631-746-1-git-send-email-andrei.adrianx.dinu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] gypsy: removed dependencies in meta-yocto
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
X-List-Received-Date: Thu, 04 Oct 2012 10:13:08 -0000

removed all the depenencies of gypsy in meta-yocto.

Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc     |    1 -
 .../distro/include/poky-floating-revisions.inc     |    1 -
 2 files changed, 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 38b6974..288557b 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -225,7 +225,6 @@ RECIPE_MAINTAINER_pn-guile = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
 RECIPE_MAINTAINER_pn-gupnp = "Radu Moisan <radu.moisan@intel.com>"
 RECIPE_MAINTAINER_pn-gupnp-av = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gupnp-tools = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-gypsy = "Cristian Iorga <cristian.iorga@intel.com>"
 RECIPE_MAINTAINER_pn-gzip = "Scott Garman <scott.a.garman@intel.com>"
 RECIPE_MAINTAINER_pn-hal = "Saul Wold <sgw@linux.intel.com>"
 RECIPE_MAINTAINER_pn-hal-info = "Saul Wold <sgw@linux.intel.com>"
diff --git a/meta-yocto/conf/distro/include/poky-floating-revisions.inc b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
index af8ef11..6f6ee90 100644
--- a/meta-yocto/conf/distro/include/poky-floating-revisions.inc
+++ b/meta-yocto/conf/distro/include/poky-floating-revisions.inc
@@ -45,7 +45,6 @@ SRCREV_pn-xvideo-tests ?= "${AUTOREV}"
 SRCREV_pn-clutter ?= "${AUTOREV}"
 SRCREV_pn-clutter-gst ?= "${AUTOREV}"
 SRCREV_pn-gaku ?= "${AUTOREV}"
-SRCREV_pn-gypsy ?= "${AUTOREV}"
 #SRCREV_pn-webkit-gtk ?= "${AUTOREV}"
 SRCREV_pn-aaina ?= "${AUTOREV}"
 SRCREV_pn-clutter-cairo ?= "${AUTOREV}"
-- 
1.7.9.5


