Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85FD1C678D5
	for <webhook@archiver.kernel.org>; Tue,  7 Mar 2023 12:40:54 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.13159.1678192785473042288
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Mar 2023 04:39:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=IFdqjCXW;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2430cad78e=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 327C9hqD031807;
	Tue, 7 Mar 2023 04:39:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding :
 content-type; s=PPS06212021;
 bh=zJzarwJ/IMp3TLqs9O2pGu/drppoTqd/wcB5LL3Iijw=;
 b=IFdqjCXWX84F4CCgCsYNJCZBP8Xc7T4tqkCmExcp5ghbXoWmcz6aL16nLKEHbz/Q/Niy
 Of3vjuNMY5X9FpawxrmGYRcNzAVRlsZe2vE86Yrm7ua5AanvKOUX91a7uCzQ/jIbVQzM
 hMVbtn/MycfLiAnV1YC+yG5Ad4QpYo9B97veGLSSAK0aykmgof0cWI2shIWfu9VDgzze
 wyEvJZoanbFKGlPxZydLtQ0ncjmrOjDWpYuhNGsv3xszAhligt3isLDCoeAQ5Mscac1g
 rpbatCNTfoetzoaazq+a4NyGgj4JMGk2PUP/qrQyB8TDLL3ePF5Nnt0SwMa8/YFVzCSP Ww== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p4258tuag-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 07 Mar 2023 04:39:44 -0800
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.18; Tue, 7 Mar 2023 04:39:43 -0800
Received: from ala-lpggp3.wrs.com (147.11.105.124) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.17 via Frontend Transport; Tue, 7 Mar 2023 04:39:43 -0800
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>,
        Paul Gortmaker
	<paul.gortmaker@windriver.com>,
        Kevin Hao <kexin.hao@windriver.com>,
        "Niko
 Mauno" <niko.mauno@vaisala.com>
Subject: [meta-security][PATCH] dm-verity: update beaglebone wic to match meta-yocto
Date: Tue, 7 Mar 2023 04:39:20 -0800
Message-ID: <20230307123920.3764769-1-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-Proofpoint-GUID: OzvkJlPos8WmlHaO5V7fPnL5NQloMHW3
X-Proofpoint-ORIG-GUID: OzvkJlPos8WmlHaO5V7fPnL5NQloMHW3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-07_06,2023-03-07_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 impostorscore=0 mlxscore=0 mlxlogscore=923 spamscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 clxscore=1011
 suspectscore=0 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2212070000 definitions=main-2303070114
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Mar 2023 12:40:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59360

This file was forked from the generic (non verity) version in
meta-yocto, but it would seem that due to limited use, an update
in the parent never made it here, even after two years:

[commit 0c679ac53b52e631a7c961872ce58f5cf74b8629 in meta-yocto]

  From: Kevin Hao <kexin.hao@windriver.com>
  Date: Tue, 23 Mar 2021 17:35:29 +0800
  Subject: [PATCH] meta-yocto-bsp: beaglebone: Set a fixed size for boot
   partition in WIC image

  After the dosfstools has been updated to v4.2 by commit b522f24723e1
  ("dosfstools: update 4.1 -> 4.2"), the commit b29eb5be67e9 ("mkfs.fat:
  Align total number of sectors to be multiple of sectors per track") in
  v4.2 has caused a regression in beagebone black board. The reason is
  that the real total sectors of the fat filesystem created by the mkdosfs
  may not be the same size as what we requested due to align with the
  sectors per track, this change seem no side effect to linux kernel,
  but it breaks the beaglebone black boot ROM and make it can't load the
  MLO. In order to fix this issue, we choose to set a fixed size for the
  boot partition to make sure that the total sectors always are aligned
  with the sectors per track.

  [Yocto #14306]

Bring the same change across, so dm-verity doesn't face the same
frustrating silent boot failure with zero console output.

With this change in place, and allowing for read-only rootfs, we see:

device-mapper: verity: sha256 using implementation "sha256-generic"
EXT4-fs (dm-0): mounted filesystem with ordered data mode. Opts: (null). Quota mode: disabled.
INIT: version 3.01 booting

Note that the above is from booting on real hardware on Kirkstone.

Cc: Kevin Hao <kexin.hao@windriver.com>
Cc: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>

diff --git a/wic/beaglebone-yocto-verity.wks.in b/wic/beaglebone-yocto-verity.wks.in
index 658018b..a1d7738 100644
--- a/wic/beaglebone-yocto-verity.wks.in
+++ b/wic/beaglebone-yocto-verity.wks.in
@@ -10,6 +10,6 @@
 #
 # This .wks only works with the dm-verity-img class.
 
-part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --size 16 --sourceparams="loader=u-boot" --use-uuid
+part /boot --source bootimg-partition --ondisk mmcblk0 --fstype=vfat --label boot --active --align 4 --fixed-size 32 --sourceparams="loader=u-boot" --use-uuid
 part / --source rawcopy --ondisk mmcblk0 --sourceparams="file=${IMGDEPLOYDIR}/${DM_VERITY_IMAGE}-${MACHINE}.${DM_VERITY_IMAGE_TYPE}.verity"
 bootloader --append="console=ttyS0,115200"
-- 
2.39.0


