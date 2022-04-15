Return-Path: <meng.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24741C65BDB
	for <webhook@archiver.kernel.org>; Mon, 18 Apr 2022 14:26:03 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.4715.1650006372579314602
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Apr 2022 00:06:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=XwBq0rks;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=1104b921f6=meng.li@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 23F6sRg6024159;
	Fri, 15 Apr 2022 07:06:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=PPS06212021;
 bh=ojHAZo851cMEl9nvPvZb377dq3MJ4KsfLWPfJ/cFL5I=;
 b=XwBq0rksrhMSWozAR+hXeQcGXroMcqG52Wnj0YTjUZGot86MlW5FmY40NgTqf9DSQOGq
 u1g2mIP/FeYnh+zfxpEonITMDzpu7CP4JOBSo0QmM6veBelQpvzwYnOeKgYRTz9HUyLy
 B1hb0ql0cb7fnuFi5L/cZu6CQme6s5K7CkPE9tETK7bsogJsv9dz78U//VjYkCEnIUF3
 JVaUDhQVMq6Ny4CORzcFWWDn8oEoHJqKrntfbBBLJ47Vh7RI2nhPa04Cd8jjyMFX0IyE
 DxatVEDG510skqZ/10kRd2aLSimIupdxNjW7/z+QK+Os2kzNKchtFCmwtKSYwdnqnz7i 3A==
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2176.outbound.protection.outlook.com [104.47.58.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fb6fwcjgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 15 Apr 2022 07:06:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPsI+x/Mh/ReONeashFonCa1WlHRPmiXJ/kX8pGNybIWAYNBBj8/G3PWKIAIWPrjW+NFXIFnaBkGrkCuKOwsVxiijrMLyipoZ50CO1gEN/wt81Gf9gdYhgVwj7GaRBw8DebdD/rSXvfbv5TxqUdLdWL1ITCDdB6wF4kSRdWwdZ0gtGPHd76Zf1jAEpxFnAtZekP+73YL4Tl8TYjl5MjORBoTkNJnUkWSX/znvSGjmFChzdnOkjpjSJ8R6wEKcc6YSWbDfj8FkANLIi3Rfi4hsjesT+NEr/I2vLeWA2evpvVdrmaZLhi+BG7S8P1tyK+4wRkn32Fqxv3KWXVQyJCExA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojHAZo851cMEl9nvPvZb377dq3MJ4KsfLWPfJ/cFL5I=;
 b=d8vE1Y3o1G1fcg5sPM5JO9zPU0Y/ylTFV/e2ojJ3yvroDoKfDjLoo1kFzbP3P21tW88cbiSsQ0y0+FOGRmqcil7R3ffxg51C444eNOnWTR1Sm1GFpdRUfOPMdqyuQbb/bq0PkFJTYg460ILt0+WHFRgjGb4dIvga9ASZatScQwzeksCXjYrJel9OJbGbVYukS71CKAIXj+Nl92D67wL41fbGnPhCiXb4aL90DXFPjyxT8wsHzkjjjbBH8AaCtgzKN40WUJml6GLLySBIC4Ydgw1Josh80BYMv1vGbSefTZ1bIfep7W+ypOkQd0pQhBwK6UKEK3dJ0/vCaY+TmJqnTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 by BN6PR11MB1571.namprd11.prod.outlook.com (2603:10b6:405:d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.20; Fri, 15 Apr
 2022 07:06:06 +0000
Received: from PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::ddbe:8cfe:1590:b398]) by PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::ddbe:8cfe:1590:b398%9]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 07:06:06 +0000
From: Meng Li <Meng.Li@windriver.com>
To: yocto@lists.yoctoproject.org, andrei@gherzan.com
Cc: meng.li@windriver.com
Subject: [PATCH] meta-raspberrypi: u-boot: remove the randundant patch
Date: Fri, 15 Apr 2022 15:05:43 +0800
Message-Id: <20220415070543.22251-1-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: SL2P216CA0123.KORP216.PROD.OUTLOOK.COM (2603:1096:101::20)
 To PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e2d70e4-6d68-4483-e923-08da1eae68b8
X-MS-TrafficTypeDiagnostic: BN6PR11MB1571:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB1571FA295240E8454A30BEFCF1EE9@BN6PR11MB1571.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	FMwDNLvmZucGW1xesZ5HYeuB25txjmR0ra26z/jZYIC4LaFCIfSi40W+3fmroZsZ/XVdNaPJmRPxOJRsJZJRUSJ0S2+NmmFgsH+w023qsUa/AuDz4CYXPoBmoJuTdsBUhR1wKM1uP9jFgNP0UfMM/B9eo5zSImS4ondiwrwFnTjBc1lfSRj3W7Bt3g28NZInsh/mzeeeVQRvqs/XzkOfk16EljiWO4C32G7A2T+z+LqjmlN7u0sbjJHPVff0XrOQjTsoWCAQsTztrup0Gv/sLNnJqgw4B4Y2kfZUzpIPjAQwmH2EatzrPudSBI09K8bZESGxHBJB0zedwd7d8c0sEOwW/G5jurbYBsb2DzBYdTwiVX1vGiISJDN0q1xd1WRODTIILFeXlTPV66yHGl5kA7lCLaL6bFB/agyG337MqWClO/STSUFEM6xgVWpR2+k4ktaFLVRQZAbH4H5L1LO9FvmML2LoifdrLC7HcAeMKSDnvxe1o47BFqZnn3V/dB0KFJpcUHJxgckhpNHaZyjTbDfsa6txMIYWb08p9WzYZYxhUgb/6As4nOMt5SNG/0oBvxVAgVxZkoNAXfVGUgJ84aUkGH4aiToYcF+7YKHAfxs+7eCZT7N1GOzprDEvdbBUei8N7T4pp5k5PbWmpTcJZ2E0vc+Pgpw9UtHF/UH6xzHN7skQnC0A0B1YOS8KafOHUc1ux72AQP4JPQ7wcVXHdg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5191.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(8676002)(66556008)(66476007)(4326008)(38350700002)(38100700002)(66946007)(86362001)(6512007)(5660300002)(83380400001)(6486002)(508600001)(6666004)(8936002)(52116002)(6506007)(316002)(2616005)(26005)(107886003)(186003)(36756003)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YQryKxQj06zP2FwJL1HUiRTCfc43+vu0j4+JVQA1JqV/nf4ucZsuqqwuGRLn?=
 =?us-ascii?Q?O0dCd9ZFJo5WIHEBjedK/UgOLyS3S7wSZ6BhAzpJHJv72IWmk23zC6DKi1DX?=
 =?us-ascii?Q?l6IG5nDzTfhsF1T0FplMHg/xxk16NQELF72VpCxe9I1GZlAzS86k3kBuAC1l?=
 =?us-ascii?Q?eQSbhMIrBVRVeekSufjggMJEvIMr5/jBlbCzXB7Rp2NyEY4E8UXgmjWo9TZ2?=
 =?us-ascii?Q?G4gcJxhFrNQEdvmT7b8aSJcxljUsT1M9oIrLVfEkpN7xuy4Ra5RrEIHcbJho?=
 =?us-ascii?Q?fOwK8jFIUK99OhGYzLQEai9S3kN9oezuDWb2andUHZ0KV/Fsn+UQ0gv+YjRh?=
 =?us-ascii?Q?6YvRuP/iuPrYdTmwIE+c4ZGlA8n8Fdee90wehA3pj1dcxbT9ioBWv/VynBye?=
 =?us-ascii?Q?eK3MZ3Rh4jN4lG5PscJvZ1yfASyfmrLnILE0X9uroaqSGYuUDqcFzaDLLA8o?=
 =?us-ascii?Q?RKB5/24EnvCnK4PRVBiASx0bEp+jGXSC9AdLuiIFXhR/9sWRHch+flHQwaZE?=
 =?us-ascii?Q?yZbvarMAJP3h6aInf00twzMkTqbtoCHRFs8Z8du0gr1f3kgpTBFnvjiP5ywQ?=
 =?us-ascii?Q?3jDu7teXS2xn1/4EHZCbd6Tfk5Gzbq+XSQ2Gaz6vYjmMJz8nRJxAiWboJh7A?=
 =?us-ascii?Q?F1nuTT6/06z9GE3RVkAlgkk/h0/Zp7NJ7q/XiDyhWLgHYLCSmmJPbeg8KWEg?=
 =?us-ascii?Q?NSvssyvl0TFTv0m+NH3/fRh951Ulzf7Zkiyl9UqbxBZOPxK/oZTtiJ22mguE?=
 =?us-ascii?Q?4WRE2H8oCd5C4LI8hSYvHVZQYNqn5udOaIg4mz4LPGQB51QlpKKeEXVs93ic?=
 =?us-ascii?Q?1vuhSHYNTC16U1CNwhTE4P6/qX+WPhosj1dvkZB0xrI87HhVeSYZpzGefVCQ?=
 =?us-ascii?Q?c1YvQLmP0VptEyvjlwqFy7cEJveusnB20HIkeqc43E9wBPKorSx+Tea5T2CN?=
 =?us-ascii?Q?BEg0i7/2e7lbehzdaUPl0QL5aHNWliF4YOn+L2ag6ljRN6bjWC6MNzdSra7m?=
 =?us-ascii?Q?UBrjfexB+NlRUqKIbWAYVT5BNVx3sXPOUHGMapc3DZ6XC8Yh4+p2JB3DsCT5?=
 =?us-ascii?Q?78xMr4T7s3xu59EEDqjMBXSgP7KFAdbMnjnVrzWRz0KRlEgybebXw4/nbG4E?=
 =?us-ascii?Q?orGhOBD/gQpeuK7AqV9u7j/dKuSb1U5ZkxZM5GgWMlq2HbHiIIleI97jrBQu?=
 =?us-ascii?Q?W7u/IDAelTGyx/oStIYtTqzG044wKoRtc6PzRqgYQYmry8d6t1g2anmeV/0f?=
 =?us-ascii?Q?wVMhlUbMx4FW5wTkzpZ34+XvFrFxN3mqWgBbcDQ7FmcIluWk+Yr3LWLzaxr/?=
 =?us-ascii?Q?0CXcDmk9Zh04iPlFVdgALKgmTCQ/ZJJNQEsq/8mWDvs4FYjoNQv+6merLd5t?=
 =?us-ascii?Q?+9KZMoFZUOa1MIU9gwUYUsffD/ZGngAwo/kXbTquAhbF1yLYQZ320PD0RCjO?=
 =?us-ascii?Q?ZIYZwJ9LLA1ibJBEL7o8UloHEQbZviNcv3NAFvdbfkWM9fV5XqZvknZ7VvGW?=
 =?us-ascii?Q?679mhIy4sOmnfuCqVKoEFlU4O3PrE4dY1zXZOuSJRl1GQ2aUB0gTA6wJwClt?=
 =?us-ascii?Q?b0gF7U9HIGaUsQ3spouOL/SRaCcQlSSxv3KAgVA/a7VZdwx19c4v76DEyUJ1?=
 =?us-ascii?Q?2jcYbPxq5g6S28FNt8DNqXbHrrwhg7UrnDn+Hbv6VPHhT+HJw74Cr0OMx/ey?=
 =?us-ascii?Q?fMXUkXYhATSIN/dVoZ1IvkDpOeOMSljApwr4ySY/Siqy/IwH7h6tp6oY9Wrj?=
 =?us-ascii?Q?oAczclCBsA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6e2d70e4-6d68-4483-e923-08da1eae68b8
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5191.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 07:06:05.8448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 g/OYnjSpKTDJ0spP1OFvIXBhxBUb3SYGfX2hzzQHGooztLrh3B24spgGSwu0k7XE3WKFYYwvGKZvlEkQnz37Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1571
X-Proofpoint-ORIG-GUID: XWgcAmKWuYyU-4JlwFRCHU6ProkALnWz
X-Proofpoint-GUID: XWgcAmKWuYyU-4JlwFRCHU6ProkALnWz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-15_01,2022-04-14_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=744
 malwarescore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 phishscore=0 clxscore=1011
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204150041
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Apr 2022 14:26:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56774

This patch had been merged into u-boot upstream. Its commit is
29f7d05a347a("dm: core: Move ofdata_to_platdata() call earlier").
So, remove the randundant patch to avoid building error.

Signed-off-by: Meng Li <Meng.Li@windriver.com>
---
 ...Move-ofdata_to_platdata-call-earlier.patch | 51 -------------------
 recipes-bsp/u-boot/u-boot_%.bbappend          |  3 --
 2 files changed, 54 deletions(-)
 delete mode 100644 recipes-bsp/u-boot/files/0001-dm-core-Move-ofdata_to_platdata-call-earlier.patch

diff --git a/recipes-bsp/u-boot/files/0001-dm-core-Move-ofdata_to_platdata-call-earlier.patch b/recipes-bsp/u-boot/files/0001-dm-core-Move-ofdata_to_platdata-call-earlier.patch
deleted file mode 100644
index 996ad10..0000000
--- a/recipes-bsp/u-boot/files/0001-dm-core-Move-ofdata_to_platdata-call-earlier.patch
+++ /dev/null
@@ -1,51 +0,0 @@
-From 336d86ebd146905cf4384912f4f27699b6e37c72 Mon Sep 17 00:00:00 2001
-From: Simon Glass <sjg@chromium.org>
-Date: Sun, 29 Dec 2019 21:19:17 -0700
-Subject: [PATCH] dm: core: Move ofdata_to_platdata() call earlier
-
-This method is supposed to extract platform data from the device tree. It
-should be done before the device itself is probed. Move it earlier in the
-device_probe() function.
-
-Upstream-Status: Backport
-
-Signed-off-by: Simon Glass <sjg@chromium.org>
----
- drivers/core/device.c | 14 +++++++-------
- 1 file changed, 7 insertions(+), 7 deletions(-)
-
-diff --git a/drivers/core/device.c b/drivers/core/device.c
-index 4e03708..291ff4c 100644
---- a/drivers/core/device.c
-+++ b/drivers/core/device.c
-@@ -375,6 +375,13 @@ int device_probe(struct udevice *dev)
- 			return 0;
- 	}
- 
-+	if (drv->ofdata_to_platdata &&
-+	    (CONFIG_IS_ENABLED(OF_PLATDATA) || dev_has_of_node(dev))) {
-+		ret = drv->ofdata_to_platdata(dev);
-+		if (ret)
-+			goto fail;
-+	}
-+
- 	seq = uclass_resolve_seq(dev);
- 	if (seq < 0) {
- 		ret = seq;
-@@ -411,13 +418,6 @@ int device_probe(struct udevice *dev)
- 			goto fail;
- 	}
- 
--	if (drv->ofdata_to_platdata &&
--	    (CONFIG_IS_ENABLED(OF_PLATDATA) || dev_has_of_node(dev))) {
--		ret = drv->ofdata_to_platdata(dev);
--		if (ret)
--			goto fail;
--	}
--
- 	/* Only handle devices that have a valid ofnode */
- 	if (dev_of_valid(dev)) {
- 		/*
--- 
-2.7.4
-
diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
index 4587d3d..e50acf5 100644
--- a/recipes-bsp/u-boot/u-boot_%.bbappend
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -6,9 +6,6 @@ SRC_URI:append:rpi = " \
 
 SRC_URI:append:rpi = " file://0001-rpi-always-set-fdt_addr-with-firmware-provided-FDT-address.patch"
 
-# special fix for raspberrypi-cm3
-SRC_URI:append:raspberrypi-cm3 = " file://0001-dm-core-Move-ofdata_to_platdata-call-earlier.patch"
-
 DEPENDS:append:rpi = " u-boot-default-script"
 
 do_install:append:rpi () {
-- 
2.35.1


