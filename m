Return-Path: <meng.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 773DBC352A7
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:06 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.3202.1650420260909754820
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Apr 2022 19:04:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Uu91KoiH;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=11096983a1=meng.li@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 23K1ox4F031105;
	Wed, 20 Apr 2022 02:04:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-type : mime-version; s=PPS06212021;
 bh=ojHAZo851cMEl9nvPvZb377dq3MJ4KsfLWPfJ/cFL5I=;
 b=Uu91KoiHqIvl8chnDIsn9F8prXWc450EQWzpVG8/2io//utqo/bvJgwr96jpEWTXMa+7
 jY3cO4x/AMc8J8pPgSGhGJuPOzI0vY6A8S6gJ1NXPkdD1r7CJXtTLVC2rNkmN5jvyeun
 kDzTEl/81Qjniu7GG07nOcsO0zgexTZYxv7RnLTjfunRnZqoxK8h81S8AF2O2/unXmv6
 s02RuuF9iRuKEJrb1yoi6EBy5FzIfiRMiEywmsZQqInAuBFt9qXO19gnQcILViY2R9zK
 /uePYlpFe+v4N9//H2GnNUJfN8E1UAXXbhCpsnOG/sNrD42NKCW3KtMPDV7zb9i3c5xQ wQ==
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2047.outbound.protection.outlook.com [104.47.51.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ffpj2tkgy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 20 Apr 2022 02:04:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A/q82sz9FJPRxzIljA7WGM1U2G4mUS3Ke9IrsJMHsXBY4A+5gTGYK1iz63L+0bYngDtph9I0h3fw0bwp3fgV90cwxTXNC/BR2JtMbHuPk1a8WmjM6a53H4C2g6moqGgiBsbaOgcpF5MvpK7JTz24VQNjp5rvAxdzKNl0Mo71PGC9Mq0CrKyYsgzSo6h5Yj7vDIcJsljbGHfX5HbJp33dNWFpNf0u8EFxCfZGZkpgWEEcJOaKS2SYbnSu8l9EsPutrl+o2cs4aPNajM8e2v2aOc+IGzsdzJVrZSemJ1KcCPbnlUvlNumRa7iBI9IbmHy5gReJV/LmYy+0YRbOgenXUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ojHAZo851cMEl9nvPvZb377dq3MJ4KsfLWPfJ/cFL5I=;
 b=ANdE6J+VXn81enCx7jpJdGOYB2WOLWBJkBVFX9w4OclUB7RvnTdqbDoHv8lJ4UFRPT7hvrB7z/GutLwipewjSwy32zP9gXOEIUzIVNGP2uLDvC5aE2BQSvaFWQIHDwfc8GwpALO81ukfZFKzOjZ3BNYgMdaKJl4lMBYwU6oMipfg+GR95Uh0vhwUolW4YUjrNmUwP1Bczf++TIzlK1MQmAMpNEewOpmTKBpU7ElRpSr7rCOJnMCMUy9WcjCvv4kIpV2gDFPzcDEikOy4qeHbI1G1AHnYr+GJp67anZ14zgM00Q6Sb1K9q6Inzt/UJNssAxbsJODyXDANXYWQgI7udQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
 by DM5PR11MB1692.namprd11.prod.outlook.com (2603:10b6:3:d::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.13; Wed, 20 Apr 2022 02:04:10 +0000
Received: from PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::ddbe:8cfe:1590:b398]) by PH0PR11MB5191.namprd11.prod.outlook.com
 ([fe80::ddbe:8cfe:1590:b398%9]) with mapi id 15.20.5164.025; Wed, 20 Apr 2022
 02:04:10 +0000
From: Meng Li <Meng.Li@windriver.com>
To: yocto@lists.yoctoproject.org, andrei@gherzan.com
Cc: meng.li@windriver.com
Subject: [meta-raspberrypi][PATCH] meta-raspberrypi: u-boot: remove the
 randundant patch
Date: Wed, 20 Apr 2022 10:03:47 +0800
Message-Id: <20220420020347.17876-1-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: SG2PR04CA0155.apcprd04.prod.outlook.com (2603:1096:4::17)
 To PH0PR11MB5191.namprd11.prod.outlook.com (2603:10b6:510:3e::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91af497f-ebf5-4667-03aa-08da22720f26
X-MS-TrafficTypeDiagnostic: DM5PR11MB1692:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1692CAA2AC980B83CAAA35FBF1F59@DM5PR11MB1692.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	krEleM3HtHrEQochNDkCnlCwm3iuIiO7laz8DMWvPZ3Gwbt1db+dhiVjPikzhk66vnpp7pgGvICiawLd9UzBigONyzI+3gEKzw2LA4w5UbI5pGs2inYXOqonWMm4r7mBfpVEBQpPAGqcC/bo8slvGaO5mLhAvWwRe4DlaKjKFltC72bsb7HivINAkw7f0RFo5+gHoWifnoifJD6kqJ+3FdWOgxsaZwbD4QpyUDmnqNwZasyRc6zHlZ7mwZ2GGmxT7kriEoY9AOuZbYmnKLiBkpkmDtRDjlpue2SJOy+QGypqOJVzsSko9LS3d7hFEEwpzpGL6EMgZeiyxObRJQj+BSyqVGVpBtTL25gIqPFUGt0f5qrXEyxXzA9q1TAxpZHcQgbBm5JBC/P4xkdftLsAdpSMg5r2CrWLoI80U/owA0caDCCqHN0/GnQXisZO9jWXZBfk9F3UauPrKsmNkWxdZND1RrsEmRTI7OM/gEtqcSSi0L8DF7tdCcWDOaZq5sCow7FkfD2M9RwgaLtW6X9fRnAhFzbKZo5aRewAGZpNsXiNajnQipu8quTqpEnDsZBNXZv8VtXu5GbDrjt/PEFhEEZPy2dePrcshewJ+jOoMPyzNivNV8yRFCjwn68bSFm338Tu2pReKenGGqeWpo3q9dCMNDiLkl8ojTLA2PIQtSSo9OYCUsjQe4CwK56eWBqTMpFRJq8+ZyteFl02O9VetQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5191.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(83380400001)(316002)(6666004)(6506007)(6512007)(52116002)(6486002)(186003)(1076003)(508600001)(2616005)(5660300002)(2906002)(8936002)(66946007)(66556008)(26005)(4326008)(8676002)(107886003)(66476007)(36756003)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ksv8q4kQmTU2uugoLx3hptXTmvD3YjBU2RImGxyi3egKirzR9XNlw5RjEksH?=
 =?us-ascii?Q?Y5selzVwiF9YzMs6xV7nc/Bs96s5VNL3eOKRquI33y53p0TISvyZl6KLXjEQ?=
 =?us-ascii?Q?fxxDeMfGRIUr0cjlMIq7dd8R0LnC5M3HUqxeyOTuOg/BvxdRJbO9IMT/bMAI?=
 =?us-ascii?Q?1Fny0bO6pA9eZ1W5coalK4Xt5L3rSPikFJ1iv4cHmSO9zv9Bo5QlhN31VQQw?=
 =?us-ascii?Q?YNm3u0iMFxqsIzZYCtALeccPTAumCgrLmpg3TOro/U4m27Y4FmHiS3VlMO4Z?=
 =?us-ascii?Q?JxcnQJMGbIomqEiZ9bHWob9fmO3gHls+RF9nG90i3z9G9RX2YX5UQ1yj4s4A?=
 =?us-ascii?Q?MN6+IE4JW127CShBfg5v1hL53r+ITqMds/iHIpm4Yv5NtWc2L7aKFcJM6+D6?=
 =?us-ascii?Q?VyfZi+wvoWhLnJtWjBZyMglE4paTKRBPVY7PlMvDUPy23v06lNKgPbLN9jpC?=
 =?us-ascii?Q?n3JGpNJPVI1NTpFjnzTnjf+dPqUOhwYHNwTcih0wu0nr8uinlCI8p2nhTjC2?=
 =?us-ascii?Q?sgBnsNP3zTkta8fweuahObTqsLiwOpmYOeCgwtX6gOgRYHTaYldPYgdkom4D?=
 =?us-ascii?Q?1wr7nHEAZOcXQxpdty32o+2SlJna9Sov17y6q3W6DANMVFSebuUcGj/UlC40?=
 =?us-ascii?Q?R7YX6wXhgQJSZnr3dweqTUrnO5JtYX0Kdoa+pX1z60QGrSo990ROM90e/wjW?=
 =?us-ascii?Q?+Bg+cytiO4+ANRBCYUlC+V0l4aBlS1kdZtKEdVbVH9GmzHE/t8Nhzxw1y/AO?=
 =?us-ascii?Q?6YPaQzVzXssAJ0oGqPbRX+if+BLuTaluzfoPUuiq5JXHwbDRSefqNvWXJIIv?=
 =?us-ascii?Q?lEdCY2fZWg8GYZH4JDXm7/amtUaSeU/W85PMcIJUGS6z6mDOQZRnkG99OTdc?=
 =?us-ascii?Q?KMBg0vh+kkbxA7ilNavSev9e3C9tPQl+KOIZKMKqGxti15XGtqlv1L/BCgcI?=
 =?us-ascii?Q?u7fX3QtnMEO66yYnJgLneXDm40levht5kEBeYC3yecIRrAcicJQUfvsxlPxd?=
 =?us-ascii?Q?/CgBjXqD4pApdDeQJ6QuJ1gtAt5ZCf89HqdTGoH2c9K0RZSqlwlOtc/JKrcw?=
 =?us-ascii?Q?0BPN2M0itG1Cg9R8+MJ3kMxcbKydBPnWjZS5V4jcia1LX9u+Z5jeJPhFuYwr?=
 =?us-ascii?Q?d/NSgsbE+NwHUOluQ5o0XdBw90KHaw63enn3GjFRJp9mt/M3nUg2VhHhTssq?=
 =?us-ascii?Q?nYuGG1Lb8huXzpjgKQOZWr8+oBv7m4Tsr9k8c9d6P4bLJxu76s4hyGRzJ5bO?=
 =?us-ascii?Q?E++oiuTDez1ftNpV+chZpsKB5MrLRKFblNzsV47XdzkdNUq/3CVHmBVBc+QK?=
 =?us-ascii?Q?a6Icc6Y7Pk5plSG/WQRET40x7Tio4YDkEdutSpi+7VH97ezzDX+navxEJlxS?=
 =?us-ascii?Q?LcEFq8qBraeymb2YFgW1FP8O2XWCyBBJTLg6iBApg+mtdnc0rX6C9JtWzik7?=
 =?us-ascii?Q?SS0nNn7v7567Q38pssIzrM72NFzEabSenn76w3jW7YSoGQu0G19ZAJWdgWy9?=
 =?us-ascii?Q?/RPgJwkX1neMrSHDp/Ln83EyH4qR6eSmRrwI/9JktO6h59t2W1B9uTUxuIY2?=
 =?us-ascii?Q?k4OmBI3b52QeRPmWsRScmkQ8XZqtmqyThqMmjjGM0AjCbR9zyzSzpHR5kAWE?=
 =?us-ascii?Q?faYeTNLtPle8It7n7+Lbx9DJbBYxWMO1h6qcKI8LcJOZV6P7ul4Teyw0zClX?=
 =?us-ascii?Q?gmJ3kjL9CbLth8YGDMUJ3E7qTRx5EUbehAzLkxJuGXXfWCVHMplrtnahMzs8?=
 =?us-ascii?Q?h2KeutG71A=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 91af497f-ebf5-4667-03aa-08da22720f26
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5191.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2022 02:04:10.4767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 uDU+2DUsgjGTfwl0LGq9BsWzluoQCVeoQQA79fGWaeElXfTjrJWWBM3vMZr7MGZwQBBYGAP3s6vB0d0IPEFGvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1692
X-Proofpoint-ORIG-GUID: xmIDVucpTbsYDBW5ANgpqBKDqbgFHKaN
X-Proofpoint-GUID: xmIDVucpTbsYDBW5ANgpqBKDqbgFHKaN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-19_08,2022-04-15_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 suspectscore=0 bulkscore=0 spamscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=748 clxscore=1015 phishscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204200008
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56814

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


