Return-Path: <arnaud.pouliquen@foss.st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 231BAC433FE
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 09:41:47 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
 [185.132.182.106])
 by mx.groups.io with SMTP id smtpd.web10.6708.1632908505146219358
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 02:41:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foss.st.com header.s=selector1 header.b=hp1JLFga;
 spf=pass (domain: foss.st.com, ip: 185.132.182.106,
 mailfrom: prvs=4906ebad36=arnaud.pouliquen@foss.st.com)
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 18T65B2Z010174;
	Wed, 29 Sep 2021 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=selector1;
 bh=AA5xnvCGF8t8SoLiNEQ1z4nSH118tmNg/E7rgSqbvXA=;
 b=hp1JLFgaNv+zX1Azr4LvbKEpnoYADR+GOzz7bX2dkUoT1gi2MVnQqAeHbN96Q8lwovw1
 qN3oxSYg8kMrwy45Aa7gifx1m721jzcKpS5HxfBPTAkgXNv12UA0NwjLvJ5kaLsQUfv+
 jXqhNaNKKELLUL70VTqeid3Zg0mKqF0s4KspyTaNpm3C7Dt36PIUri73AkFCbwlmDSRE
 XMSknMlPzhGO/YtRxe/9MK4UklmUUtAAtRcWfqZtV1NgFAAmnLz7xSH0Eut+UbmiolwG
 UYNTAA4iZEVy0DQk1LpyD/yxcBfgHTEVPOaphSTwSWhP+cBW6naoPCabsPeKscc51UEx vQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 3bcjjm1ay9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Sep 2021 11:41:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 56771100034;
	Wed, 29 Sep 2021 11:41:40 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4E3D521FEBB;
	Wed, 29 Sep 2021 11:41:40 +0200 (CEST)
Received: from localhost (10.75.127.49) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 29 Sep 2021 11:41:39
 +0200
From: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
To: <yocto@lists.yoctoproject.org>
CC: Kumar Gala <kumar.gala@linaro.org>,
        Kevin Townsend
	<kevin.townsend@linaro.org>
Subject: [meta-zephyr 1/2] conf: machine: add stm32mp157c-dk2 support
Date: Wed, 29 Sep 2021 11:41:28 +0200
Message-ID: <20210929094129.13951-2-arnaud.pouliquen@foss.st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
References: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-29_03,2021-09-28_01,2020-04-07_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 09:41:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54908

The board is based on STMicroelectronics STM32MP157 processor based on
a dual Cortex-A7 core and a Cortex-M4 core.

STM32MP1 family support depends on STM32 HAL and OpenAMP for
inter-core communication.

This change has been verified with zephyr-philosophers
and zephyr-shell sample applications on by loading Zephyr image
to Cortex-M4 core from Linux using remoteproc framework.

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
---
 conf/machine/stm32mp157c-dk2.conf | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 conf/machine/stm32mp157c-dk2.conf

diff --git a/conf/machine/stm32mp157c-dk2.conf b/conf/machine/stm32mp157c-dk2.conf
new file mode 100644
index 000000000000..52c18192b2c3
--- /dev/null
+++ b/conf/machine/stm32mp157c-dk2.conf
@@ -0,0 +1,8 @@
+#@TYPE: Machine
+#@NAME: stm32mp1-openamp
+
+#@DESCRIPTION: Machine configuration for stm32mp157x-DK2 Board.
+
+require conf/machine/include/stm32mp1-cortex-m4.inc
+
+ARCH:stm32mp157c-dk2 = "arm"
-- 
2.17.1


