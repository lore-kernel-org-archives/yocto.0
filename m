Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 029FCE004D2
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 08:41:23 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Mar 2012 08:41:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="134350046"
Received: from unknown (HELO localhost) ([10.255.15.96])
	by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2012 08:41:23 -0800
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Tue,  6 Mar 2012 10:41:21 -0600
Message-Id: <d9132cc66316be45f44beeea6eba734bb3ab337d.1331051850.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <cover.1331051850.git.tom.zanussi@intel.com>
References: <cover.1331051850.git.tom.zanussi@intel.com>
Subject: [PATCH 1/1] ia32-base: remove libc-headers PREFERRED_PROVIDER
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
X-List-Received-Date: Tue, 06 Mar 2012 16:41:24 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Let the distro do this.

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 conf/machine/include/ia32-base.inc |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/conf/machine/include/ia32-base.inc b/conf/machine/include/ia32-base.inc
index 8556d6e..1fb09b1 100644
--- a/conf/machine/include/ia32-base.inc
+++ b/conf/machine/include/ia32-base.inc
@@ -28,7 +28,6 @@ GLIBC_EXTRA_OECONF += "--with-tls"
 #
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
-PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
 
 #
 # XSERVER subcomponents, used to build the XSERVER variable
-- 
1.7.1


