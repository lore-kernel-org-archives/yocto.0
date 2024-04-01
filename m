Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 737FFCD1296
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 12:40:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.34279.1711966210330699339
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 03:10:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=E/LFJqFk;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=482139607b=zhe.he@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4319L7lC028168
	for <yocto@lists.yoctoproject.org>; Mon, 1 Apr 2024 10:10:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=76IYIMccfF90zX9uja
	WbsMKNXNxjlmHQzYopZede1ow=; b=E/LFJqFkDjriA5rJJKAVbarSTHh97cyMEw
	uDczrPanwDiE/kGmJ36dWaJTv819bwHh3wi01/2mRJ4d74VsGg1+bMQ3bKU1jt40
	NsBexA5haMtMaTwVNPAMA9xH64ouDhzUVsuIsCts88MwKwJu4Rp0Rws/g7fWXT3X
	UL9OWSgHN5o9n4GmypPTAHWCJqWjEjzFYdigToHUvXQ9X8whoYxKtWmJ0VqsEMYY
	TBU1DQBAXNOHHQeV3gsEq/FvsCsjfnrMyd70YwaCIS+TK4oAh+C60pnvNggIwsoi
	ACQ8Ku0/8b6+3oDFTbqVideOrvDTW8nep7ZOpXQN+Inn1/ToOaJw==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x69q6sr46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 10:10:09 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MtpBD3veFRV3h4knRcf54zSd6B+GuZtyc2dC9UdkpaUpi+aGoZZfdZoy2LTTS4DXc+coDO9kbAAheoFPIvlfEWM3tWANEWdthJgp0XRfB2GF4fH63SzC3PDyMtpucOdvKhJi3qah9bgpyVNsq2NfXAbP/mLXXuNUB7YJ+xHG+LnhtVWkxX1pkMJ3+y7/MlPdxwXa5hRJdUEN1bW0pivjhXeDsNZsEVMbpX81I9MmZBVZUz4uh0fJVrQv5Yfop0hvCFRUsisSwVfL3IKeBOScx2y2DUp4075+dPVPuCYsIR99VKM4tSFD/7zo7nYivJ7mtpbZMN1B9lqTxsFSkopcAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76IYIMccfF90zX9ujaWbsMKNXNxjlmHQzYopZede1ow=;
 b=J3MN0L9UmaoRxp04D55A3ptV0HffRfWx4qCd+/wLIhJMPQ+8x7F5Qg0FN5pmI4VJ/b7ePptUo4FAGkAJqvweLXmDhfZ4HWHrhUSSxjqwh/aBGS8UkQZQIrn/dy5gPXmpZiZzb/juS/SeeQOqT//0Cz1TlGH78PCDPQRhacienRgUkTlp3FBgY+q0L2namUnOl740rHd0giFYorv2SE0VyFsDEfiOTZ1u4EvR92FwzCkdhBBknosiXZQeVnKdVgsw3GzmD7gTG+Yo9vPWtVN2oyVpYzCFSunsJvJYJuh1hc6Hhj5KbQvqbMJPQqq7/aMKTrCTAJDQcWal9JVvcZvVUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by IA1PR11MB6417.namprd11.prod.outlook.com (2603:10b6:208:3ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 10:10:05 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:10:05 +0000
From: "He Zhe" <zhe.he@windriver.com>
To: yocto@lists.yoctoproject.org, hongxu.jia@windriver.com
Subject: [yocto][meta-anaconda][PATCH] kernel: ide: Remove ide kernel options that had been deleted upstream
Date: Mon,  1 Apr 2024 18:09:51 +0800
Message-Id: <20240401100951.2725414-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: SG2PR01CA0124.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::28) To SA3PR11MB7527.namprd11.prod.outlook.com
 (2603:10b6:806:314::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7527:EE_|IA1PR11MB6417:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PD6WvNPP04TguR53zM4zYWyvTFcWQhaHqpbfCzyXwmm9u1oQUWATKmgmfkxoxjhTyNtCT+lnAFi3nXVe5e2caohUA8EUg+iQ0GdO/DnEWnOqr82yN0nbnJdoCbh+l4Ftv6MyjSkjYH5POgQBw6sJW7gklV5EwBcSDEDs7MKdiHZoVhwaU7YOLvnwmjp+ZCgxMO97hltv4n1pLlE4VOIO5owmxcidnzi5RmY7MEIU8zFipy7cgFr9YG9GkKckr8hTPbmRPpFNBOS6eWhv2TZJgCUyWktyZET+zkxVbpqEATlfYVcy4ElW6vvEJKsscLDa4I3esmT9vt8LDJf1tYHWkGMyLjU4xCtt0yHuVyy56XOTYjuG8jCR7wq7/LktQbvEW3uZPHIvmT7nYVKjuRV6hEVt1bp+Z9WZLzstU+7XGaqvSWqHW5ua74Adn0bp0aDCGBWax2XCDBge0Flpe321UzbZQONUQenu4WxF7QT2m3t+DIUrWlOKOqbK4ftY45CxSLipVPwgwqk4bvIcGU7AscHZTp++461XFfomySYAgo55Y+6ItBAzbAxvM+jev0DiXx8lb8Lcg5GVckvfNVOeW/hWxlrcptn7c06xZzPEvLU2ACTTHzNdHCr8/BlihTli4qQNhSQDtutT8Ri/QQ7EwNQKGTeg2DcLUVASfMzOuck=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7527.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(52116005)(366007)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?oJdRFyW9l1Hn/q+uwR+IXBrEla/Ed2Y1RV715bO0dhJfaSchLR0scScLkJO5?=
 =?us-ascii?Q?9UTg5zqMevB/ZsjKo68J1iTP2WTXDCW3XDD4eTH5vthGd9DBh9/fS0qSGxUU?=
 =?us-ascii?Q?+Ix4Flcl54B9jRsON85cJyjNbZYogUxhLJGJ3usg6ydFekPeJFPBVMWcrInE?=
 =?us-ascii?Q?bJX2U/9NBE0T+Pjumekx7sMx3KT/IKfW7wRfhwiPvnU2JRXYWv4jNNnSKrJ+?=
 =?us-ascii?Q?Vjl13uiQOiK65FnEm5OYaLu5nIyYP5n0nrJashT8hOy9vMq8vQ7MSg9+vEob?=
 =?us-ascii?Q?HprUsVwJFFfiGGeS1axmOEGNn1VJd3CckxLYmfT8oOYPd/8EADWm/98ZZ45g?=
 =?us-ascii?Q?O9V7o7qISCKMbohEj0SD/OXMCZd37tVIBD1h17TrE0xrpACJS7utwq9Z7WkB?=
 =?us-ascii?Q?WuvgEMw/BQqGbdD4LHKj8Lxbz43yJ5Gv1c1HhBKFxPeaQvoNLmlb/gN9Tl6I?=
 =?us-ascii?Q?lYF6JIWPSFPsoMCb28awA8/L9o7vkoCBXY2T1iYOxHMGkewz7oZoiwDegmto?=
 =?us-ascii?Q?nynJe/H4B7u29nxXA4V9OIcCD1Ir5gphBeuktE6Y1ITQgKe/2rWRvRLpulPH?=
 =?us-ascii?Q?Bl/IxLl6LD/whbgS7ZANB/fdOEWst+uJv+tP/dgJ7DIt7Yw82CjBWM90EYQH?=
 =?us-ascii?Q?eDKCS49/fTadpo0mDuQTptR0U+lYaELBDlMW3pGI/HX5tnVWxIlTaqF80umh?=
 =?us-ascii?Q?DuJqJt29GyYTunSq5Ou9JA0+DPEzrjY9zVZTm12/CcoToA/s1Jf59LyGukOg?=
 =?us-ascii?Q?H7CzmaTB9OCK/UuEKqWVhTxMxHooM9Tq7dUJIFaFIUrHAiUhssnUWPJKVnxo?=
 =?us-ascii?Q?0Wb9qnJslCo+fpEf5u8sRyQjcJnOFhEhnM4YHQWIQf5O4y2gt7GliGubboni?=
 =?us-ascii?Q?0EeOIj/2rneQ2bZYO+zz+tIhK7lrdUcYXjOogaWvWtOVcr6zuA2TCcrdzRya?=
 =?us-ascii?Q?P3qoF9fH3rjJAm+R4ooO/ZeS9xJ3AJkIvC/kbvdHtwLrgzBXx7nfJ7DDjwiz?=
 =?us-ascii?Q?5lRFE0aUCq9Jq4s7f2yLGXsFQmx0dNZSm70dX9BqZpwb96UuIHczSKT33ptN?=
 =?us-ascii?Q?E6exHywHyl+BHa99/VQpXuKikFGkX97r8o4A+AT2ohqqE6jgK6NX/ukA8ni4?=
 =?us-ascii?Q?ETwAOZ2c1cLuNL5rz8Pg3ToDq2QSTT7ugIMv1f36Xs8eL79lEbdVbYCSy+qa?=
 =?us-ascii?Q?++ZTlqGHEBE2Ry+PvHq6ypabq0z+CemrDU4+nCfTXTHjVqLki7B8itEBt0WL?=
 =?us-ascii?Q?gzoxxD8MH4ow4AFlwGBbhm77gxm4qi+TcYuVy/ngH1H8TjbfHk2ekOofuWD8?=
 =?us-ascii?Q?Rv6zBQkrchifOWbOr3GBJQtPCQSpuv3D/i6fWsHYiGSSpiSfQ1XEx25kJSvU?=
 =?us-ascii?Q?T+d5Nk0fu7PXTfBCMVUETnbTUWZjeLSQzqh+14SDLFMg8BwnS0qErWG/3y5q?=
 =?us-ascii?Q?EbkH1KcR6bmq+oDV4gho8GPBPGd31g1IlRsBkIN3mGu8E+ioawX4pI04IlUG?=
 =?us-ascii?Q?IFHNWGNwzq7QF73iwSu4Bv2kA9ELuxeUWh1Knm09YlA8e4fRKm5yhSXMR9AE?=
 =?us-ascii?Q?IBXciSPe8MB7cvivW91SVV7jOJGB+S8Ls9Sg8qXI?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15ad9ae4-81bd-4386-0d36-08dc5233e726
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2024 10:10:05.6148
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XuH116TZfvTTtIAwS/lTTEg99GWPsFWClTZrJl9fuucR5tM/jJQfbgAhLr64Yz/oocR6hfKE2v08v92lln1UMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6417
X-Proofpoint-ORIG-GUID: 9QlDgSu9KqAJHByfk_OjT0Us1SqqiszQ
X-Proofpoint-GUID: 9QlDgSu9KqAJHByfk_OjT0Us1SqqiszQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-01_06,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 bulkscore=0 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 mlxlogscore=821
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2404010071
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 12:40:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62877

IDE related kernel options had been deleted from upstream since v5.14
http://lxgit.wrs.com/cgit/linux-yocto-6.1.git/commit/?h=v6.1/standard/base&id=
b7fb14d3ac63117e0e8beabe75f4ea52051fbe3a

Remove them to fix the following warning:
WARNING: linux-yocto-6.1.83+gitAUTOINC+85ba1038b5_1d90573765-r0
do_kernel_configcheck: [kernel config]:
This BSP contains fragments with warnings:

[INFO]: the following symbols were not found in the active configuration:
     - CONFIG_BLK_DEV_PIIX
     - CONFIG_BLK_DEV_IDEDMA_SFF
     - CONFIG_BLK_DEV_IDEPCI
     - CONFIG_IDEPCI_PCIBUS_ORDER
     - CONFIG_BLK_DEV_IDEDMA

Signed-off-by: He Zhe <zhe.he@windriver.com>
---
 classes/anaconda_kernel.bbclass            | 1 -
 recipes-kernel/linux/files/ide.cfg         | 5 -----
 recipes-kernel/linux/files/ide.scc         | 1 -
 recipes-kernel/linux/files/liveinstall.cfg | 1 -
 4 files changed, 8 deletions(-)
 delete mode 100644 recipes-kernel/linux/files/ide.cfg
 delete mode 100644 recipes-kernel/linux/files/ide.scc

diff --git a/classes/anaconda_kernel.bbclass b/classes/anaconda_kernel.bbclass
index 5461a22..b5dc983 100644
--- a/classes/anaconda_kernel.bbclass
+++ b/classes/anaconda_kernel.bbclass
@@ -5,7 +5,6 @@ SRC_URI:append = " \
     file://liveinstall.scc \
     file://efivarfs.scc \
     file://multipath.scc \
-    file://ide.scc \
 "
 
 KERNEL_FEATURES:append = " \
diff --git a/recipes-kernel/linux/files/ide.cfg b/recipes-kernel/linux/files/ide.cfg
deleted file mode 100644
index 9d973ce..0000000
--- a/recipes-kernel/linux/files/ide.cfg
+++ /dev/null
@@ -1,5 +0,0 @@
-CONFIG_BLK_DEV_IDEDMA_SFF=y
-CONFIG_BLK_DEV_IDEPCI=y
-CONFIG_IDEPCI_PCIBUS_ORDER=y
-CONFIG_BLK_DEV_PIIX=y
-CONFIG_BLK_DEV_IDEDMA=y
diff --git a/recipes-kernel/linux/files/ide.scc b/recipes-kernel/linux/files/ide.scc
deleted file mode 100644
index 81e57f5..0000000
--- a/recipes-kernel/linux/files/ide.scc
+++ /dev/null
@@ -1 +0,0 @@
-kconf non-hardware ide.cfg
diff --git a/recipes-kernel/linux/files/liveinstall.cfg b/recipes-kernel/linux/files/liveinstall.cfg
index 37c9f47..6794674 100644
--- a/recipes-kernel/linux/files/liveinstall.cfg
+++ b/recipes-kernel/linux/files/liveinstall.cfg
@@ -2,4 +2,3 @@ CONFIG_ISO9660_FS=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_SQUASHFS=y
 CONFIG_SQUASHFS_XATTR=y
-# CONFIG_BLK_DEV_PIIX is not set
-- 
2.25.1


