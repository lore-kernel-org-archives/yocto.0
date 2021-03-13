Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.71])
 by mx.groups.io with SMTP id smtpd.web08.123.1615614683847986633
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:24 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=hBuBqiFR;
 spf=pass (domain: windriver.com, ip: 40.107.223.71, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UXeBVZNg/ZkBMy2gijeWK9MLSwOapDPG5ZTO48PO62ABRxb+hjX+XaJ5hfOpweAP1VjVAQgaAbNmIwAPqDXFNiMM3Wuf74qMxpZ13/1CcLlfVNHbYi49oNVK1iW8fS4S4oQ3dg/CABYn42+MDpetLYJKgiH1QxgSQRfQb6CdzTbvtC1aPCp2SCpb84Cro/RqFbyuRpyi2EBTB2rMuUJ5eYXrzxClF3hl0I2vcVW+cefC9bFsldLozkZDnKjgri/pA7FyIkn/jGqVszDAPvjIErb+KVj19+4YVGjjjts7fcpJfPjmQiz7VjiH3lSO/6iy8Tkh4SJPZQ8vUwPlV6AEUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VnMjZLg4R3CXGnXAL/hkjNYJFR6SNE3qdEynurfiWUc=;
 b=gKOtP+BEEmqJbAsu11WQMOBxEwyYjUJXrnHXSiQic002tXKD3HvgSfVmNqOdW+vpb/v0i+iY05Hcek8w/lHAQYk+GaK/Wj1d0h1EJquYz6bUCo1piVPqXW73+uFCI8Jaeiaj9mHnIl77VkpntSW8W+sC0BTa3NxydLLjwH9yhrPPkZn4BOnVf5fj7UTpfw48xbjv/SutPA4HVyTjCnvfshYche/D4Tpebu/zxwJXsqNF8+8JuC2fcGOGNeLdFTwA5HzvqMMtpzxqLzcktwINWC52THsyTYcwUlrX5xc3XbuxcAsqewfFRci4/NNjTklMLvNvvgxCl95O95OnvSNg7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VnMjZLg4R3CXGnXAL/hkjNYJFR6SNE3qdEynurfiWUc=;
 b=hBuBqiFR7cwQfg/q/WMAhy9aNyMhNv2xUTPTfiMrNe1RaQOD36gu5m5564ncUIJgLMlMdWfUeW0X14SqapUgAyQKnBwkHG13rDvpHWLfcMUUbEpNDgKvwO16K/uvFJIRi8mkrw2+DoaCh+Y41/vAlc99gKPE5KGtKIHVMIRnpsE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:22 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:22 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 15/16] semodule-utils: update to 3.2
Date: Sat, 13 Mar 2021 13:50:43 +0800
Message-ID: <20210313055044.239776-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210313055044.239776-1-yi.zhao@windriver.com>
References: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91aa6dd5-275c-495f-908c-08d8e5e40816
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318AB447A66A7D59B72A823F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XtM1HKN1n7VB/9uopjIxo8I5whHhO08l4ucGoUnAg7SpUQNdvxcNgXl7NWimsdQ0st9374UKVrZKI1xtLhEZTTcNWlmhSukfWViYS8wV5cRJgABeGPsR4QlJCmfwLQBgg+Cw6NWdSjhsw/EjiKgcCGJHBVBki0LiGNVYa1+Y5KynEpIo/cY2UMjNuwu3j8HtfP+mMJYOjGwNi+dbhLI2J0nKOd4czOD6qAEIfA1RoeGlLC86ndB025c0SAxBPak11vZe+Af+m2fuWOpYAiuTxF7SkX4g0fIqV4TCsphIlJ8M3LRHjYvtiz2VMvILe4uklwM+GCeUXAFPQSLwMaNPbVaYLvcBV9TjUhs5FI+vGoLnA2WcVb7c9V5dGsKFQNxk2vu+XUGnFzUa2hao9yN69xq2EHtAs/N+bfdR8b4+4jgxuyyPPeOvJCK33IvtR9qjrydtfNTiVNP2IREccCKQ0M0fLmDDGLWllDpM+OZbdO/mYXXLCRspXrhzArIeivotSztY0XnWJnXuIoFwyTT4lQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Po0AeIx+/mCs2LtQ9lQzPUTqJF3q/JTcvx3tG4AI+15xxiYMd+Z7xARe66Fi?=
 =?us-ascii?Q?J28XPi5+a0nLe1RRWOFFuwVkUkVXSFQ4jpGYmJdOGg4dgawpKPcmObmsQJ3H?=
 =?us-ascii?Q?HjqcTyMJ0iL8QYxVhH286I3w2tPvo/tTTaASY5hJvbLy/1aviBYwwib0BEwp?=
 =?us-ascii?Q?054guRR8qby/m7FH8EQ2Vhkum8dCwmutf41BR4eXnHqmCLXv9BOhBB6AtNEO?=
 =?us-ascii?Q?RhqUNpE0vnwq8lmjTHhXipN94IBrireQG2p16QwCPxrl3U+OD8tdUJEOnr6T?=
 =?us-ascii?Q?NNQ7xVlQe+n7xNcySd7B3LHLCU+rYdnzGhge/U2YCnQ8sA7zJwsgxVmgPI5p?=
 =?us-ascii?Q?J2nWhTcO/EvduRJvLxdM25aRMfuqqsI501yVhmU9T8yZiAgN0Vlh+uEiXgxL?=
 =?us-ascii?Q?mcrwhKR1aNhnJPEeWTcsJM5TlI5V+THW2KPKE3EvYZFKVyMVRGZY7j3B6Acl?=
 =?us-ascii?Q?ydw630lyqjHDI55X+K3K1vZF7I01qBXmYtzbNVYIOVyoL226vw8KzUnFv4uP?=
 =?us-ascii?Q?juWlMME/JA7YKlWkDWyf3IoZldeZOgACwhROZjb0STdwcfShucPw7ngSMExw?=
 =?us-ascii?Q?mtg42K0U7db4puUmDutfmPPZIwAytYz/tP8YAfsuOTsjv++STDpvvKEkpVwM?=
 =?us-ascii?Q?lZI7c1zYuVw0r9AEBqjskskDbm/KaXjXC9uzNCbB0IXQI45/Ldvr0HF/cpSU?=
 =?us-ascii?Q?94jN4bfHqM5Ocwa+UxvaWaXsEEafvnfi85PZyYfBP8s5qSRGZe0n7vCurja5?=
 =?us-ascii?Q?zJf5gPVWYKzqhSv2yg/LPDKG+9NDOAi+MvtPz3oCXIqLggLcqn0GCWEJKGze?=
 =?us-ascii?Q?AuRq7wtFBnHESzUNLeHjOs8Q9ghX449bHjDUEf0fIdNjZVQrgcrnTzMtnv4d?=
 =?us-ascii?Q?zhotOrhXWMgY61UwZ1zUjZP8O1+BzBXtOt84BkGqXpJ10BlqHOXoCT2IzUbB?=
 =?us-ascii?Q?RsIXu9rX3CkxOGG+i5tR8aJxN8YoP53wvZkkLrqUtvC9hGqTWxQZIIPyigCd?=
 =?us-ascii?Q?ESdAw6J+4uqR7rf5Dgqayl4OHHOb0XskZbLlVRfjaitLs21UFnu9reRrZ6KZ?=
 =?us-ascii?Q?+2csd9Mtxt8Bg4e5tavIb87sKXTN4SJesYrZRt6vyC1/ABHsLrCLEaOv5t+Y?=
 =?us-ascii?Q?AivzZntoMyDzE8R+QEvh7n5Pd61XZLSqUR2PCrLGfj5Ic2tNolRaH6EpGKCh?=
 =?us-ascii?Q?AOtAq0j5HF8nkGpkv/p2fQW60eV3elTvOSxRWyl+Sa+ghnPnoxkUOVrY816j?=
 =?us-ascii?Q?4okU2lpAkmoobSbHZKsNX3WflIsHHee1cmRZNHxbbs1D4tjdRhB2uUed7Tsp?=
 =?us-ascii?Q?6dvt6RrygzZr9GNHAdid8gRP?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91aa6dd5-275c-495f-908c-08d8e5e40816
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:22.7201
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uOVrmrlwJbprX0gF7NlFK4LMZOdaVrHjsahaLPI+K9vdfDRck3UXmAKYy9P+678ga9QJbHvyQ+5RTYUovKqUzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/semodule-utils_3.1.bb             | 7 -------
 .../selinux/{semodule-utils.inc =3D> semodule-utils_3.2.bb}  | 7 ++++++-
 2 files changed, 6 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/semodule-utils_3.1.bb
 rename recipes-security/selinux/{semodule-utils.inc =3D> semodule-utils_3.=
2.bb} (83%)

diff --git a/recipes-security/selinux/semodule-utils_3.1.bb b/recipes-secur=
ity/selinux/semodule-utils_3.1.bb
deleted file mode 100644
index 02a63f8..0000000
--- a/recipes-security/selinux/semodule-utils_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "d9520d0cdef3d1be412155dc72ec2936"
-SRC_URI[sha256sum] =3D "0cc37f9cec751d9c2abb5f2b228b060567e973cb47c19b53b8=
a4a7378baaa853"
diff --git a/recipes-security/selinux/semodule-utils.inc b/recipes-security=
/selinux/semodule-utils_3.2.bb
similarity index 83%
rename from recipes-security/selinux/semodule-utils.inc
rename to recipes-security/selinux/semodule-utils_3.2.bb
index 23cbd14..7773d5b 100644
--- a/recipes-security/selinux/semodule-utils.inc
+++ b/recipes-security/selinux/semodule-utils_3.2.bb
@@ -2,20 +2,25 @@ SUMMARY =3D "Utilities to manipulate SELinux policy modul=
e package"
 DESCRIPTION =3D "\
 The utilities to create, expand, link and show the dependencies between \
 the SELinux policy module packages."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
+
+require selinux_common.inc
=20
 DEPENDS +=3D "libsepol"
 RDEPENDS_${PN}-dev =3D ""
=20
 EXTRA_OEMAKE +=3D "LIBSEPOLA=3D${STAGING_LIBDIR}/libsepol.a"
=20
+S =3D "${WORKDIR}/git/semodule-utils"
+
 PACKAGES =3D+ "\
         ${PN}-semodule-expand \
         ${PN}-semodule-link \
         ${PN}-semodule-package \
 "
+
 FILES_${PN}-semodule-expand +=3D "${bindir}/semodule_expand"
 FILES_${PN}-semodule-link +=3D "${bindir}/semodule_link"
 FILES_${PN}-semodule-package +=3D "\
--=20
2.25.1

