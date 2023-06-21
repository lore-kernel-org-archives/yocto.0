Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A586EB64D7
	for <webhook@archiver.kernel.org>; Wed, 21 Jun 2023 17:35:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.4342.1687367660328677457
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Jun 2023 10:14:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nKvBK692;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=5536a98e9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35L5dhtp008888;
	Wed, 21 Jun 2023 10:14:19 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=IxDZbaV2nqEByswffz6DpGWWrTOi3IVNPYDc8u6L8s8=;
 b=nKvBK692Xh2VB6J4WHhBfiEcsaxZEd5s25l+sERo0esgV4mUjmmNQuBu6l8ubH10IWs+
 jn/LZGs7IPhkpIACVrZ/DpgJdyMk9jf2iIji0OdVDgoQ7mkoOP541d4evJhcZTBsqfTf
 qDAj/f0L1YLkEeySNombJNz79ZYFTQvYVCOo1oJQQa/BdHMyp4kOBu3sJfen9MGUaCBr
 VJl6RR/6pUQufnGEOYYKx94yh4+DatdAIY0vDFxADUqcVUPhWn3LTC2jU/RqPVeFspHI
 VHdew3stBHz0Psuqato6lGPJIHK+hHLOoXidUtHBSHGr+2K+Lk2QtgnZSfGj4Taz30kI IA== 
Received: from ala-exchng02.corp.ad.wrs.com (ala-exchng02.wrs.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r9842ur6r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 21 Jun 2023 10:14:19 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 21 Jun 2023 10:14:18 -0700
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 21 Jun 2023 10:14:18 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: [meta-security][PATCH 1/7] dm-verity: add descriptive strings for "wic list images"
Date: Wed, 21 Jun 2023 10:13:29 -0700
Message-ID: <20230621171335.1354905-2-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
References: <20230621171335.1354905-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: uTUWSoh7yij0WT3XZHcdWUchLXloLo9A
X-Proofpoint-GUID: uTUWSoh7yij0WT3XZHcdWUchLXloLo9A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-21_10,2023-06-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0 phishscore=0
 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0 mlxlogscore=988
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306210145
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Jun 2023 17:35:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60378

Without these one line descriptors and their associated marker prefix,
the output from "wic list images" only shows they are available as a
choice but w/o any description

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 wic/beaglebone-yocto-verity.wks.in   | 1 +
 wic/systemd-bootdisk-dmverity.wks.in | 1 +
 2 files changed, 2 insertions(+)

diff --git a/wic/beaglebone-yocto-verity.wks.in b/wic/beaglebone-yocto-verity.wks.in
index a1d7738..d2923de 100644
--- a/wic/beaglebone-yocto-verity.wks.in
+++ b/wic/beaglebone-yocto-verity.wks.in
@@ -3,6 +3,7 @@
 # Copyright (C) 2020 BayLibre SAS
 # Author: Bartosz Golaszewski <bgolaszewski@baylibre.com>
 #
+# short-description: Create a u-SD image for beaglebone-black with dm-verity
 # A dm-verity variant of the regular wks for beaglebone black. We need to fetch
 # the partition images from the DEPLOY_DIR_IMAGE as the rootfs source plugin will
 # not recreate the exact block device corresponding with the hash tree. We must
diff --git a/wic/systemd-bootdisk-dmverity.wks.in b/wic/systemd-bootdisk-dmverity.wks.in
index a275a48..8466368 100644
--- a/wic/systemd-bootdisk-dmverity.wks.in
+++ b/wic/systemd-bootdisk-dmverity.wks.in
@@ -1,3 +1,4 @@
+# short-description:  Create an EFI disk image with systemd-boot and dm-verity
 # A dm-verity variant of the regular wks for IA machines. We need to fetch
 # the partition images from the IMGDEPLOYDIR as the rootfs source plugin will
 # not recreate the exact block device corresponding with the hash tree. We must
-- 
2.39.0


