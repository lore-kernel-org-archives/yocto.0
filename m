Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.7027.1608124164661841938
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OEHi9kl9;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2056.outbound.protection.outlook.com [40.107.93.56])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7917A38C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+ALcNN6fCFMNnRA1QP+GFgAoWWym+VRv8teO4s42hf4A9R/1W/qsjbUPOv2L+fC032KPe8YPatPw+LG9Muk62omyYffV32y6LRbVdIT86Axkubt6n1VM44iThLKSJpKqsLvaRnm55hmpWcVMclmrdNYG2qhMwKqgyCF0mOLPPt9E9sd4UEoq02WBxHhw8m81/MMxiwvQzQmC41WUgbgpzzbomIQi5CqB/pL0LNSU7tTWtMyrBMEZRMrSZ5Iu7xJarL6iK+F/sFKwi6QPAOuvE7sts0E5nQWKvzzdqfKCjw/kOunlR5jc9vtUOlmgHBiCeG8ibprBOUz2jVx6Fqn4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cDAfqNQIzxJJwhqc5DnMLkR18EyZXWO6RIS7PIdMBw=;
 b=Gmo5KBHsw9T9XGd1QZb9vTdOu5AoqeAIJ8jyDwj0BjbcVM/eI55v4WLQ54RyIOuoymsX9ND0V0FZZz8M3e5iNS6M/aG2pYhU8Qr+HdAv9lehKivn/z37Nyyer5eV26lt7FfqEKvOd/LvS4c23bY/o4U963RfXCC1wLiIfs//jcmJD5UvjWoOBmnbiWSoOZ7xBlCAAaGm0XMhbsEFojfCRGnoOxUOySL03kYgkm6TN1vj0lACoiCZMHd4+9fHzuSJvBECQk+9cJneglWKgqs0GJrnr2lXJvaNV+rKaoCzFs2i1eV46WRx0g321UlY4mEtbSHJS8kRRPabQqDoSe5iVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2cDAfqNQIzxJJwhqc5DnMLkR18EyZXWO6RIS7PIdMBw=;
 b=OEHi9kl9rA2d1Zd4nOxHm4a560tyBfKBeFfJJ9PQToDZNxd2qEA72BHbxBzwJXH3c+/qNX8/KzVrOp6K+Q1FdRJxsPcIeTlCuB8uCZyFGeK1UN8tQ7oFM+e5JbnT8jczz8ThYuqTrh+ZHDnn7u8+QW4EKyjv6qVn9qeaypwwl3U=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:23 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:23 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 17/25] python3-pyasn1-modules: add version 0.2.8
Date: Wed, 16 Dec 2020 21:08:14 +0800
Message-Id: <20201216130822.28476-18-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d4eb7746-e799-47b1-93a6-08d8a1c3cee9
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457769001D9F3CBBD04D461894C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DtLRSVkfz/f+vHJ0mSVropg3JpWYOSUYaQxo5WCb3L90DBdJsWA1QgoWBvR1BoA6UKeDHvg3F0Rua4LcFwLNg0PsRI7C2RUPxnluUQ5wXgCu14p0uG3pqCLhlGlrEVdzhsdDSvQVsjmGACWOsjrkskhMP2Uc8iJbf083FajMsphVk3jmSgbwtQAso8piHWQ08J/m/LtxlfXSnFiTiyDrrmh84ulFJkkr8IR3CRr/oALKLF9yOt9rrUi9hBWjBv9L+e/R0uHG3B5WFvidDtyCvWcl+a+80cA/F6LgF6X58QcLWmgSSkHU3t94UNRQzyft42G9k1JFBIb7kSdHI9T3TAI6xvt++0Px7HQr9AXHg2PvPpH3ussoBWkh0GAam5Wn8Pd6pb9v+q+y4Q3CuRg6nA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Dgx+Azy+WItWPNoTJZACJk1GBjgLmMVfn9M9P/yjrUiV7BcBeBJsrr7Rt2q/?=
 =?us-ascii?Q?sBNDtyD5IHTtTEqz3+Z44VrJjvx9B3/N9WQNryYJ5//DVsX1mhO3wm0kgn8O?=
 =?us-ascii?Q?C2Z+5y8CVrymxLNGNRzOn6ZxjW42yYGPA8i1TSuueiEFENIbCYDpXriuJvmM?=
 =?us-ascii?Q?YI4+OtZsue0d7QqQYG1rGlyBuQSy0FkMIbz5GSxNLWEZM8ufkW55CswgUoZ7?=
 =?us-ascii?Q?TNOQYZ++jkMd+snWBnX0NHp21AZwA+AljH7ad36mF6rDCdRMdFEciGh6KOqf?=
 =?us-ascii?Q?qPcyLb7OaJ0jr85pZ5ku2NSy4mZ+Z+wDupzE0pZFcj3iwh1YF8Y6L9aFuwqo?=
 =?us-ascii?Q?zwUGCI6as49NTQFrzJEO8zja2UksRqHzEVcwhVYLP7AjOs6eCZL1CcK6kroZ?=
 =?us-ascii?Q?CaKWmOo5kZMemMkDsiRHP0ALSQ0oENwkba0l+ZHEI6izBVvGD9JWwMcK/t98?=
 =?us-ascii?Q?Mae1xxPpHKwdAmWGt3enWiVnriK+lxVDlrD2l3QYqSToyycGNh2UDbuc3bQo?=
 =?us-ascii?Q?92FcXwhlajigplc/2cYSc46L2f1KOnrqiN64AjuZuWUY0k7V82mq4chGJjUx?=
 =?us-ascii?Q?u97nhkrU1qnJlB5944ukdKY3A/ygf+DkOcWNQ/NiGBSqUd2RyoZNMjM+3ndS?=
 =?us-ascii?Q?C1FlBn+4a83fAfYc/dcCyjTSR2a/jDQ3pzSaRRmVrmR/fOg1C581VF6MtI6/?=
 =?us-ascii?Q?Og+68XNPMtxNJQIDaxkZ0E4P6o0kZ1k5u4Adr1OVZCnFWRgSTs5tpOpU29sk?=
 =?us-ascii?Q?wjyUkSlZr3RMTStQaA1s5+9ZfKyOzruqKKAvrANO2LSWKmPRAlxVUdsKeqEl?=
 =?us-ascii?Q?+Wjj3SeQB/vgHbNR/A/HP5cuH8we56MxFY3jAblb3AGAkg8tyaog51KgRDHL?=
 =?us-ascii?Q?fJh4ZnfMVtnjuIXcOvU/zgyeGXVpHRH+6LHTwnLiGbHLybYKHswTc5DhvnJY?=
 =?us-ascii?Q?scKUNAHsRjapuPsC+noguZX1u4/75GBw7KFXPZcGfnY/1S8EH8x+3jzc9Suo?=
 =?us-ascii?Q?afii?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:23.4744
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d4eb7746-e799-47b1-93a6-08d8a1c3cee9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C9E6l8CarOgVmfv/goLiTD6n2cLaoIF6KDqWOvsG1awSogFGbsmS0MdbtbF50ILZm+4IfXXngaIgcwbjwOEirYGbHGDBRyL/TRsj8DFbwoc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorboard

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../python/python3-pyasn1-modules_0.2.8.bb    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 recipes-devtools/python/python3-pyasn1-modules_0.2.8.bb

diff --git a/recipes-devtools/python/python3-pyasn1-modules_0.2.8.bb b/recipes-devtools/python/python3-pyasn1-modules_0.2.8.bb
new file mode 100644
index 0000000..fb11941
--- /dev/null
+++ b/recipes-devtools/python/python3-pyasn1-modules_0.2.8.bb
@@ -0,0 +1,22 @@
+SUMMARY = "ASN.1 modules for Python"
+HOMEPAGE = "https://github.com/etingof/pyasn1-modules"
+DESCRIPTION = "The pyasn1-modules package contains a collection of \
+ASN.1 data structures expressed as Python classes based on \
+pyasn1 data model."
+SECTION = "devel/python"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=a14482d15c2249de3b6f0e8a47e021fd"
+
+inherit pypi
+
+SRC_URI[md5sum] = ""
+SRC_URI[sha256sum] = ""
+
+RDEPENDS_${PN} += " \
+    python3-pyasn1 \
+"
+
+BBCLASSEXTEND = "native"
+
+inherit setuptools3
-- 
2.21.0

