Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.6925.1608124183466193716
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=d3wgegIZ;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2084.outbound.protection.outlook.com [40.107.93.84])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 399AD38C06A9
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/PdEOWFRjSgzKZHv+4eAyEAxQoJYk24GawHWKVbQ3RaiF/kGrs1advuUEXTAunlpRboQtDqAqLYe5llGYm7+vpcXCO1w0TMrFWxmJdCC7rPgLpZnEmbNfv/x36wp65Jtxc7L28jkFRbdSgCVBKqQ4ety3JmJwGVraj6VNOUVeuMYsEmt0lhB7Jf7u9vOyrdr7RoS0mAqqDHzbHn2N5iOxuBDIj4DgxQSaZfvy27J5yX5bnn+PpqPUOR18GS/eTAx5EgFuhUoQuZNTE1+FVZ/Kv/XpjkzABOA52+3bd2OBTopmuxf11WXgsVydcz7kIHo/7H/W7YLBK1/Euo13SRug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJACgPB7Jr9Nr8Hqb3HvIW+rjL/ngWOJ0+ITV9bdNAg=;
 b=lQbcLkObpWfmsP1KQZzBcO3PTEWv8oc/fqMZPJUeI8WXNyP3My2+WZBu/QGNPAJvru9OsvJTPSAYpride69y0Nhf9CCxiornlXDemiphUFSF9yyf/QlbRCQKJSmFalcb5m5iG3iPv6zM/5uT/31fp+SxW5N4bmuuvPkaz2/NH3YV/47HfhcYkVXrO5+C9VNBPRINZhMVB5lKW803h4StYkPSkRmWLUo+jmbIxj4puCT1vI9IgAzGYdp3LUGz1RGnxu4UJTHRepGpQ8L6HwpGxZpNyve4IFhsI2ZjoO05T8evW2akz68KKuJ4qardWcwB1dgDpZaNlNCjuH7HZYOYdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uJACgPB7Jr9Nr8Hqb3HvIW+rjL/ngWOJ0+ITV9bdNAg=;
 b=d3wgegIZKi684c1b/EVH54xLh2TtU9myO2CF43JNP6BaZhDiDCaNJhlIshxaqRUFBCmOkWI5eEwTkG6BcuKENQq/KI8VB9WVW2lWV4DZomvi9uvTCa9fe3fEkUHSWzFgl3dESP9+u4k1WpGXRIRdA0RtSBdvadS4WBTovGJmuQI=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:42 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:42 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 25/25] update LIMITATION.md
Date: Wed, 16 Dec 2020 21:08:22 +0800
Message-Id: <20201216130822.28476-26-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9cebc1b2-bd4b-4da3-8f7e-08d8a1c3da0a
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45778BDC8CE86EA2F1B6572B94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eVDmtEb0b/Vohgyq5KeMJhc83DUanlfUZw6e6/wpLzYHdL1c/M8IfRiluIMIdq/MpRaDx8a9rgec1pEPxwu1vO4AUd4pvg70gQPmNIjH7dNfVpCLp5tnNzrlKSJbGhbBTSnlWsyVisiuUsAmmadE0z+vY34cWKN6ODzRaCMj2iclsQmXHPbPBiT36p9qtHSPZSeG4UjxQXDkjM1e0Dz6ZG6lxXQTAZC+wqV8qqpBkZs0LCNg5S1W91iM5/wPFS7cul0zXQ+3bi9wTsYeicTPChelw5O8RCWUPANLi4OzwPrHYiKOTWmbebjMnClcvlXn+CSAffaR+VxDPgPE1vF5BHsuC+CUEig+ZC7slYLxqO3m9I7PG+l6wrQEomz0W4cm3PVSRX6jHxOsgHm7sA+Ozg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?m+cdbdq4bB/NeAgY2gdx2o3QS/Mp3IS4UdO425bNEXaRsAN8hsdyZKd/Iz6c?=
 =?us-ascii?Q?fycr1WyOri4yEl8yQealyUGh5SkLppY/0VggXccmulJCrviztdjGRROMGeIw?=
 =?us-ascii?Q?+9oeblzkbxJU/rK66m7IkQDudLbTM8jKgKE7mm89a+B2TwslTHaQragnHRVc?=
 =?us-ascii?Q?LjTAXuuLMJpRIZy85GgsKm+5+a3zX10y+05xKX+Asj6OD8aRiJRGUvXMYFgu?=
 =?us-ascii?Q?uOzeFaVIeSFbblf20uGz2iRsSHuvAJGCbOjuxLPNQIfRVchnLLU0/LP7AlSM?=
 =?us-ascii?Q?sns1m9dzqiNmxtL1rJmWKU0ZdZVK2bzJdnvCaBCRHs1fBPN80eb1qohMAHlx?=
 =?us-ascii?Q?vSzTqZnlSbBk33qD3lqCET4UXWFbhjNE1yLZIfEYXMxynB8kYLRYrrOIzH3d?=
 =?us-ascii?Q?DdI37NYr7NJb9B3RmdugSVu8IMCYNRIeDP9P/5hHY0oGjnB7YIHhviEH8oe5?=
 =?us-ascii?Q?iVhL9BBoNRRuvlyxVBth7WOufXX2odLFmhCvLsX0/SXB08cO6tFVHfcd9oD4?=
 =?us-ascii?Q?kMZes70dPmMggAke3Y4q2lM4UbdbesePJUws5YGUmTKoW7x5NmsPYQJiw6Qr?=
 =?us-ascii?Q?v5T49HRxvlDSoNLctqeT/djszAsQ+mewsDEOWpmiozd0sdKljpBSZmNfe1WR?=
 =?us-ascii?Q?P6k+7cP4a4OESmIB0/Kpjrsjzof5uacxbrrCh7h7LxMdoDcnP75YVDbigQGr?=
 =?us-ascii?Q?QK14MjUAs7DC81ozKCbCo/7cJ3uPdIh67sxcOAR7oMuy/I61riLt3oCmdIs0?=
 =?us-ascii?Q?TTFEBD6WCwbaRac4rOvbKpMnHHgkq0NzR/NrBhicFhZ8cd9Jc0xk9U7b2l2H?=
 =?us-ascii?Q?X4wlyH2PdcKLc0fUoxNaRp0MQxwL/KAqIomXF/WzsAhXn6kn9ILdVghhSBV2?=
 =?us-ascii?Q?AiXBwHDx9z9kvvxQX4w+600RCiEjqAYL8LCQkPWe+WYHVnzTFiu7kaCft5Af?=
 =?us-ascii?Q?SaIMm/lkfuSXbwJyMEqMHbfWQmLkwM96wj1DISwiiEq7kdJ/qnyWsQVYbMej?=
 =?us-ascii?Q?6Ofu?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:42.0765
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cebc1b2-bd4b-4da3-8f7e-08d8a1c3da0a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DtojfyIMHqBo7xo3XVBKShMPnRndMBHHM20R0hrvZ5Y1L2v5LiwcU4UGJwnUoruHyZf6lG8OJnTI3+xh2sbxpuQtKTzllzLcI4Ks64Mm4ds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Target arch only supports 32 bit arm and 32 bit x86, 64 bit arm and
64 bit x86. BSP (MACHINE) incluced in above archs should be supported.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 LIMITATION.md | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/LIMITATION.md b/LIMITATION.md
index deda0ad..3c69100 100644
--- a/LIMITATION.md
+++ b/LIMITATION.md
@@ -1,21 +1,19 @@
 # Limitation
 ```
-* Bazel build takes lots of time, since it like bitbake which has own rules
-  and builds everything from scratch. Currently bazel could not reuse Yocto
-  DEPENDS/RDEPENDS.
+* Target arch only supports 32 bit arm and 32 bit x86, 64 bit arm and
+  64 bit x86. BSP (MACHINE) incluced in above archs should be supported.
+
+* Bazel build takes lots of time, it has own rules and builds everything
+  from scratch. Currently bazel could not reuse Yocto DEPENDS/RDEPENDS.
 
 * In order to run tensorflow cases in a reasonable time, although it builds
-  successfully on qemuarm, qemuarm64, qemumips, qemumips64, qemux86 and
-  qemux86-64, only qemux86-64 with kvm for runtime test.
+  successfully on qemuarm, qemuarm64, qemux86 and qemux86-64, only qemux86-64
+  with kvm for runtime test.
 
-* It failed to use pre-build model to do predict/inference on big-endian platform
-  (such as qemumips), since upstream does not support big-endian very well
+* It failed to use pre-build model to do predict/inference on big-endian
+  platform, since upstream does not support big-endian very well
   https://github.com/tensorflow/tensorflow/issues/16364
 
-* Do not support 32-bit powerpc (qemuppc) since BoringSSL does not support it.
-  (BoringSSL is a fork of OpenSSL used to implement cryptography and TLS across
-  most of Google's products)
-
 * If host(build system) is not x86_64, please add meta-java to BBLAYERS in
   conf/bblayers.conf (git://git.yoctoproject.org/meta-java)
 ```
-- 
2.21.0

