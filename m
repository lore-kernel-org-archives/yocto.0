Received: from mga04.intel.com (mga04.intel.com [])
 by mx.groups.io with SMTP id smtpd.web11.2717.1623206272937044334
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Jun 2021 19:37:55 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: intel.com, ip: <nil>, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: 8wWnVNHfcaVLLNUcf2BN2PSxN6rxVP0X5PRK5yyujseO/wNU7Hn62yoIq1+YTOW3yy+QhmfoCZ
 lRG18X/VTKNg==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="203135697"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="203135697"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:55 -0700
IronPort-SDR: iG75SO6StAaJN15DQbpWyIRzIJpowHE/oC5CVKKDqdMN0XAo76/WxAYFpL1yMAFBS75uK/lLS/
 feP7yuC9AHJA==
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="scan'208";a="476819652"
Received: from saininav-desk1.png.intel.com ([172.30.199.23])
  by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 19:37:54 -0700
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-zephyr][PATCH 04/10] zephyr-websocket-client: Add recipe for websocket client
Date: Wed,  9 Jun 2021 10:50:38 +0800
Message-Id: <20210609025044.8543-4-naveen.kumar.saini@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210609025044.8543-1-naveen.kumar.saini@intel.com>
References: <20210609025044.8543-1-naveen.kumar.saini@intel.com>

From: Amit Kucheria <amit.kucheria.ext@huawei.com>

This sample application provides an example of using the the MBEDTLS library.

Signed-off-by: Amit Kucheria <amit.kucheria.ext@huawei.com>
Signed-off-by: Naveen Saini <naveen.kumar.saini@intel.com>
---
 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
new file mode 100644
index 0000000..428f75e
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-websocket-client.bb
@@ -0,0 +1,5 @@
+include zephyr-sample.inc
+
+ZEPHYR_SRC_DIR = "${S}/samples/net/sockets/websocket_client"
+
+ZEPHYR_MODULES_append = "\;${S}/modules/lib/mbedtls"
-- 
2.17.1

