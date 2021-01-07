Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3749.1609991052554930220
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:12 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=qOqCGAGD;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2088.outbound.protection.outlook.com [40.107.94.88])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6B00E38C08DB
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MnWkMXx/YMB0zveuV89IpYMRhXJpiejgiN5eUXZwB0Ct7DHS7VxNdFqlUkBlPZQ8NOYe/PHYCu7QN//gOynhwPN8x59hP4sIQVNsHuYoF8pmBP7qYxzen2jPsEa5C10bZaiqhZW2+/XZPER1XM4BKb6plNpfrOg5Ddlh4wDjwTfsR7xOPscvyVd3RB1jFhgDv5w1oYFtHsHu0WhW0RCL01Nm4ZiSMExZ7nS3cdpzdIrFqxXN5TivZYy9kq4grNmT3tvYl/e4d49RrIsjqjQpanvTs4lsGSoA+NQ5//tD6gxPvte6c5SkBllwhes/IyNVOQvFeswI9yoIvAEms0uc5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5ck0cAcRXJIPFIAmfM9qBEpmtxwo2BnosjoLVvPXO8=;
 b=J+fyM1ZCMENlXroDYkT+yvtV2kXEp0LL2YBChtQVYUVoMsKEOPQLLFvQsbuLNYfv/8W8oofWXzooaub9zmp4/A+WfRZMbLzEDqo/L3nrZUhbH1KIYRrBSlQuUnqLFmHJdkLuhysJ8WpymBnYWXk+sryNEbV8uAZu4ghnB5eVq9NkiWlHd/ctcDLrthxiFWd7P+trYdQeJpjPar4SQkBQROWlXp//7EOaFZWvQ8+Idq1T3kKvbEiTGeHY+M2I1qu1TknsXpqESrnhnPAzlp/t9BD3z2FRaFUCibambgyU2+Glg+OpI4QP+0dht3GfCVFRBBJ3XAy5uAs/N7KquRCKEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I5ck0cAcRXJIPFIAmfM9qBEpmtxwo2BnosjoLVvPXO8=;
 b=qOqCGAGDGIa2amqeYhTDbQHZZHhWYah7lVmyDeEC7f8au7k1WASqz5wWxLHEwja4c81225PB2/n1Z/+vpFJew00rjgH7qVeU99aR0HF7/WFgbkLiy/2MemTDYM0hlSzpSARHa+h5nN/Bo2EzDbfNLcBB7d+VOqnnH7YSs3Frp14=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:11 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:11 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 08/17] checkpolicy: upgrade to 3.0 (20191204)
Date: Thu,  7 Jan 2021 11:43:36 +0800
Message-Id: <20210107034345.37200-9-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d417c4e5-bb7c-4c01-27fe-08d8b2be7f05
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB15844114D24DE56D7BA465A6F9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:252;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Pj3IGMotsZJaDIsmJd79k/3jQMKKzOpJXG5tkYLMk1iKff1L/hIIVgmpTYJZvtC3oRsFlsEGs92L3/ncYlLB2QeEBpbPnMmgoPJwLugiiC/bsApOiJD7n7U5IiF+O/yhlrrhu0kBI36tJ72o3W7SFirIrcJi6DStTnTZqmxl5adAH2TnnaHeq1ihQnRCUTSnIxee1HN6wRCdmH7Gh/L0P/24dUDsYYMtdE7tL4QF8kcpRQBVBLyDBHsjdBphHex/jlGvhuqRMLmCVZgSjdomnkhdKTvRijIJsRaeHkyVLjL4f3A7tpTovvBwmZq9PPco1M8qBc6nPhAvMvSeS8t2V5dcDL2pc5iaHvF+rt88iBx7QauFm0xy2u5J30+/eRt2lmYVt4ser2h26A1OSFpGygkN721QwiifdYDy2glhVPTYLcgqKWM26tJ4gypnu75nkdUYUGh0llY4tZUKeY27vg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?1jJuIsLQLZgBs/CemrI3j/jMJ6GRt6JH5C5RxYXSY+m1+DFeI69UmPJ6BP3J?=
 =?us-ascii?Q?QYx6kNKGsmNxXFSKUuKmZDdE4kZr3ijncoM+ohDlKBnz/Vavdi3wsob8ft1V?=
 =?us-ascii?Q?UT8YzKV4gADX8LntfhbIombPJcgt2YpD95aFVKU0IERDgWbQZ3MhG+ItAbWa?=
 =?us-ascii?Q?YXpZ1wPN3ckGX30kvGBxeTSvh0sLnuwsAMIz5GJ44X2SXRT9UB8g4rXHGli0?=
 =?us-ascii?Q?0tjDy4MNR8RtGAvVe2buiDeeJcBYApUYdNtQ4aYD80xhMyMhzJUXHK32UBBo?=
 =?us-ascii?Q?MOIvqjbf2tRfbZkw8ddXHQsuq60qZdaXxjFPRupFFmdPkGKUibe966GFeLCv?=
 =?us-ascii?Q?Qz/XOjkzZ2QFMl+Fy4TzHhZqGofu68vpJk4zozkH5gESQ+IJFpLe8N/l0wUT?=
 =?us-ascii?Q?rK/gS/UXaZcp6qgiAy2Ac6WwNfgFvZJauidyviloeUxjpbrrZ1TmaA3f+Wej?=
 =?us-ascii?Q?KPlhHoLp4kIuBotD1KGA5D47XouQfFhWJhPQGqy4boW8pqqRfJ7HgYBuL7wa?=
 =?us-ascii?Q?sm52jJ18zChKZT+ay9uuXAzUP0kVC1A6NmtCe9cMWeEx7bRh2GK5q/5M+Sxc?=
 =?us-ascii?Q?UZqKB8mKO0X2zxwkMaJWz3dBeMnFv272MAq8OOi0R4dsfLmb28fUHknjKwmC?=
 =?us-ascii?Q?gyPsEtTSMJHWvkGlLaqNP78ZDoMMKG2rSo1M/QnKW/sSNP21fU6j6UqOjjx+?=
 =?us-ascii?Q?WaIEkJB05Ln3sE7s4fHQG0uvTyMDAvQA+wfgV4J/BOsrjTrh35hPU0LoX1Nx?=
 =?us-ascii?Q?j8tmn+YYwEbCIX+/40o1msdKP8wnxqKlafUeppKGqlc1slIegrggB4eXdW6y?=
 =?us-ascii?Q?n2zyqGnsP24F125ZW4HUuzLlfnqkJ/MapTL00yf63jVhn60st1eDtiYpA7j3?=
 =?us-ascii?Q?KTGBXvL/A6P+hJVFARckoJg+cwq5vQChOQWyPI0lqhQciZzTpKEKjJnQBEAU?=
 =?us-ascii?Q?HxEbaBZRi2//C7tHiJXvvf3Md5aZZb2/SA6rHseE60wi+sQDyhHCRFSqAlv2?=
 =?us-ascii?Q?+Jjs?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:11.7071
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d417c4e5-bb7c-4c01-27fe-08d8b2be7f05
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ecfv7/+edssVlKL8FcMQPy+xNUemVSdYgZGqZrnWNapJVNUyRfCTXq/BrfC3gBTdI8lhzulqvMBp2SMXDRiC4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Drop backported patch:
  0001-checkpolicy-remove-unused-te_assertions.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ckpolicy-remove-unused-te_assertions.patch | 45 -------------------
 recipes-security/selinux/checkpolicy_3.0.bb   | 11 -----
 recipes-security/selinux/checkpolicy_3.1.bb   |  7 +++
 3 files changed, 7 insertions(+), 56 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy/0001-checkpolicy=
-remove-unused-te_assertions.patch
 delete mode 100644 recipes-security/selinux/checkpolicy_3.0.bb
 create mode 100644 recipes-security/selinux/checkpolicy_3.1.bb

diff --git a/recipes-security/selinux/checkpolicy/0001-checkpolicy-remove=
-unused-te_assertions.patch b/recipes-security/selinux/checkpolicy/0001-c=
heckpolicy-remove-unused-te_assertions.patch
deleted file mode 100644
index 61c301e..0000000
--- a/recipes-security/selinux/checkpolicy/0001-checkpolicy-remove-unused=
-te_assertions.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From 95d8f16ece96829109eb75a605b1459a25b5a6be Mon Sep 17 00:00:00 2001
-From: Ondrej Mosnacek <omosnace@redhat.com>
-Date: Thu, 23 Jan 2020 13:57:15 +0100
-Subject: [PATCH] checkpolicy: remove unused te_assertions
-
-This variable is declared in a header file, but never defined or used.
-The te_assert structure definition is only used in this declaration, so
-remove both.
-
-Upstream-Status: Backport [https://github.com/SELinuxProject/selinux/com=
mit/4d330d0d3155211f119b3082f728ae42dcc01e96]
-
-Signed-off-by: Ondrej Mosnacek <omosnace@redhat.com>
-Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
----
- checkpolicy/checkpolicy.h | 14 --------------
- 1 file changed, 14 deletions(-)
-
-diff --git a/checkpolicy.h b/checkpolicy.h
-index 3868f1fa023b..f127687e72a6 100644
---- a/checkpolicy.h
-+++ b/checkpolicy.h
-@@ -1,20 +1,6 @@
- #ifndef _CHECKPOLICY_H_
- #define _CHECKPOLICY_H_
-=20
--#include <sepol/policydb/ebitmap.h>
--
--typedef struct te_assert {
--	ebitmap_t stypes;
--	ebitmap_t ttypes;
--	ebitmap_t tclasses;
--	int self;
--	sepol_access_vector_t *avp;
--	unsigned long line;
--	struct te_assert *next;
--} te_assert_t;
--
--te_assert_t *te_assertions;
--
- extern unsigned int policyvers;
-=20
- #endif
---=20
-2.24.1
-
diff --git a/recipes-security/selinux/checkpolicy_3.0.bb b/recipes-securi=
ty/selinux/checkpolicy_3.0.bb
deleted file mode 100644
index 50d6217..0000000
--- a/recipes-security/selinux/checkpolicy_3.0.bb
+++ /dev/null
@@ -1,11 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "b7c5547b95ce855bcdc10cb8adba8223"
-SRC_URI[sha256sum] =3D "c88c719a141dd5c1202d49c378c7f063349d630522d5e04d=
c6e0c53da81aa4f8"
-
-SRC_URI +=3D "\
-       file://0001-checkpolicy-remove-unused-te_assertions.patch \
-"
diff --git a/recipes-security/selinux/checkpolicy_3.1.bb b/recipes-securi=
ty/selinux/checkpolicy_3.1.bb
new file mode 100644
index 0000000..71045b8
--- /dev/null
+++ b/recipes-security/selinux/checkpolicy_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "1302676cd8853f740a963fd6d5bb4172"
+SRC_URI[sha256sum] =3D "dfc7707070520c93b14fbbdfdbe081364d806bf28e3e79e1=
0318c2594c77bbb2"
--=20
2.25.1

