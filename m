Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C3C6E006E0
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2011 22:41:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Sep 2011 22:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="48195086"
Received: from unknown (HELO localhost) ([10.255.14.200])
	by orsmga001.jf.intel.com with ESMTP; 13 Sep 2011 22:41:30 -0700
From: tom.zanussi@intel.com
To: yocto@yoctoproject.org
Date: Wed, 14 Sep 2011 00:41:09 -0500
Message-Id: <3189a1333c14f9c843e1518a445548d8f0cf03c1.1315977970.git.tom.zanussi@intel.com>
X-Mailer: git-send-email 1.7.0.4
In-Reply-To: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
References: <c081ed51d8ba76c293bcd2afdad8cbfef556cf49.1315977970.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1315977969.git.tom.zanussi@intel.com>
References: <cover.1315977969.git.tom.zanussi@intel.com>
Subject: [PATCH 5/5] meta-jasperforest: prefer grub 1.99
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
X-List-Received-Date: Thu, 15 Sep 2011 03:50:27 -0000

From: Tom Zanussi <tom.zanussi@intel.com>

Switch from grub 1.98 to 1.99

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-jasperforest/conf/machine/jasperforest.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-jasperforest/conf/machine/jasperforest.conf b/meta-jasperforest/conf/machine/jasperforest.conf
index 3013fe4..20eab77 100644
--- a/meta-jasperforest/conf/machine/jasperforest.conf
+++ b/meta-jasperforest/conf/machine/jasperforest.conf
@@ -36,5 +36,5 @@ GLIBC_ADDONS = "nptl"
 GLIBC_EXTRA_OECONF = "--with-tls"
 
 MACHINE_ESSENTIAL_EXTRA_RDEPENDS = "grub"
-PREFERRED_VERSION_grub ?= "1.98"
+PREFERRED_VERSION_grub ?= "1.99"
 
-- 
1.7.0.4


