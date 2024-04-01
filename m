Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5559CD1283
	for <webhook@archiver.kernel.org>; Mon,  1 Apr 2024 10:04:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.34189.1711965803225334697
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 03:03:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=PLzpRmpL;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=482139607b=zhe.he@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4317gTL7003960
	for <yocto@lists.yoctoproject.org>; Mon, 1 Apr 2024 03:03:23 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=1XQ+CdYAjO4Z5ggVxe
	jSO5WosC1NBGHL2mEDpFm1Nsc=; b=PLzpRmpLPwtiMW+Ht0nTjUMalQwXJFfN8k
	VXVjihxDplis5dOV9mxGLP3wHOGn1G7nCF6sLkSPccY5ha76ZUuwCWds224snfMy
	CIIwYutb/trAD5TVC35n/yI2WAib0CcCtbfK3GFOqtFTUIvPafnqt438C6c82aWg
	59h4Est8lc2w/P26vCGw/f+pgW4vSBgUvY0dEFpz+ZsIZXn4AEZC+/wXMJHka9K4
	cfvsyRn/zw5N75yDq+YH9VdP51W3l+NZuPLZBokxqE4LX3IbreECet46IR4E8poZ
	z3Gjv2DRe8Akxdls6f2M++6r51nHCCQjYU71HuiwADNUQ4LPGWIQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x6e10hkkc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 03:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKErglpWxgKk6MKNafC9nLQV4/hWh0oQ2kSFfDZ91o8AX7D3eEn/lbmmjYBHxF1475tKCeiuN+XZJhJmmy3vCnrsCvj7SVOxzsHeCvZZoPoRQ+AMtZpJbUdYpjW4Xyc5HAsi5AoDTiA8SuICUls851kI+sVmO8Tki3TwreVkYmN2bsMjDhky5wxJsCnBr29zGo2KC1eeELNEox4AbETwFgOQ0Y89J1+aWuU788Q1calXF25G7SoLvqkvha2dDR4I3EG3ZO2Q+rXIMA/m30tqIVJ5t14mj1zQv0YNjgaPjbuC73Ij7hXsVKlw+QKwyjilF0QAdFzabah2St0r59WLgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1XQ+CdYAjO4Z5ggVxejSO5WosC1NBGHL2mEDpFm1Nsc=;
 b=A9qTgIH1SA1FBcg8SKxahQhXGrz2G7NLD/0lnjJcZjPYaE1cineDTN/ZMgGm8ooaqtMAMBCRHzKZAOT+z6Ph4a1G2WYFu5RD/nh0KJhjXGcUsHHaaI05u9YNPHB+S3t37d2qL9sew9Nhc3dP0ycxyrhpT6r9KVesPo/xbYecepX0PGXbcG0ngmx1xszTFK8TmBuYzkklWovkoHeHI7FqVEnMRyrPXqjfAd62xIvwONb2aeJSggjtH7oDKVb99wcbDKE/PqERmrGHRVbz0uiVV1MhBUcH9opp7iGJYkRu+O0tUUybjTsEVHhQYAimeF9M2pcrdwSKh1wiISo6bTh/Xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by CO1PR11MB4946.namprd11.prod.outlook.com (2603:10b6:303:9e::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 10:03:21 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:03:20 +0000
From: "He Zhe" <zhe.he@windriver.com>
To: yocto@lists.yoctoproject.org, hongxu.jia@windriver.com
Subject: [yocto][meta-anaconda][PATCH] kernel: ide: Remove ide kernel options that had been deleted upstream
Date: Mon,  1 Apr 2024 18:03:05 +0800
Message-Id: <20240401100305.2716593-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: TY2PR06CA0040.apcprd06.prod.outlook.com
 (2603:1096:404:2e::28) To SA3PR11MB7527.namprd11.prod.outlook.com
 (2603:10b6:806:314::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7527:EE_|CO1PR11MB4946:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	C/DOCTn3LiygrRIGUbvMieuvqHalWGIwChbrkL9dKfcy9bIUrFU9ULG7Yd5sP0JgdEigOL9/hFY2yqnLkFv4Z5z9PAdok4kE6h3iYQbkOc5EFjvSNrIlRDzJo9/YP8AbCSVabNAnOBWvQL0N91R72Vzt5+Wf79tmZJZ0nfXOkc8tabhQIkHfB66ZkHSGvNIv08t1tE8b7I23YunyAIifdLslpv5UrIX3of0zQ2XNF8mL5sH/FWyCxQYDUn85HOcWzNpq8CaEbrZk8+ofbHOb07JzEdhD+wwTb5NP8bofZDwqKQwp76tlvxrVDYEonFPM1luGRNry2wFhyh3StFt65foSIhUybxSVocrtm0fsWou+KBZEzPxBPpTH5tE/JNdnM+fMOTkAVJztCfEfny7IUSQZPBffl+mpQ/6F32eCR4z+v1eyqGqfMi4rW/eXSsWIwwsLnjVoIRuRKSlvXl1/Ei05DTrtMx3J6OKFL8CIHJmdfySaWJVPfdzHZ3XIWLU1/UgA09ZQGeUyz2hKK8CFnPMy7StbARfSAOpqdL4FfYsPLItDqfLmJp5hAfxlaxmbWCwtVQMJZeyNZKoeYNjxaZ0RUt5JrmZxxBAhJOKCntz6M4NBG8qTcPYW/5/J0AdU9yuP2AMtub9c/nhI8wPGpe1btPrDb0WViZmi4uuPR0Q=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7527.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(52116005)(1800799015)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?O9baNKA/N+8hHCtbkACGuLWb5bhsF5sm2oxPLxoFvfcoSM2iXfI2oEEZ3Hjz?=
 =?us-ascii?Q?eG85y+gO6sn/I6uD3heYWen7xDvRpaqAqfjb8kCATTuslrK/clzFKeb57eWU?=
 =?us-ascii?Q?Eeldniixt3iyqzpbsZJybcxOfd8VoRMUqYheKLOp4mHPqkS5yiM6eY32j7xb?=
 =?us-ascii?Q?A1vtnyJP/hLscpFW2b2CwWWMxpMzFpVTmIeze/wRiWs2WQi7kPtx7S5OSjik?=
 =?us-ascii?Q?1sd70Ofb0EnQ/NxLzli3XgtFqBgXex31ZQ5txHoyRhXeAB/lQ4b41h7ghXMH?=
 =?us-ascii?Q?bnnz2G9Be9fVqwj4Q7BIRWuAG/Ygy/2DqvYLc54IP9GjFRyorphFvtHwM8a0?=
 =?us-ascii?Q?56nuZbd46yYb8UUyOT6rGn/QU7MeZx5yqqcr2i5bmYWmw2N3Iz5+0zPFUOQf?=
 =?us-ascii?Q?POGGWWrWOW0bsd7d6QsPrsO6BS4eiRHDbN2XXczEXClbaW3bncL/pTzIeeZb?=
 =?us-ascii?Q?/0qx2cHuVVXIPJORDQ3AL0as8hgbjAjyWbFKKZ3ja2Rsr6zkLppuJeOCyFgQ?=
 =?us-ascii?Q?nvR1n18vaFu/LMq1byWQlJ9M32Av6Xa8f4N2FrrSmXC+voD2YLE7ldzFHIET?=
 =?us-ascii?Q?dSWKgFZ3maTbG46bZT0oqqQxhA8DNN5w51xMJdL1qqKtcZeKXfpKRlZ78ZLA?=
 =?us-ascii?Q?3zljAZ2z/2MHXlwzjkEoOC5H0yN+6Z5LWfcLFhIWLhE12GG6rWMloTUbrLZU?=
 =?us-ascii?Q?TYSrsWMJYw7D0KsvGP4v4p2dGPlOp0RidU2KtAJOydwshpBFzvopV2YPAN7p?=
 =?us-ascii?Q?+v1k5Rt+K18x46WEEEFnl3huS9B6z+Pkke67xUtJQXGDktFqI8F97NZoPEt4?=
 =?us-ascii?Q?Zc63jVnvEbW/lbL7O9XvOx42cpeWpTULP6u9uG4xV0GNPF0uU1HATcBkoPNM?=
 =?us-ascii?Q?uHVYlCUfk27W0TXE15pkXVtNYLjn8GXEo6Mlj750CrlKfMojPckhn5bNy3uq?=
 =?us-ascii?Q?RDCbFKwUyhqKnnupJR48yPie/07teDJGMNIz88C12DYl9LhpJ9+FsW/PbQ1G?=
 =?us-ascii?Q?Dvwi7T4w9QBnImrcZd9fOWlgCgtke6SHXJZGMJLZ0FTh3kl4lTO7YkqRIlNT?=
 =?us-ascii?Q?h7DzKhehxClt8O6Jb/u6A6c0PkM0Rgm3rHcaemD4UyWRZas3hhlzFjfFqvPK?=
 =?us-ascii?Q?7IlmQ1KylLgR9c+SyQQ7IYbhlxg3NneFpUstltTAQ0OFcYGeTHRLNhhSSfeL?=
 =?us-ascii?Q?FaNCco7Z2HrzcbEl9Z4oxmAxCpINSpy3u05BprMJFiYbPVW3kh/da9XHfDbs?=
 =?us-ascii?Q?As/Lxfh8o3QQUkZK0HPdkunj/nUTMeOprI5S8pUmWADu2kscguLp/XoG+ooM?=
 =?us-ascii?Q?IksaXHJZvvZ9yjMcV5P3ifzJBG7OI23tPPGIHkQQSzd8u0d5l4HWW7ZAygG+?=
 =?us-ascii?Q?cDdi1Nq7bZT4DTQLOz3WotOYwh+OpjbTyq6c17XeaY3Diinrm2F3S4bFWBXw?=
 =?us-ascii?Q?qRmv5p23u1L77AHJ1mB7W22HtybLNdsRSxtZ4/DBzsDkTqAmOOPtZiJAWbRw?=
 =?us-ascii?Q?X/h+lkl5aE+tzX2EGYibQwqORg99ReG5X6JSdmg6PQVfSD9kvivDFmd1H14C?=
 =?us-ascii?Q?cwES+ptbO+Nb94Sy9Vo+Cj4KaZoWjK8hrfX7fg12?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eb1ec903-e08e-4f8b-1f59-08dc5232f5ec
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2024 10:03:20.9090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wCrQa632oTf0r2Wh0xyuwbP981Tnif6mpg7wpV8cNdZ5L6AkTby+EqAqaYU808Yt/utMhqR+JVH+V3i2vCGWFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4946
X-Proofpoint-ORIG-GUID: hV3_82HdxGRdVgXw8RwA7HY8pt5yMmCQ
X-Proofpoint-GUID: hV3_82HdxGRdVgXw8RwA7HY8pt5yMmCQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-01_06,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 adultscore=0 clxscore=1011 phishscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=828 malwarescore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2404010071
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 10:04:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62867

Issue: LIN1023-4443

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


