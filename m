Return-Path: <alex.stewart@ni.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A46DC48BC1
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 20:15:21 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.85])
 by mx.groups.io with SMTP id smtpd.web10.16926.1707768914594183154
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 12:15:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ni.com header.s=selector1 header.b=g/v/117J;
 spf=pass (domain: ni.com, ip: 40.107.223.85, mailfrom: alex.stewart@ni.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BL7Zqf1nx6Rbal0ppL6pz9d/+nZ84lkm6beNwW6eS5Rt6uGsE3RuSzBt5LwhrJVRzZbsOCQSENDIU4iNnKhB+ZnC78y1COgd1/FftYZgIGyov4ES8FRBv0aQJPgx6JmftudqZ2d7mS2yfu4UMRsWqIuw4gKsPWsCNnvMn3K2Mxp3Zj91/Mh7W4WbA9V1rWCY8Gkx+5izU6CmsfL3HMY6NYgEjpGC7LxOb9mDrZWAN3Xtar8kKhaBPCl+dWZYmEId4tVlFb0u1sOwfEkeW+1I6nT+tA2L7eME7Q/Q1VzvUxQS/JCusWuykDw4JIk7YOhnVS2eTtZ9I9SIWX6WH2iXww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x+RDhX59nOgGrzaBj4gMsjzzaJFvXFTBJgjMyvquoUs=;
 b=ZcDssD1sSU1XrtK1Amv4ew8WsGGvgABtDnKTr6wICLRABEZuy24ygjFLuVq9O2nbSalIqZZdAD8HKSA3vAHtE37+BFGr4+HRHEOLqPKLueOhsWxr2o+c8rSrvMFbLv+nV+yhGuSeLLgzQFzqATn1T7UtU8Rr5/kGSPBvc/X1O/illbwlG0i8jy8FlVoGlowXuiY5rBI6kRQthUeYaHKh9KkbHt94+7e/RsG/PT6EUnjsxm0p5zoCJuyAK7IIwPcQERoIKKFZ3m/AAaGhwHZgiEVd0bDjdWnBE13PU80qelss+AqEkBPqoF9UkUu5lJ5EpGl2jQv/VeTb6Kkayz8MtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x+RDhX59nOgGrzaBj4gMsjzzaJFvXFTBJgjMyvquoUs=;
 b=g/v/117JYruVT0DaKtKAM6Y4aDfCe/HkP5bxJDLz7tLsL7QkK56jhb4Lns8Pne71+NsdovvjWvKO3kOnKGyt8Zj5AZE7NfiE54X25dzC4OZQ6HPwm6AAFTlI+ul+Vf26alcMD5zx3PIGRTeeUcK4nBLRPwXHPNFGX7xC62Qn0Jc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
Received: from DM6PR04MB5292.namprd04.prod.outlook.com (2603:10b6:5:107::25)
 by BY5PR04MB6915.namprd04.prod.outlook.com (2603:10b6:a03:22b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Mon, 12 Feb
 2024 20:15:12 +0000
Received: from DM6PR04MB5292.namprd04.prod.outlook.com
 ([fe80::cb8:2d8c:9623:240d]) by DM6PR04MB5292.namprd04.prod.outlook.com
 ([fe80::cb8:2d8c:9623:240d%4]) with mapi id 15.20.7270.036; Mon, 12 Feb 2024
 20:15:12 +0000
From: Alex Stewart <alex.stewart@ni.com>
To: yocto@lists.yoctoproject.org
CC: Alex Stewart <alex.stewart@ni.com>
Subject: [meta-selinux][PATCH] rpm: remove incorrect packageconfig spec
Date: Mon, 12 Feb 2024 15:14:54 -0500
Message-ID: <20240212201455.3627475-1-alex.stewart@ni.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: QR0P297CA0028.MEXP297.PROD.OUTLOOK.COM
 (2603:10b6:3d0:16::17) To DM6PR04MB5292.namprd04.prod.outlook.com
 (2603:10b6:5:107::25)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR04MB5292:EE_|BY5PR04MB6915:EE_
X-MS-Office365-Filtering-Correlation-Id: 12db6368-6ae0-4d7c-8afd-08dc2c075143
x-ni-monitor: EOP Exclude NI Domains ETR True
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Ug/H4X+AhXj/it0qK/5AsgcklM90ByW+Dd+5NlDyz4QlwOfOU+KffOh1xeA0PBCVYEq0tGzEwgm5W061RTyw7CGuf2vNoLuoq1ZFQjOZSOhBOt48gqitXTfSqgZXfrmeyCjLdUH35cPNALohAiJiH+v2swJ3eqBXzpED6eXKoFLLaNujemtVv0AWHvpdx9/JpHoSyRdpCu2geYpK2OBi9DZdhVCPbn1TR7D7OxTAbc02H9b2NwxG7pxwzSgCIsoqv49hv08P8NCOnJ9+HqY0XHlkPU52TAu5kUav4dfZvqv1J7jySv6OdxcUO+dNmwkPxKMlye/vMpyHN47kWSpb2nl5YQMJkRH/e88JmcXRSXsm4kSG94ZCuhaJvGHXqDVWP289s1X9xmsmQ2UVYXHcifsXou/h/vK+WgMfhjOlif1jJCAl9XmfuvxOZvF/XjvOoLUXwEpvjHlg1WoytLd3RTX0SdPyZV1wE4Ahy8V3+3BU3xboErJVnR9ySSUUfgLC8P4KhB6jKFeRnFeP66QR/28nL5XwfySQz7MXy+IfezHaY/bzAWpJWuTGHu7h5yeG
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5292.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(366004)(396003)(376002)(136003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(4744005)(2906002)(44832011)(4326008)(8936002)(8676002)(5660300002)(83380400001)(66556008)(2616005)(1076003)(26005)(38100700002)(36756003)(86362001)(316002)(66946007)(66476007)(6506007)(55236004)(6666004)(6916009)(6486002)(6512007)(478600001)(41300700001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Qfh0fPMd4nzjjB5jCX56Yhcg2WoJHD2ZOt5eMcLg3hLmEKFPT5aBBy8EbXd2?=
 =?us-ascii?Q?vPfbCF3E1Hld4x2NVj8gayQKC+iE9QfXH9PjpaXQsOSGuguTyMBsT66XSrrG?=
 =?us-ascii?Q?4kEMPtfZNDEUSV/szlKVVrBAouiNoRxPDZ73RYIt1nSZtCfB3JdIoGI+R8c1?=
 =?us-ascii?Q?XphpH/T453Z7eveLPCvogoDHgNrS9py1RoIq2/rhHBsHdwdI2cEGT3YPPoaq?=
 =?us-ascii?Q?4GaZAfAGYYnYWFGmEVCUcwb2eBl5CO0w0jSwBrm9S5vfrqCbGNYZRHBPuGAh?=
 =?us-ascii?Q?kMDP9TkDGSDnG5EBhvZ3I3I5VlnQwNgxxSTutssi+BWPINmlQ7GyPYtMdFfM?=
 =?us-ascii?Q?X9crG6l8N+3O7Yua/ZDuoYf2yq3+ehvtbY/mEYGA7zBN9rwmUNohHEZ1I05D?=
 =?us-ascii?Q?LkTKNWFNfx2uJhp8bjXUDU8flp4ZF1P/jyfIY1l0X/XXStCnkpJ108S9jII3?=
 =?us-ascii?Q?MjQmDFMQiU0YmVmmRIRqPBmrxqQ0HiZmHknnsnc2hDCZrdh2f9SfIIUFLpNH?=
 =?us-ascii?Q?WYxx+THC3xqqASaEPYVZwy1oFCpgjBM9LELyOP5op+hnFcXe3u+NPIokxx/Y?=
 =?us-ascii?Q?Ae8/UGIAcECmeRjCK3NLR5oMQbmHp8n+d6NzM+0/twpYqG/Gi6wknjRYDzeq?=
 =?us-ascii?Q?ZNj3Kuew1Qy8jIEFuGlxHeDu45Se33QDnH6dg65wWSjMakhDV3FCEblZQiSu?=
 =?us-ascii?Q?4khSbGsw0tiNiTVqIGTEf0G1kGMfyU41MT18zP1bku0z2T/jpzAf9Mg6rJV9?=
 =?us-ascii?Q?EsYSzddOC5/kjZxasC9fU4jrb7Lai9fusibRJPIXhO8bvm2NMEcM1nkvJBPG?=
 =?us-ascii?Q?cuiCENq0FdM0EoyGzfLKaHOgwF6LYXFpfitExFQfTUt1z2kbhCMScz95mAPt?=
 =?us-ascii?Q?3waLuJaATqhnPQET7hcmV6X9hbwBupjEEI86xKa9IJEtI9Y1eg2wtB3c9BfL?=
 =?us-ascii?Q?pmHDHoHznfTkWbB5l3wxFpj/7/0j8l3vJ6Xr7Hc7iAfuKoDZZu4lyt4qB1PD?=
 =?us-ascii?Q?S4BKQrbf34J0+eKhHnp95/KPsiSDTXIRoHVbYyWAt2pzO4Lve1ypGunUPLcU?=
 =?us-ascii?Q?6NXVMOMnJXL9NvMqqxdaywpWSyRG2xo4m+ExVEqKWewJLDbqwuZFeH9xQJQ1?=
 =?us-ascii?Q?v1Mdjd079fssxxKD79t95LADlshAe+oIPmS81Zrs/k/7D+VJ0XmBBLEjsXve?=
 =?us-ascii?Q?sSb8t+cuPfTBEiMK38FXYWEtJ5j+AfHNEPWqkpnjjA8BL3uc6wjMWgypVLTc?=
 =?us-ascii?Q?O6IWSeCkUa3m2YlrhYqmcaGuJ/a/29DRVjFulOajaSp/ZBqK0qjNln1QayL5?=
 =?us-ascii?Q?lkQudNPziXy0XtwYwfdu51E0lzjJeSyrf/pqeenaKXCs/JpnWwzEskFdtPDz?=
 =?us-ascii?Q?DaRWHk3qWkZmF2Dd+s5LxtYoFqSyGIfto10P0ufOFw9YpiG27NU88MHcTUHP?=
 =?us-ascii?Q?XXcuji/sWZNg0uwLdzo992VEilaQU7fehUY3qkm0e8wtbylJ3a3ATaatZemF?=
 =?us-ascii?Q?a/fZfLTaeb1wc0BONv8Kx6DiKYzX2eKgRJvR17IVfvRRXveHciMCCurdr6r1?=
 =?us-ascii?Q?ZPIo9lNFQlMxpa0eo5ubVZJ1pCE6tsmT/3/R9ZXB?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12db6368-6ae0-4d7c-8afd-08dc2c075143
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5292.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2024 20:15:12.1197
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L+3EocPp4071M8c+/ROVz2BNjF58+pY3TW0YlfSiDN/3NIeLBldHdZfFDYhIOXEVDU/9VFlxPV3ElCA9tbKBiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR04MB6915
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:15:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62463

As of recent recipe versions, this layer's bbappend fails rpm-native
recipe configuration, with an error that `--with-selinux` is an invalid
flag.

OE-core's upstream rpm recipe uses cmake flags to enable/disable
features, including selinux support. The upstream recipe already has a
PACKAGECONFIG[selinux] spec which uses the correct cmake terms.

Remove this layer's attempt at using the old flag style.

Signed-off-by: Alex Stewart <alex.stewart@ni.com>
---
 recipes-devtools/rpm/rpm_selinux.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-devtools/rpm/rpm_selinux.inc b/recipes-devtools/rpm/rp=
m_selinux.inc
index b6e0e7c..8c11cac 100644
--- a/recipes-devtools/rpm/rpm_selinux.inc
+++ b/recipes-devtools/rpm/rpm_selinux.inc
@@ -1,2 +1 @@
 inherit enable-selinux
-PACKAGECONFIG[selinux] =3D "--with-selinux,--without-selinux,libselinux"
--=20
2.43.0


