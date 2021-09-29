Return-Path: <arnaud.pouliquen@foss.st.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2198DC433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 09:41:47 +0000 (UTC)
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
 [185.132.182.106])
 by mx.groups.io with SMTP id smtpd.web08.6611.1632908505145126479
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 02:41:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foss.st.com header.s=selector1 header.b=H138AJ3f;
 spf=pass (domain: foss.st.com, ip: 185.132.182.106,
 mailfrom: prvs=4906ebad36=arnaud.pouliquen@foss.st.com)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 18T65E3c020387;
	Wed, 29 Sep 2021 11:41:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=selector1;
 bh=aqrjnyiHxKjBfQpgDX9pj2RkK45wla/lcwQmLN3rU8g=;
 b=H138AJ3fZpSufBQM7LabaBsTQ2xV5XfBIwoxmtVLm73RQUHgSzOncwNdV6dh5UB5yjpI
 iWGW56hxEAsUkTcbquI7HccaQ9sF/S9uLF8ahTstQK96rTCT3/YLTaQdcBep1hYDLCm/
 BIRmTmYxhNRXFT+ziq4gdagHmVoPEO3c2gOt82GGqLAZOra3OBaf1/42MPd0bZmlsKhg
 2tzSRE/jsmPj++ByzV2rowQD+wHplg29nmyOr4pGRBcGY69zFewkpBTCwJ627LK+apMC
 DwPrwGmGtYE+0UUJxPOPQQCq5yfsM8MwEQ0qkBeucp6swqdH7U+ylGW8Vz4hnD4tJLgM mQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 3bcjjmhb7c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Sep 2021 11:41:42 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3A54710002A;
	Wed, 29 Sep 2021 11:41:39 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A891821FEBA;
	Wed, 29 Sep 2021 11:41:39 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 29 Sep 2021 11:41:39
 +0200
From: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
To: <yocto@lists.yoctoproject.org>
CC: Kumar Gala <kumar.gala@linaro.org>,
        Kevin Townsend
	<kevin.townsend@linaro.org>
Subject: [meta-zephyr 0/2] add support of the zephyr-openamp-rsc-table sample
 on STM32MP157
Date: Wed, 29 Sep 2021 11:41:27 +0200
Message-ID: <20210929094129.13951-1-arnaud.pouliquen@foss.st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG2NODE3.st.com (10.75.127.6) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-29_03,2021-09-28_01,2020-04-07_01
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 09:41:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54906

Add capability to genereate the "zephyr-openamp-rsc-table" sample in yocto build.

This example demonstrates inter-processor communication based on a resource table,
with the objective of responding to the Linux kernel rpmsg sample.

This sample is compatible with the stm32mp157c_dk2 board. 
The support of the board is also added in this series.

Arnaud Pouliquen (2):
  conf: machine: add stm32mp157c-dk2 support
  zephyr-kernel: add openamp-rsc-table sample

 conf/machine/stm32mp157c-dk2.conf                      |  8 ++++++++
 .../zephyr-kernel/zephyr-openamp-rsc-table.bb          | 10 ++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 conf/machine/stm32mp157c-dk2.conf
 create mode 100644 recipes-kernel/zephyr-kernel/zephyr-openamp-rsc-table.bb

-- 
2.17.1


