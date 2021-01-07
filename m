Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3734.1609991046725432584
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:06 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=D9csr1+K;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2049.outbound.protection.outlook.com [40.107.94.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9039538C0528
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbGulfPJr2wR0kcYmiKbsoUCOUkB26jqL3tj7jOwBSvSuIvsP1Z9dsJ2n9z05hhJRCHtBwNUPuG/AwUSp5cD+7p4cpzG992/L6e0wMxuatsywu9Ad47iwZTyHV1P8ENYpJB2E3hwIZt/2RAHl2gEEza4aZFzkiD/a6xW4S9+UyVvN+A43HGRAdCcTaxJINFjgQZaBWR0mwr1I66ZQL4qUZKGFNS5ZHDpCsvDnSz9E+BqcxcdGXp8EYiVgq4X5IXt3ZxiX6nv9aofdb2gx6SCTkkq+aOGcfhLOyUl9tqXC2Q656l1HR0yMvPFTaAQ0I/iWPRiYptPOy2OCFnBdC5FBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7477YU/O8Op58/KVYLQvEyiuksVUHfKKQbV/ScYV/E4=;
 b=muNxyNN0TyPQQVIqtr7bKCa21oGwmN1Tddl2TpjaRyNgw0NBiCd4dsNr0Hvj2RxhqXRKGTUmakC9detdeZwTp4ViN2i9Ri0YVx1mRbSk/nMjcsognAbVALSqkWu/RDMN2DO2XnHOWDAEeHMy3lIMzziJD8cr29cXfOpGUHBYLCrg6ydLAghOSdnOpQJ0xAJG+5Kp2NV9bDiagVVYMQ06w8owZA2PW3/F7OSN1ZY3LTldW82NmHHJoul5wAtZy7XU365vxsh6vKRZLrm43Ge+r7vDrKji1xlXgwYyJZZu33d1vhyU4eEaO2ePtPywDcJA1Qa/p35m1eYxcvcE9Q2IwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7477YU/O8Op58/KVYLQvEyiuksVUHfKKQbV/ScYV/E4=;
 b=D9csr1+K0m02GQImbFosshFEChglxqMC+kbzrmHrTVmVN1qyG/QxVpZzyXFrOQZf67Gq1237h3p+zx/6lUef85vMtvoq875OB8vSBvs+xZZCjZBKIbZYm+4Xo4Xotg3RbBXg5LKWwmMTmD2iGd1jAQSlIiqnwu5vVZm9O1mM0dc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:05 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:05 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 04/17] libsepol: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:32 +0800
Message-Id: <20210107034345.37200-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d88fe140-9b7b-4a00-b960-08d8b2be7b50
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB158428EB88F4EFCD817E89E3F9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TlUMxSldRzjMsysHqE3bRvDALvcspSkumV3MhdUj9R51CfAvpszcyuAFjpo+79EIHabb8JmEpPVxZqVE7uOIqdgOt+aRA+S5zfsEmRcStLdBFbmlVNPi/xL1EBkGwYLDvNnEix7dlP65fmUmG2yCJwltBD1iffuV7W9CaooEUMEbnOsr3ogdl75QUjulQnP9mBzTS9W3jdZQb+LyUnfrCeXKO27ds6ouaHQaDmXhNac/ansjWh28XJJsoAUKcc9o4bA/gRQKULfoNyOyuIg1y1RBSoVaO4+khOPeIZHM9sR5CK9e94VBJXNCtR4nD64kn7Tr0+CnIJc9+AWqZD2jcC0g0GtG586hX/aZuOKGr4GqJk9ueLSlELlnV+7HPEF8liGIsk6f0NmFuAhwJ70X8SGxQO8GJxAhiTgI9GQ/B7Ls4EWdgL8yLYY4S52bzhbyYAtAhXP2NmNa6oVqbMwv6A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(30864003)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?O+D+DlptaPdWIYvxFBm3OVlOkJjjLV1GFvTRyifi2/wuikuVSTNSAJf1+5l+?=
 =?us-ascii?Q?KLqE9VDYxuGrVxJOs0HC9ij23/of78EaIsKmXRnYutp97bpEKIo594u9NP0U?=
 =?us-ascii?Q?zuJqIm49LXqcZqT244NwS17KCO5GS8N738MPmGEMsQrjuq3GzSEiJPj3e2UO?=
 =?us-ascii?Q?7M6Vw+1eXEME2xMKwqA+gmimXhUf+hc1xuivpwZq53Dm05qzx2YHfLs+y7YV?=
 =?us-ascii?Q?w2Jbsw/Oo7RbGAFNh+ab7ucxvhSWcaJwxH38KG4xllTUKcxvBQVKER0Z1CAf?=
 =?us-ascii?Q?4j5krEzhBz6pLGFwr5uoaB9A5lElf0BJipJyWaZ+JVHkc0pCwCYFXVxusYEy?=
 =?us-ascii?Q?cugs0CFD+2i/jzhykXLEAVSrpIP2cV7xDPifz3Lh9UH4LMtKnX2uMYwa3xcw?=
 =?us-ascii?Q?pOzinqsohrbtue+QYPzVzKSDtbsAJVKLEIOHG6PN9ztlr+kNtxjP05w4mOHj?=
 =?us-ascii?Q?zh0PeL7HOw3Z503N62VGapzi9GtDtbzHy/cj0Pg0gMd4fLpeTtClCaGZo1Mu?=
 =?us-ascii?Q?nCc49g21KuEsJkhiJMX7H6qzJeAZQXopXzJ1KAMiCK//IEY7lU8eGIHS0Lrn?=
 =?us-ascii?Q?ro/jnWxi58HEdbadxWwMRsQhS4+xcZMHWf9zWzuj0SoRvAnRWdOsnjeQ71h8?=
 =?us-ascii?Q?QsGQ8YHBlKFwCATa3SveUfu0vbEh2TZNWFeJe1Is8Issn62kWG8a3swpMuDW?=
 =?us-ascii?Q?YJONOp5AVsbWijvMkpf4QaGBjbbE72H5atmSd+CCazlmYyyLTLLxmA+OvwFu?=
 =?us-ascii?Q?ne4aZIrIHJ/JjruvmfkJeh3/0Qn8EKBwK+thfNmJyp1pkh63RbluG/gCr1Pv?=
 =?us-ascii?Q?uwABXPfSqaDxUtsK/Owyd1j51Jz9cO+C97he0oxuHhWd5J7LaTwMJNczsPk9?=
 =?us-ascii?Q?8lpH0R5ZkE7GdblajRL9rF9AxWwJGwZauqmwOXxN1KJb9AubDmE2AuGAQ0oY?=
 =?us-ascii?Q?Q++dk2pWkKdn8nA1z6bhqGrYmqAT6Zo73JZ2Tm5slWgsbWpLmBWmebbjmtE9?=
 =?us-ascii?Q?le9R?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:05.4636
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d88fe140-9b7b-4a00-b960-08d8b2be7b50
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1gtYWLvGQQh5sVrDAZtq9h76dD1ZTSMfqCtZOTIjkJn+o+Btx9cQMjHdlhkXHiQzDIshfzwHPWsZWh+OIeACRA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Drop backported patches:
  0001-libsepol-fix-CIL_KEY_-build-errors-with-fno-common.patch
  0001-libsepol-remove-leftovers-of-cil_mem_error_handler.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...IL_KEY_-build-errors-with-fno-common.patch | 530 ------------------
 ...e-leftovers-of-cil_mem_error_handler.patch |  65 ---
 recipes-security/selinux/libsepol_3.0.bb      |  12 -
 recipes-security/selinux/libsepol_3.1.bb      |   8 +
 4 files changed, 8 insertions(+), 607 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol/0001-libsepol-fix-C=
IL_KEY_-build-errors-with-fno-common.patch
 delete mode 100644 recipes-security/selinux/libsepol/0001-libsepol-remov=
e-leftovers-of-cil_mem_error_handler.patch
 delete mode 100644 recipes-security/selinux/libsepol_3.0.bb
 create mode 100644 recipes-security/selinux/libsepol_3.1.bb

diff --git a/recipes-security/selinux/libsepol/0001-libsepol-fix-CIL_KEY_=
-build-errors-with-fno-common.patch b/recipes-security/selinux/libsepol/0=
001-libsepol-fix-CIL_KEY_-build-errors-with-fno-common.patch
deleted file mode 100644
index 46c56a4..0000000
--- a/recipes-security/selinux/libsepol/0001-libsepol-fix-CIL_KEY_-build-=
errors-with-fno-common.patch
+++ /dev/null
@@ -1,530 +0,0 @@
-From a96e8c59ecac84096d870b42701a504791a8cc8c Mon Sep 17 00:00:00 2001
-From: Ondrej Mosnacek <omosnace@redhat.com>
-Date: Thu, 23 Jan 2020 13:57:13 +0100
-Subject: [PATCH] libsepol: fix CIL_KEY_* build errors with -fno-common
-
-GCC 10 comes with -fno-common enabled by default - fix the CIL_KEY_*
-global variables to be defined only once in cil.c and declared in the
-header file correctly with the 'extern' keyword, so that other units
-including the file don't generate duplicate definitions.
-
-Signed-off-by: Ondrej Mosnacek <omosnace@redhat.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/a96e8c59ecac84096d870b=
42701a504791a8cc8c]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- cil/src/cil.c          | 162 ++++++++++++++++
- cil/src/cil_internal.h | 322 ++++++++++++++++----------------
- 2 files changed, 323 insertions(+), 161 deletions(-)
-
-diff --git a/cil/src/cil.c b/cil/src/cil.c
-index de729cf8..d222ad3a 100644
---- a/cil/src/cil.c
-+++ b/cil/src/cil.c
-@@ -77,6 +77,168 @@ int cil_sym_sizes[CIL_SYM_ARRAY_NUM][CIL_SYM_NUM] =3D=
 {
- 	{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1}
- };
-=20
-+char *CIL_KEY_CONS_T1;
-+char *CIL_KEY_CONS_T2;
-+char *CIL_KEY_CONS_T3;
-+char *CIL_KEY_CONS_R1;
-+char *CIL_KEY_CONS_R2;
-+char *CIL_KEY_CONS_R3;
-+char *CIL_KEY_CONS_U1;
-+char *CIL_KEY_CONS_U2;
-+char *CIL_KEY_CONS_U3;
-+char *CIL_KEY_CONS_L1;
-+char *CIL_KEY_CONS_L2;
-+char *CIL_KEY_CONS_H1;
-+char *CIL_KEY_CONS_H2;
-+char *CIL_KEY_AND;
-+char *CIL_KEY_OR;
-+char *CIL_KEY_NOT;
-+char *CIL_KEY_EQ;
-+char *CIL_KEY_NEQ;
-+char *CIL_KEY_CONS_DOM;
-+char *CIL_KEY_CONS_DOMBY;
-+char *CIL_KEY_CONS_INCOMP;
-+char *CIL_KEY_CONDTRUE;
-+char *CIL_KEY_CONDFALSE;
-+char *CIL_KEY_SELF;
-+char *CIL_KEY_OBJECT_R;
-+char *CIL_KEY_STAR;
-+char *CIL_KEY_TCP;
-+char *CIL_KEY_UDP;
-+char *CIL_KEY_DCCP;
-+char *CIL_KEY_SCTP;
-+char *CIL_KEY_AUDITALLOW;
-+char *CIL_KEY_TUNABLEIF;
-+char *CIL_KEY_ALLOW;
-+char *CIL_KEY_DONTAUDIT;
-+char *CIL_KEY_TYPETRANSITION;
-+char *CIL_KEY_TYPECHANGE;
-+char *CIL_KEY_CALL;
-+char *CIL_KEY_TUNABLE;
-+char *CIL_KEY_XOR;
-+char *CIL_KEY_ALL;
-+char *CIL_KEY_RANGE;
-+char *CIL_KEY_GLOB;
-+char *CIL_KEY_FILE;
-+char *CIL_KEY_DIR;
-+char *CIL_KEY_CHAR;
-+char *CIL_KEY_BLOCK;
-+char *CIL_KEY_SOCKET;
-+char *CIL_KEY_PIPE;
-+char *CIL_KEY_SYMLINK;
-+char *CIL_KEY_ANY;
-+char *CIL_KEY_XATTR;
-+char *CIL_KEY_TASK;
-+char *CIL_KEY_TRANS;
-+char *CIL_KEY_TYPE;
-+char *CIL_KEY_ROLE;
-+char *CIL_KEY_USER;
-+char *CIL_KEY_USERATTRIBUTE;
-+char *CIL_KEY_USERATTRIBUTESET;
-+char *CIL_KEY_SENSITIVITY;
-+char *CIL_KEY_CATEGORY;
-+char *CIL_KEY_CATSET;
-+char *CIL_KEY_LEVEL;
-+char *CIL_KEY_LEVELRANGE;
-+char *CIL_KEY_CLASS;
-+char *CIL_KEY_IPADDR;
-+char *CIL_KEY_MAP_CLASS;
-+char *CIL_KEY_CLASSPERMISSION;
-+char *CIL_KEY_BOOL;
-+char *CIL_KEY_STRING;
-+char *CIL_KEY_NAME;
-+char *CIL_KEY_SOURCE;
-+char *CIL_KEY_TARGET;
-+char *CIL_KEY_LOW;
-+char *CIL_KEY_HIGH;
-+char *CIL_KEY_LOW_HIGH;
-+char *CIL_KEY_GLBLUB;
-+char *CIL_KEY_HANDLEUNKNOWN;
-+char *CIL_KEY_HANDLEUNKNOWN_ALLOW;
-+char *CIL_KEY_HANDLEUNKNOWN_DENY;
-+char *CIL_KEY_HANDLEUNKNOWN_REJECT;
-+char *CIL_KEY_MACRO;
-+char *CIL_KEY_IN;
-+char *CIL_KEY_MLS;
-+char *CIL_KEY_DEFAULTRANGE;
-+char *CIL_KEY_BLOCKINHERIT;
-+char *CIL_KEY_BLOCKABSTRACT;
-+char *CIL_KEY_CLASSORDER;
-+char *CIL_KEY_CLASSMAPPING;
-+char *CIL_KEY_CLASSPERMISSIONSET;
-+char *CIL_KEY_COMMON;
-+char *CIL_KEY_CLASSCOMMON;
-+char *CIL_KEY_SID;
-+char *CIL_KEY_SIDCONTEXT;
-+char *CIL_KEY_SIDORDER;
-+char *CIL_KEY_USERLEVEL;
-+char *CIL_KEY_USERRANGE;
-+char *CIL_KEY_USERBOUNDS;
-+char *CIL_KEY_USERPREFIX;
-+char *CIL_KEY_SELINUXUSER;
-+char *CIL_KEY_SELINUXUSERDEFAULT;
-+char *CIL_KEY_TYPEATTRIBUTE;
-+char *CIL_KEY_TYPEATTRIBUTESET;
-+char *CIL_KEY_EXPANDTYPEATTRIBUTE;
-+char *CIL_KEY_TYPEALIAS;
-+char *CIL_KEY_TYPEALIASACTUAL;
-+char *CIL_KEY_TYPEBOUNDS;
-+char *CIL_KEY_TYPEPERMISSIVE;
-+char *CIL_KEY_RANGETRANSITION;
-+char *CIL_KEY_USERROLE;
-+char *CIL_KEY_ROLETYPE;
-+char *CIL_KEY_ROLETRANSITION;
-+char *CIL_KEY_ROLEALLOW;
-+char *CIL_KEY_ROLEATTRIBUTE;
-+char *CIL_KEY_ROLEATTRIBUTESET;
-+char *CIL_KEY_ROLEBOUNDS;
-+char *CIL_KEY_BOOLEANIF;
-+char *CIL_KEY_NEVERALLOW;
-+char *CIL_KEY_TYPEMEMBER;
-+char *CIL_KEY_SENSALIAS;
-+char *CIL_KEY_SENSALIASACTUAL;
-+char *CIL_KEY_CATALIAS;
-+char *CIL_KEY_CATALIASACTUAL;
-+char *CIL_KEY_CATORDER;
-+char *CIL_KEY_SENSITIVITYORDER;
-+char *CIL_KEY_SENSCAT;
-+char *CIL_KEY_CONSTRAIN;
-+char *CIL_KEY_MLSCONSTRAIN;
-+char *CIL_KEY_VALIDATETRANS;
-+char *CIL_KEY_MLSVALIDATETRANS;
-+char *CIL_KEY_CONTEXT;
-+char *CIL_KEY_FILECON;
-+char *CIL_KEY_IBPKEYCON;
-+char *CIL_KEY_IBENDPORTCON;
-+char *CIL_KEY_PORTCON;
-+char *CIL_KEY_NODECON;
-+char *CIL_KEY_GENFSCON;
-+char *CIL_KEY_NETIFCON;
-+char *CIL_KEY_PIRQCON;
-+char *CIL_KEY_IOMEMCON;
-+char *CIL_KEY_IOPORTCON;
-+char *CIL_KEY_PCIDEVICECON;
-+char *CIL_KEY_DEVICETREECON;
-+char *CIL_KEY_FSUSE;
-+char *CIL_KEY_POLICYCAP;
-+char *CIL_KEY_OPTIONAL;
-+char *CIL_KEY_DEFAULTUSER;
-+char *CIL_KEY_DEFAULTROLE;
-+char *CIL_KEY_DEFAULTTYPE;
-+char *CIL_KEY_ROOT;
-+char *CIL_KEY_NODE;
-+char *CIL_KEY_PERM;
-+char *CIL_KEY_ALLOWX;
-+char *CIL_KEY_AUDITALLOWX;
-+char *CIL_KEY_DONTAUDITX;
-+char *CIL_KEY_NEVERALLOWX;
-+char *CIL_KEY_PERMISSIONX;
-+char *CIL_KEY_IOCTL;
-+char *CIL_KEY_UNORDERED;
-+char *CIL_KEY_SRC_INFO;
-+char *CIL_KEY_SRC_CIL;
-+char *CIL_KEY_SRC_HLL;
-+
- static void cil_init_keys(void)
- {
- 	/* Initialize CIL Keys into strpool */
-diff --git a/cil/src/cil_internal.h b/cil/src/cil_internal.h
-index 30fab649..9bdcbdd0 100644
---- a/cil/src/cil_internal.h
-+++ b/cil/src/cil_internal.h
-@@ -74,167 +74,167 @@ enum cil_pass {
- /*
- 	Keywords
- */
--char *CIL_KEY_CONS_T1;
--char *CIL_KEY_CONS_T2;
--char *CIL_KEY_CONS_T3;
--char *CIL_KEY_CONS_R1;
--char *CIL_KEY_CONS_R2;
--char *CIL_KEY_CONS_R3;
--char *CIL_KEY_CONS_U1;
--char *CIL_KEY_CONS_U2;
--char *CIL_KEY_CONS_U3;
--char *CIL_KEY_CONS_L1;
--char *CIL_KEY_CONS_L2;
--char *CIL_KEY_CONS_H1;
--char *CIL_KEY_CONS_H2;
--char *CIL_KEY_AND;
--char *CIL_KEY_OR;
--char *CIL_KEY_NOT;
--char *CIL_KEY_EQ;
--char *CIL_KEY_NEQ;
--char *CIL_KEY_CONS_DOM;
--char *CIL_KEY_CONS_DOMBY;
--char *CIL_KEY_CONS_INCOMP;
--char *CIL_KEY_CONDTRUE;
--char *CIL_KEY_CONDFALSE;
--char *CIL_KEY_SELF;
--char *CIL_KEY_OBJECT_R;
--char *CIL_KEY_STAR;
--char *CIL_KEY_TCP;
--char *CIL_KEY_UDP;
--char *CIL_KEY_DCCP;
--char *CIL_KEY_SCTP;
--char *CIL_KEY_AUDITALLOW;
--char *CIL_KEY_TUNABLEIF;
--char *CIL_KEY_ALLOW;
--char *CIL_KEY_DONTAUDIT;
--char *CIL_KEY_TYPETRANSITION;
--char *CIL_KEY_TYPECHANGE;
--char *CIL_KEY_CALL;
--char *CIL_KEY_TUNABLE;
--char *CIL_KEY_XOR;
--char *CIL_KEY_ALL;
--char *CIL_KEY_RANGE;
--char *CIL_KEY_GLOB;
--char *CIL_KEY_FILE;
--char *CIL_KEY_DIR;
--char *CIL_KEY_CHAR;
--char *CIL_KEY_BLOCK;
--char *CIL_KEY_SOCKET;
--char *CIL_KEY_PIPE;
--char *CIL_KEY_SYMLINK;
--char *CIL_KEY_ANY;
--char *CIL_KEY_XATTR;
--char *CIL_KEY_TASK;
--char *CIL_KEY_TRANS;
--char *CIL_KEY_TYPE;
--char *CIL_KEY_ROLE;
--char *CIL_KEY_USER;
--char *CIL_KEY_USERATTRIBUTE;
--char *CIL_KEY_USERATTRIBUTESET;
--char *CIL_KEY_SENSITIVITY;
--char *CIL_KEY_CATEGORY;
--char *CIL_KEY_CATSET;
--char *CIL_KEY_LEVEL;
--char *CIL_KEY_LEVELRANGE;
--char *CIL_KEY_CLASS;
--char *CIL_KEY_IPADDR;
--char *CIL_KEY_MAP_CLASS;
--char *CIL_KEY_CLASSPERMISSION;
--char *CIL_KEY_BOOL;
--char *CIL_KEY_STRING;
--char *CIL_KEY_NAME;
--char *CIL_KEY_SOURCE;
--char *CIL_KEY_TARGET;
--char *CIL_KEY_LOW;
--char *CIL_KEY_HIGH;
--char *CIL_KEY_LOW_HIGH;
--char *CIL_KEY_GLBLUB;
--char *CIL_KEY_HANDLEUNKNOWN;
--char *CIL_KEY_HANDLEUNKNOWN_ALLOW;
--char *CIL_KEY_HANDLEUNKNOWN_DENY;
--char *CIL_KEY_HANDLEUNKNOWN_REJECT;
--char *CIL_KEY_MACRO;
--char *CIL_KEY_IN;
--char *CIL_KEY_MLS;
--char *CIL_KEY_DEFAULTRANGE;
--char *CIL_KEY_BLOCKINHERIT;
--char *CIL_KEY_BLOCKABSTRACT;
--char *CIL_KEY_CLASSORDER;
--char *CIL_KEY_CLASSMAPPING;
--char *CIL_KEY_CLASSPERMISSIONSET;
--char *CIL_KEY_COMMON;
--char *CIL_KEY_CLASSCOMMON;
--char *CIL_KEY_SID;
--char *CIL_KEY_SIDCONTEXT;
--char *CIL_KEY_SIDORDER;
--char *CIL_KEY_USERLEVEL;
--char *CIL_KEY_USERRANGE;
--char *CIL_KEY_USERBOUNDS;
--char *CIL_KEY_USERPREFIX;
--char *CIL_KEY_SELINUXUSER;
--char *CIL_KEY_SELINUXUSERDEFAULT;
--char *CIL_KEY_TYPEATTRIBUTE;
--char *CIL_KEY_TYPEATTRIBUTESET;
--char *CIL_KEY_EXPANDTYPEATTRIBUTE;
--char *CIL_KEY_TYPEALIAS;
--char *CIL_KEY_TYPEALIASACTUAL;
--char *CIL_KEY_TYPEBOUNDS;
--char *CIL_KEY_TYPEPERMISSIVE;
--char *CIL_KEY_RANGETRANSITION;
--char *CIL_KEY_USERROLE;
--char *CIL_KEY_ROLETYPE;
--char *CIL_KEY_ROLETRANSITION;
--char *CIL_KEY_ROLEALLOW;
--char *CIL_KEY_ROLEATTRIBUTE;
--char *CIL_KEY_ROLEATTRIBUTESET;
--char *CIL_KEY_ROLEBOUNDS;
--char *CIL_KEY_BOOLEANIF;
--char *CIL_KEY_NEVERALLOW;
--char *CIL_KEY_TYPEMEMBER;
--char *CIL_KEY_SENSALIAS;
--char *CIL_KEY_SENSALIASACTUAL;
--char *CIL_KEY_CATALIAS;
--char *CIL_KEY_CATALIASACTUAL;
--char *CIL_KEY_CATORDER;
--char *CIL_KEY_SENSITIVITYORDER;
--char *CIL_KEY_SENSCAT;
--char *CIL_KEY_CONSTRAIN;
--char *CIL_KEY_MLSCONSTRAIN;
--char *CIL_KEY_VALIDATETRANS;
--char *CIL_KEY_MLSVALIDATETRANS;
--char *CIL_KEY_CONTEXT;
--char *CIL_KEY_FILECON;
--char *CIL_KEY_IBPKEYCON;
--char *CIL_KEY_IBENDPORTCON;
--char *CIL_KEY_PORTCON;
--char *CIL_KEY_NODECON;
--char *CIL_KEY_GENFSCON;
--char *CIL_KEY_NETIFCON;
--char *CIL_KEY_PIRQCON;
--char *CIL_KEY_IOMEMCON;
--char *CIL_KEY_IOPORTCON;
--char *CIL_KEY_PCIDEVICECON;
--char *CIL_KEY_DEVICETREECON;
--char *CIL_KEY_FSUSE;
--char *CIL_KEY_POLICYCAP;
--char *CIL_KEY_OPTIONAL;
--char *CIL_KEY_DEFAULTUSER;
--char *CIL_KEY_DEFAULTROLE;
--char *CIL_KEY_DEFAULTTYPE;
--char *CIL_KEY_ROOT;
--char *CIL_KEY_NODE;
--char *CIL_KEY_PERM;
--char *CIL_KEY_ALLOWX;
--char *CIL_KEY_AUDITALLOWX;
--char *CIL_KEY_DONTAUDITX;
--char *CIL_KEY_NEVERALLOWX;
--char *CIL_KEY_PERMISSIONX;
--char *CIL_KEY_IOCTL;
--char *CIL_KEY_UNORDERED;
--char *CIL_KEY_SRC_INFO;
--char *CIL_KEY_SRC_CIL;
--char *CIL_KEY_SRC_HLL;
-+extern char *CIL_KEY_CONS_T1;
-+extern char *CIL_KEY_CONS_T2;
-+extern char *CIL_KEY_CONS_T3;
-+extern char *CIL_KEY_CONS_R1;
-+extern char *CIL_KEY_CONS_R2;
-+extern char *CIL_KEY_CONS_R3;
-+extern char *CIL_KEY_CONS_U1;
-+extern char *CIL_KEY_CONS_U2;
-+extern char *CIL_KEY_CONS_U3;
-+extern char *CIL_KEY_CONS_L1;
-+extern char *CIL_KEY_CONS_L2;
-+extern char *CIL_KEY_CONS_H1;
-+extern char *CIL_KEY_CONS_H2;
-+extern char *CIL_KEY_AND;
-+extern char *CIL_KEY_OR;
-+extern char *CIL_KEY_NOT;
-+extern char *CIL_KEY_EQ;
-+extern char *CIL_KEY_NEQ;
-+extern char *CIL_KEY_CONS_DOM;
-+extern char *CIL_KEY_CONS_DOMBY;
-+extern char *CIL_KEY_CONS_INCOMP;
-+extern char *CIL_KEY_CONDTRUE;
-+extern char *CIL_KEY_CONDFALSE;
-+extern char *CIL_KEY_SELF;
-+extern char *CIL_KEY_OBJECT_R;
-+extern char *CIL_KEY_STAR;
-+extern char *CIL_KEY_TCP;
-+extern char *CIL_KEY_UDP;
-+extern char *CIL_KEY_DCCP;
-+extern char *CIL_KEY_SCTP;
-+extern char *CIL_KEY_AUDITALLOW;
-+extern char *CIL_KEY_TUNABLEIF;
-+extern char *CIL_KEY_ALLOW;
-+extern char *CIL_KEY_DONTAUDIT;
-+extern char *CIL_KEY_TYPETRANSITION;
-+extern char *CIL_KEY_TYPECHANGE;
-+extern char *CIL_KEY_CALL;
-+extern char *CIL_KEY_TUNABLE;
-+extern char *CIL_KEY_XOR;
-+extern char *CIL_KEY_ALL;
-+extern char *CIL_KEY_RANGE;
-+extern char *CIL_KEY_GLOB;
-+extern char *CIL_KEY_FILE;
-+extern char *CIL_KEY_DIR;
-+extern char *CIL_KEY_CHAR;
-+extern char *CIL_KEY_BLOCK;
-+extern char *CIL_KEY_SOCKET;
-+extern char *CIL_KEY_PIPE;
-+extern char *CIL_KEY_SYMLINK;
-+extern char *CIL_KEY_ANY;
-+extern char *CIL_KEY_XATTR;
-+extern char *CIL_KEY_TASK;
-+extern char *CIL_KEY_TRANS;
-+extern char *CIL_KEY_TYPE;
-+extern char *CIL_KEY_ROLE;
-+extern char *CIL_KEY_USER;
-+extern char *CIL_KEY_USERATTRIBUTE;
-+extern char *CIL_KEY_USERATTRIBUTESET;
-+extern char *CIL_KEY_SENSITIVITY;
-+extern char *CIL_KEY_CATEGORY;
-+extern char *CIL_KEY_CATSET;
-+extern char *CIL_KEY_LEVEL;
-+extern char *CIL_KEY_LEVELRANGE;
-+extern char *CIL_KEY_CLASS;
-+extern char *CIL_KEY_IPADDR;
-+extern char *CIL_KEY_MAP_CLASS;
-+extern char *CIL_KEY_CLASSPERMISSION;
-+extern char *CIL_KEY_BOOL;
-+extern char *CIL_KEY_STRING;
-+extern char *CIL_KEY_NAME;
-+extern char *CIL_KEY_SOURCE;
-+extern char *CIL_KEY_TARGET;
-+extern char *CIL_KEY_LOW;
-+extern char *CIL_KEY_HIGH;
-+extern char *CIL_KEY_LOW_HIGH;
-+extern char *CIL_KEY_GLBLUB;
-+extern char *CIL_KEY_HANDLEUNKNOWN;
-+extern char *CIL_KEY_HANDLEUNKNOWN_ALLOW;
-+extern char *CIL_KEY_HANDLEUNKNOWN_DENY;
-+extern char *CIL_KEY_HANDLEUNKNOWN_REJECT;
-+extern char *CIL_KEY_MACRO;
-+extern char *CIL_KEY_IN;
-+extern char *CIL_KEY_MLS;
-+extern char *CIL_KEY_DEFAULTRANGE;
-+extern char *CIL_KEY_BLOCKINHERIT;
-+extern char *CIL_KEY_BLOCKABSTRACT;
-+extern char *CIL_KEY_CLASSORDER;
-+extern char *CIL_KEY_CLASSMAPPING;
-+extern char *CIL_KEY_CLASSPERMISSIONSET;
-+extern char *CIL_KEY_COMMON;
-+extern char *CIL_KEY_CLASSCOMMON;
-+extern char *CIL_KEY_SID;
-+extern char *CIL_KEY_SIDCONTEXT;
-+extern char *CIL_KEY_SIDORDER;
-+extern char *CIL_KEY_USERLEVEL;
-+extern char *CIL_KEY_USERRANGE;
-+extern char *CIL_KEY_USERBOUNDS;
-+extern char *CIL_KEY_USERPREFIX;
-+extern char *CIL_KEY_SELINUXUSER;
-+extern char *CIL_KEY_SELINUXUSERDEFAULT;
-+extern char *CIL_KEY_TYPEATTRIBUTE;
-+extern char *CIL_KEY_TYPEATTRIBUTESET;
-+extern char *CIL_KEY_EXPANDTYPEATTRIBUTE;
-+extern char *CIL_KEY_TYPEALIAS;
-+extern char *CIL_KEY_TYPEALIASACTUAL;
-+extern char *CIL_KEY_TYPEBOUNDS;
-+extern char *CIL_KEY_TYPEPERMISSIVE;
-+extern char *CIL_KEY_RANGETRANSITION;
-+extern char *CIL_KEY_USERROLE;
-+extern char *CIL_KEY_ROLETYPE;
-+extern char *CIL_KEY_ROLETRANSITION;
-+extern char *CIL_KEY_ROLEALLOW;
-+extern char *CIL_KEY_ROLEATTRIBUTE;
-+extern char *CIL_KEY_ROLEATTRIBUTESET;
-+extern char *CIL_KEY_ROLEBOUNDS;
-+extern char *CIL_KEY_BOOLEANIF;
-+extern char *CIL_KEY_NEVERALLOW;
-+extern char *CIL_KEY_TYPEMEMBER;
-+extern char *CIL_KEY_SENSALIAS;
-+extern char *CIL_KEY_SENSALIASACTUAL;
-+extern char *CIL_KEY_CATALIAS;
-+extern char *CIL_KEY_CATALIASACTUAL;
-+extern char *CIL_KEY_CATORDER;
-+extern char *CIL_KEY_SENSITIVITYORDER;
-+extern char *CIL_KEY_SENSCAT;
-+extern char *CIL_KEY_CONSTRAIN;
-+extern char *CIL_KEY_MLSCONSTRAIN;
-+extern char *CIL_KEY_VALIDATETRANS;
-+extern char *CIL_KEY_MLSVALIDATETRANS;
-+extern char *CIL_KEY_CONTEXT;
-+extern char *CIL_KEY_FILECON;
-+extern char *CIL_KEY_IBPKEYCON;
-+extern char *CIL_KEY_IBENDPORTCON;
-+extern char *CIL_KEY_PORTCON;
-+extern char *CIL_KEY_NODECON;
-+extern char *CIL_KEY_GENFSCON;
-+extern char *CIL_KEY_NETIFCON;
-+extern char *CIL_KEY_PIRQCON;
-+extern char *CIL_KEY_IOMEMCON;
-+extern char *CIL_KEY_IOPORTCON;
-+extern char *CIL_KEY_PCIDEVICECON;
-+extern char *CIL_KEY_DEVICETREECON;
-+extern char *CIL_KEY_FSUSE;
-+extern char *CIL_KEY_POLICYCAP;
-+extern char *CIL_KEY_OPTIONAL;
-+extern char *CIL_KEY_DEFAULTUSER;
-+extern char *CIL_KEY_DEFAULTROLE;
-+extern char *CIL_KEY_DEFAULTTYPE;
-+extern char *CIL_KEY_ROOT;
-+extern char *CIL_KEY_NODE;
-+extern char *CIL_KEY_PERM;
-+extern char *CIL_KEY_ALLOWX;
-+extern char *CIL_KEY_AUDITALLOWX;
-+extern char *CIL_KEY_DONTAUDITX;
-+extern char *CIL_KEY_NEVERALLOWX;
-+extern char *CIL_KEY_PERMISSIONX;
-+extern char *CIL_KEY_IOCTL;
-+extern char *CIL_KEY_UNORDERED;
-+extern char *CIL_KEY_SRC_INFO;
-+extern char *CIL_KEY_SRC_CIL;
-+extern char *CIL_KEY_SRC_HLL;
-=20
- /*
- 	Symbol Table Array Indices
---=20
-2.17.1
-
diff --git a/recipes-security/selinux/libsepol/0001-libsepol-remove-lefto=
vers-of-cil_mem_error_handler.patch b/recipes-security/selinux/libsepol/0=
001-libsepol-remove-leftovers-of-cil_mem_error_handler.patch
deleted file mode 100644
index 674fddd..0000000
--- a/recipes-security/selinux/libsepol/0001-libsepol-remove-leftovers-of=
-cil_mem_error_handler.patch
+++ /dev/null
@@ -1,65 +0,0 @@
-From 3d32fc24d6aff360a538c63dad08ca5c957551b0 Mon Sep 17 00:00:00 2001
-From: Ondrej Mosnacek <omosnace@redhat.com>
-Date: Thu, 23 Jan 2020 13:57:14 +0100
-Subject: [PATCH] libsepol: remove leftovers of cil_mem_error_handler
-
-Commit 4459d635b8f1 ("libsepol: Remove cil_mem_error_handler() function
-pointer") replaced cil_mem_error_handler usage with inline contents of
-the default handler. However, it left over the header declaration and
-two callers. Convert these as well and remove the header declaration.
-
-This also fixes a build failure with -fno-common.
-
-Fixes: 4459d635b8f1 ("libsepol: Remove cil_mem_error_handler() function =
pointer")
-Signed-off-by: Ondrej Mosnacek <omosnace@redhat.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/3d32fc24d6aff360a538c6=
3dad08ca5c957551b0]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- cil/src/cil_mem.h     | 1 -
- cil/src/cil_strpool.c | 8 ++++----
- 2 files changed, 4 insertions(+), 5 deletions(-)
-
-diff --git a/cil/src/cil_mem.h b/cil/src/cil_mem.h
-index 902ce131..794f02a3 100644
---- a/cil/src/cil_mem.h
-+++ b/cil/src/cil_mem.h
-@@ -36,7 +36,6 @@ void *cil_calloc(size_t num_elements, size_t element_s=
ize);
- void *cil_realloc(void *ptr, size_t size);
- char *cil_strdup(const char *str);
- int cil_asprintf(char **strp, const char *fmt, ...);
--void (*cil_mem_error_handler)(void);
-=20
- #endif /* CIL_MEM_H_ */
-=20
-diff --git a/cil/src/cil_strpool.c b/cil/src/cil_strpool.c
-index 97d4c4b9..2598bbf3 100644
---- a/cil/src/cil_strpool.c
-+++ b/cil/src/cil_strpool.c
-@@ -80,8 +80,8 @@ char *cil_strpool_add(const char *str)
- 		int rc =3D hashtab_insert(cil_strpool_tab, (hashtab_key_t)strpool_ref=
->str, strpool_ref);
- 		if (rc !=3D SEPOL_OK) {
- 			pthread_mutex_unlock(&cil_strpool_mutex);
--			(*cil_mem_error_handler)();
--			pthread_mutex_lock(&cil_strpool_mutex);
-+			cil_log(CIL_ERR, "Failed to allocate memory\n");
-+			exit(1);
- 		}
- 	}
-=20
-@@ -104,8 +104,8 @@ void cil_strpool_init(void)
- 		cil_strpool_tab =3D hashtab_create(cil_strpool_hash, cil_strpool_comp=
are, CIL_STRPOOL_TABLE_SIZE);
- 		if (cil_strpool_tab =3D=3D NULL) {
- 			pthread_mutex_unlock(&cil_strpool_mutex);
--			(*cil_mem_error_handler)();
--			return;
-+			cil_log(CIL_ERR, "Failed to allocate memory\n");
-+			exit(1);
- 		}
- 	}
- 	cil_strpool_readers++;
---=20
-2.17.1
-
diff --git a/recipes-security/selinux/libsepol_3.0.bb b/recipes-security/=
selinux/libsepol_3.0.bb
deleted file mode 100644
index 58559d7..0000000
--- a/recipes-security/selinux/libsepol_3.0.bb
+++ /dev/null
@@ -1,12 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e37=
343"
-
-SRC_URI[md5sum] =3D "22ddb9994910cb9cfff5cb9663cb7ae7"
-SRC_URI[sha256sum] =3D "5b7ae1881909f1048b06f7a0c364c5c8a86ec12e0ec76e74=
0fe9595a6033eb79"
-
-SRC_URI +=3D "\
-        file://0001-libsepol-fix-CIL_KEY_-build-errors-with-fno-common.p=
atch \
-        file://0001-libsepol-remove-leftovers-of-cil_mem_error_handler.p=
atch \
-        "
diff --git a/recipes-security/selinux/libsepol_3.1.bb b/recipes-security/=
selinux/libsepol_3.1.bb
new file mode 100644
index 0000000..1568025
--- /dev/null
+++ b/recipes-security/selinux/libsepol_3.1.bb
@@ -0,0 +1,8 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e37=
343"
+
+SRC_URI[md5sum] =3D "b56dc01b76b97dcb730ab4e2fd1c9dea"
+SRC_URI[sha256sum] =3D "ae6778d01443fdd38cd30eeee846494e19f4d407b0987258=
0372f4aa4bf8a3cc"
+
--=20
2.25.1

