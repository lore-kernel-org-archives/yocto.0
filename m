Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.5984.1621580430570202038
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 May 2021 00:00:30 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: 198.145.29.25, mailfrom: naveen.kumar.saini@intel.com)
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by mail.yoctoproject.org (Postfix) with ESMTPS id B814238C0602
	for <yocto@yoctoproject.org>; Fri, 21 May 2021 07:00:29 +0000 (UTC)
IronPort-SDR: aiWnB3UPLyvYHdmqHRdjxn5WRcN3dKfCzTPkTDkGNuTliDa9M4/92KL5tt+LxnjLtSUwh3/X4J
 g8DT+TkztmMQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="265331217"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="265331217"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2021 00:00:28 -0700
IronPort-SDR: E4NSF/esBZrWBnLo8zIeMmcUt7CdvMNS2u5ZT4tNk+FLlw/3VCYWcZOKhPf5tSa4MMhIp1HZdp
 bfhB7J58xV4A==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="474392654"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 May 2021 00:00:27 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@yoctoproject.org
Subject: [meta-zephyr][hardknott][PATCH] zephyr-kernel-src: switch from master branch to main
Date: Fri, 21 May 2021 15:13:19 +0800
Message-Id: <20210521071319.22699-1-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1

* branch was renamed in upstream repo

It fixes do_fetch failure

Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
index 8c987bb..5ee40d4 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-src.inc
@@ -13,7 +13,7 @@ inherit cmake
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
 
 SRC_URI = "\
-    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=master;name=default \
+    git://github.com/zephyrproject-rtos/zephyr.git;protocol=https;branch=main;name=default \
     git://github.com/zephyrproject-rtos/cmsis.git;protocol=https;destsuffix=git/modules/cmsis;name=cmsis \
     git://github.com/zephyrproject-rtos/hal_nordic.git;protocol=https;destsuffix=git/modules/hal/nordic;name=nordic \
     git://github.com/zephyrproject-rtos/hal_stm32.git;protocol=https;destsuffix=git/modules/hal/stm32;name=stm32 \
-- 
2.17.1

