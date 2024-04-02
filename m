Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FF67CD1284
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 11:33:40 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.3787.1712026303467848072
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 19:51:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=sVbjHRUg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=482223ac68=zhe.he@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4322jOk1015744
	for <yocto@lists.yoctoproject.org>; Tue, 2 Apr 2024 02:51:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=76IYIMccfF90zX9uja
	WbsMKNXNxjlmHQzYopZede1ow=; b=sVbjHRUgzOgS6Y5l2tvWNC4Vg2lrZWs5PP
	FuGkHj01tU9yeUebnSyV5Os+VbDsOiWYuNWTJf6laPNCLhgqDdszkasxnnND52Jg
	mmT1RfAA17gsFhY/iubHMpwHtDRtHc3mxn2VW269AOa152kB+VNj+BrTGNAb3Ra1
	mkjx9pUz1GRGcKgiSLFI7wORrwUD43H9SBLd1eVg0+i6PL2pWiq+fzEJJRRcftxu
	WPgDLmKub8veORZor9n2VVm2SQj5nyMSIUlc1nLa32y3l6IPsSbRDmYe59La1hoN
	Yzy0dlyIqOkpVVDhjFn//peefRJlcuc+HEzqhwExXb7AKrEiIp0w==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x69q6tn5a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 02:51:42 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j6caHrUiqpi+A6Tk2cAB/8eirhjGcTIcN8MmffpNVbNnHIHokhLUQsxzFuE6ms6b4mJZN7vx+1GN9WMCnz7vgx/fhdgjg6EY4UAqLs5QcP0QbQ7gPfTm82r16mKMxVPfIJYLCVDBki8j+jxomj5/017sLz+0Tx34V8eRMHslNoFvaJXT/IqGzY1ZOoLVU7CqQE9F3ju4WW/KmCorTACHNB7hXrgKWsgWpvG3RGPd5ka2jD5ysyzHuiRCxWSS9zg5UlpUUwm00W376z4U3NP7AgBnhIWKrx+hpR/3hcY1745nQLACDlM4/Rxrw2xvht84WmgcyZRe/Ss5RzNrovN8Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76IYIMccfF90zX9ujaWbsMKNXNxjlmHQzYopZede1ow=;
 b=iKgcGY5De+wccvPoYfMIrTaZarUdYtQwdypL9dLyu+oyPTLRsH3UcsdoZq5L4vaHZ/x4MhEkOKxdbzWGQci2+kJv9n8tJX1Wf5S+mz623fx2vA2Huly6EpFBXxDsOBkOdnkrFyYglGB6Ruv86I8SDkSWnPWMojSK8qmcE+XrwT7sX2CrcZg6mlQ8nI9KOTmyCtgtrW77BppTJ414W5Nxc8QBkImo2WAvjVAtERI52PaHoLwW0pZgBVM3wnLrTk2Z+z1zsLcdwvWrkB4CoNykHpIm+cxxu9BR5PFPRn/jArA2M5D9t42dZB6x/sTrUBmm2FkWZvAMocKd3QsAzjjJIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by PH0PR11MB5781.namprd11.prod.outlook.com (2603:10b6:510:14a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 2 Apr
 2024 02:51:38 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1%5]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 02:51:38 +0000
From: "He Zhe" <zhe.he@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][meta-anaconda][PATCH] kernel: ide: Remove ide kernel options that had been deleted upstream
Date: Tue,  2 Apr 2024 10:51:25 +0800
Message-Id: <20240402025125.1105603-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: TYCPR01CA0191.jpnprd01.prod.outlook.com
 (2603:1096:400:2b0::16) To SA3PR11MB7527.namprd11.prod.outlook.com
 (2603:10b6:806:314::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7527:EE_|PH0PR11MB5781:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SM0cy3W0eE8MczExQpRhwKg9H32OnJTQ+MQmF4DAdvrDOegTv2Z0wzvP9iejuezEG3/ZW4cDO0MNN2x6jeTgXsnTUp0/ROxVmN1zTeTTzuTflYmfypJga1kYVzuO+rW6NqfvSFQCRhc7NGw7nNG9Ice6/9dz70iHtRpgjWai6meTBesUCavwa3A8UOoYPOfKtnN6fAT5Lm5gzuS1OjE3OdqpTaf3afraVsfZvtaaJSW4R/ikMf/ud7OXRiRtJHNZQE7yANOuUnDPQsZB0TLTYFilC3+1/M0ClNJBFArAcWfWtHQfXlonmpAKo1h41mYgqOuzkqf0LFEg82K/EzKOPBx17fmspOH4kcofGaYeDkpadiZlwriVc/4amPj9aPUZ4S8ZQVpDutmiWNdDK4xVS31FwZPyFv2RSlFELOyreVjHNWhaZihzUqrzqYATFJEFfXHAeQikkm8ceXAiZSFiLaQP4+bnkGbFTq7sSfHFYy0eAfEysuqoiD0TveRubeoOEyd5v9SLVrrJ5jWIFW1rrY6o4BFCt6XjYZcekUxy2993+peHR6xwLa3tfLZwxT7VK1VyJ1/mA1ip4b9t6rTHaHBu/FlDh0zTEtDFef9H1Q50GM+bNnidAVKDSe7km3CD2OYvJ5sq6Ur0XryWDFRdDNd25QEkvAMnl1MQKYhlNYY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7527.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?y7Jig8LqV9I82Kcsj3u1/35hgQo6LZpyZm5fRwLwqioK9nm+P1wMi9f3M+/Q?=
 =?us-ascii?Q?k0Hklobr5ss7+vnIzu+T4R6Z7TauGPO+ThoQTy2EsyVi+MaXNGlWzeIOU1m+?=
 =?us-ascii?Q?XoeWVjr60lESgL1KcN9GzX79wLtfEOnDVqYaDD8vJzg5sjgSfpXMUM7veB/K?=
 =?us-ascii?Q?o7J4UccDZbSDJvcoROURpQioZBSapTlIezWyMmlVYq3vZ1T830AWrcGFrKP6?=
 =?us-ascii?Q?XrFW2wCw1fW6t6RfI+XryV3w8iVJib/ptan/EqtjV8eQUamCPoNOCGdcO/q8?=
 =?us-ascii?Q?FIhJVNbPX/V0WAZmAAQABIcCVzfiepef1ZtLUdM2lTSuJDpH6qFcmZdIM9KS?=
 =?us-ascii?Q?c/nWKI2u+5nZ6wQj1WQq2iXcQQsHJE0+lrm0vgGr4hfv4sA8JwoUGK/aOHIV?=
 =?us-ascii?Q?eeNdx/DMMInwbHSiy5QD3qbCp+pAcpFUnsJQhPB5O+ITREjK51wkzTKCTEi+?=
 =?us-ascii?Q?q1eTWI7fhxYFeew2tR/q4lEQsTdzmJ/WO6eLoMxIYSROEFcntQUjojKmObSU?=
 =?us-ascii?Q?2l4p3C8kBYkl8PsFKhzUEU4Nv/gsf8JhmSItEM6vnHkAS7H3ab59yX9GCvQj?=
 =?us-ascii?Q?HnCsxEPJBh5ljHXVlG3xFmV4Ekau8gQncV5JoBLjmHKMFID7SKrBDbwyZrKw?=
 =?us-ascii?Q?dFSgrQuZ+sPLm7L6d4hMgszSv5kAHH3re8l6BsPVCs71rUVhq03cfvj7V1CW?=
 =?us-ascii?Q?kGG8Xv4RZpp+q4eGI8PSIYpGr6NFFDBdyulBze5N9nSp7QYJkZOZp4QTB3BS?=
 =?us-ascii?Q?YznF0LaITqdaJbj8vHmLQ6BfIVnKm9jKb9F/04ZPg3qUD0ycRSCphbLdkFi7?=
 =?us-ascii?Q?bQD/wI9by+zeNi2ZGpVCH4pZqmGpPzqiENXjBJwNa9NG8cnlwva9S6CC35Nr?=
 =?us-ascii?Q?JRT1089p4qEK2jd5V96dK5GJkDfVpJgRcui2qleAipdlOICDVufLhX7Yd3Zq?=
 =?us-ascii?Q?Jx4+LEmFu2nGZEUIXwC5ITIiMzNSGdhWGT2BUnGqfAJEmuoy+Dzm9m/idwC7?=
 =?us-ascii?Q?29p1f/E6gXkNyuC6b7c5fU9wlYslv3FGpkmLfQEKfmldBTt4fBPe8OmqGQDJ?=
 =?us-ascii?Q?Sk8U0ljiVkZ/YzPF8c1PE8KNcKR1G8Y+wY1D6oZXAwj+IKKCZSnHcxcpTvxE?=
 =?us-ascii?Q?pMZRtfSGK2ZU4/kR3N8YRg0QsPwcLw9Ii6y5zo0ZrluoOY0xasPBO27Y8mno?=
 =?us-ascii?Q?s/a5CPVND3TdVrLQYt7+ttC3oGF5nNp2D2/A+8NuCSZzPHW2YjlMb++z9zHu?=
 =?us-ascii?Q?K2NCKkE//GvT437z3MGcFYX9j5WNUh/vMQ2YEUw9gOmdF+TvgQGSZSToCJWg?=
 =?us-ascii?Q?xmO2DmXpyvy0aTQLq6m9XVI0UxE46vCqwdp+phR0tJfGJ+kU9QBVT+6EHFSM?=
 =?us-ascii?Q?tcAr9jySFFwD9r8QQD3ueG0/c2OFDX1mrYZUYsd8NSuVk8UUBFRJ2h3Wxc3l?=
 =?us-ascii?Q?+DIkbxt0QMIKjg96OBv/+inLtuMbqxaJBn9+zks/Jf0fER99sWUujkJZNlAV?=
 =?us-ascii?Q?yS9w3cRMRfqBvnsaz3r++TADkYGtrPzQzYxiFLYkQboEWEd8QOJliPCcLHg3?=
 =?us-ascii?Q?3f+++VL2E5bOY8vA31d+VSHtOn5zjVmI4aG6GT4n?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37ac7a31-975e-444e-ebe3-08dc52bfd173
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 02:51:38.7799
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PdZG6a710ard375+GrIG9yGG/yFHIgcwBbfCQ8Q2AyXJEsll250zWFDrfPW3XVMXLDIkNTdlRPk2ZDt/jFS7AA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5781
X-Proofpoint-ORIG-GUID: pyYDEqdnVxSDTkWccbdcqQSY_E01lN0H
X-Proofpoint-GUID: pyYDEqdnVxSDTkWccbdcqQSY_E01lN0H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-01_18,2024-04-01_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501 mlxscore=0
 bulkscore=0 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 mlxlogscore=806
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2404020019
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 11:33:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62874

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


