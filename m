Return-Path: <zhe.he@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75A7C6FD1F
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 06:20:08 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.6060.1712038800100746427
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 23:20:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=AtkEg6DV;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=482223ac68=zhe.he@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 43240T6j024394
	for <yocto@lists.yoctoproject.org>; Mon, 1 Apr 2024 23:19:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=76IYIMccfF90zX9uja
	WbsMKNXNxjlmHQzYopZede1ow=; b=AtkEg6DVHjpNrPfUZmV2WSpLgdf5XSLQxQ
	z067jLRNGmj56YWUKlXXFnbFUi4QTM4edeOsdoivCatCQ9jIGmivAZw/3OOwnjk/
	bsUFyuBvyi5O2AJRsfRKVZeS0pPOiErlLu7/MHGIKsOcPS7pnByKtPMhzaddHIa0
	2NWUpF28xNSmdks8HTZRCzjsyyOPe9cPILgymjHZ/U1Z9adRIuxnFL5PBvSeSsgW
	aJ+BuxnrojpRqNomiN1gjs+z7+4O0B06bVcqrLyN79p6vyxOPSNHnkps+nE9yrgj
	PWN4af4RpHUOC80dE8hiDniAFNP+rzn3628uEMt2g+Gw+VpVSjiQ==
Received: from nam04-mw2-obe.outbound.protection.outlook.com (mail-mw2nam04lp2168.outbound.protection.outlook.com [104.47.73.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x6e10jmvm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 23:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ku5lWjxvoatxMHgoEDA28mbMihzn4DqtQHJylFjKQUJksNmsmnXJ3iMxFebz1ICAA1pvZipCQ2/3gR2NwOQQ84mxU/v19/9R6xUEWhp40dQ6leWWZ+AB3x+GJlHUb+wnjz6u9ZfK9YrGvCQJAwDFTZhGTcJmSzKe5pgSiDnDQCkpof8Jkhe51t/UNPGdpTaH2vQTHCXedxI7wbrWIxNAKBSZ9hxxzTFI/stUFapUAWQji+78Hs/ffWa/iIuY6L1sC/fXcSVceaI3p6BKvdHcGJWppwr3Ib4AcH+ABtg42qQOp8IQsLkOiXJROOdIMGxt+/3ccWhGLdcZCONf9Xa0qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=76IYIMccfF90zX9ujaWbsMKNXNxjlmHQzYopZede1ow=;
 b=AcRVHEeptRgTKJaL/p1a8Zp+IUbXlkcTythcXym9T7JeZ5Udm3V3cXHhVoYrUEjq41LiP2r0ainIBlzZWlGhl1tn74Z/WoJ+eBeyX50DIURh1QO/gP7IOpYMLR78MwncPVEjD6UcMf8xrbtnxy6nc7VKac+USfKN67009X+Oib+hjua+Nwoi+WZ280D0jpeZKFsBMecBFLWtxqv9U9MqOn8gGHFPion/Tg6vdXH8s7EGAclW7N5y8RZUyZEc2Yw7p93yiNbuSCXVlmfvbg3ywbbDGtjiZLxmo0MgBdWSt74vz6qlam5dvMCE+pA8VbPpwiPCEBTgLFr7HoSgTwSIbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by PH8PR11MB7095.namprd11.prod.outlook.com (2603:10b6:510:215::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Tue, 2 Apr
 2024 06:19:56 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1%5]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 06:19:55 +0000
From: He Zhe <zhe.he@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto][meta-anaconda][PATCH] kernel: ide: Remove ide kernel options that had been deleted upstream
Date: Tue,  2 Apr 2024 14:19:42 +0800
Message-Id: <20240402061942.2330330-1-zhe.he@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYWPR01CA0023.jpnprd01.prod.outlook.com
 (2603:1096:400:aa::10) To SA3PR11MB7527.namprd11.prod.outlook.com
 (2603:10b6:806:314::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7527:EE_|PH8PR11MB7095:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	++T/ZG0/u4lAvcubN/yo7A7laK2pYwIULDpLx/j0RDZQVM6dWPentkBvq24VeNGYB1gWi8jqX+vGiddC6iIuvByeHHEViZs9lwG3ybPo/JCuOi8IO0FwiG9Cw9yBpXijZQCrYUkrSfabPLbXSlblUR1IEQ259VhVwvdZjUKUCcu6HlFtYEKGQzJH1x3CW+5u6NYROx4oCkHeXqGNc93hc4soYyCcm9anQs9NvquA8J/0qe3AHzEHbZEdnrQl1GH85aFcMlxxuryCMF7crY7NUGcOJV3n9sLUHHkevrJf/ljOx1SGNqL7nawm5QE0Hb2Gbij8e0+XSGWSR7MUkCobMS9JH8gwzNzT+59UCWzYcicnAfMEndjWLMNCNvk55kMUg5c8AQID/90gcUjnB1T6wKDfBtCyLVgxNB027oorTwuuE8kejXXtfFshw0QwJ50frOKhyXDFEsFDD9H/yWBEDYW+MCd5nYB9CGirbm7pO8RIVLcm2EGZ/pBDlejnilgiDHJj7NueEG1hnPgEoT/RuXFU3d/7tNqomChWn+YzG8aUyjolv5VjHdLnX5V3MndUuLg3ILsWdjzvKA4PxEyeVQKDCcaMXTIMuiIlHhuBnu+JTVOipBNfuQpjMnDtQWeJjRvoxs82aFS2g7N4RHbVTfPKwOz8dzu+Zxn+spV0AVs=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7527.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?vpkwPxjFVPIuTl5tSVE7VhZU+7prVKRmAfw5JiQ4xVpnD/xVtI6MNpRuyMmr?=
 =?us-ascii?Q?V2xYibZf68INlslx0HvH9GVxl5jZMcKC3CV+LZazcC/d3OefKUFOMc3UfNhx?=
 =?us-ascii?Q?fggIMLoKLTsbA6gK07XQUQxNIREdSUDfXuQgtzzb9e3/IVg8iNJdjaEwWG7W?=
 =?us-ascii?Q?qSdyhJblGwc4C6Ad/KRomjMENu5TmTVfCk7Y1CcrrvHCWC615OvzkbcFQ0IM?=
 =?us-ascii?Q?x1NgAip3VpBxPhQ6NSNBYl6Pu5x4kiR7i7wyS6lBmewd5q5QHkPCwbtFJ/0r?=
 =?us-ascii?Q?AmIiawq8Bwm4drMPuQ3zmvz/WawhYEuPKRdIcNwjXx2QkCeO7/BwcUK2Y+lF?=
 =?us-ascii?Q?A2TkBbvyKtXwP1Bow9d/II1yEQ4n+fewq+U8lhBJGb5yqRkNldmKLlbjn5Le?=
 =?us-ascii?Q?R2G703O3zYqEFaR/iIAACH9oIk/sUPzLQnnrwI6DLI8IOsl/36jq3i0kraFC?=
 =?us-ascii?Q?aq5mLUVmiQB8Lax8J2XqI0wdA0Bdy/B6OTaE/u0g6RaftVf4FL9k5XbA6iM5?=
 =?us-ascii?Q?PEye5Nxd0dXLHySwX97/DtOpWCQj1PzioZXnCySFFFE5leRczn3yvQGGWUZV?=
 =?us-ascii?Q?CwznGsJYeAMSgCyIyRV+LxhVRl0RXWom9XhYqPC+iwdjPWtaBwR1q3wh7Ykg?=
 =?us-ascii?Q?0yUPhc/JDyENfkJFAFtbGgfbW8VbLbgjebwO/tgPkzuuEoNWfdnfef0gVC0z?=
 =?us-ascii?Q?4vboyiEjcgoivPTxN7D7hdGYo9RICBzzvbfOEsYlG09rqRN3VMwg3inmNjf+?=
 =?us-ascii?Q?5YlpZGrwREbXPD65YHZC+vzswbqt2z1TuYNSH3lYrF8T4FEBO9ZqjLT2n0jw?=
 =?us-ascii?Q?Fg+dkKbzr9Wu5acTpzaB+wYa1xSC/xJbYwwLCBywcu2kWHFiwIpeTll9o0ai?=
 =?us-ascii?Q?8IjvUtQ1U56O08VTIPK5HdF+T0Zo3yJSq0lLtJGYgI3g4qnxYC2Uz8gV+H9L?=
 =?us-ascii?Q?nvm/EIHzwt/GRl8zWUpWpx/f6pd9UEhYzSIu+IrQpgiqfqcvlX1JWF39LG11?=
 =?us-ascii?Q?ew3hosCrSoMLIHR+mMTFl6qrvJGGF6Rgc8gfcxRm4uY0bfhbGuRYBgjC7xM4?=
 =?us-ascii?Q?ocDhvl78FvvD+gTndKsoiQkqb6YQ77OhJqNxXosE1uxdoAeZYGPWnPIOovoA?=
 =?us-ascii?Q?eHcSMX5/kuoR2ZzCDUBhndioSj9wDoJCEs61emORCogNbqZoKO1C0PxhELG0?=
 =?us-ascii?Q?xcZICOCzeA0zlg6JrGLE3iRwZyDwywvHcJgZaiB5Qk022Fi/KNqY4QttsPyf?=
 =?us-ascii?Q?yPbL3wJoEEAQekh2ZC/15Fjbm8RnDhl3TnJxu3aLm/c7xW5q+vLAXlsr9S37?=
 =?us-ascii?Q?xAHvZ/V2lNLf8esuydo9MXK/t+X7xo1voHHW48fvo1lkoEFD3sau+oCIzqrH?=
 =?us-ascii?Q?XdtK4c40CzujcovfrQ+JddaxRytUKQf6fC8o8/jA9wuRRHsNgXCrR4KCOciK?=
 =?us-ascii?Q?l+rLGhAm1YtnSfpwu27OwXk2gNqrmY8KYhDRQallMvbvs7lkBmsDYAlAy/7M?=
 =?us-ascii?Q?hR6Sj6W60upWl95NRYCA7Aoab6AWnAZrLlMYlevKaQr+fTGox3kBbEZNhysT?=
 =?us-ascii?Q?xZBiobU6lLUoeD/2Jd4Yfwi5JOFFqjoPqHQHYtOg?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 416e416b-83de-4b75-77e1-08dc52dcea33
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2024 06:19:55.6949
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2PUoOHWF+fKNvxrlEGsxTLmLXn1DMTJSlX29h9kpUgBdlQjwjEm5JH3czrrRo9nFlGkFrf/T/3c6QQ/GOledPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7095
X-Proofpoint-ORIG-GUID: CyuNZm6hLYQar8o7CAN8srWOhcORzkgi
X-Proofpoint-GUID: CyuNZm6hLYQar8o7CAN8srWOhcORzkgi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-02_02,2024-04-01_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 spamscore=0 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 mlxlogscore=805 malwarescore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2404020043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 06:20:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62872

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


