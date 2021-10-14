Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CBE2C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 08:59:25 +0000 (UTC)
Received: from mail1.wrs.com (mail1.wrs.com [147.11.3.146])
 by mx.groups.io with SMTP id smtpd.web09.6794.1634201964458712261
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 01:59:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=fail (domain: windriver.com, ip: 147.11.3.146, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 19E8xMCn018290
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 14 Oct 2021 01:59:22 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com
 [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 19E8xHwI008853
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 Oct 2021 01:59:17 -0700 (PDT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 14 Oct 2021 01:59:16 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Thu, 14 Oct 2021 01:59:15 -0700
From: <kai.kang@windriver.com>
To: <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [PATCH v2 0/1] sssd: re-package to fix QA issues
Date: Thu, 14 Oct 2021 16:59:10 +0800
Message-ID: <20211014085911.32587-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 08:59:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55068

From: Kai Kang <kai.kang@windriver.com>

v2:
* replace _ with - new sub-package name
* allow empty for new sub-package that it is enabled/disabled by a
  package config

Kai Kang (1):
  sssd: re-package to fix QA issues

 recipes-security/sssd/sssd_2.5.2.bb | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

-- 
2.17.1


