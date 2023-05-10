Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A919C77B7C
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 15:55:50 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19872.1683731086148950846
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 08:04:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Ec+VAl+E;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4494f4ed9d=paul.gortmaker@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34ACBxCx025302;
	Wed, 10 May 2023 08:04:45 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=PPS06212021;
 bh=Ti5CxhzqiwTKvKGfiOnXNzeJI/BdZk6bOt+OHy6UTzo=;
 b=Ec+VAl+E2dL3r2TOOp+I+5L/yztRStJgXRL4ltknuSU044JhZgLxaQl7KeTGATAPeM9B
 /bWe0A3rp+J/c2wK7ZsrE41AD6RccmojazT+j90VBq3wUWqkakEBG/x4+cb8JTwJuTHj
 QagzcA41Y4SNNlXLRshima5GwQa2bMqjpOoaxpEq93fICpGO2b9HW/9m9VavDJ/Vr5WI
 uAFSoNnkD3pSSnLP4QJ0YnraUdk8X8apUTNkmgcgBwEHBq+ZpjCeYoo3rVv2mJ+kUhpI
 7+sCyo6j+KW1eZtW2dAMKmgz8NSy4wcpPeLR3XtIbq06RFycjRiWhPN+jjywwy4YgEzg Eg== 
Received: from ala-exchng02.corp.ad.wrs.com (unknown-82-254.windriver.com [147.11.82.254])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf81jss5t-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 10 May 2023 08:04:45 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 08:04:44 -0700
Received: from yow-lpggp3.wrs.com (128.224.137.13) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 08:04:44 -0700
From: "Paul Gortmaker" <paul.gortmaker@windriver.com>
To: Armin Kuster <akuster808@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH 3/4] dm-verity: document the meta-intel dependency in the systemd example
Date: Wed, 10 May 2023 11:04:41 -0400
Message-ID: <20230510150442.2427548-4-paul.gortmaker@windriver.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
References: <20230510150442.2427548-1-paul.gortmaker@windriver.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: laVWCNU9JUNNK-kuvxiZq8pWQ6beojY3
X-Proofpoint-GUID: laVWCNU9JUNNK-kuvxiZq8pWQ6beojY3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-10_04,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 clxscore=1015 spamscore=0
 mlxlogscore=884 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305100121
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 15:55:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59972

From: Paul Gortmaker <paul.gortmaker@windriver.com>

The dependency might not be obvious to everyone, so leave a hint.

Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
---
 wic/systemd-bootdisk-dmverity.wks.in | 1 +
 1 file changed, 1 insertion(+)

diff --git a/wic/systemd-bootdisk-dmverity.wks.in b/wic/systemd-bootdisk-dmverity.wks.in
index ef114cab03a1..a275a488912a 100644
--- a/wic/systemd-bootdisk-dmverity.wks.in
+++ b/wic/systemd-bootdisk-dmverity.wks.in
@@ -5,6 +5,7 @@
 # Based on OE-core's systemd-bootdisk.wks and meta-security's beaglebone-yocto-verity.wks.in file
 #
 # This .wks only works with the dm-verity-img class.
+# Also note that the use of microcode.cpio introduces a meta-intel layer dependency.
 
 part /boot --source bootimg-efi --sourceparams="loader=systemd-boot,initrd=microcode.cpio" --ondisk sda --label msdos --active --align 1024 --use-uuid
 
-- 
2.40.0


