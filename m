Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3806.1609991054398178280
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:14 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=F5XpPT8r;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2077.outbound.protection.outlook.com [40.107.94.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4ADFF38C0895
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dh8phHJk9peSp2CbsO5yzg2KMTHKfKF1eX6wdQcX4ja2XfjMP+98K68aH2DyUzNMXPqs7NDSV6ed1pjLDaXE45hUghRmVA1oeOIc0KHIYTrfQFpw0cCEqqmemIBq28zFkp12+g8Slc2EAPogdlSU7MTenNdHVnIv/hqE2fCXpjM46njC49KZKPyGjptlD+VroYaMR9xzs2OlHzbI+g/0w/K5eeFtn99uLSxik4YkxkGbA2yndL32r2rehl8RUS/CASTxEOEfLNgghH6L7D6wDGQijM3uoOQjewxISRu2KB9AWHMQDULR16ZUPpnr1oB9IjZESwqGHDuHu47D4Oe05w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9vjDXRvknHqlIFw7HHHpApHZtZC58aRtGJlK3expr4=;
 b=NsF0jrqvwKwnkRdN6fj4fr+2Pv+aLoGZcWD07hR/PGwgSnKAz6555jvC4+HScGnhTz0xv+PfC0de4IG3ihElUzu8v3UnFj2DTLxDwaFHZkKsq2ri4/VfisljYPBbkW2iHg7aWa+3LmSo9gUMUMjSLmlJ9cyN9wZUKZErN7w3nNrxSvK1oykNkVuY/Kpn6awH6qYt33dSkgnf6ek9OIj6EGaHh71UfgOVFPtmFKxqEjMJfBV+YCZ8dYe5ij98wVRogU0L0QalBZ68XbaeMOJnxPY0vADO0elgojy9cajTU/fFSBpPE48Kx32xzN8RPtqBgAei6a8mITJ1efQ9W1Pcfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9vjDXRvknHqlIFw7HHHpApHZtZC58aRtGJlK3expr4=;
 b=F5XpPT8rX7/qu/G9F8g4QHdhXRwadyJW2PsLjmFtbUVVzSGn9BbSWpP5PXWS1yuSvSvRbYMc3QAx7/XeoZUZ5VqquSoBVx8nd0Yleu/ELSc3QHazu08Kg4zPkfz5jUCLX0Wu/tbU9hBkGf2czrbk+IY7nBBeZJGwnv08E6+woGw=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:13 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:13 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 09/17] secilc: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:37 +0800
Message-Id: <20210107034345.37200-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d5feb20-d7f1-4840-2079-08d8b2be8000
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB50737FC93048D4C4DA9AD85AF9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GmMD8yPPhFeM/IVmNi9qzpZdrJprAUgMt+IJAsSUEskwot6dOr+pWrSizF27xwQL/SgQztFDzTNhJdAZruRYQKuBzopRoTVkeYtgWG0Lelo9AIbGC3AzO1HA+iyWZESiWtBE0Y25aEYU5q/nMql78SqZMbO3AW6b2bpR0owO4+Gvhv6W6hojJnxKHI4BGyJikzJgrG5DoYlZ5FkrKQgX/dW3BCIfZjKGtCDznO3eUVNyV1zFNncJct35Xr93/fSUwp4c5MznGYk5QxH8hvaF5zYfEBUCg3B9SinKVO3Y0COr+51Pg7wQyJHru5tNkok5bipmUsU1+WP/xezZa+VwI/q8HahM1ydV7377qurzsfTQ9FFgmHB7n2ASYiFm3atWGaZx0PCAgXQAYw4ptUQNug==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?SvMVJhsYAPUxhSEASdZylEgz5YAk/culV8eE4iztLwVvEjP77zcMb+pqFOkE?=
 =?us-ascii?Q?4Iuja1bCyMa+QtE06Ib7HER5pP1Jre+1WJ7tXyrOBl7RJleroxfgfXZPvk6J?=
 =?us-ascii?Q?rjK6X5aimHQcdIJtkay2B2XChY7TNA6iN/SwaGOT8WRjzaoGpEi8yJ6DhxP1?=
 =?us-ascii?Q?p5okVK11hjmxv/Gpd8Qc2wipvONWFA3+T8INInUPITxHbMDV6O2Cf0r7yQrr?=
 =?us-ascii?Q?mnWZFMADurxpoHTQjUzOompP93NjKoBpkgip/aGlh9UVGxQVYp82LUOkDFv+?=
 =?us-ascii?Q?z8vlxxn69qXvuV4VeEsr8NKnKAHkA2uIgfluxZMAY5rXGEsLa6zjtyFI/Nbz?=
 =?us-ascii?Q?Br2J9re/AcqUs0E+tRXZ9nWJN2AdBH1nvx+wdpf9kd53eqUxqnoSqlQ2sYHy?=
 =?us-ascii?Q?CaKqSDuTUkD9zlUvWEyABEe8jjQH0sWiRDnADxxKhB7vC9fId7rYeoKM2GB4?=
 =?us-ascii?Q?cKif58vQy81VT00CG0gT1zsF3za1iuCTf7Jq97TA26EmQV9mc/Zpin4E/WBJ?=
 =?us-ascii?Q?lKgE6XJGjUSS/vMgIdHKyf8CJikqMtkUHVR/T12WiopyFNtyJthmjG6VAcxQ?=
 =?us-ascii?Q?RyXvYSJQD0boZhoKV0fi2nsHOC0HIarb8on9gNCgdMcsqJKisHWyF0hrwGV7?=
 =?us-ascii?Q?dkGEyVWuNcHOPyvQOT4HyaIffjyUUEjrpGDoM3rkwXkvDz57mKnkgPWd4mdB?=
 =?us-ascii?Q?yRpNCIjKGIA5hoJPaL+69EctUXeAtErTdhjYlx0RQbVU4iTHuHE/8Aez0B7h?=
 =?us-ascii?Q?wwCbNRRbYD5kdf9RxoVekc5KsqL2ik5B5hJT7aJG22JPvr3xbmuwJ706Rx1/?=
 =?us-ascii?Q?9BoGHVTYndwFzgagZBPrSg1AacKfGuK3Z8HZRM6iWhmAhvaFDJyQ4uU80bw7?=
 =?us-ascii?Q?lqnbWR/pHOAISlmEAaicm0TqTKQSj6ZRoF4dRvEfd4IqKafHyjeDeZ47pdpm?=
 =?us-ascii?Q?RBta0JGNwNbceUYe+TfaL2IyMeZLWMn75cC9bWGyaViYaITYFqwAOYIgRrwv?=
 =?us-ascii?Q?oSvW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:13.3419
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d5feb20-d7f1-4840-2079-08d8b2be8000
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CwINpqfjObOauHPgZXYi3VkmgbgoDgO2a8QOjdNAF7PAuLafiWn8H8B/d9xrtC9hOKsFdOh17txeV6G5p8dgng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/secilc_3.0.bb | 7 -------
 recipes-security/selinux/secilc_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/secilc_3.0.bb
 create mode 100644 recipes-security/selinux/secilc_3.1.bb

diff --git a/recipes-security/selinux/secilc_3.0.bb b/recipes-security/se=
linux/secilc_3.0.bb
deleted file mode 100644
index 71b6cff..0000000
--- a/recipes-security/selinux/secilc_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc7e802b9a3b0c2c852669864c08b9=
138"
-
-SRC_URI[md5sum] =3D "be7ec221b874053a843ef90e49daa5cf"
-SRC_URI[sha256sum] =3D "78fafc4a8a8a212663d3d1e181047f5605430f0a0577ff77=
2a4bb7fecd2b42b0"
diff --git a/recipes-security/selinux/secilc_3.1.bb b/recipes-security/se=
linux/secilc_3.1.bb
new file mode 100644
index 0000000..c1fb36b
--- /dev/null
+++ b/recipes-security/selinux/secilc_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dc7e802b9a3b0c2c852669864c08b9=
138"
+
+SRC_URI[md5sum] =3D "f9743e405a8de331c249b723c09c6c3f"
+SRC_URI[sha256sum] =3D "86117246fec3017af710a9ff7c1dae3ed1cd571e232a86cf=
f3e2a3de2d6aa65c"
--=20
2.25.1

