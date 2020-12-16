Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7064.1608124134544767838
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Q/1t+Xvu;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690086.outbound.protection.outlook.com [40.107.69.86])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 55B0C38C06AD
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dqQPekUXFC4qxD3fKGmnvsDQAeRvlS811FKNVWqtK+NNydF5pWMCCd1GxAvSBrzEk6vEaLL6swFPbNvBpD0zu0aQt4gTVzn7PGa9dbm3cPlbHMT02cdGBOP/7Vr6RCGSeVyVi8+VPCulWuiqk3cykNmGvFzOBRFm3igC1/o0cQhwlxyZp/krDktRLKmJXhH6umGWccKwwnNKWPjO/Gt26s3xCwiHkV6vv5xQolOKeX2H9/FcG+oCPQZpMJb1Fk7pO4lJ1RRJ8qaDcPm2V93PRXOmISC/X6rDAYEBF/uMHdeS0Z5as7BVVBA++p+osZBtF3kfIAi3WQiShz5MFlhdIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NrmjTjEaTKhX2FNO6LTtNxyZ7LcllA3oBLA0Hqt2BW4=;
 b=RzkDHo1fLNKk2VgwVV2emddVrA/SaxAWUEe+HrKvpvI45HP9Fx4ViLcpqQBtvD7J4x3HpTTvQZ1jUM3BZ5Xq/FnqqVjkv7PXxaMjQNL5/B0dZVnNGpOIeJ81RgUHAIsk7TXecC83CZAVX0l0Ln2aHiD6xIWJ0uHLdow4HJ0/l8OdD0IAtE1izfBtqMnQQvamB4SRISpmZ5niHh76OLQ9tu+kehzDG+AKuPuiw2IQMSnJ6ArbZbq8DWdS9K1PLd/+deN6novXXDpch+vooL/bGTJ+r00NbejpjiUqkvRSHwZdG4BC62W1VbAxXajhfq16vN0cgiyB1QndfQpsXAqmaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NrmjTjEaTKhX2FNO6LTtNxyZ7LcllA3oBLA0Hqt2BW4=;
 b=Q/1t+XvuP8bgQhcLc+dGvqWPgeLEPOUkF7MhfYRDD+YFq2cK6RfkPJLLNKyM1Ia1XtJrjwOQQ8iQpy4W6p8pZqoRbenOuB2tbi3oMuV4L+HPDXeJQ6sbWz4t7mG2MKNQ7SF2KOxMhMyYaIMFuZ9GstGe6AepnvbYlMySF/ZsJLw=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:53 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:53 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 5/25] python3-opt-einsum: add 3.3.0
Date: Wed, 16 Dec 2020 21:08:02 +0800
Message-Id: <20201216130822.28476-6-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d86160f-4337-4450-c92a-08d8a1c3bcf6
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45779F1996E4656D1FAFC28894C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:184;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	fXICba9mO579FRqkCn29NGRrmDq4V3UJRVcsg3x5DPon8zx0NQbIpYK3127I5zcjUNBK6TObA9DIgOfmyYaJoghNBpixBVGOVbabSCAj/d7w6qTP33WDOI0/lDy4qyJktzC+yssK1eeYj2FbaAjL0auDroAkfmxnQoOCMLjUr9PJleeh3rIPOYnO1ujOZi4iM2DTwsg2mdNaTwJUOfA6Q7C94U/vpKgmGmfdq2DDG8rfim8cdopiXCqubQuTOsDbBh2m2oqWyAdqusRbH3H+lwxDoXR8bC3c6541145hjuJfWFrqjOYMAmxe+st8obGrq8w20EPzV3m0kiaXgwMs0J3LbDNC68c+N4MZJLvNahG981ZyYXkMAlpNDdtJxL36OeyinSMUoppZVBX7RnReug==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?tGf3tWwJY4g/q77Njzz1U67y5dg4BanxcYPejMNyX5vtHP8WldRbGVW0jMbQ?=
 =?us-ascii?Q?Tk3MjTEayvVI+VhJDLFVDHSvUB6dBSUTFakYFf5GILS8z3w7XfswQPWc5kSM?=
 =?us-ascii?Q?g4TaNx+woj+Vo3g4noJZlXqoX44Dsze1Drxr5H1KiFu+DESYXVPmAgUWNeb8?=
 =?us-ascii?Q?jXje/8usUww0XKYrTDlphblGihDYVdPOdWfQvRsfU+5uaiI4VmnuSHJCtSA7?=
 =?us-ascii?Q?M74wF9YCC8CwKXQ/qOAzJ9QKywipfAVEX6S2MRwm9gCe7T4GYPVKrc2TY4Pk?=
 =?us-ascii?Q?4TAkFFCjJSFFxMN9qpeJemD+1keAgw3CDfl/eJkyxsclFK4nRFy56/XWCmfH?=
 =?us-ascii?Q?LrACjU9YtqriphF+1AyFiD8iknXg5R0WrKfRGSNNOC0wyPQtIeyFbK4EbbWy?=
 =?us-ascii?Q?lCvRRu0V9zGFi73NE8lngByqg2A2pkaIZOKs66zDa4sN+z9xmOZmFYS9ept5?=
 =?us-ascii?Q?wHL4Z4ro4uMzv4Jcs3U75iolwXkGy+OopbuAs/EjODa02a5jhSy/exuS84U1?=
 =?us-ascii?Q?1HSwbAMZXlK/+YpRlZJUh6OxUnIFRjCsOc4gC4hMYr0yDJ0Tv04KL+n6WaE8?=
 =?us-ascii?Q?vwXhwTNmv0P8+jHnqgmsj4LlGaj2llX4CndCY2icLhIRrfrRmg+TrFZBy15Z?=
 =?us-ascii?Q?+etB6rYVVwwUHIdwu2DC3QvWOlk41cCaX00SmkhrtUA/lQlT8mGU0uT3Kpnb?=
 =?us-ascii?Q?13DDLpEv5CQmYyLQE9E/63Y/v2RXEmlUQHr0v8gWy+0qjiKY4Si+ZPUH9rM0?=
 =?us-ascii?Q?PxNwt4e+G89LlgOj9iJkpuXAVaYYGce2ycIPWai42lXwyIymPnhN3jR2afUU?=
 =?us-ascii?Q?/XUIS1At1H44JfM5orxzILGXd/YRKc5o5RE+4a/aG8imzK+mmFRs4srR4R4T?=
 =?us-ascii?Q?eeooRkjxy2DXnSaLJ3EK4i0VjilEnh1RJvxp+k452U5wk+pnPDoPcPgVg3Pc?=
 =?us-ascii?Q?LhjlRjZxzcUXADLTIDbgS5IyC3y2ahqGkPmj99peAKwfnOcoo2Ll6a9qz5jI?=
 =?us-ascii?Q?Z/XF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:53.3520
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d86160f-4337-4450-c92a-08d8a1c3bcf6
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5A/PT40F/9lsRf0e5OfFVQRpJp1W8XlwaRIxqGaOaTIPQVh7AMQN+bt1ZFnThOzy7XLWSjkIXJ15UFDkRVkwou5Tg7h+1HO7xewErfCmssk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorflow 2.4

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../python/python3-opt-einsum_3.3.0.bb           | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)
 create mode 100644 recipes-devtools/python/python3-opt-einsum_3.3.0.bb

diff --git a/recipes-devtools/python/python3-opt-einsum_3.3.0.bb b/recipes-devtools/python/python3-opt-einsum_3.3.0.bb
new file mode 100644
index 0000000..16f3a6d
--- /dev/null
+++ b/recipes-devtools/python/python3-opt-einsum_3.3.0.bb
@@ -0,0 +1,16 @@
+SUMMARY = "A tensor contraction order optimizer"
+HOMEPAGE = "https://github.com/dgasmith/opt_einsum"
+SECTION = "devel/python"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=5ab423c88cf3e69553decf93419f53ac"
+
+SRC_URI[md5sum] = "acf0a3997aab84b4e9a854296cc34971"
+SRC_URI[sha256sum] = "59f6475f77bbc37dcf7cd748519c0ec60722e91e63ca114e68821c0c54a46549"
+
+inherit pypi setuptools3
+
+SRCNAME = "opt_einsum"
+PYPI_SRC_URI = "https://files.pythonhosted.org/packages/source/o/${PYPI_PACKAGE}/${SRCNAME}-${PV}.tar.gz"
+S = "${WORKDIR}/${SRCNAME}-${PV}"
+
+BBCLASSEXTEND = "native"
-- 
2.21.0

