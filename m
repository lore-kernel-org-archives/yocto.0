Return-Path: <arnaud.pouliquen@foss.st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E52E0C4332F
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 09:41:47 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
 [185.132.182.106])
 by mx.groups.io with SMTP id smtpd.web10.6709.1632908505147357003
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 02:41:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foss.st.com header.s=selector1 header.b=xMOx5X6Z;
 spf=pass (domain: foss.st.com, ip: 185.132.182.106,
 mailfrom: prvs=4906ebad36=arnaud.pouliquen@foss.st.com)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 18T658Ym010109;
	Wed, 29 Sep 2021 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=BfAWR1uAr2fg++1m5ahfzl12CSYtAPHIS4Yn41opiNg=;
 b=xMOx5X6ZwbzyGYg4L2rrb9Mn98UYZJOXyXFagLBxv5+npcYsoVuEF5ZMvAqxFqM4iYds
 enDVDbsVQjX8lV90mp+F/ybXvoO4EYwNvd1A6lSPoAGZu+NcVNI6S0oOEm+G3zWFVQXG
 vPbWe0UKkSRTjWcW+ns4pnDJyrEs8Hd+1plbZy4NeESpNPgAqVUgvVp+hr93oEQHucTD
 AtSvjPDTPfrbm11ozjfzX9o3ITiJ69+T3vLnIFO5154LR49tTImv6w5V++F/MgZIA7OV
 z5cME1Ups/3YtrB3cW/3/fyMZCr25LCEmLLTqLdKKMXNH8XKnSo27r+znvJjW3jJmkqi Ww==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 3bcjjm1ay7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Sep 2021 11:41:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DD4E9100038;
	Wed, 29 Sep 2021 11:41:40 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D67DB21FEB9;
	Wed, 29 Sep 2021 11:41:40 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 29 Sep 2021 11:41:40
 +0200
From: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
To: <yocto@lists.yoctoproject.org>
CC: Kumar Gala <kumar.gala@linaro.org>,
        Kevin Townsend
	<kevin.townsend@linaro.org>
Subject: [meta-zephyr 2/2] zephyr-kernel: add openamp-rsc-table sample
Date: Wed, 29 Sep 2021 11:41:29 +0200
Message-ID: <20210929094129.13951-3-arnaud.pouliquen@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
References: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG2NODE1.st.com (10.75.127.4) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-29_03,2021-09-28_01,2020-04-07_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 09:41:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54907

The recipe to build rpmsg sample demonstrating messaging between
main core dunning Linux and and the coprocessor running Zephyr.
Useful to demonstrate inter-processing communication.

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
---
 .../zephyr-kernel/zephyr-openamp-rsc-table.bb          | 10 ++++++++++
 1 file changed, 10 insertions(+)
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb

diff --git a/recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb b/recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb
new file mode 100644
index 000000000000..3eec58adb17b
--- /dev/null
+++ b/recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb
@@ -0,0 +1,10 @@
+include zephyr-sample.inc
+
+
+ZEPHYR_MAKE_OUTPUT = "zephyr_openamp_rsc_table.elf"
+ZEPHYR_MAKE_BIN_OUTPUT = "zephyr_openamp_rsc_table.bin"
+ZEPHYR_MAKE_EFI_OUTPUT = "zephyr_openamp_rsc_table.efi"
+
+ZEPHYR_SRC_DIR = "${S}/samples/subsys/ipc/openamp_rsc_table"
+
+COMPATIBLE_MACHINE = "(stm32mp157c-dk2)"
-- 
2.17.1


