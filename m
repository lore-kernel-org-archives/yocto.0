Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3691.1609991066485035643
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=H/b+54Pd;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6094038C08EA
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zm6JW6nLkAZQacOQiVH8lZmAX21fZeGfcop3TrWaDX5Ch2geaZFXuXo9qUUtVljzKGDnf9Syg2StZuIGfma5mZoyvI9Bk+37+REs+K2dnSmD39OegD+2s8CPrG59mBrLQmvQBAFrEFJ+/d/wNOMBZw5EHW6OEHwMCX0Ev66EMEj5s5xtnFLyIB9QlznbjV0M2hhIssgEb4plIFPoNavcNZBojkM7RXDRdbGDrxNxCWRM6LTd5CWl7KqHFkWL2zr0GKRJKyaG8KJrTDULUiZpTufbe4cVFMdF5aFSFLP8Rz/h2iHJ/+oqho6zbbccybShxsnBrfIAJRtORF3YMuvXCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6mRtfP0cgkwgsHwbrM8nnx+fR255CE7cUC3B3oP9Oc=;
 b=K6OHVyajGhQGc97/lSiDOO5OVDXWOUsnc10vLwGVWjeDhVL5ODG6vJE0hCU6OHakS15tlTeDiwVv/syZgylIiBtug87z08LKmCU97LbL575cwTxWlfVJw341Q7/calz55WM+sze976gUG0BhGe0jCGliqI77tAZGTutxJb3VkZz1NrEW2rxK2brPE7zJ5V6wOXll9pwLmo5aIqfxV5s/FLXmd7CIr62/GFx23q2oK1EF9quo65z30SBBwbfttxZlUzvUY9YXwb8sCCDDHhdXueKFjo4j2u6oLGginuBiLdcBOfWimU2epMHmZGRYXEs4f3J8GPTsN0lXM60I+8phiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h6mRtfP0cgkwgsHwbrM8nnx+fR255CE7cUC3B3oP9Oc=;
 b=H/b+54PdkCq0ou5PtZVsmEOU+ROVELofs+LVXX6Pia6fHZQ2k5q6g8mi+dbg4DcAcqe4aX1EOvWRzSXEUBY0MM7XPhWCpuNziS8ugsxaR0/L+MXOiSPy4QdBmKQjU7n8rFhG4hi5t3NusjRKfn1+ETJ4yfI58ELFhOov5va/Mj8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:25 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:25 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 17/17] semodule-utils: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:45 +0800
Message-Id: <20210107034345.37200-18-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a2aedab-dc6d-4e35-9348-08d8b2be8777
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB507320FFFD96A5107464E806F9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IzxaBkrF3DvDbh/ng1oyMtpx5dsxNzGzUxJxdRi8hfWFpcLH0KHXEX1Q3iyUQ2YlaD0on9oqBKXPBqcZ4rN8I8H45RO63M0cz1h3IoEd5XoV90L8qJPn/BQFr16s+Q5pkII3Zi/jyQN9mRQlLj0VA6clz0EeuXmqFIfdDSCes8ZQj+wgnvw0OGMPArQHnw14VRs0nULovmVlgImWpSsKki0sAK/pI6Y3bK1+MLsKs3kaVHgYNTA5/lm5DQ0VsFuxwN1dCccJRvM/8xU5iBxzq1d5/o2njbOEiVBFpEY/DegG/CJFT1PQjjvXBp4Km49MqyKMwa4UPSG8ClyTNtUv/gi9jd1FDA3L7lKvjwy/ns2ogBupuoRCwm8dp/zjfbFE0RBE2LNYvPdfl/0R1eGdSg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?q7tmhFqX0Fa91/V6Zpw/Lro+0IPmj2lVeB1t97+KzAkHLfaTAQrXwW+HL4OT?=
 =?us-ascii?Q?ohoVvpNeGej/6yiNn1AZWko2hjPcVWxQ0WbzsSoTBFSa/I2xEIxJg3Wruw8E?=
 =?us-ascii?Q?kghP1ZXIcWOV/kE5zTKixmbBYDUWvj0jJW23qm7Wgb73l7LZZbFs+Hwg0ZK3?=
 =?us-ascii?Q?SpW71JOPBMbKYAVskpJ7H1fRcFgUYFCYScDa7ysji8FOjWSQ3hQjFvsmWBrU?=
 =?us-ascii?Q?3t4qcBD/ItTMC7c6+3YufM8rLWSLEjofQmHQzTw2bUeC/byGNEw6wqYMN48X?=
 =?us-ascii?Q?hp7Plkr5ZOpXEgmovdj4s7OhvmzN+hbtvyflsoJlUVhFUdeBUuMUhrGBDHXh?=
 =?us-ascii?Q?JV90lvfCl4Wcq4cJzcTF/P6nprku+473gQ42Jj/PnbHl981cd/+1fqlgDX9s?=
 =?us-ascii?Q?YH2tnva+KBZ1/4MjZRtqWiXYObjNoqe0fWwS0rnUU4R/EHeB1h2o3gSeaLfW?=
 =?us-ascii?Q?EyHKzC2adwMmuTxWdEHG98WgdkbXSxCoXUSieHgLZ9ifvoYnmKinm60hUiBR?=
 =?us-ascii?Q?SG+IJVyxVC6g648rZ9bEJKF26BQLEABK5aiSD50H0KzmzhD565EU3BvfRHnH?=
 =?us-ascii?Q?PmtRq14UmmxRVChSrGUbpbuS+uBQCKKs7Bl5NrlMA9urZiKHEXlUiskjZzdS?=
 =?us-ascii?Q?JmsIeSRlguAMaKK5s9tZby+sPYKHN34iQvAPXtkJV7NGZKLM0/MYG7vue8Qa?=
 =?us-ascii?Q?PmLZ/nlonn1wGfHn+fIjm125+RKr3bV0tTjSB25F2vDFWe+s/or1sfEB+r+l?=
 =?us-ascii?Q?KHFG95c6PVK5BEWdmiytLWULf4egQfeoyo4fnEDs2KtGuGdEQrPk1j/5i0ro?=
 =?us-ascii?Q?BaKyOmC6pMnLuax7eT9Sz30NE9d8kQrGueLwXuG8luQbJlHbgPy107Ejwl9Y?=
 =?us-ascii?Q?D9UApkskcsJUfFzvApAxsXHqnThO61MgFVBNO0Qtj2Crkdzls1p8P1/+Qe+y?=
 =?us-ascii?Q?wB6d07X6CsabZIVIEzGlvdbnKz9vlAU7O4wkJmDPkJqQC1rcf7Y9iAvQOi/5?=
 =?us-ascii?Q?iZXq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:25.8290
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a2aedab-dc6d-4e35-9348-08d8b2be8777
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S8BYV0REWGzJ3PDRJ34Fy/Rr0M0DeHD11zySRcPL7H10CAiswofYtUSRVP9ulvudthw2Y2y3OAg4PayiX/vYHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/semodule-utils_3.0.bb | 7 -------
 recipes-security/selinux/semodule-utils_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/semodule-utils_3.0.bb
 create mode 100644 recipes-security/selinux/semodule-utils_3.1.bb

diff --git a/recipes-security/selinux/semodule-utils_3.0.bb b/recipes-sec=
urity/selinux/semodule-utils_3.0.bb
deleted file mode 100644
index bccc707..0000000
--- a/recipes-security/selinux/semodule-utils_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "58b0e4b85695dad6aff70c69f7a417fd"
-SRC_URI[sha256sum] =3D "14ee2db21f36766ffbbb65770f8e7236d21675db9f0f5d40=
f50974711da598cf"
diff --git a/recipes-security/selinux/semodule-utils_3.1.bb b/recipes-sec=
urity/selinux/semodule-utils_3.1.bb
new file mode 100644
index 0000000..02a63f8
--- /dev/null
+++ b/recipes-security/selinux/semodule-utils_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "d9520d0cdef3d1be412155dc72ec2936"
+SRC_URI[sha256sum] =3D "0cc37f9cec751d9c2abb5f2b228b060567e973cb47c19b53=
b8a4a7378baaa853"
--=20
2.25.1

