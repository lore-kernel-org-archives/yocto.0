Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7012.1608124131746027210
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=LR1goR/Q;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2077.outbound.protection.outlook.com [40.107.93.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 70EBA38C06A6
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AOh0RmlBaHzkI2jW5Q42UGaIULQ03sBH7cr8gzWPEr1Yyoq4bYMbNgVmMkv3Tpr5J7sEVcskvsqpaWtCZACvyvTUhgkNEz7par/2u4uwgnXOyT38eazaGU0VnOvXSqWJDhmedxQH2ja/qWFqwU8jN5omnenuJI+M7GU8ujINS7lE0/eb73JenG6UD0D09e0A8QGvPCxeqSu5Rcf60en7229HGXeRjG7tUPXsKX032heYNcwYQKoAqBUITKYc74hzpcVPh7KdqKzCx8u+EgtvnQ6FIhMcW9Z4zYAp0L9BerM5rMV45UYW/P0atPUD38tX7EUAySx0fDdp2AOQMbDilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2r9WanfVYEzPodEaH30FPyyv0MkJtKkjNf+2khdwHs=;
 b=ZVMUc1JsX5NnZJGpFR5YZkN5fhm3hWpK7bTvfgyXWRfeqW2GeVCyCcdMtwLl9tdAzCGsfyEr7alNPEHtlVpUO5f2/rNPMgSVmSWyfgrGmmLBuV/Mnz2Mv2VU5mdzE9uUo/o9aaax+saBcYA0YDt5cqzQV71juwTFareWpkXX5WkQC7hUFpcKEtd1Lmj5Li3/dWELwkX69w6/sQB59B0IGfQaAO+VaWpw1dYxwFDiWGix0jtpwQ6kwFchFrHv0kRYw4EBQzzXCZXIra6XN9UA4xvguvmwP9hzLZzD0QcoJ9uZg7W+tdU4QlWfCAMrdpY644xkF5UVwvhYq+WS5C9/Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A2r9WanfVYEzPodEaH30FPyyv0MkJtKkjNf+2khdwHs=;
 b=LR1goR/QEvo7nIM9gxg76m3UPQugEa/MNJvr/GcuWedaI5ywzt/+0EdbYZz6LtQwGkl+f/Zoz5zNwxevZ8HERAxgQBs8V9BNvh7kfgyGvtGLsDDtmVDHWfLhWoAY4N1CoqNaCXz6M3hkLEdhHZA20NvteGBKv3+LimSfif/NK3Q=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:50 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:50 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 4/25] add python3-gast 0.3.3
Date: Wed, 16 Dec 2020 21:08:01 +0800
Message-Id: <20201216130822.28476-5-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:48 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 39b11616-b2dd-422b-518b-08d8a1c3bb78
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577961A196B2555FEE58AC994C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:230;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	J2xxr3kM/tQLgtSzoicC+kCuSBuc2rb7F2dJT1KdUJUY9ro+AqQozC9yrY8e77Q69DqusRMXpJ3G9yEpHvDKugo/PSByvUg1MCyYVLW862bc1JTeA3tEiDjZUZCCPeVGlYtYchJdShICePO2GVaIPUI6EW6R5B15tS/SqKWp8tWZd8YJVQp7LvIlLRjnBl8Rwi6PcHMbShzFToW3Vw83kKsfPMt08Yo7wttriGPZKpvK3FxxMq2WlZcg4uogaWQE9jhuiAC/1Jdp9WhV2qKPBS6tuXub9QMziMJ9x/OkKTZ+6MOhCXw3hhxxLpKOIsy8ElGs+Xh62yI6EA9VEwFvZayzxJnpYM9QTghZ8r6m3M+cz5YLmmfJI48UJe6uWS5lBbDjOZUQz8qbv45v0Ipzhg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?GYxd+9tfRfhlv1IWlM+ujnVztUl2YLbL0bxlOhVmycYFijigYTl+WZbkkBVW?=
 =?us-ascii?Q?zmPYMmB70WVlxpa4o+oUz+aXHKtHv+zzGHwRuUNhk9j1pStiEm6s/1BkSbPb?=
 =?us-ascii?Q?lWIi4tQP1TH18bx6rM93q3Io+aPAX0g8zgK9LNsW2aO8y9S/UKrW6xapDsR9?=
 =?us-ascii?Q?QL+fmHy3vGoKwHHb3EJ5QpoE1eONBjhzeZBr8iY9XLKidTpp3p1yedDVPcz+?=
 =?us-ascii?Q?oUfwhSGImWLp962JMDnZqq0E6dAtWxg+dsgOFIvP7FM7CqbhsFvxmFKjcd5Y?=
 =?us-ascii?Q?bXSw/AhdRy0IaESCIPmWqA156798/MVZL/8dt8cCoxf4/dFwr9o0Pw4DUbwJ?=
 =?us-ascii?Q?5o/P/1JpzI0B+sTrjEBkpJ/hNWBWqjRifRh8mVxLr+uaSW+PiH9vmFAwRyCp?=
 =?us-ascii?Q?W9vuvx3eNx3GRhpiWtUilVqoarhEfrDxKcdhzywqvcLD6XTejf/onPSff3Xo?=
 =?us-ascii?Q?0jJ3PCFw65CYp7yywAGtnrhKql9c6pA11u1xJorkxTPAw82VeTbIB5Gm9F1p?=
 =?us-ascii?Q?IAHWQgjKh4qK4L/KB0NH57wdcD7dulyBHH2+ByV/Od3KpC8aYvHSNlHBg83L?=
 =?us-ascii?Q?LV4ij/YI//v3RrirgHPAX3KgWBI12CMGD7VDAmVlVUoVgwpKXiNHPBLq8A5S?=
 =?us-ascii?Q?ST6FKYDZZIcerwL4iBAe0bW2aqOeb3pU9kFLowMqsj5TKZO1AeCHAJ2ZyjLo?=
 =?us-ascii?Q?hBmvXcb5yGp3kIUenPXYWrcx7mlr7n5Ag4na0ukCSR+xOHnt9fZLDACUykwL?=
 =?us-ascii?Q?pa0GTH8JDs4FT+wsOULdNzCo4LHkl3hxRm3Ph5bl+IcuzpBFa8C1g9z9ZJu2?=
 =?us-ascii?Q?NrCFlMsvp9lszhMmXGl9dUTLai69PkIbcJfiqm2a08w3WgZPzlyxPJ1Hszyp?=
 =?us-ascii?Q?a3tLVXXYkAGFeMiHQkUvnkpsOaeYnskXB7fN/Z/aBSCH11RYts00F9uQos7L?=
 =?us-ascii?Q?RV/VI7JjzKVV+aw/OM7LtPO/QmI9ZaaQWsC1di8MkbIaZJKLqkmKgeA3Xjv9?=
 =?us-ascii?Q?f61n?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:50.8644
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 39b11616-b2dd-422b-518b-08d8a1c3bb78
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q5D3/vhSxKDESyLomgzeC0t1y6+9py8inww14+fEU6yKDETjZvNknaWLGNH/1s8BBr+dHWjis6Xb1z4LH5Eyw4wj7WU/ZQR+4zmetshyR1I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

The tensorflow requires the this version, as newer versions are
incompatible with the rest of the ecosystem [1]

[1] https://github.com/tensorflow/tensorflow/commit/710f3c83b4147eb76e748efcc218325c4978726c

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-devtools/python/python3-gast_0.3.3.bb | 12 ++++++++++++
 1 file changed, 12 insertions(+)
 create mode 100644 recipes-devtools/python/python3-gast_0.3.3.bb

diff --git a/recipes-devtools/python/python3-gast_0.3.3.bb b/recipes-devtools/python/python3-gast_0.3.3.bb
new file mode 100644
index 0000000..da3c477
--- /dev/null
+++ b/recipes-devtools/python/python3-gast_0.3.3.bb
@@ -0,0 +1,12 @@
+SUMMARY = "A generic AST to represent Python3's Abstract Syntax Tree(AST)."
+HOMEPAGE = "https://github.com/serge-sans-paille/gast"
+SECTION = "devel/python"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=a3ad9b6802e713fc5e307e1230f1ea90"
+
+SRC_URI[md5sum] = "213b1820f576db14ed4fdf57efbfa67f"
+SRC_URI[sha256sum] = "b881ef288a49aa81440d2c5eb8aeefd4c2bb8993d5f50edae7413a85bfdb3b57"
+
+inherit pypi setuptools3
+
+BBCLASSEXTEND = "native"
-- 
2.21.0

