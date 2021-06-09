Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:37:59 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: LIfPwhwTchwZ1J8BxhvvGvb/AZpYrannBogXdlHNLOMYRZpqUwbY3YnDI0jOrw5qekxYl1cZ2f
 C7DjnEmIfZDA==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135717"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135717"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:59 -0700
IronPort-SDR: PuZPpH0GXFLDN3ZAZNb10S5a3mslykA7vfSPl/3xtQaczOa5Y4DkHqr4alBVMTYRL1mAeLRV2K
 1w1xazfegT4Q==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819660"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:58 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 08/10] zephyr-kernel-src-2.6.0.inc: add srcrev for mbedtls module
Date: Wed,  9 Jun 2021 10:50:42 +0800
Message-Id: <20210609025044.8543-8-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
index 7ef1697..8475b5b 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src-2.6.0.inc
@@ -6,6 +6,7 @@ SRCREV_stm32 = "f8ff8d25aa0a9e65948040c7b47ec67f3fa300df"
 SRCREV_open-amp = "6010f0523cbc75f551d9256cf782f173177acdef"
 SRCREV_libmetal = "39d049d4ae68e6f6d595fce7de1dcfc1024fb4eb"
 SRCREV_tinycrypt = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0"
+SRCREV_mbedtls = "5765cb7f75a9973ae9232d438e361a9d7bbc49e7"
 
 PV = "2.6.0+git${SRCPV}"
 
-- 
2.17.1

