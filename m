Return-Path: <bogdan.a.marinescu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70417E0034A
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 05:00:16 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2012 05:00:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="128799578"
Received: from bogdanm (HELO localhost.localdomain) ([10.237.105.62])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Jul 2012 05:00:14 -0700
From: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jul 2012 15:02:26 +0300
Message-Id: <1343736146-17941-1-git-send-email-bogdan.a.marinescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Changed ownership of linux-libc-headers[-yocto]
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
X-List-Received-Date: Tue, 31 Jul 2012 12:00:16 -0000

Changing the owner to Bruce Ashfield, as agreed.

Signed-off-by: Bogdan Marinescu <bogdan.a.marinescu@intel.com>
---
 meta-yocto/conf/distro/include/maintainers.inc |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/conf/distro/include/maintainers.inc
index 0f34d64..07fadb6 100644
--- a/meta-yocto/conf/distro/include/maintainers.inc
+++ b/meta-yocto/conf/distro/include/maintainers.inc
@@ -407,8 +407,8 @@ RECIPE_MAINTAINER_pn-libxxf86vm = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-libzypp = "Mark Hatle <mark.hatle@windriver.com>"
 RECIPE_MAINTAINER_pn-lighttpd = "Valentin Popa <valentin.popa@intel.com>"
 RECIPE_MAINTAINER_pn-linux-firmware = "Cristian Iorga <cristian.iorga@intel.com>"
-RECIPE_MAINTAINER_pn-linux-libc-headers = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
-RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bogdan Marinescu <bogdan.a.marinescu@intel.com>"
+RECIPE_MAINTAINER_pn-linux-libc-headers = "Bruce Ashfield <bruce.ashfield@windriver.com>"
+RECIPE_MAINTAINER_pn-linux-libc-headers-yocto = "Bruce Ashfield <bruce.ashfield@windriver.com>"
 RECIPE_MAINTAINER_pn-linux-yocto = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linux-yocto-rt = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_MAINTAINER_pn-linuxdoc-tools = "Scott Garman <scott.a.garman@intel.com>"
-- 
1.7.9.5


