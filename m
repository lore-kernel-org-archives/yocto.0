Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web09.102.1615614657505367295
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=UmJVSMam;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qu8dqaQmycofCedUpuZEmZL/Pbz/U2Ft6quTiXbB6WyWvjQ+wvG9EWNws65cBYKlf9vVCAsHN6u63Xc0HYx/xY3iXgEP5nQ86AcLvtnNuy24BnXlI0/+gjug9ao2K57rwBx5/RM1gbnd04cRNtiN4rBiN4pdUgdNEsomL4Sp+kJtKo1Yid7RWK9vOayE8RJ1Lh8LTcBI8pUNVl0itGw+w6BcWt+oHP3v5M93ftf1GAspU53TXZ0chstDwIXXnFMeV6Flacok5FrMTPOen0nfTC/Rj7AftvDNWm3mgwdE8CPHEC6R2rc8LRL4dH1Fw5IhzMbovSYebLcUYcUiuPrGTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NU7JRHTvHth3AQCM3Mmy0c1yRvtV0Fe1wPdhHfiNd0A=;
 b=ZvVpIyOI7kiQjObOpCwvlxTkqby5Ho4An2FX42WIVXFoYeLltmEglNfG2fOrzYRUvVChZ4AKXr4bdQZN4TarPrSr/DkGgL8T5wm5VllXCL06kmZ/a85AouwLO2zqdUVSv73pLXDO7F97gr7J7ZsMgAaJ151IQcg/VKejcj+p5G0HBdjskwSt3BqjnNW4hwM1j9y2HfDDHAbucTekLN0mVYqBU/s5ZvJ7O4r6cophpMUnVtKNNznHDgZO1YROFLowc9/G63aSp3r4dl0foHsFh4Xurfj0iONvGacsHbtaph5yWQE9CzEDSQassBk4rq5eKCDavtv90gLGD+nsDtjj7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NU7JRHTvHth3AQCM3Mmy0c1yRvtV0Fe1wPdhHfiNd0A=;
 b=UmJVSMam0XPDDGkdyCddZMWHDczQvq8qL/VvX1rgoTbbKeVGAgMlQEDSkFnhkUUJcjlrkpQn+u8sEON3UsfxYMvB2Aw3NJMjGnhT3ZWeaiLs6l4H+IgZ8nL9lN0YBgzDBfL/Zujvc9F1u3lj4WD/P9XmLLNd5UjvQCUuQ4k5Vu0=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.29; Sat, 13 Mar
 2021 05:50:57 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:50:57 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 01/16] selinux: update inc file to 3.2
Date: Sat, 13 Mar 2021 13:50:29 +0800
Message-ID: <20210313055044.239776-2-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:50:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 68eb456f-d47d-4c2b-5e53-08d8e5e3f91b
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB45560B547D876C13A3BF0DFFF96E9@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:222;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HQWXFFOlYaqIdMPLKMeqxroVSw8giCCokF9ql4Vdh0mJxQo5673lFHNlg0m7P6XVw25e1ZUq2eEplh4qiw5W1qD115lKnIWu4bsMQbnvl8+zNtqymaR+AJO7gPd5/r38caWH0RnCDF6izjk+KzhMIo2kNKK45qXklMgIeIl4v7yY8tHjl8+kJDlTBx2Cz1ZSLulvmxg/K1TPq618vApPPFB/ucEAbmQmd4hOMMYjFSIBQphVl7OKgT6mxFpn2SHeCsw5pEtPViXnx3gkjTcpXuRQbhjzEVtPo52TpxC9mgXuQihYSbeVDkc4VvFIzN4kHIrjS3rSbrWzaMz9CWUiT+3PngMVxjkGsjexMFZiB/g25Qol6mkxYuoAZrO9DuSMpoGy9yY3W8lzpJ7a/4y2iLh2zGhHH61NZWcqRwtqQdOp9cPlian7DcGNbZpdfLMurcUtqoRGSM16nAY1kiZcKfuO6lPsZJzLp9sGb+e4N46gUexZiLcW6cfDqwS+Mf+gOTz58Ot48iNZFqiBBkIrVwTpx86v265CdRgmbp6ATiK4xe4zO/rXNy2/bw/zMJQGWe1XGemw/8oY2VUmVzzrvVTSREAy60RGRyVezNSEYaE=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(396003)(136003)(39850400004)(376002)(346002)(66476007)(6506007)(6512007)(15650500001)(36756003)(1076003)(8676002)(66556008)(66946007)(83380400001)(16526019)(86362001)(44832011)(316002)(6666004)(186003)(26005)(956004)(966005)(6486002)(5660300002)(2906002)(478600001)(52116002)(2616005)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Li3Uoo4JLUX2Ca7dwv187WkE+MlqbJyG3/4+mQni9oSpNKZTx+IZYMEdv4We?=
 =?us-ascii?Q?FjpYPywB4A9gtZzv0wGrDDwhD8UBotnsD71RjoehfekS536VdRVf1C8SrUqN?=
 =?us-ascii?Q?MBemalv2LGY1NsA6+5REY+l+XL5kJyD2BpCsOJI9x/5J18VOn6iFBT/yIHne?=
 =?us-ascii?Q?EwKkStzeJ9yLFW2yvHED2ZC9s9135JdP8A0QflfDQhM0KYeGhfRCCJVrb1Pv?=
 =?us-ascii?Q?/OXa40QOJxlp6pulbpE1u6jqHdjJ16+ZMarU4J+sPL2RvZm4/a5incH3wTKY?=
 =?us-ascii?Q?1d/KtoFSdzZHV5RVcCfj205E7r2tkAK9oHE1sTQhBsTqXpYptWZnVBXgFmw/?=
 =?us-ascii?Q?fzbFc/9tKfvS7c7KjgcYpTYKSkdFTkssBPyo6e9M+2kxmXDnhC7AMFGRsqCF?=
 =?us-ascii?Q?bRlNHqAH6ZFR10lPtuU01ypaNY99RxEFi99rswxwon2PdVHT9+sJlc/++Kzy?=
 =?us-ascii?Q?paJ8ZNz2duEVDt9ltB3iq1AEi5MMJ+2WDoW7i4Aug2J1zsY0paOe12WBY/E6?=
 =?us-ascii?Q?MUfydXxTDXW5J/UL0C8dA/6mbJCpsXbKdHKTuI7ZhgZCNOZKmvd6bBw0Dkdm?=
 =?us-ascii?Q?UAETEgJqWGevwpXh82BbmWTi6+FI/KZGkufme1+SUMHK52b4URviVeabznU9?=
 =?us-ascii?Q?dToq+CyUBuHxvlmvOrz0NgN3vZFW1+0kHxH2GrFV673XMVYHIm2AU1CDnHBv?=
 =?us-ascii?Q?1TvZg30XfDkUdl/TnMBCI9MHzuPJ8EtaDVjllJCnk/FmlEvQ16s9+ivSyfQZ?=
 =?us-ascii?Q?UK8jCPXd6bVgjQ2gEcoBdJSgbiQ3P8ilZCTKb7kVw53oiwErhttr/F1IsLs3?=
 =?us-ascii?Q?UD/XtCHsmTrwPoSNKxfDLU/SD1TeTWKl4NiJBK6q/axSkAyb29ybmgoSIF9j?=
 =?us-ascii?Q?8Cb8r8CscQ6yQfh0cPFL9HVkaK4yTsTbOShAeS+S0Y9Z5bFpsiJ4ry6/TPkT?=
 =?us-ascii?Q?xe/Y5Usw7iZsnXNjneenQtKRZF2Vf62qt1sjr1xjL1iIPEg5VtpjULJqKCtz?=
 =?us-ascii?Q?sguRe7nD2RpadBvNMIFHm29vDkavaLqxWiMmwXxatxnJnFPR+v5+K6bNdeE0?=
 =?us-ascii?Q?u6vVE1XP1RZ2MMqLIwJF7Q/MeynlDcaw1JyDITf8q8Iypmejopz3J7zxCxGe?=
 =?us-ascii?Q?2sOvxN+55gwP3lLwyc92gzU6HQ8U+utBl/oClkWFBRmNVJ7D4J1PChNDCaN0?=
 =?us-ascii?Q?SgJF7bHVbT5vdthAuoT1Cs5wXt1+y9SCLmUCQnYP53mA8NrMymx+KUhlBDNN?=
 =?us-ascii?Q?bUgGDAC1OpglS1oqteu2C6oLO3g9OEAdJcl4GRHbioICHvsajm8gvbGXkfO+?=
 =?us-ascii?Q?g9vdDN7TL25EmCLqG97mScNh?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 68eb456f-d47d-4c2b-5e53-08d8e5e3f91b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:50:57.6634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t++VK2+xJ8As8tka1Y1CHBRXBedOyH8qs64b7P1eyNUax97eRSiFyEW5EYDhFHLzhkcxyoRCf66cJhZxFh80oA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

* Drop selinux_DATE.inc since upstream now uses X.Y version instead of
  date for release tag[1]. Move its content to selinux_common.inc.
* Switch to git repo in SRC_URI, then all selinux recipes can use
  unified source.

[1] https://github.com/SELinuxProject/selinux/commit/f63ac245f7addf832e8cde=
3cc4f26607b738994d

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux_20200710.inc |  8 --------
 recipes-security/selinux/selinux_common.inc   | 15 ++++++++++-----
 2 files changed, 10 insertions(+), 13 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux_20200710.inc

diff --git a/recipes-security/selinux/selinux_20200710.inc b/recipes-securi=
ty/selinux/selinux_20200710.inc
deleted file mode 100644
index a8a76e9..0000000
--- a/recipes-security/selinux/selinux_20200710.inc
+++ /dev/null
@@ -1,8 +0,0 @@
-SELINUX_RELEASE =3D "20200710"
-
-SRC_URI =3D "https://github.com/SELinuxProject/selinux/releases/download/$=
{SELINUX_RELEASE}/${BPN}-${PV}.tar.gz"
-
-UPSTREAM_CHECK_URI =3D "https://github.com/SELinuxProject/selinux/releases=
"
-UPSTREAM_CHECK_REGEX =3D "libselinux-(?P<pver>.+)\.tar\.gz"
-
-require selinux_common.inc
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security=
/selinux/selinux_common.inc
index 09c0acc..f2e180f 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,14 +1,19 @@
 HOMEPAGE =3D "https://github.com/SELinuxProject"
=20
+SRC_URI =3D "git://github.com/SELinuxProject/selinux.git"
+SRCREV =3D "cf853c1a0c2328ad6c62fb2b2cc55d4926301d6b"
+
+UPSTREAM_CHECK_GITTAGREGEX =3D "(?P<pver>\d+(\.\d+)+)"
+
 do_compile() {
     oe_runmake all
 }
=20
 do_install() {
     oe_runmake install \
-            DESTDIR=3D"${D}" \
-            PREFIX=3D"${prefix}" \
-            INCLUDEDIR=3D"${includedir}" \
-            LIBDIR=3D"${libdir}" \
-            SHLIBDIR=3D"${base_libdir}"
+        DESTDIR=3D"${D}" \
+        PREFIX=3D"${prefix}" \
+        INCLUDEDIR=3D"${includedir}" \
+        LIBDIR=3D"${libdir}" \
+        SHLIBDIR=3D"${base_libdir}"
 }
--=20
2.25.1

