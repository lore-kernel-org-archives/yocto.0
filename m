Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3736.1609991051131544942
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=jylxVKEV;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2061.outbound.protection.outlook.com [40.107.94.61])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 06D0B38C0895
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdLSAArqobz/gHESxbIBproGtKLQ/2CSjq3KGBp6fE2FobkieUexTJ2AKDO0qaQhgtxCPmqs3MWmKqvRNVd4QSFKJLmk5n99VFqvIQP1JxIyiO2cM7wzTZTYeU3HJJ7S2hTLOOkl8WUDwLnhmkUTSg37NWnIU6jE4uTNNdTcZbLK4oMf0Lyc0H19gPOt/MfD1sBblU6tZGTH2sCEJE+rvHnJc1ZsHKufTelLrFnLZCA31k9RzvFLiXwyc5x/IrHLQiLBhqks/kSbktzbC/3r5m8Y1rI0lKMK1CMgCmQCfUr/sz9j5Q6LbTgcUCqQlUrQxmzkqpNTKZSHduegXBLrKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+Lh6nRcW0KG/0EwRS2TOLxVzy/pF5I6kNCxVTxtzsI=;
 b=I49Abd0s4ac4UVvb7CvisQdAHUQogX7/hzCChOpEfaCtDHpaOIzX7L5qB0jU+qZQ1xa8nLQhduC+zuHoGJaVcMpv7EAdkgKgvGJN3iNB0ZF85ygCyxetc+bxgkvbX7SUU0W30lHxKAUqsxF5cYPoKO/QAjrijlWIM1SeE+a0QSVpWic9NealGBTV9oy2zzE0IWXVGKsJIIHRhDq92QDVbofOjz/kB/KSUxAjKKo2aI6fvvHimaiWB/4Cbfqj4qv5T4cwzqV1T8++8Htid//FyELrSmw1JvitLy7ROkxwMIfEMrl+CriIn2XmcErDztkujunYmnOpvMPZGsB6rLRCVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w+Lh6nRcW0KG/0EwRS2TOLxVzy/pF5I6kNCxVTxtzsI=;
 b=jylxVKEV0Ue/y6eJIIysCCdWBpT8kvML6+R0tx2XsaGI1kII8Ta89drn2dtj3neevFqbSMm7RPjZO8A5/7+/JfiBgt8QpXJIZLfwagIxaPiOcEO0Q4DjJCH6p3ENeEN1JHIq+S5RyYMYfeCWB6/RUEOqJ9JIeEJUytpezD5jMh4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:10 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:10 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 07/17] libsemanage: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:35 +0800
Message-Id: <20210107034345.37200-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91a4be67-a9dc-42fd-4394-08d8b2be7e1c
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1584550491E85632B1D43EDCF9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:318;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3GASvda17zP7xVZb1smR1mbGsWKSQF81da4Ayo6INMOaymd5DDCQTFowwkRCT114oK+A81M7uyhzq5t+rZ/+s7zHmFVoKKtSUMVijvzcUyGIZKRuXVYtIyaOIA0GjRN6m6cd8iQiUrai9Q5JU+zEYxIc65fvcx8weixSOcRrZOKIRkRgjC8DzTFQ2bO3BRhCuv1dVUTD7BLixKwjFw4+wg4ANQKP7DGcQgMZwX5v/oZrosxtXzUF+lTVf4odLdviVzLvrUEGP4arfoz3ulwueDOflVnoYrz0D5Jpo1VrMQ6phuk77RgXzQ8AW8Bok3famXknjlo0SM2QN5vMG4nfNcW4/HGs25P2Pf7G6r/orK8Th7zkD+n5NJ5vH9YwZ+FjutpD0WBr/VuLORxJ8FqBhw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(53546011)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?PNUX+Vkbak+HDYOAfxTk4S70GnIfnIMOaf4E7eSjtUAQYaI9uYjl2inUnnJe?=
 =?us-ascii?Q?JB+Kb29+NSSAUHzZMDgcGbEQxryDOUfTsGnjh9theysK5rO+o6Wv3wp0diq1?=
 =?us-ascii?Q?N1ozcibFT2Pv6g6RuaFoX3FJfOOrhPq3kjGysdktp4JlZ9adVzz8kLljFmxQ?=
 =?us-ascii?Q?uXl9Bw14jOVMIbrNXWTKMakZj4CNbHwKsCdzWhJQRIGqQSvBQ/UPvGJJdYZd?=
 =?us-ascii?Q?SB3BwkUQxlGOAuhnWB2Xr8p1bCHJSanvjuLTrMDgEUZFJ+GArGlnFbfyNr9e?=
 =?us-ascii?Q?t1kZLwVA72VugLEAh5AQ/6Myh3SIHv28Du36exhHpDRT1UHwEa//0WhGwsui?=
 =?us-ascii?Q?pqRUcpha+WWdBAlUpamfmrz7+7KdVMik6fm9hmFKjxlWpiuLuR+2AWAAtNNu?=
 =?us-ascii?Q?OLzLw77RblTf2aESwM+67GmB9m/tXEn1o055aPck+pwTdtF7JJSf0gyNp5pQ?=
 =?us-ascii?Q?KudkHeQlLx8EmV8fbxPtKLSxqVDvAaabf7NoUgl1ctCexdn2X2U5n/2v34jm?=
 =?us-ascii?Q?0t/eLmfLafQjw9DxAXrUVwyCZ0nuMMsh1tgSfNBIOvIJRvuDnDzFPILrRUo+?=
 =?us-ascii?Q?QxmRHTMyGeZtmp3fwlQYbtqPGa8N3310ABJg26Y6aVx1e9/5wELAO46kxMC1?=
 =?us-ascii?Q?hXdT6DxWwTf9xKIrOyhLCXkFqzrkjxt8jVKvDQBnTomq7PnDgPHqFR0DNq8H?=
 =?us-ascii?Q?TPvZjBx7Cl8zxKP7e903INTDMsHQLVcXaQDqbCbcX/sDnGsZKyCRBZ74rXa7?=
 =?us-ascii?Q?/sWR1IuH+vE0sXHSy0PiTMXlpstI9v0uMwyfj6ptcLOoCtodES4NMd6Szaqz?=
 =?us-ascii?Q?mPD3uDaG//QKIkFTx+DlyYKpeqCxNzFpqgIFu/yIihj7hAaCfyVl3Eb/LyaC?=
 =?us-ascii?Q?FdyoXKjkrcPp7HqLLSaFyZzwePRp2rqqXERsaCuJ2jJQFjTa57sROC9tPYJz?=
 =?us-ascii?Q?i2JgiQytP2CIAMGd3mQJXDHuz3UF1qgaz8HvZ+t+j5qV3k2Xg8rVCGD2TQi4?=
 =?us-ascii?Q?xllR?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:10.1430
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 91a4be67-a9dc-42fd-4394-08d8b2be7e1c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o6ivM/IuPwHNyUq4sZbmr0hRjFPXI5FirbzDdzWe/+Ale9Ji7Smpjw7gOkd7HNsve1vtJMaeHALIAH+0YOP1mQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

* Drop obsolete patch:
  libsemanage-drop-Wno-unused-but-set-variable.patch

* Refresh patch:
  libsemanage-allow-to-disable-audit-support.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...anage-allow-to-disable-audit-support.patch | 12 ++++----
 ...age-drop-Wno-unused-but-set-variable.patch | 28 -------------------
 ...{libsemanage_3.0.bb =3D> libsemanage_3.1.bb} |  7 ++---
 3 files changed, 9 insertions(+), 38 deletions(-)
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-drop=
-Wno-unused-but-set-variable.patch
 rename recipes-security/selinux/{libsemanage_3.0.bb =3D> libsemanage_3.1=
.bb} (60%)

diff --git a/recipes-security/selinux/libsemanage/libsemanage-allow-to-di=
sable-audit-support.patch b/recipes-security/selinux/libsemanage/libseman=
age-allow-to-disable-audit-support.patch
index c588b61..ff5cb00 100644
--- a/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-a=
udit-support.patch
+++ b/recipes-security/selinux/libsemanage/libsemanage-allow-to-disable-a=
udit-support.patch
@@ -1,4 +1,4 @@
-From 1633f72579e3b79d055759256b71e4169627889b Mon Sep 17 00:00:00 2001
+From e76867515be3bc296174aeb26c7996a0939a2a8c Mon Sep 17 00:00:00 2001
 From: Wenzong Fan <wenzong.fan@windriver.com>
 Date: Mon, 20 Jan 2014 03:53:48 -0500
 Subject: [PATCH] libsemanage: allow to disable audit support
@@ -13,11 +13,11 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com=
>
  3 files changed, 31 insertions(+), 2 deletions(-)
=20
 diff --git a/src/Makefile b/src/Makefile
-index 3bd1e20..483e818 100644
+index a0eb374..afc4437 100644
 --- a/src/Makefile
 +++ b/src/Makefile
 @@ -26,6 +26,14 @@ ifeq ($(DEBUG),1)
- 	export LDFLAGS =3D -g
+ 	export LDFLAGS ?=3D -g
  endif
 =20
 +DISABLE_AUDIT ?=3D n
@@ -31,7 +31,7 @@ index 3bd1e20..483e818 100644
  LEX =3D flex
  LFLAGS =3D -s
  YACC =3D bison
-@@ -88,7 +96,7 @@ $(LIBA): $(OBJS)
+@@ -89,7 +97,7 @@ $(LIBA): $(OBJS)
  	$(RANLIB) $@
 =20
  $(LIBSO): $(LOBJS)
@@ -41,7 +41,7 @@ index 3bd1e20..483e818 100644
 =20
  $(LIBPC): $(LIBPC).in ../VERSION
 diff --git a/src/seusers_local.c b/src/seusers_local.c
-index 3e2761c..8bc6b83 100644
+index 6508ec0..1b26956 100644
 --- a/src/seusers_local.c
 +++ b/src/seusers_local.c
 @@ -8,7 +8,11 @@ typedef struct semanage_seuser record_t;
@@ -122,5 +122,5 @@ index 69f49a3..f914492 100644
  OBJECTS =3D $(SOURCES:.c=3D.o)
  POLICIES =3D $(CILS:.cil=3D.policy)
 --=20
-2.7.4
+2.17.1
=20
diff --git a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-un=
used-but-set-variable.patch b/recipes-security/selinux/libsemanage/libsem=
anage-drop-Wno-unused-but-set-variable.patch
deleted file mode 100644
index c9b052c..0000000
--- a/recipes-security/selinux/libsemanage/libsemanage-drop-Wno-unused-bu=
t-set-variable.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 90a2459d1683e53f4a896b977e6b396db562c903 Mon Sep 17 00:00:00 2001
-From: Randy MacLeod <Randy.MacLeod@windriver.com>
-Date: Tue, 30 Apr 2013 23:15:57 -0400
-Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
-
-Upstream-Status: Inappropriate [older compilers only]
-
-Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
----
- src/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/Makefile b/src/Makefile
-index e029f09..8240c3a 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -55,7 +55,7 @@ OBJS=3D $(patsubst %.c,%.o,$(SRCS)) conf-scan.o conf-p=
arse.o
- LOBJS=3D $(patsubst %.c,%.lo,$(SRCS)) conf-scan.lo conf-parse.lo
- CFLAGS ?=3D -Werror -Wall -W -Wundef -Wshadow -Wmissing-noreturn -Wmiss=
ing-format-attribute
-=20
--SWIG_CFLAGS +=3D -Wno-error -Wno-unused-but-set-variable -Wno-unused-va=
riable -Wno-shadow \
-+SWIG_CFLAGS +=3D -Wno-error -Wno-unused-variable -Wno-shadow \
- 		-Wno-unused-parameter
-=20
- override CFLAGS +=3D -I../include -D_GNU_SOURCE
---=20
-2.7.4
-
diff --git a/recipes-security/selinux/libsemanage_3.0.bb b/recipes-securi=
ty/selinux/libsemanage_3.1.bb
similarity index 60%
rename from recipes-security/selinux/libsemanage_3.0.bb
rename to recipes-security/selinux/libsemanage_3.1.bb
index 450675b..8e6781f 100644
--- a/recipes-security/selinux/libsemanage_3.0.bb
+++ b/recipes-security/selinux/libsemanage_3.1.bb
@@ -1,14 +1,13 @@
-require selinux_20191204.inc
+require selinux_20200710.inc
 require ${BPN}.inc
=20
 LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e37=
343"
=20
-SRC_URI[md5sum] =3D "17a2fc780af0a36f2cf27ab7c4e85946"
-SRC_URI[sha256sum] =3D "a497b0720d54eac427f1f3f618eed417e50ed8f4e47ed0f7=
a1d391bd416e84cf"
+SRC_URI[md5sum] =3D "d16eee8c1dc8cf43f59957d575d6bd29"
+SRC_URI[sha256sum] =3D "22d6c75526e40d1781c30bcf29abf97171bdfe6780923f11=
c8e1c76a75a21ff8"
=20
 SRC_URI +=3D "\
 	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
 	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch \
 	file://libsemanage-allow-to-disable-audit-support.patch \
 	file://libsemanage-disable-expand-check-on-policy-load.patch \
--=20
2.25.1

