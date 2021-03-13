Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [])
 by mx.groups.io with SMTP id smtpd.web10.118.1615614669548634281
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=RNjYTcZj;
 spf=softfail (domain: windriver.com, ip: <nil>, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMOcgatsgbJE1v9fRTKKJnl2hBdyR1ElCmuHpHpeYJjuNz3cUfRsUrOZ9C6OhG3sx9fmp/ANabkXUc9zfWajiafL6r+ZFLoWfm8EmKlpWdv1+7oca9RKBsmPBf6miE1GyvY20ST+bApOAV5+jRWmwa8LcZ5ZgXPKS6E0ODsi+7sKQa+vYmSsDLf9cIkJ00aP3Yn8bu9YtErnKKkHMhnAADQjQP+rbeXjKvgHd/nmT08frZclcl/557KU0cbtCl0dWhyRkJjpLoDzmmWuaIdF+UB3Yg5UAjJIEc39K301K/QkCnaKypEQtz3hzv8QTGtM3MaS1LOv520WBN7ueZf3Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TYK8W78hSNGkY+6WRZ/sx36+8ukGOQgq+OPqYtdlxhc=;
 b=S3rqeVMR5HKfNWbpu1x13vqjzHEncSsGHOtziF8oZq5D7OXanVdKWuC1uSLH5arxmccVettGllNfOpEtnH5mF5S06phj9i1z09FB5CPb6Mef1WE9gb6mUKzJMOfjm4XZRtpEpIV6ySFxrV1x4o5mhCVcdk5LeGg+2dNTVvxzd5Af1zp9Bo2TSmDzNd3bQfaWp6/9OBZnXoBRtsyknDMtBHLoEBsMQXcUeU/kxnuG4pOg4EyrdsMQen4hNm97IemaYwvlrGUujObmt9zLYcu2BlN00i7sspWDbwGdOYbR+NGWjbDCd+WJRoIbnpQVmgVqAP+rJRo3/rK5Iz3bXjrreA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TYK8W78hSNGkY+6WRZ/sx36+8ukGOQgq+OPqYtdlxhc=;
 b=RNjYTcZjq/wZMGzBAy/0+YDvpbB6YuT/2U7oY07TCsQsKjdAPn+JofUF6XVEG0OidiqiULB6Fxsjyu7jtyreepl5UZOsTTLa8OEcNggAOvlaStkG/muEKc2P99NkI8mIUjk3cdWU17s8DLK+6RP9EAb649Psqwm9n3HDphkQmgM=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:09 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:08 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 07/16] secilc: update to 3.2
Date: Sat, 13 Mar 2021 13:50:35 +0800
Message-ID: <20210313055044.239776-8-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: acf17a5c-cd18-488a-1af5-08d8e5e3ffd8
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23180D72F6A8F64F06593320F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1002;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ULCIJn+pZh405nw0lzBh11oXka/2Kad61OWD4WeBKZstYfz5loTBCLTBzlJd/WP6lyxC9OvUEgxt8Va9YdRoSjgrl49SHyqTFuEE6IjGjXGQyM6JWTP2XX5+JJ+Cc6q9/7jJkSP6eS7phJ2E6txC0VGWpyYIjKbE5EtE4chSpfbQvCMztye6tFMDa+9DTLhIuqGtI2XjyKYOCJO4KI5XhOv1n+gTH2LOJ/F6HcTN4kGrVISidpct+/EeWioqZV2sVrVnD/cVj3oj26bwIa+ZxiaYv9Csn87p/r5Esv52yuxJ0KBOy/JUlAX+d/+5EXY0khotk2n+4kXNWFKQALvFQopUlDuTucjhgIROlw519e3zyHzvEurtUkobgB94DV45PdlDbaGP3MU0QDNwmJG+P+u8VVH7CXRvUUvIc8cy5tQUiv7aF2SDN7oEI1P72NiRcGXBh9yHzp49yjnfC71ocXSqReFR50hITZaxoo+07cj/pbdJPWEMe1bJSCDPbZCuwShs34sO/aW9NyDEnDCWxw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?rAAyCN2KAZmtfp2k8v+ECf2vncc9uDtcNyG4L4Z+bSSRzFlMbwOP9CASxPLg?=
 =?us-ascii?Q?LZhZyBl33eFMBHq/G1xJrGVRPFUFcMH1GuU8+tXWZEvvUgQycd4TDQDQKMaE?=
 =?us-ascii?Q?0O1jhzg877J5rSIUA/1YptiSH6RG7HtnIfrrgsbBS9sNUz44WW+pDP30Lkgn?=
 =?us-ascii?Q?EWhJv3Dze7ny0sUFhfDNHXfMV1GJ6qlL3t3BbmS3/gIRiwc/pV0fWGHyo7iE?=
 =?us-ascii?Q?CGBYqE3DdAuwgI1a20SemMaDQ2SQBLLPSwyN3ZjWa+iKF3E7FJ8fDFx+Oi8P?=
 =?us-ascii?Q?avt+53qpE3G4ZIwjMp+Qs8rLGTTDwlAxAzbdA/VM+FdtfOjnXvESpNamOHro?=
 =?us-ascii?Q?912rhvtIQolZ7jRMsyCMFqCPBblEKR/Y7tQeDf9xAivxnOj+vkHD9enZL53E?=
 =?us-ascii?Q?LoxWNqiCym9e3K5rCPrPqZN4hL6ZhPCZ82XFjqjzpZk7T/APVDT4ebq9iS2v?=
 =?us-ascii?Q?WTUhFWDkIvS35j6FKniJZchnKLmrTqyJ5Jn+c4Euq0qrvP8PGhjK2XZzlQ/I?=
 =?us-ascii?Q?i5Rq1lFVRuM+ypNI6BW5Aq5piOXhS88+nXKSKyzmRgu0Yv52mCorM8cc/igN?=
 =?us-ascii?Q?zQgLsD/pw0N0gQlh5NRk0PIf2vl2i6BJyIXqKKubcvuqgupE68gU5ay1p5A7?=
 =?us-ascii?Q?l+8SIRivZR9CCAPQLvz5yNKIpaVwJ1WZmh/uH1uCiTov1OVTMdTVpXXu+F7W?=
 =?us-ascii?Q?U0xRow5LZheeIM6qEy4EgSvtz+MziSEzG0igdMSQxlyzQIMAp5VpVpFxFtKo?=
 =?us-ascii?Q?J4fLFLqbdGwFMdt3P0tDPMOlQXeaUeA77hlCNplmfdNnSOn9Rye70XWXhuR4?=
 =?us-ascii?Q?Z/6Rb24mBRNF0knB9g1AhjWanWRDcGffHi6SVGhkFJJ9CKQlrqv1nWWS2P+9?=
 =?us-ascii?Q?H5hd4y/f1ZVDs3ATaUh0Ol1NpR9bkcMATaX8yHQr9sABLS0uKbOM0qUhEBsV?=
 =?us-ascii?Q?cRHfnBhln17aNDrcvqID6fxoOqvgmh2N2N8hjXbVuDJD4DyLolvpnRQTWD70?=
 =?us-ascii?Q?RZdJwCv6yyHvZUSi8Tm/K5RgS3zfQ4l8TjLbuxs5jPQNJ5NiXAq4cnn8bon5?=
 =?us-ascii?Q?Hwb3OslCInGAUDgxIN4bSibOulaPPjbUh0ofuW+msbK43RDAtc4V9Gb1EQtx?=
 =?us-ascii?Q?+xdVStPhbev5t4LCBQXVz1Izr2rIeHu0d0TjZV1GyEl6hrTovSXYBW9rQ0ku?=
 =?us-ascii?Q?CGT4SYvAwgB5xTiS5vK52mJ+e73faTeA0KceBEfjG3LoxowrFlqCxJuSh1Xd?=
 =?us-ascii?Q?e/wxAl1nPSlkOEahR1JSiqq3EUsqaVJutPsGn29H5PwKc19jLBETbZ6DLbha?=
 =?us-ascii?Q?zETSvkEmx76/twoBDJoRRDI3?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acf17a5c-cd18-488a-1af5-08d8e5e3ffd8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:08.9019
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 49KIb9UmidqKBZ6HHjbQSpWYyCZn6z5pBl5qSNkG3o4fNNP6/Gcxpy2jIaiDx1g0Gxj4XRyjb1PshNYKRJYroA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/secilc_3.1.bb                 | 7 -------
 recipes-security/selinux/{secilc.inc =3D> secilc_3.2.bb} | 6 +++++-
 2 files changed, 5 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_3.1.bb
 rename recipes-security/selinux/{secilc.inc =3D> secilc_3.2.bb} (66%)

diff --git a/recipes-security/selinux/secilc_3.1.bb b/recipes-security/seli=
nux/secilc_3.1.bb
deleted file mode 100644
index c1fb36b..0000000
--- a/recipes-security/selinux/secilc_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc7e802b9a3b0c2c852669864c08b913=
8"
-
-SRC_URI[md5sum] =3D "f9743e405a8de331c249b723c09c6c3f"
-SRC_URI[sha256sum] =3D "86117246fec3017af710a9ff7c1dae3ed1cd571e232a86cff3=
e2a3de2d6aa65c"
diff --git a/recipes-security/selinux/secilc.inc b/recipes-security/selinux=
/secilc_3.2.bb
similarity index 66%
rename from recipes-security/selinux/secilc.inc
rename to recipes-security/selinux/secilc_3.2.bb
index e263f11..60ab2fe 100644
--- a/recipes-security/selinux/secilc.inc
+++ b/recipes-security/selinux/secilc_3.2.bb
@@ -2,10 +2,14 @@ SUMMARY =3D "SELinux Common Intermediate Language (CIL) c=
ompiler"
 DESCRIPTION =3D "\
 This package contains secilc, the SELinux Common Intermediate \
 Language (CIL) compiler."
-
 SECTION =3D "base"
 LICENSE =3D "BSD"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3Dc7e802b9a3b0c2c852669864c0=
8b9138"
+
+require selinux_common.inc
=20
 DEPENDS +=3D "libsepol xmlto-native"
=20
+S =3D "${WORKDIR}/git/secilc"
+
 BBCLASSEXTEND =3D "native"
--=20
2.25.1

