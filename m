Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7104.1608124122130289280
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=TbvgcxVM;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690046.outbound.protection.outlook.com [40.107.69.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DC97938C0647
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LMTab8vuhgkp15ruhf3MnHM4CYAUiw/e50WSyO5DQR4sDL4p9w3/lYFuISSDWWRmUuAxSh6qxlgrQT0xICUwwcQ1ymY9o51MmHxNTI6T37fab6xZLUneTHPth5NZEGQBqkcyCkGlILBj6qS2mxw5fL3FLsUaWpP8vjfQTa+zhHGw6dyxECLLXA/IPbKme/3JrnUZQtUdPKTAWUGhdYTD23xUGZ0+opOQf89D6wMtmnXWGYt3M6/7F2dRred5RIfqDcQO+Tye/yfUn6AWlesYAQ+ckIubmvSCPjJrEkXWMcYqIYF3/oGSNUuJo62C8pm64ISx+msk1onGt3C6vaRQXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4U7VuZY32Dy4/uUIKQDTQh3k1yPIH5HJk4J4m2irEQ=;
 b=H956Etj2Jq2cGkIU7pvM4TL2k+iXe5nW4fxNhAEKe2jJUh4eRZBBq0aZB+b59Iusnwl381PKMTyI79DmqHBkelyNqlSNpJrTCC8GHT9diwT2AkBlC3O2G0R6vVyOoOQS4+tcunSgPL5c2G+gTb2IPp4qfmgRyYLqKpktgg0Fk34MeLieCfysXJMStSMvBKbuvyRKZB0wtvD5anET4vbPlY+vmehXx7TOEGSE9JNHluGxGm2Aea1ZunvLCUDLokXthbu70Yjw8cDUpo9CoTSvSknXfHQHm46HZaT6FLlyLXuWsGpaEmVAcDKym0RJ4HA3d0HQNu5eiBYCZWXwDqTBLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l4U7VuZY32Dy4/uUIKQDTQh3k1yPIH5HJk4J4m2irEQ=;
 b=TbvgcxVM/s3lTTnlK3QfiKc1Gj+hLDmRyBPsW7U7G3WCDZCNxxmTJdb0B7crRltVFk3NonpLq0aWBpBXybjgBZk2x23zrpuDeupDe3daC1QszPsRe9DxYiC4zuYMMdZTpLl9p82pehLBMT/2ojQwWu85W5L5zrNGLhqJP2ymq/M=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:41 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:41 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 1/25] openjdk-8-native: 212b04 -> 275b01
Date: Wed, 16 Dec 2020 21:07:58 +0800
Message-Id: <20201216130822.28476-2-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: add73d91-e0b0-431e-1790-08d8a1c3b5c1
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45777530F25CCEC3EE25699394C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vw6iukdUqeQFu9dvqyEDsCnbdAk1QEBaVXAB1DXPwDsNDqH90EGfbmDLFvy6e0i2I4bn4+7NMQ7eSOkfF7HgzfpCdlVla2wRZAj09/po5bG0S9Xt6Pfv3UC8xPbvNnlok7BsLwo1jWLUXKv4RPnA1w9fG3Cb1JSfu8/UIwfYXTR/4W0Nk7foOj6o1PSdlk+GXeJ4xmdmcwK8jD+EnwLaMmhbWubU4Ofz1cqF2Krkq8hEonRvZI9ORDuoLjRfudXzYTmXHlD/kT76cQZUl3SurQivIotXG+5/TCM7T+isFIOqWGrzjfy0AXJ2L6h3f87dGqEM77piFImvP1RfbEJK3TG+FlwKOkytu1jdWRZEGe97lMGBC6fS7tNOLA6GniNoO1eDOIO+T7oEWBaTfTJRVg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?+8iWjqlVZeMjmdSzprI1AlWKnChMRDMZkRaMy5/RyMv4w1SnVZW6KMFZBQo0?=
 =?us-ascii?Q?ATc/z1MrV41qJ/ppb3ojXOMr+EBpxogIZUaq7firHgX+wmE6Zynn0RQz9Cs5?=
 =?us-ascii?Q?H0NDdFAueLYpa769nsFC86uGxlsOAziYNtHWt9l03/4tLqzWWmJ5z3McQ7HN?=
 =?us-ascii?Q?oPK2iprUX/6BeBqfT16M7p0g4PoRfxc2T5054wmhPj6tiYWFdNdO5+kB81wq?=
 =?us-ascii?Q?LBelFTkD1rNS2+0DzmDCYXeTfVl3Ee8ZaaZM7stuJXtP8b2cBvLNCov8BzSa?=
 =?us-ascii?Q?owNVOeG8kgJGYdxZhxdbP0IT4XLmVd63IG+3In2wOeaaMWw/Yqy0ynDzfwWl?=
 =?us-ascii?Q?aMwG3JKzRlE3E13mLwMTKaM1YRaWL/rQDhl2g/z2eXmn5V68eHwIzjrHApMH?=
 =?us-ascii?Q?zOF5fRlnx3qzr4kEjW0nEpaiuDmZ5v6AtDyvYMNLjH2XDD5GIontSKPWbDl6?=
 =?us-ascii?Q?49GzFarE1kJOPRof22jOkn19OklCbUvwnlXrhyE1OwC3LzmzFaZhzx6xbn/7?=
 =?us-ascii?Q?JwIqj8rfI66UcncvWG470Cz9dw3KFhNLM+rTIFDXZL0vzPUW9BA8N9waI1d5?=
 =?us-ascii?Q?zRj/f6yc0Pv9186Ur9hEcXMDzQ+wLklRVXZXR3ix4I1/4m+zhkHLb37kaVb0?=
 =?us-ascii?Q?nJc17XhpATOL5LOf/B3C2M6E1nHjb5jzynQr7QA2rsexlfUk6RQNAZvHY60L?=
 =?us-ascii?Q?N69YO+AdfLgKx0zrHAvDuI3H458GAb2mJt2jfYXJ9XVNM0h3Lo9TkxVub005?=
 =?us-ascii?Q?V86GVzCyNUHpv0SOc25BJzTPF23MGJ7e4aGOP+GWazof1ItZQScFcSXTBjJ2?=
 =?us-ascii?Q?JifTFa7t1Airl0qIb7DW5lrrHY7uijkWqLiy3WPqkKgBbaB6wi3hP/s6kMPr?=
 =?us-ascii?Q?G1/6EcgN3VnuZKWiEUaOYYIcy0m1JApsNphOvyJ1IuoR8Bam4/undyBVjr6q?=
 =?us-ascii?Q?FUo6fuNgz+kD/TVZPoAyJsOgMPDVxQHauX/LdVDqPZkhZvJhT7BQjxmEbXzP?=
 =?us-ascii?Q?FuNR?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:41.2360
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: add73d91-e0b0-431e-1790-08d8a1c3b5c1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OrGv5CZOwAW/kKH5hKoFIN0D2fBmmZFa3D8gQOMj0zHAtJ7p2gVhobO1VrSS3GBu9lP2EIaCgQpLjaVUnFx2WBi7VcZFxPN2bDH0ageDp8I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...njdk-8-native_212b04.bb => openjdk-8-native_275b01.bb} | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)
 rename recipes-devtools/openjdk/{openjdk-8-native_212b04.bb => openjdk-8-native_275b01.bb} (78%)

diff --git a/recipes-devtools/openjdk/openjdk-8-native_212b04.bb b/recipes-devtools/openjdk/openjdk-8-native_275b01.bb
similarity index 78%
rename from recipes-devtools/openjdk/openjdk-8-native_212b04.bb
rename to recipes-devtools/openjdk/openjdk-8-native_275b01.bb
index 788612a..dcc1780 100644
--- a/recipes-devtools/openjdk/openjdk-8-native_212b04.bb
+++ b/recipes-devtools/openjdk/openjdk-8-native_275b01.bb
@@ -3,13 +3,13 @@ builds using source code from OpenJDK project"
 LICENSE = "GPL-2.0-with-classpath-exception"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3e0b59f8fac05c3c03d4a26bbda13f8f"
 
-SRC_URI[md5sum] = "8082ad8dafec378f2a4b24cbfdb4a9a4"
-SRC_URI[sha256sum] = "ef6a3050a1c3477a6e13c24d10ab36decad548649a260559d466467401db15de"
+SRC_URI[md5sum] = "52c1f769ab67b58b4300713fb5d46a47"
+SRC_URI[sha256sum] = "fccaa6cc14571813dbb427ac08d5acd034782a2654e6090ad4d63e7200011ac4"
 SRC_URI = " \
-    https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u212-b04/jdk-8u212-ojdkbuild-linux-x64.zip \
+    https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u275-b01/jdk-8u275-ojdkbuild-linux-x64.zip \
 "
 
-S = "${WORKDIR}/jdk-8u212-ojdkbuild-linux-x64"
+S = "${WORKDIR}/jdk-8u275-ojdkbuild-linux-x64"
 
 do_patch[noexec] = "1"
 do_configure[noexec] = "1"
-- 
2.21.0

