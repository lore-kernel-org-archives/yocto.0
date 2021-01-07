Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3733.1609991044473804004
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=oKNeHFtb;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2069.outbound.protection.outlook.com [40.107.94.69])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5FEC338C0528
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Me1ri3eBVvPmqrB5bdDkT30GkOA/PQe0Q1/IjhD6EFIk/Jw+1rK+BUOkc11JdYxq7Q9GYgxbXUE39UIvLCnmiW/+YKVpTRW20mRJ+f5QKTVqmxDLx2ql6nLXMZOhCBSHMX0mDSS84NwnMmGBVfbJbAsZHuo1wmsdBScrGjMWXe5HVg1LwgXcyLR3jaAdUaGywTmArq6LD1jEq+ZF1VLMf3piXEHHG50FWne2C1nvjKSde9pZDynFyPiIuBGgD0smyDPvKgXC9L4cQqfAqpoPW+xTZGr9oQENaaL+Ery4Cn9ICKLcPmiD7XfVX5sMQ8Tbmcsuh8JIgQSUVHHUVJapuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QXJoprG8aaXCMN0IHAbFz7T6T4BeH56bcolM5e9gZHU=;
 b=b7sc4kycJThz0S11jsab41hQZbtJpIaorBdrh8K3vK/7LMdQuhp6NlEeK9bzR1GO7qgCELONVs2ahVgDVV9ibAQWVOeaIAnVCximNhrI+3JUo19yViTLlaq6ctIj4J6Q+/y3Abcx6DqrhkSlyUn7kx/N3pfU4zjZa7JjXnOKZT8Ug83KGFZulvInC22wzAEU5pzXbQs7i+oKfLfs0xRpGIyMq5MCtg7zYBEHG/9ARdIup8ucEM2DaGMB5c5SjfkOBbNGO8/lUD2gbgyqcYuYq6uaEz5djkwjlHmMBXhJ4gWpC4zmHFx++G+ZAjpq35gXAfD5r2MGl10QJ1+QHDGtlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QXJoprG8aaXCMN0IHAbFz7T6T4BeH56bcolM5e9gZHU=;
 b=oKNeHFtbQuqwcP2BZQgSQLkIDKXQjNAV8HlNZm3FXIAwtjCyjV2BDMtIHDCOP3oHV0Q/AalOL5wx8PfctukC3bXZNRYluogd1o4BjI/D35ZvjFIYgzxe+aH6jA8zrzGeNe74CoW7sJqFiqnYKayreBE+fMYt5huJ70HQzUtXTj0=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:03 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:03 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 03/17] selinux: upgrade inc files to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:31 +0800
Message-Id: <20210107034345.37200-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0fbe14af-6b4e-41c7-6d32-08d8b2be7a08
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB158438D0FFEDF18634BB820FF9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qtSmpq5tkE/OnbuCrtyiGomOu7PW60UEGkVWRd3WNzPAflm4xIC3FdOy5l2TBH4NADZwC+w87S3FVFxcjMm4MlEUi05O/8jjYNYd78vuy+YddavXgbZ6cL2SAx+Zvo1ACCkuqGyZCZEJ7rsZUdIDFChuljbEA4Ggj+01PXs2gB4qRvWHPCzeRL8zYBpGzRle0Hd85wDHkcqJghiMevHHSj8nKvJ2JpFNzzQ6w/BfX1t3N+/vVzblkkBFee1uZuZGHB8hTGel7O4uy4ZMg4IqRG4N5TYFINj5iqzSNmcBB6b3p1CzXUfLj31qeLCDWnwI51nlOqEQIQ0177eqB8PZgEFWs3wfG9JcMNvZoh6XvNpD5HqeZFrdOj+5v4srJeUzgO+35VZ1mPWrGui7M05h4lW5xG4ORjwSztIfUMbe/28ZNEyovsih6oZqh63FPpKA9cShmGl4FwSWB69HlImYqg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?iREyOK1cpogJ2ZP7XZMqJAq8/aE9ektq+hNPsr9IuPFyqeTEy/Ieviw+PwSP?=
 =?us-ascii?Q?bN17e2Rcaku8eM2rRFFrt3uQl+qJiUYCpR3avCIQN6COHZaPPwy+v6rJ6kKv?=
 =?us-ascii?Q?kvSnQB5+XvRblK5ThCKGQdRcJ8kx3aYWi1sO4eRGVTJ07Zez31c3kDpFpSzf?=
 =?us-ascii?Q?96VjJqg3WposFxduhgqabcfMQMG1gMbdPi1albdNHFc3tgN5L80YEqY3cGV6?=
 =?us-ascii?Q?Tl0nzpAUQ9sByBx9GlG724a8bXI5uoBE40UcTrSomc11jnm6T8e+v3jpaj7H?=
 =?us-ascii?Q?L/POSseyK/jZHdSshjsxPHQyJfW6mfUfR30rQXUzuAir9Whtfpcx1+M0kyT0?=
 =?us-ascii?Q?GhWjKKofUztooc1JTbswyja0v+H6iBVCoxzEOUC9idUWr+PxLCgdDoMjqWKX?=
 =?us-ascii?Q?/ABRGoFV4HMgexM1GKzyXajfXyqd3zazRO5mNmtM+G36aHtqCc9OGeA9qG3V?=
 =?us-ascii?Q?sICQMFM4giHfITrCaWjLjhcAezZdL860sE32pYzjI6q/5++SGUGKMijQ0HXC?=
 =?us-ascii?Q?xwvH4Fqdjm08wrRlAqBnV148nmD3PlpUIEOemMqATS0aiwQqakxib9NdzD8d?=
 =?us-ascii?Q?TK6hcTwrunQKqOU78fqHffoDRTICmEdnTJnou8JhKuJttm0y2hNI215SUPz5?=
 =?us-ascii?Q?mkLhpZMUHWiPoqoJd3uwPf7+I4s1JyHvB3uCZ3BGhZU3yDttL7AkqYX2F2cz?=
 =?us-ascii?Q?RrlWRX6LOEbbDwLDKpATOSIPUR32XiHw5SmXXbhHueOWHZOuyLzrVg205smb?=
 =?us-ascii?Q?hotovT+M8tkMiiXq6r916yHctzB80bub2AamEEjkMuII2cof+TwAHLt6VlFL?=
 =?us-ascii?Q?DhiIS8qV3uEDFKyMt1l05C7Nl0dIaZ/r/rlcT48//Vqo7i5mrVtsMyf44oPu?=
 =?us-ascii?Q?fVc0lBo1ZSN9xn5QS1ZfkbNo7YVNT4tmu5uw01xUB0fX9E2rp81N4iPSPwXc?=
 =?us-ascii?Q?+RoWY8hAUMc7/vNd76g4MxQnSKdp9t33l5Ae2Jh5J0PgDc7ZApb4aKR0msdc?=
 =?us-ascii?Q?kyJk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:03.3529
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fbe14af-6b4e-41c7-6d32-08d8b2be7a08
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IztXJrrXglF1K0Ga+y0eb7aUpg8jcNjTLrruAwtoF5pj/hb3vPsdJU6i9/YVC0ofcEIV3Qq2VB95Qj2v/DoQqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux_20191204.inc =3D> selinux_20200710.inc}     | 2 +-
 recipes-security/selinux/selinux_common.inc                    | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)
 rename recipes-security/selinux/{selinux_20191204.inc =3D> selinux_20200=
710.inc} (90%)

diff --git a/recipes-security/selinux/selinux_20191204.inc b/recipes-secu=
rity/selinux/selinux_20200710.inc
similarity index 90%
rename from recipes-security/selinux/selinux_20191204.inc
rename to recipes-security/selinux/selinux_20200710.inc
index 113fc30..a8a76e9 100644
--- a/recipes-security/selinux/selinux_20191204.inc
+++ b/recipes-security/selinux/selinux_20200710.inc
@@ -1,4 +1,4 @@
-SELINUX_RELEASE =3D "20191204"
+SELINUX_RELEASE =3D "20200710"
=20
 SRC_URI =3D "https://github.com/SELinuxProject/selinux/releases/download=
/${SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
=20
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-securi=
ty/selinux/selinux_common.inc
index f6c4a6b..09c0acc 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -10,6 +10,5 @@ do_install() {
             PREFIX=3D"${prefix}" \
             INCLUDEDIR=3D"${includedir}" \
             LIBDIR=3D"${libdir}" \
-            SHLIBDIR=3D"${base_libdir}" \
-            SYSTEMDDIR=3D"${systemd_unitdir}"
+            SHLIBDIR=3D"${base_libdir}"
 }
--=20
2.25.1

