Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7112.1608124162044240135
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=hS5MpDNA;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2049.outbound.protection.outlook.com [40.107.93.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DE82338C0647
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RekOaM+XDZR7koEcQ4tgzqUHQY80fOg/O69qRzjabemHACTHoApApH79Zb1+/mk30ZD2Vdye4rEY0Hbjd0iremoz1W8dIN74b6XIyiKj2l+S/3bbNgsXYlqPBfcce2fCIjRGiAUV18yc5U1EoClFqEPT4wGTHEChwwDIhhzohwcUOw5gEuyBTWNA3D4hTzughIwb5Zfvsdf2nft73vIl0hzIGl0MIriqJ59QSaSHZ2R0AruW/ALow6h9rjw48i3GAynji7k5j7htGmiYsiofVLO2xVB4aKghroKIljzUHZSZpCewvDWTH1Wgg+w8gH/PxsX/6OBL/JnFGd/QlChNcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8PO6VGEByYRJuYDam5cOzVCIjnFnqV+5UcR20JVbIW4=;
 b=TaA5mDUdlbcmKrx13cpylwgnhAlk5qPxyItrH5GtcqeR3OP3RmQL0YtE2UVITJNjV+a5D5tyosSgB5cdI099X3Ltt5AAukRSzBEwN/P/Y7sF53yerZl+nYBSXTsYHbb+MaDB32wtG//uMa6yViooTIiDzvdRHp+o51fR28Hntto8faPV7pOTdShmY7o9wyMbI74TuFNo6y0uoG5W0hI28No7uK39YKsPaGO3+4g1bFuqqx+quSKJO2SHJTiuhLe9NSE4fwVBS/yT/olkNS9zDSxKdq5hi7wH4OxuhR/4z/aWrPhYfAF1uer894eFHHFbjd6NkJkwEZev+jRIhPGrLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8PO6VGEByYRJuYDam5cOzVCIjnFnqV+5UcR20JVbIW4=;
 b=hS5MpDNAeH4LEFI682GKpmDD5U5kSEoHPjnAe3jk02RLP1U1FdLNoc1svs8a6PjduTJwDxvl90sTUNixeOROxgkRbwQ2slf98nHrEeZAM6rDUTf8C7bWrAOMonR5FBfd40k2MFyIchv3NdslN5THEy4HUibhRjqDbQpMmzcTjTk=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:21 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:21 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 16/25] python3-pyasn1: add 0.4.8
Date: Wed, 16 Dec 2020 21:08:13 +0800
Message-Id: <20201216130822.28476-17-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d725038-65fc-4705-e63d-08d8a1c3cd82
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45772E7D27DD39CAA7B80BC294C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZbdKBtGrjF1e5XGQPJy4G2sLo8LIKVg85tOHdgK9Yc3HgGpi+STJOH2txusYrPymVP/kqezUCxi6j3VfaJ5Ki2H3B+0puLSDcu/oaJyY+wnqkL7nOHBT+4jUAa+T/4Fp+A1gZ1hVhqOoewyjudoXlAULsdqBE/0gCE0J2zjWfaNCP40tJidgfcQTLF+HeL5nEFowik0aU9OWIvE2FNuE9vCPOSpsZ5/4jNFd6Zm+Fh6rC7SLgNqbIZpgr2Mx9TzwVytV4eqlkABFoBZhY1/LP72UY0JTuT1g3YAILPm//FCgitMznHUOVKG11+DkLWXaIcmywcj6vkW8g3Iu7On5xv+H+NI/ekq/KfWbBJns8oC8+Q1MNrqBgYvplpe1xECWksnpgNbh4ygRTNOrXym5dw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?MtHIUb87MP/1iaJ/+cZywGfmlxP72r628PCH0c5tIuCPN10syCf3lRN0IK/O?=
 =?us-ascii?Q?Fp+bd8fuRmvpRNtDTIzB92eowlfai81P7z0JJMBPQ9GEslnn/qxNJFzkpkR3?=
 =?us-ascii?Q?9eKC+38aj36yBdSbRi25ZJY4xeU+VJbq+ZFDQsoYuBMQyJPaz4f8ryRzBGs8?=
 =?us-ascii?Q?FPude7059lYYXI9bixDBqjvQGWgg5/A989U9F5C1Pja7wq8WOfUuBe01M+tC?=
 =?us-ascii?Q?jivYsdqsuT5ztlDPkfqWtzkHj0TG9L3CkhOB4wHt0DR83PqSnjeft3NJBWcc?=
 =?us-ascii?Q?cHDSUrX/wq1WxB1xQYtDzwHFGoerkeSI40LbLeJh1bgIZ8h15Gq4modPrdJ/?=
 =?us-ascii?Q?pT9TWRq0cvVZuYHg+4tUMgBlyIKm+VtSIq2ukmxFd/Vo+tMFGpqFqaUyLsB7?=
 =?us-ascii?Q?v0bH5uQPCpgDpaepzQCM3d0Vn1UXXl6+ZRlE3Nk1HGTGJ7HmCYWc8VCFVg2K?=
 =?us-ascii?Q?MZM8geRdXAvmJODNUg983bHzfyBMr0IXgq8H4KXK+cvHUdIVCoo/6xsvVLkh?=
 =?us-ascii?Q?608xPwEPt/1A9fIFlcNW+vF/f/C4V/AB1W536RmBCviuJVnHz4+vfIHq1Jk9?=
 =?us-ascii?Q?edM3VKg54TJbV3X03O0qyHIS3Tz5kVFVX88xNAfdiYPsWwI2bYlvy18ehdZp?=
 =?us-ascii?Q?Ym/eeMc+wist3dF3zy9Hgl1HE9zcb7xIYNoxH3F6a4oOjLGQ+8RhrEjzgAEy?=
 =?us-ascii?Q?FLE/FXzP9eM2DHT08JyykrMCGcBb/4r3auIv18zpXRKMZCCTdE1hUY5KyPK1?=
 =?us-ascii?Q?xnhc7sgE+AULkzicSKCtOrHst3i8QCs1Nwx/EmB948H95oOVpFDvPp+N1dm5?=
 =?us-ascii?Q?lVXyt6HZ6tsMjh6973bZhF5Hl/OUc6D5cIev344kK6MuDRdyhep44FXfBm1E?=
 =?us-ascii?Q?qUBxh9Z8u5Ds1acfTL2bsW7rQDN9uVqACbEwh8wPqqVbitunsjCviUJTsD5x?=
 =?us-ascii?Q?Ay0jTtKdiQrbEXvrV+W1BEz0jJ7eAtLO4A3YsK9sbqj7LuSJNrSLObjZtKYe?=
 =?us-ascii?Q?e822?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:21.0848
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d725038-65fc-4705-e63d-08d8a1c3cd82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CsA77xIKsiW90EHTM7xxahQe1idDYcOD91RB4Guz92bH6+FlppakpakVhjB64TT+TNA6ZJpTLia6PPSxvjKnhDeRZFzNRtkA8RHBAlS1/nY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

It is required by tensorboard

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-devtools/python/python3-pyasn1_0.4.8.bb | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)
 create mode 100644 recipes-devtools/python/python3-pyasn1_0.4.8.bb

diff --git a/recipes-devtools/python/python3-pyasn1_0.4.8.bb b/recipes-devtools/python/python3-pyasn1_0.4.8.bb
new file mode 100644
index 0000000..7f8b718
--- /dev/null
+++ b/recipes-devtools/python/python3-pyasn1_0.4.8.bb
@@ -0,0 +1,17 @@
+SUMMARY = "ASN.1 library for Python"
+HOMEPAGE = "https://github.com/etingof/pyasn1"
+DESCRIPTION = "This is a free and open source implementation of ASN.1 types \
+and codecs as a Python package"
+SECTION = "devel/python"
+
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE.rst;md5=a14482d15c2249de3b6f0e8a47e021fd"
+
+inherit pypi
+
+SRC_URI[md5sum] = "dffae4ff9f997a83324b3f33fe62be54"
+SRC_URI[sha256sum] = "aef77c9fb94a3ac588e87841208bdec464471d9871bd5050a287cc9a475cd0ba"
+
+BBCLASSEXTEND = "native"
+
+inherit setuptools3
-- 
2.21.0

