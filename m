Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD69DE0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 14:46:20 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Apr 2012 14:46:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="130443896"
Received: from unknown (HELO localhost) ([10.7.199.62])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2012 14:46:10 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Saul Wold <sgw@linux.intel.com>
Date: Mon,  9 Apr 2012 14:45:28 -0700
Message-Id: <92bbc4c4b292b6a706074f525354ead041bcf555.1334007883.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.6.5
In-Reply-To: <cover.1334007883.git.dvhart@linux.intel.com>
References: <cover.1334007883.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1334007883.git.dvhart@linux.intel.com>
References: <cover.1334007883.git.dvhart@linux.intel.com>
Subject: [PATCH 1/1] syslinux: Update distro-tracking fields
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
X-List-Received-Date: Mon, 09 Apr 2012 21:46:21 -0000

Add reason for not updating syslinux this release.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../conf/distro/include/distro_tracking_fields.inc |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/meta/conf/distro/include/distro_tracking_fields.inc b/meta/conf/distro/include/distro_tracking_fields.inc
index caaf1bc..ce640f4 100644
--- a/meta/conf/distro/include/distro_tracking_fields.inc
+++ b/meta/conf/distro/include/distro_tracking_fields.inc
@@ -1518,15 +1518,16 @@ RECIPE_COMMENTS_pn-bash = ""
 
 RECIPE_STATUS_pn-syslinux = "yellow"
 # need mangling on LDFLAGS
-RECIPE_LAST_UPDATE_pn-syslinux = "Nov 16, 2010"
+RECIPE_LAST_UPDATE_pn-syslinux = "Apr 4, 2012"
 RECIPE_MAINTAINER_pn-syslinux = "Darren Hart <dvhart@linux.intel.com>"
 RECIPE_DEPENDENCY_CHECK_pn-syslinux = "not done"
-RECIPE_LATEST_VERSION_pn-syslinux = "3.86"
+RECIPE_LATEST_VERSION_pn-syslinux = "4.03"
 RECIPE_PATCH_pn-syslinux+cross-build = "use poky toolchain instead of host"
 RECIPE_INTEL_SECTION_pn-syslinux = "base utils"
 RECIPE_TIME_BETWEEN_LAST_TWO_RELEASES_pn-syslinux = "2 months"
 RECIPE_LATEST_RELEASE_DATE_pn-syslinux = "Apr 01, 2010"
 RECIPE_COMMENTS_pn-syslinux = ""
+RECIPE_NO_UPDATE_REASON_pn-syslinux-"Waiting for 4.06 for 3.3 kernel headers support"
 
 RECIPE_STATUS_pn-sysvinit = "green"
 RECIPE_LAST_UPDATE_pn-sysvinit = "Jun 18, 2010"
-- 
1.7.6.5


