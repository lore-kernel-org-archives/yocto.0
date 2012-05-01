Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 052C9E0140E
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 15:13:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 May 2012 15:13:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148222249"
Received: from unknown (HELO localhost) ([10.255.12.136])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2012 15:13:29 -0700
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>, Tom Zanussi <tom.zanussi@intel.com>
Date: Tue,  1 May 2012 15:12:50 -0700
Message-Id: <109042442154af56194cfdb833df312254b36852.1335909082.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.7.6
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
Subject: [PATCH 6/7] ia32-base.inc: Use a weak default assignment for kernel provider and version
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
X-List-Received-Date: Tue, 01 May 2012 22:13:30 -0000

Using the default assignment operator (?=) requires the including recipes
to ensure to assign the Linux kernel provider and version prior to including
ia32-base.inc. By use the weak default assignment operator (??=), the assignment
can come after the inclusion, which avoids confusion and can lead to a more
natural recipe structure.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 conf/machine/include/ia32-base.inc |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 874e258..be1c8e0 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -26,8 +26,8 @@ GLIBC_EXTRA_OECONF += "--with-tls"
 #
 # kernel-related variables
 #
-PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_PROVIDER_virtual/kernel ??= "linux-yocto"
+PREFERRED_VERSION_linux-yocto ??= "3.0%"
 
 #
 # XSERVER subcomponents, used to build the XSERVER variable
-- 
1.7.7.6


