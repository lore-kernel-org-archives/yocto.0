Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7100.1608124140637827213
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Kgm8d8kD;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2079.outbound.protection.outlook.com [40.107.93.79])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 60ECF38C06D7
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTeQqmMDKNtO6ge4/0L0nec4aq4aceD+yhKpfXV9op8TgUc9mlyVaFRrAKRSy7MzY60hDuG3/LB9VhfftlmpOlBAmZDhUT7tqVbQIr3M0GB7b4S01FrRHRA45Mk7UOXLNBcVDJ5PYBJw+p0il/1nCUql7hwExS37DOUOCf7Mo5S/kJI6Qgofm4GvVZnhxvjdioN1WgkSScnT9mqXLkzQHYxR7tKltH27Gvxp3jOyxem+fE+8UxLHuZ4QYS5rbmmlQc0zPkFiIX9fGreBfnpaEsJ52FsmRyh6P0RtTmlGxz5UqQc+NcUJHmNgLtJELIiUmvkwAboGTA/l+Kih/L/yLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfP7GLce3CWs46VQ8IeH3jThNCrTvrphnG06fCEO1cI=;
 b=EYeOTp4c/FV+Fcn0hUMYiQi4NaiAIgAHlK4CPEOy/jyPb2pZHhapn3fddqAe8emMeY6DIZCxQ1PpEBOrYZaWT0PT/Y0eWgsgMXS6MzUG3cmD8KIqsi9096/FPctUITrOZGK6UAGNzYuyE9rIBQ76XWdzNZgADwiGA9/BGheb0xQdQiv0aXG+DZz2rUQdwfvb+vlKa4XfR7d3RD9in9gHmhPS4rSdZHnFyiJBFUaSQC4t4WAltUIyl2cCKSGPW9e1w+iZLA1TfSvPhu09kb7oxqBP/JXLny3nl2NTcjhjCoHAX+pmr1i2DHdAwonhq4ya4JUX0oO8syFGXjdh15Fz6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfP7GLce3CWs46VQ8IeH3jThNCrTvrphnG06fCEO1cI=;
 b=Kgm8d8kDH0NIwY0YgDHnpTZpgbiK/m8KivGuCQagIQrmhsnWVqUO4vzJ54RpFteZbl89zolpx2NrrZnkNN1S5oTNuVuQ0hGhvPSyqx5kPQ1jOOQfbkv6t/AwJXFLdnfGwQO42Z7Qv4WLKtjbaH/y31Y0uUD0M/MPc3+SVtM8esg=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:59 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:59 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 7/25] python3-astunparse: add 1.6.3
Date: Wed, 16 Dec 2020 21:08:04 +0800
Message-Id: <20201216130822.28476-8-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3a051754-1907-4f46-958e-08d8a1c3c06b
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577CB908E377F3F5C7C3E9994C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1079;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/UXMl540ClySQiUYsEYUKUIXfFCoBSgSFqHCNV+abToM6oyNCvdsJ1dEWQbBoqOxXsH/gWoFHAtdDNa9CSt/f8elZTG7xjZBWnMyB/CsNN81citz3T0y396eJ0FqO+IsnJw8VpoT16XqnEwM0Kkxw6rTdATSb9g4EJKDC3KWiA73NrOk3J2xDSgfJZwgbE9nxu1+nl7hfIdpjx4+V/2x1y/zHyCnna9jTqOTjRUKKkCKdGPOpevB+vqxCWUEVi8pvlWff1tXgmRhvXAXPZSD9jvk2eR31qY8Nwku2jaDC70qPg+K5h3Y5gECL1jQ6btU1TOMrYyb1XwDtfnSfOaSFWKUJHnvmGy3wu1V0HaP6mIf54m1fwELBSYryoADM06bYVljxZu1YNE6TxZIJ+ijpQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(4744005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?hSBZYxCqh3MfEbol8E1gGrN1c3o7RClsKtMnuW3dpMI50e/VCJzC4JMbquso?=
 =?us-ascii?Q?TI9DG++78JfTFxYviRZS6TfuzldPIwZ9V8z9fcxDJW5mCg3FuUUfFXazUfH/?=
 =?us-ascii?Q?ohGb8NOWsQqPnBE8tIiMknSUjmQFZxbdYZQw6SNubAdV7fyzVQJLZqYc8rct?=
 =?us-ascii?Q?dAibxYygUqlpHSl1tKFVqWF1pFC30QLx80anBy17uz2fZ5TpMDw9+cSaqf4a?=
 =?us-ascii?Q?/8D/3M6z5bokvIptfkXcc8ZhiS0bab4fI72vceXD2XQpITS+iaw0ZM+Zpsxs?=
 =?us-ascii?Q?Qcc+5aH+IdJpZzhCukAtZH3kARuhp/2XpmA38JNZxSDAmBIL+j9A4ZIoZ0kT?=
 =?us-ascii?Q?jQW/V3iSSLqeVStdr4/QKTxxC0vfx9ztuIVr8L3nzDvpX4GhKARQGEe5i6Tw?=
 =?us-ascii?Q?3eSfChXwnbLsZszl5+2CnT7mvfTe8cZNmveIUWge1MGfbh8xcPbFQbYY+ijG?=
 =?us-ascii?Q?UIO5VCaHYep/Q7QFmTjpQYo2YG+Oa6dybLnF5R24O7YnyyFGOLzW0h9+Hpne?=
 =?us-ascii?Q?lYzw9MNxEEbQWyGjZ78SxG0YTrnMEMU7+DHhxnarkXy5qgYus/GK3Jekm/ld?=
 =?us-ascii?Q?Bqu0of6qKxKWQ43cv8C2jCkIEydaVVSIBbvU4D3DTL/g9TwQbSFgphOF40vk?=
 =?us-ascii?Q?c9iFi1Ij0pHvlNq03bzVA6gYPYrIPEvuPEY8MxugpGoS+gdTAerChbmob8gP?=
 =?us-ascii?Q?3+D8mwY8F7ISyaD02FSji3Hl1A0kQIEGNGNTRbqKp15dy73RxrNC59VFz8bb?=
 =?us-ascii?Q?2jFLaSGBHw16FSMPwdSa5Nij0AD4USEZtOkeL8IkDMVDb0mMeUQw6tcNB3xm?=
 =?us-ascii?Q?NPvSMblPNBFAdQBxm3jV3eq49bVVKby7vVA8Y8MGC+d5Xd95466caxcT9dOE?=
 =?us-ascii?Q?OxgrReN2l6ROtgAeTIIZ6CUUH1ujEpJfZakf3zo5IVy/hjZSmbxmBW0xErXI?=
 =?us-ascii?Q?3qMPk00I3luJeo5fMDcwn2gcW05Wwir32llS5zQ5W7f4TQwrWz79f59hj4TU?=
 =?us-ascii?Q?Y7SK?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:59.1216
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a051754-1907-4f46-958e-08d8a1c3c06b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mUKt2oSliCv5cR024DaSUeuMAVTvEyB572UIRgtq60nEHlHck7ouS2fLOdSokCCl5mf8g+9XynGbyTwtraBGcavM2YbQhCNetR42y80IoZQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorflow 2.4

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-devtools/python/python3-astunparse_1.6.3.bb | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/python/python3-astunparse_1.6.3.bb

diff --git a/recipes-devtools/python/python3-astunparse_1.6.3.bb b/recipes-devtools/python/python3-astunparse_1.6.3.bb
new file mode 100644
index 0000000..c8977b8
--- /dev/null
+++ b/recipes-devtools/python/python3-astunparse_1.6.3.bb
@@ -0,0 +1,12 @@
+SUMMARY = "An AST unparser for Python"
+HOMEPAGE = "https://github.com/simonpercivall/astunparse"
+SECTION = "devel/python"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=7a7c771110c28a37480b73d07ad6d2a1"
+
+SRC_URI[md5sum] = "2cea4d8e49beba7684bac890e73d6a40"
+SRC_URI[sha256sum] = "5ad93a8456f0d084c3456d059fd9a92cce667963232cbf763eac3bc5b7940872"
+
+inherit pypi setuptools3
+
+BBCLASSEXTEND = "native"
-- 
2.21.0

