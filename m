Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7066.1608124137225453644
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=blkvG7RK;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2077.outbound.protection.outlook.com [40.107.93.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1066B38C06C9
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fR019p6JqM8iymECUF6iuUovXeIN18rVRmMZSBicYjBC8fs8E6EbJx2oN6NXUiNuWxBgedbmghf6CAsNKCh0qW/28glf24XC061eWEidVu8MSyBOnSsrfHGIT7/68pu3utSZYiz0gaDr5KCInuivRGQO4ScscpJPqXZCkTdhV0xk+sX4gmFplcOW4+8p2gYExupGU+vh2BnWviWcM7DwEgns8ghR/Udh9slfCjX6acgjnGaTqilKDY0cgZec0y59qswihjn+NmCq+oB9zl7M/yJFGEG5EQr+mKnb54IgzB1fqV92rU2ssGQ4Z3AdHAftB4Dd6dBNt15XBiMXiQnHHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iR1hxkVes3EGur4h4BhGPO7ovXyz9SqPz7CVOdcRgLQ=;
 b=CGtOoZbKXU1B2C4S8eiI3r+PCDWM2R/4a7AKyQ/V0250X00cTb1jMe7cWsWFGEWPJGDFIZZWgi7pnNnQ8vRBFIteOe4aJbYTmHNJvlMuz2+Jyx4vFK2AqZJEERBDUDisEs5kArM8wxrsd5lmVJSi/kDbIaDC93plLk/HKtsBaoJHL1FBcPsALGx8MsCrA8g+ptlBaaZ/9S2HbV43hKOqWOup7CeDNrrNfcHc6r/fRBgeXq1QH65VXy9Xp38mbZOsm2kYY4L7GtDV1cr6RGzF5NJflER9j2/3OwLtaLVaMVVLBnVEnYciqmkcB9qa/5gVXLgF2SlV3+FWktcyVeV/6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iR1hxkVes3EGur4h4BhGPO7ovXyz9SqPz7CVOdcRgLQ=;
 b=blkvG7RKNYxATUTCFEfysq2HuN2CPV5OgQeIPNhOHoAe8SQkbulQ8wYCMpuXc4+sWvpo6ZUZvaffWkw1kUK4X97rURWuQiDZUW2WdCAgHFKw4e4NqcjkyXHMJziekQlydPcihtEKJ33OdjN3Q3P/bOubj+joz7qRcl6/SNTGuaQ=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:56 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:56 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 6/25] python3-google-pasta: add 0.2.0
Date: Wed, 16 Dec 2020 21:08:03 +0800
Message-Id: <20201216130822.28476-7-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 18f6bd4c-8ffc-42b3-347f-08d8a1c3bea6
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457757798556A9419C1FD25694C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1284;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aWgAO3rYW0fIJflKBspz7QFzc0iUzADXK2UtCF32iPbt11zpx9zUH60FmJPziUzIGb2IUb5QGVF5cq846MAN+8qzgHf2tCsjAQ9Iny4LtivqAq892CauMffNwUfbNtIL4mx2rGV9SuVdQ045v16hS1Vf88WHBNw8NBgITId2oMHhjmR40hEI+dzxRxxi7DMMV3X9Thb9SSpSdxUejxqebEOEsixIu+cM/gSCOASbIcwGG4uJ6lvj/Ocs3lBZ2SOxwfloeobeV95aqdCRoKWXCKvx77r7dY0LlmAauDwMHLdTitYpwrTga7H6WmoUhLbG04ps+LYicYTWeAVfOPl2uYJLPJ+2amVzpKkkWvmepxGZPUpSdYCW/GWBpxzM1WNg4j7PI/LUw9cRbVbezSWK/Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(4744005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?GGamEG1roVDe9YHMLSADVCqJbP/Ko40etbwIHczAJLJKlDqhzWAORWrwNbVL?=
 =?us-ascii?Q?yAjfgmFrmwaEyrP2EKRWp+HiK4BvTCKM4qzu4NxUwc5Nk/A4nbLx5qiWV1Oj?=
 =?us-ascii?Q?WqQ4z0sIDFP9sGgixlqdVae/HPeK0RWcqu1DOfxJiydxgv+sdoY7aHtJ7B3Q?=
 =?us-ascii?Q?pFq3KWM66r4ouU7rjFUMJ0nlV6ZqRx/SDw+DZEbdQbepwVz/sP2TVA5sbVdW?=
 =?us-ascii?Q?DnMPMI6NCyVk/LBayEOYv5jBGq5JMTvcwfsaj64IP4lRq8K0pFJmu5dvCK9f?=
 =?us-ascii?Q?SSQ7afXJMy0XMVQo2l58l9tXWcY22zlf19ZpJ5oOes49xcPx7qhtQu01ih8i?=
 =?us-ascii?Q?OgC59zv47lJfsGzkoXcK9x1bKK6zwl0MNBfKwD97bD7YesqgAknEwvbDLYYt?=
 =?us-ascii?Q?+B+r9NqwF4pPXs5rz5pbKzgKvMpUwNKP9XOgYjGHEsIRFdI1AFoxqdnJFnjn?=
 =?us-ascii?Q?dWB60dvu4BSHilC1kfSS9K179D502k2LPutUP4P+d+al04MKl/+1yrh7vB6O?=
 =?us-ascii?Q?pV7O2tMC5SbZgLoaQjGgY2t0WjBqdGOfyNXs7CedeVFTrxU8t/NtpmAbNTqP?=
 =?us-ascii?Q?iNf+O391eHziV9V/dJmUIsgEiceUtE0Ty6zDWPNOTmVOu69Qqyb8nQv/yLMN?=
 =?us-ascii?Q?H6qaKrNzXxeEpd+FnhjgSCEK74o4auKEgDSWh5INq3v6fRyDVnLRo6pN0EH+?=
 =?us-ascii?Q?z/jYSOE4KhOsG26MaejP6KKAXCZ9fEq4M41Y0hEZCX45rpDB0uxQk+hUYq9P?=
 =?us-ascii?Q?A4bCP2x6gjrcP3yewNxsGPtV0UVJ0vGA5ca+X4lyMiy7tI7HwlYa0OCYdobt?=
 =?us-ascii?Q?tamb0p5Ga2qExQhDeZJE5uBQUk+HtPsUpxKSMJW/JBkoKA90EVJeuXdACl1g?=
 =?us-ascii?Q?2QUh6489Rt+C6grNuJAF+3sqKv81gDC2GVOyMJNacsjxGX4LWRfucgaSGKLD?=
 =?us-ascii?Q?Cdgmfu/CRuHoNUfb0CqqNdAJpVYFyzpUrwJnf/sRQutfy6Eb6NnopWSzOmPP?=
 =?us-ascii?Q?kqNH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:56.1003
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 18f6bd4c-8ffc-42b3-347f-08d8a1c3bea6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 49w//Wkqi9U14SAdFeU/rHyjrQ5bNO6+KYtGv7nv+QCvAJZ7ePh3OEWFvyQJdvLjTnLLKaKpItXSq7rLPhExzT59IVG6F1L3/3afRuPMIL4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorflow 2.4

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../python/python3-google-pasta_0.2.0.bb             | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/python/python3-google-pasta_0.2.0.bb

diff --git a/recipes-devtools/python/python3-google-pasta_0.2.0.bb b/recipes-devtools/python/python3-google-pasta_0.2.0.bb
new file mode 100644
index 0000000..50a363c
--- /dev/null
+++ b/recipes-devtools/python/python3-google-pasta_0.2.0.bb
@@ -0,0 +1,12 @@
+SUMMARY = "The AST-based Python refactoring library"
+HOMEPAGE = "https://github.com/google/pasta"
+SECTION = "devel/python"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://PKG-INFO;md5=a10102394a800f3fa4a3df0934d57bb1"
+
+SRC_URI[md5sum] = "7c218a4a0d84303b9319352040fbfce6"
+SRC_URI[sha256sum] = "c9f2c8dfc8f96d0d5808299920721be30c9eec37f2389f28904f454565c8a16e"
+
+inherit pypi setuptools3
+
+BBCLASSEXTEND = "native"
-- 
2.21.0

