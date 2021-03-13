Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.62])
 by mx.groups.io with SMTP id smtpd.web11.113.1615614666992226733
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=M6JtF9A7;
 spf=pass (domain: windriver.com, ip: 40.107.92.62, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W3NhMT3aZTNqPES30nHcf3KiwCJTzKz8H5DsctH11ewt9qUH4cXFFNUzr/NwcG9DGJdfGSzI60gKUxWpaBOXMnYwKTkJTe3ywbzHDH+bQon9gkKjTPoWs/7XVP4DNGvi+fPU7ToaGltZ8N9r91N0LK0xbU0+BHAAexJQHOI+x0Y72yqh9Hu6AX9wbI28OQjLma9A6BMzxGhhf1gBgz4cWyEzMuOZYHNgKfoR9PozNeFDDKuPeHQbSlNTih/NqnQLqaiHQ6v56x5q4ESGQEdf75Qz/v3+5T0lGSvQaEuWSTZ7J/szIyvYx6CTz4cTOAmjOPSaahf0y6JcV3VRkugPmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dn9Q1SRnyBueQ+4gAojTrLqEnW6ag7yQkhabTSxQPxs=;
 b=ER5LX0eNvkecBKAxmiQjkKMHK0/CCUdMwETcDW/n33oDoQ51ebylb0oQpyfH70fgXY5fnxLhx3lG2b8snuK5R0tmupkiM+AsYDIz6PQgBBAA0E0eM218UcOlwMES+rhvpGdjXzt83hmzkRcNuD+8YcX3ynhIefbh4h6xe6+B5kPcKPLcT+62GZmn1+wAYeiXFTKnMN+lRqArGSw99H9fz+AllNnrPAZKg9+GFF6rT+8D+S0rSFW9HgRxCScxfzarBN1Vt5y+T1H7Ov6Elzt39TVYCLwRZK5pDIM3/wl5rHJORoe6NfvRQzmxQ99f3ylzpbwRYtVTm99g2bFKee0k6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dn9Q1SRnyBueQ+4gAojTrLqEnW6ag7yQkhabTSxQPxs=;
 b=M6JtF9A7E1z9YQrS2jmur72Y9XCZtyINeveACbJw53MdVlou2n2DiGVhzfz/6UOJNWmdk1olyTDj0HIB0ffo5M2clerywL/SM5qtWAAtlNp4ApLMQeMRlXeqfA1KEY/0hmjmTtUsDuszqQheYkgHUzkKAr6Of9e2LhDvsegOOrE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:51:05 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:05 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 05/16] libsemanage: update to 3.2
Date: Sat, 13 Mar 2021 13:50:33 +0800
Message-ID: <20210313055044.239776-6-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f39982ca-68f5-48c1-e263-08d8e5e3fdd3
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB45560FFBEAC3197CF10C55EDF96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:669;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GcnqnhEjJ5MTr/dWVJIezJkSrNV2ouL6wWuVQ2lVhYq/TbJRKykSJ3FDGwzkD9Up6V8R0VREVIMG6iYLDWXW2oDmdtHZyfj+l99SHlPr11n+2rLV7pHv2oOooBHROZeryA/MAzsa6nR0fYqBKbccyrrexq5n4gIqra/cE3UjcIJq6bkdwEjf7itOjv2ATpQ4c+eCTPF67haNwnvwyA8Eb1PvqsR7OkolYWP7Wpefx3kxpJS9RgqkAnYiMgzlfAMXOgenYKKjTwpGQWzos9HWDns+PZAM3QG0uIMRdbAuWK6/0edhXICX/R/KLpR+3nrVFYxETu2bbo2ttxr9hT9c8rKYFhoZrkM00Nczwkux35OssLFh6MSO4omEwFwEHOLm8j1N4RXWrrWYC12D3rIFVWaHvppn1wnfqYIqQakqGt6Yc8eqc54DpInYKqNOuNl/ANPK0/bk9FVf4CsA+kYrC5ALDf2cNmMGFtxVQBRioqed2Lw/h9enZAgSHMHKdEmFtPAb9KKSSGF9XAp5N7yUsA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?IqsjOMJJhYK8czBYK5tl95xw+R2TmmbKJCn449OYAAcE7qqkyAm1bvvd8aeX?=
 =?us-ascii?Q?zLJJVfzgUGWINAYAOUZoLArDfKEAuxWcMmYxDgRvWjfZb2wcjgqVl49EtkPK?=
 =?us-ascii?Q?cvD3uxGtJa4pFKpcb8oW11SRWEQdtQ3JBW/gzbULcXV+yQ5kZIl1kdbpa2QB?=
 =?us-ascii?Q?siypQdkLLDDGmH1HDAXkzyd3sgNZnKmVZfBLnR9b4XL+cgepcjF1T6HbUUC8?=
 =?us-ascii?Q?OcXg6jmm6Vwm7CUurfdmyxPAlEfdw5oNYMeVRWLw9JPqSBCD7b+kZvWH3BDj?=
 =?us-ascii?Q?xQJ2odvJiGXhPHdsE/In/rdiqmkmUCJA+BSC56pZzQYuHeII4mY8D6EDNMFh?=
 =?us-ascii?Q?mEHQM3AKxmNpkC2dkK5cWVUg/OQZ00BYWjY3iCecpv0UqtQlYgn9DOTCdkSs?=
 =?us-ascii?Q?HELzEphZJLetXa/8ZdILYvDJVZnSFwi+yDCQ8OJ8Z8w7ixKe/gEOy5PR7lT+?=
 =?us-ascii?Q?FMMlPUccPH37rL7HcPq2OTO7XH2FbOyFlswP3mwGxSb734TMgKU6x2eDh+a4?=
 =?us-ascii?Q?/35gxKZD55Lsc4mp+X0QQqZxuuOx9BiLchrYEbA8fNzTPQhbF5WrRGbgoufr?=
 =?us-ascii?Q?kX3Xj6Pl/8eLjREpMS/OKmnsgRXZOy6061n1oAFKVf4w2X6fjNfQgvfeSJoS?=
 =?us-ascii?Q?6erCMXP+iY9TqRpaSgfZ4ebKVvXQqm68sD+Z7lEPLJObkD87CIjaImkCOuAS?=
 =?us-ascii?Q?Oss99eftISLDibgzCLDXuYWzd3DbmUCpYUKYki801LebvlcG0Mn8UqzIxvsx?=
 =?us-ascii?Q?Mx8xV+LMJKbuYwtIiVTJTEzAN0OFjqfCrW53zFfh590OkJKMc2dsgcYGWqdc?=
 =?us-ascii?Q?rZ+tReJWBoOjyaazdRg5tTWeIXozqwFJul0f50OMxv9PsOGrhC8l2EScS/52?=
 =?us-ascii?Q?1G5vVBiEHey5AfITKyrqVu5u/5fAPclRgEHJeCuffLD9u98P6kvlHkaABM/7?=
 =?us-ascii?Q?YeP8AVT4JA6zLwUYNc9CGm7t17Y04oMeF27RVKrQA52diSWHoPE/lvEn/STE?=
 =?us-ascii?Q?A4yZW4dgNPE2VSpLTGT6q26z+FxmfGkIODmFzqJTIzt8cG9yaLUoMr0FmRSs?=
 =?us-ascii?Q?lN68Ulh7mA3YmdpuU3BFL0S4gE7OxuHjVVvDnpZr9d3LEVqo0vp9ABOlmJ8i?=
 =?us-ascii?Q?UmSrttuFIKxO9SNj4LdQZfGVVY5VAVSvFLHTd8qsGArCEdl3OWgoVA1LRygN?=
 =?us-ascii?Q?U3orvZL2HqyR/nsxI+XAJEyh3S1r5RHBtueqaeymLbgLE5cfCmSW3CveOTcY?=
 =?us-ascii?Q?XdZIxKgGjlIInv77LLADp5rZShcXd20FnSAg/k6zQ71po2dFwzvM+erhqKhp?=
 =?us-ascii?Q?ArIrR3CdlT82aACsfDCAO2y8?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f39982ca-68f5-48c1-e263-08d8e5e3fdd3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:05.5019
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7V4dfydxr2itk33RzSAYL4zThgMbAH+tZHFDvts2la4YRrq73/0TtqNOUyOQtRaidYiSHMJocTP5GmJm7+kmwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

* Merge inc file into bb file.
* Drop obsolete patches:
  libsemanage-define-FD_CLOEXEC-as-necessary.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...anage-define-FD_CLOEXEC-as-necessary.patch | 35 -------------------
 recipes-security/selinux/libsemanage_3.1.bb   | 14 --------
 .../{libsemanage.inc =3D> libsemanage_3.2.bb}   | 27 +++++++++-----
 3 files changed, 18 insertions(+), 58 deletions(-)
 delete mode 100644 recipes-security/selinux/libsemanage/libsemanage-define=
-FD_CLOEXEC-as-necessary.patch
 delete mode 100644 recipes-security/selinux/libsemanage_3.1.bb
 rename recipes-security/selinux/{libsemanage.inc =3D> libsemanage_3.2.bb} =
(59%)

diff --git a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLO=
EXEC-as-necessary.patch b/recipes-security/selinux/libsemanage/libsemanage-=
define-FD_CLOEXEC-as-necessary.patch
deleted file mode 100644
index 45bcbe6..0000000
--- a/recipes-security/selinux/libsemanage/libsemanage-define-FD_CLOEXEC-as=
-necessary.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 81f2e8b62ad2298a197c4b16e7182a133c1e116f Mon Sep 17 00:00:00 2001
-From: Joe MacDonald <joe.macdonald@windriver.com>
-Date: Tue, 15 Oct 2013 10:17:38 -0400
-Subject: [PATCH] libsemanage: define FD_CLOEXEC as necessary
-
-In truly old systems, even FD_CLOEXEC may not be defined.  Produce a
-warning and duplicate the #define for FD_CLOEXEC found in
-asm-generic/fcntl.h on more modern platforms.
-
-Upstream-Status: Inappropriate
-
-Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
----
- src/semanage_store.c | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/src/semanage_store.c b/src/semanage_store.c
-index 1a94545..b586a8f 100644
---- a/src/semanage_store.c
-+++ b/src/semanage_store.c
-@@ -66,6 +66,11 @@ typedef struct dbase_policydb dbase_t;
-=20
- #define TRUE 1
-=20
-+#ifndef FD_CLOEXEC
-+#warning FD_CLOEXEC undefined on this platform, this may leak file descri=
ptors
-+#define FD_CLOEXEC 1
-+#endif
-+
- enum semanage_file_defs {
- 	SEMANAGE_ROOT,
- 	SEMANAGE_TRANS_LOCK,
---=20
-2.7.4
-
diff --git a/recipes-security/selinux/libsemanage_3.1.bb b/recipes-security=
/selinux/libsemanage_3.1.bb
deleted file mode 100644
index 8e6781f..0000000
--- a/recipes-security/selinux/libsemanage_3.1.bb
+++ /dev/null
@@ -1,14 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Da6f89e2100d9b6cdffcea4f398e3734=
3"
-
-SRC_URI[md5sum] =3D "d16eee8c1dc8cf43f59957d575d6bd29"
-SRC_URI[sha256sum] =3D "22d6c75526e40d1781c30bcf29abf97171bdfe6780923f11c8=
e1c76a75a21ff8"
-
-SRC_URI +=3D "\
-	file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
-	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch \
-	file://libsemanage-allow-to-disable-audit-support.patch \
-	file://libsemanage-disable-expand-check-on-policy-load.patch \
-	"
diff --git a/recipes-security/selinux/libsemanage.inc b/recipes-security/se=
linux/libsemanage_3.2.bb
similarity index 59%
rename from recipes-security/selinux/libsemanage.inc
rename to recipes-security/selinux/libsemanage_3.2.bb
index 0139511..58b6da4 100644
--- a/recipes-security/selinux/libsemanage.inc
+++ b/recipes-security/selinux/libsemanage_3.2.bb
@@ -5,12 +5,22 @@ as by programs like load_policy that need to perform spec=
ific transformations \
 on binary policies such as customizing policy boolean settings."
 SECTION =3D "base"
 LICENSE =3D "LGPLv2.1+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3Da6f89e2100d9b6cdffcea4f398=
e37343"
+
+require selinux_common.inc
=20
 inherit lib_package python3native
=20
+SRC_URI +=3D "file://libsemanage-Fix-execve-segfaults-on-Ubuntu.patch \
+            file://libsemanage-allow-to-disable-audit-support.patch \
+            file://libsemanage-disable-expand-check-on-policy-load.patch \
+           "
+
 DEPENDS +=3D "libsepol libselinux bzip2 python3 bison-native flex-native s=
wig-native"
 DEPENDS_append_class-target =3D " audit"
=20
+S =3D "${WORKDIR}/git/libsemanage"
+
 PACKAGES =3D+ "${PN}-python"
=20
 # For /usr/libexec/selinux/semanage_migrate_store
@@ -19,27 +29,26 @@ RDEPENDS_${PN}-python +=3D "python3-core"
 FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-package=
s/* \
                       ${libexecdir}/selinux/semanage_migrate_store"
 FILES_${PN}-dbg +=3D "${libdir}/python${PYTHON_BASEVERSION}/site-packages/=
.debug/*"
-
 FILES_${PN} +=3D "${libexecdir}"
=20
 EXTRA_OEMAKE_class-native +=3D "DISABLE_AUDIT=3Dy"
=20
 do_compile_append() {
     oe_runmake pywrap \
-            PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-            PYINC=3D'-I${STAGING_INCDIR}/${PYLIBVER}' \
-            PYLIBS=3D'-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
+        PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYINC=3D'-I${STAGING_INCDIR}/${PYLIBVER}' \
+        PYLIBS=3D'-L${STAGING_LIBDIR}/${PYLIBVER} -l${PYLIBVER}'
 }
=20
 do_install_append() {
     oe_runmake install-pywrap \
-            PYCEXT=3D'.so' \
-            PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
-            PYTHONLIBDIR=3D'${D}${libdir}/python${PYTHON_BASEVERSION}/site=
-packages'
+        PYCEXT=3D'.so' \
+        PYLIBVER=3D'python${PYTHON_BASEVERSION}${PYTHON_ABI}' \
+        PYTHONLIBDIR=3D'${D}${libdir}/python${PYTHON_BASEVERSION}/site-pac=
kages'
=20
     # Update "policy-version" for semanage.conf
-    sed -i 's/^#\s*\(policy-version\s*=3D\).*$/\1 31/' \
-	${D}/etc/selinux/semanage.conf
+    sed -i 's/^#\s*\(policy-version\s*=3D\).*$/\1 33/' \
+        ${D}/etc/selinux/semanage.conf
 }
=20
 BBCLASSEXTEND =3D "native"
--=20
2.25.1

