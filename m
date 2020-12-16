Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7118.1608124157784598403
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=YlmV8i2k;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2049.outbound.protection.outlook.com [40.107.93.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9695238C0865
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=annNovutgb6XiITIlNqin8C/2nOIX3iYSIX3z9vXA6pJBbiDT1IZP01zFiCuujQQ5U7d+yd16iHCfj51ytA3bUOYlB3oPgCrCaeMCE0GPnclB9efdxdp0BwpJVaxH8gdJndA4pl8hwHcIFVtTcV/JN1YXLE91KIaZbHOVC6wjNN+Ut9+zvaqKFEWZurKaD60/JIfvz6Al/d+iH0xtXDITrp0Gwl/l9vKNT5CZ1WJvfivOVs7BYrDHbIWFxsuKnfOX0GPQ0t1jkNlMP0u0b5ECgCXSsly9RrydqITT5NDYwoHq7B9/sAxCNRRNEPuRjOy7ylHpL2/a+vho3UWNKG9gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Oq0UHupJHFpGTC/+OJkElgCWfTgDj8XJL2h5Y4PQMw=;
 b=jnuYiDViFQXD6nmLwQVNyTUPL4BpHW/AWRXtzarnXQUH/OW8bDpban0nYa9fDNwX0HCAinDuUckwYHw7/8F3sYqClOdazgH5GdgXpIAJ0fxUKm4iA43c83D5nPLfP5I4flpqRnSOXHfaxcLRoH7mcZMNN9hB7VKcst/JxQDKMcjqTH8YpKx2nU9/M8RaDlHUihNlZJe08Y+o/zaTToohx5HiZdq+unxCp9PfsCkFceouZLYKrK+f0sE1dVF6Sm0fflFlOWpqXxjd3zuL6xQyHr4XQfIi1WP8J+vLEx1+WEWLvhviQIBaF0paptJWdjywLytTDi/lJo9lplfGJSRdig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Oq0UHupJHFpGTC/+OJkElgCWfTgDj8XJL2h5Y4PQMw=;
 b=YlmV8i2kpzX4qgp2BgyL95YKrammgr/SAcFySuXNCb1j0gcr7qNvC0cU2rjuEtbEAlMd5w8EIPuxSgxn3UZPUJmv1CINfbjwuc/h2H1vKigLtNCn+/C7Bi6Rj3qYkww3X5wwP39nFmmMTKfj/H4S8hqalcSE6IgNnqAWtPBW2IM=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:16 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:16 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 14/25] python3-google-auth: 1.6.3 -> 1.24.0
Date: Wed, 16 Dec 2020 21:08:11 +0800
Message-Id: <20201216130822.28476-15-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a927edbd-7481-40b0-accf-08d8a1c3ca8c
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45772E8D5EC75E4DAAEA0DDB94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:813;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pN52G6USFMCm4wEdQ9akl7WX+TT0zeNPW77IfWcIC6AgOuciuX+DZUqx2TDB1vo+RE+Q7bLjLQyTgWq+eSfgj9150BJKmejs8/R0ZqxKVgB1HmOx0aiGGIZ4sHfkUkpqd5ldzmG4AdiU10EfLfIAO91CxFhiECZ/zmOEzUaQ5idXf6ACz2uPwgMhoSpZHBsNlTk6ZwycnGCpG673wUSReAIwtGMYHcmqGMJPsaZg7JynLepb3u4FRdAIypAdhST0npL0XMIaaAFve0NlUvzliJg/SzBVrwi5Lvq6+BsABiXCMVrgpYJ0Gx9A6jUp5hCXU2mrCmbhgMy1I7V2Nc4s1g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?pI7PI9a4EfjjhnB7caEO08QTIO9uGJFNi+lCk3tOsnDtIal1PjcQ9g4ClzHv?=
 =?us-ascii?Q?s7Ao7RHXk/tQY9R0H3nHnPilXlOQecauwT5Bq/pL4k2ywkvwQby6On1u4e5t?=
 =?us-ascii?Q?ByTugz7tBecGdcLqYwHWDWXokX6xn/N2NS365tlLcZtb11FL6VRB4pJyLYiH?=
 =?us-ascii?Q?O87OHP+ZTXIhBOwNVUORTZKd4sArApZ8F9xBxN7JiojunujjMnt4EVKaIEWT?=
 =?us-ascii?Q?my1GPecqVYz6E+At1hvZoh1RkWRE76ijmzBYr84C40CvN4viA7pPuDzAFa97?=
 =?us-ascii?Q?nySm6g75jam+M8eXMZv1WmQ+en2d10ZukegdvJAteOiKL2l9wElBomYaMfIQ?=
 =?us-ascii?Q?raWgSJnkqSp3+/A02Nk9A5orWrtv8wKfFZbCK9/nxG2Rjg5rIPvyM6d0xQEP?=
 =?us-ascii?Q?MbqMUyr9DL72Yi/o9hRUp9zLUxzG+KaNeQYX6iSNzgc2muFdGXchqEPDf17Y?=
 =?us-ascii?Q?XRYVm7YfkSwPeWN8xwsa6RCnZbQaipur1Zyskb9FBTnqNgfXaq6FxhCw3NQo?=
 =?us-ascii?Q?SeR2B/3oyqDI1hEQEjaW1lqUW5l5ueQnpuJO7B4AefkU7dfddGbOMCytf+E3?=
 =?us-ascii?Q?Th8TskTlnFZHv3vTVFnBljjDYdcnd96Mg6RkBW6jEEnxgvDf5DfXOu8FpGxZ?=
 =?us-ascii?Q?JivvK/Iz0QmEd8oHkc6UIoymzKnNNlSNgRls1OYEd7vsEDT4slTr4zu4Ju9B?=
 =?us-ascii?Q?7RzdiM8gf4EVBN08b4kghrHnPiM0SHyyUm6vC9jezPlocZNMrc+DLTmFruNh?=
 =?us-ascii?Q?2TmlHczaNDebOZmprQFrvTQXpPwRr6nATtrVBWWnMVLadX1yshVQuDmbVo/w?=
 =?us-ascii?Q?ujaVmHYEUC/YV+SHdWWQBri5/4coB2MlV/ElX3OHc7qDjSlq3tmmTYpzlgFB?=
 =?us-ascii?Q?kAb8zYWRROX0jAUTNYDBVUPhWtq0olYpH/7bIymylMA/SkhdtwQfSuc+vKSp?=
 =?us-ascii?Q?t6JN10oqXVUXhXmD0zy0VD/FaLS1VjLUh++PUcPZ+iPa33tEODDZy8fh3J76?=
 =?us-ascii?Q?L032?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:16.0867
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: a927edbd-7481-40b0-accf-08d8a1c3ca8c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cngkaDchbTvSYCgtZmzRcSVAi4mxQ9HCJTmzOMDYoaXKKKSOSEWVda6BmSpVWX21kjUL00j5F6yWZP8aUOvuLynnjV93idJfABTM9RqNg2g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Move it from meta-demo to meta-tensorflow which is required by
tensorboard

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../python/python-google-auth.inc                      | 10 ++++++++--
 .../python/python3-google-auth_1.24.0.bb               |  0
 2 files changed, 8 insertions(+), 2 deletions(-)
 rename {meta-demo/recipes-devtools => recipes-devtools}/python/python-google-auth.inc (63%)
 rename meta-demo/recipes-devtools/python/python3-google-auth_1.6.3.bb => recipes-devtools/python/python3-google-auth_1.24.0.bb (100%)

diff --git a/meta-demo/recipes-devtools/python/python-google-auth.inc b/recipes-devtools/python/python-google-auth.inc
similarity index 63%
rename from meta-demo/recipes-devtools/python/python-google-auth.inc
rename to recipes-devtools/python/python-google-auth.inc
index 61e37c0..bfee039 100644
--- a/meta-demo/recipes-devtools/python/python-google-auth.inc
+++ b/recipes-devtools/python/python-google-auth.inc
@@ -9,7 +9,13 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"
 
 inherit pypi
 
-SRC_URI[md5sum] = "0440718247cc4531422e2a8f4f012e8b"
-SRC_URI[sha256sum] = "0f7c6a64927d34c1a474da92cfc59e552a5d3b940d3266606c6a28b72888b9e4"
+SRC_URI[md5sum] = "d1f8a9284283b8db69e84c41b36db501"
+SRC_URI[sha256sum] = "0b0e026b412a0ad096e753907559e4bdb180d9ba9f68dd9036164db4fdc4ad2e"
+
+RDEPENDS_${PN} += " \
+    python3-cachetools \
+    python3-rsa \
+    python3-pyasn1-modules \
+"
 
 BBCLASSEXTEND = "native"
diff --git a/meta-demo/recipes-devtools/python/python3-google-auth_1.6.3.bb b/recipes-devtools/python/python3-google-auth_1.24.0.bb
similarity index 100%
rename from meta-demo/recipes-devtools/python/python3-google-auth_1.6.3.bb
rename to recipes-devtools/python/python3-google-auth_1.24.0.bb
-- 
2.21.0

