Received: from NAM02-CY1-obe.outbound.protection.outlook.com (NAM02-CY1-obe.outbound.protection.outlook.com [40.107.76.71])
 by mx.groups.io with SMTP id smtpd.web12.6098.1614675146843979157
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 00:52:26 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mpDe6doY;
 spf=pass (domain: windriver.com, ip: 40.107.76.71, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4EnPiKo1GJuflF6PQwl1D9KTjU7+kLOl5rVIdczlEd2CN+1nz0Del1WUU2Gw6T+tkZx0wZVJM10IZOkzfaw2cwj5saF1vNSGKC8+R7ZidnNg2ccuB5gbyKSrIUc3CdQKSqm5qecNlT56zqS5oCcrpGRNa51hVT2SZX2v7gkzXihMxuUQ68bMq7t+8cpq2GJl6KaUFlmDtKUbC88iBbfWmjHIDu4P3DcBV8aolGRVZ1+9jKhgjQ4xVCi+IxB9G7R31gFlKiT/5BDOAksf2GEw6wAStUWaOeROoFHDdP6VBQ8hYIB3qTEGHWjN6+GdZ4X9eEQi5oA6PIni1iPJVxJHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hkhLNDkLrS8k5HL1hg+IQsMj0voJsizq789hXFGVA0=;
 b=aPob6lr6FlJGmN3IPO+eSvJ8DBqE9tNuk1XETuPRlOkpvhSEno9B9N9TyObMntwxSHllAgUPkADIJrHTKddXpCDVdjUHIVbzF8AY2KpV/M3bAq2bgmJ+V36MGqiOfLH07MwC/WXGLR2uocUub7DEog3u54P382KXusoPplKfwSeOGRzyIMjfRGUXALDr7Hcs516EPMLb/gLJlzctDEMXv3Txg6x5NPuXDVdz3mBP83Rzx7EzP/98XvFvLqvSsIC/3v96IwbaJ7PZ0oAxc5WPYfY2eLkO5Yyh73TGHT/wwddhtqKPswghsCD7R5JUE9hKkrAaV5paM6J3LKjak5gcVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+hkhLNDkLrS8k5HL1hg+IQsMj0voJsizq789hXFGVA0=;
 b=mpDe6doY67eaHS9q1B//SZJnlkGhCQrqcq3mpyTox9GFeSSSI3pm63NJ9PJxbBIjqJYXIbe4tN93aX6wl0m4LBbiPtCIN344LZrOhCYspwcoq00XEWICIS3bQDxi+a8tiFXp1Xsr49UsnXFS6sczekD1Q9ALY8JErYM/R6oPvkQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2352.namprd11.prod.outlook.com (2603:10b6:300:7e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.26; Tue, 2 Mar
 2021 08:52:25 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3890.023; Tue, 2 Mar 2021
 08:52:25 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 3/7] audit: move audisp-* to audispd-plugins package
Date: Tue,  2 Mar 2021 16:52:02 +0800
Message-ID: <20210302085206.56794-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210302085206.56794-1-yi.zhao@windriver.com>
References: <20210302085206.56794-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM
 (2603:1096:202:1::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2P15301CA0009.APCP153.PROD.OUTLOOK.COM (2603:1096:202:1::19) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.8 via Frontend Transport; Tue, 2 Mar 2021 08:52:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef786a91-1970-49e5-5514-08d8dd58806b
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2352:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB235291EAEDA14636475AD8B6F9999@MWHPR1101MB2352.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hPwFFxoaB2YjC+/GrctYbmvYy1HW7h2KSCIS8Z3csPnHD8kyOmu1sZ33J5xVqOx8aYTNZ+sak0rMZbkw+53foWb1RFTTcjkSFA9TiCS3ErXU5GkWO4QhxAAX5Ue6EPjzN/+zrc0w8HirkljwCUzBHICVjAaDgUDX6/YPVDoVf0jR1WP/TLu2FsH5vfXvinRy3xxQjZjDGj/6eIY/0sQl56nKGCJnPxD+HFOELTGfNXFazZ8sctz9+/XtF8xeJbxm+oIeBcjnL8SbnbV1IsDY+GdSr5l4ObJ9wD50QA/KBcTm8tp0ZzCK5BxW47O1Pb1aoyJUaYu7/UzrjI+PVHAglR+kMCl6oA+/BrdvibYfIjV5fYFlLvKehDhxsCbHUaQ7391HnPAoefQ3arjidla40pnk+QXGP9dVjlVZkBUNXlKnE89089dpHkMdNGjm0nE+8YJxh2S1bdYPd3Yc/PNblOfYIt5dwLtDIHxR3xzxP3r4JjhE6/875eMo4tMPgzdJMriUAa+pwOKq46kaxRTIvQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39850400004)(366004)(346002)(376002)(136003)(2616005)(36756003)(2906002)(8676002)(956004)(6666004)(316002)(44832011)(478600001)(6506007)(5660300002)(6512007)(83380400001)(66476007)(52116002)(66556008)(66946007)(8936002)(186003)(16526019)(86362001)(1076003)(6486002)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?cWqDQrJNSy4FI0of2fz0WEG+wqVn73UWbaG10dRJqsXhExTDvDUK0yXjtalW?=
 =?us-ascii?Q?t4Q88Sb8u0NA+qcILl4lQkhut1lc7+3m5OZopv8z849TOogJthRG9/Si7shF?=
 =?us-ascii?Q?jAUdFRAGxTtKyAmyoKSMQFKuajkWg4Og8u3o3eaBF8UdxgZOTEYiAhJ3U2RV?=
 =?us-ascii?Q?G37aS/uLFa00ck1lUE8xMcUVowT/NQPY17hb7yfRVXKjMRkQvMaytQ4cC4gD?=
 =?us-ascii?Q?OMt6IY/CfJdzvgisBV5dNOmYBAdEsIhqchp+Hg2ipYxOH5zpOqF5T1B3vjrH?=
 =?us-ascii?Q?0EoqX+MpvHekYlIs+Vn/r0IiyikPjIb9nqzo7+4BosM2aH6yXopZm4300cDD?=
 =?us-ascii?Q?eOQGBjRAo1qlJHz/YV7TLBAEmEOanKybZQ3GfTWvkXkbDgpBrI7OZfkPEMWo?=
 =?us-ascii?Q?BtHwxwqm34PnmKDUXOc24spZSKrRDc6vZwWJnx0xfWzHcrOsXtdUfgEvIIoC?=
 =?us-ascii?Q?Kd8unTwVZrdX7UIfU6+ow+2xW3vH2t53V16j5MEJhc25xyAYsD10ADNBqXQd?=
 =?us-ascii?Q?JmfSfT+tKyXZeYOc+sGL1fS51+jOaAr58NvAoCDewPK+do8ttPcPRmDqO5zS?=
 =?us-ascii?Q?nNSBMX9rZUTA1ZOCxRT61AA49RLway1Ujh6KvLlhkk7KcEEO2Y1uzBLArCiQ?=
 =?us-ascii?Q?+PNSGa0PfSoFFt98CsqFq7inqh3BoQDrRZsan6IssGj4WNHaodxOQ3p8AKXk?=
 =?us-ascii?Q?sUaZNNqXD7wVBu2HdH1pJjn9GhVh8K3mWdz/anRnMWML3aoTCQMxoeNK5Mlz?=
 =?us-ascii?Q?PcSuNnTPkpPvSN+JwDQPaPhscZsJKCUdgZbRk6cfYQfIUcq5KIWJVbkRaJmY?=
 =?us-ascii?Q?lsvj7rHQxWSqjAqMfV+1jAM5qcNPjz9aqRcVF/5B1UoadIkEwSk2Ipr63Z/D?=
 =?us-ascii?Q?nigfNaLM23RUjsGjNugRxRpn1UeWhkat2rzXZx4FcW09nCRBbWZkphI14xiE?=
 =?us-ascii?Q?8groIKlm9E04FMzC9M/79yHkF+P8XH+ENPnPsEK7jWiNF4g70quZzdrHjBPw?=
 =?us-ascii?Q?qmNMdmqWqCZP3sp95m6X/7ru90yq7BA56Kl8DneH6NU9x31QfB/k3no+8LSh?=
 =?us-ascii?Q?iRIsYcOqh8O8xfmuQX8orKshnnFyT8wLQOTENvUC3Zs7Gls4ZvNz3XjaN5wt?=
 =?us-ascii?Q?j8KLBQ780+LhuNslO7PND2SzPAJFu24o1qsitYqK/jsL81Ojpi0FdRBeA8By?=
 =?us-ascii?Q?7xI9BYDmFKaMxJRdaGCvwZbk/orlenRfeD4l6heQp6vG8uCg7yYcz2qxJ+nH?=
 =?us-ascii?Q?PXzMWJEOwV1mxZP+1ZyPlX3C1c7HxvU3immkSvQ9i9z3VOkACX74Y3Nj9sOK?=
 =?us-ascii?Q?7PtVmNobi04M062cbHjZrl+d?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef786a91-1970-49e5-5514-08d8dd58806b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 08:52:25.7001
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dkmD6x0mz5khxsvK53N18Qvhypq8V33SCdkKaHvMXvfF5Q/tlIe3J3hLHZoWlPAYO71otY/wDt+hLxAq6i2Umg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2352
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

The audisp-* files should be in audispd-plugins package rather than
auditd package.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/audit/audit_3.0.bb | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/recipes-security/audit/audit_3.0.bb b/recipes-security/audit/a=
udit_3.0.bb
index c7776c3..88174b8 100644
--- a/recipes-security/audit/audit_3.0.bb
+++ b/recipes-security/audit/audit_3.0.bb
@@ -59,10 +59,13 @@ PACKAGES =3D+ "audispd-plugins"
 PACKAGES +=3D "auditd ${PN}-python"
=20
 FILES_${PN} =3D "${sysconfdir}/libaudit.conf ${base_libdir}/libaudit.so.1*=
 ${base_libdir}/libauparse.so.*"
-FILES_auditd +=3D "${bindir}/* ${base_sbindir}/* ${sysconfdir}/* ${datadir=
}/audit/*"
-FILES_audispd-plugins +=3D "${sysconfdir}/audisp/audisp-remote.conf \
-	${sysconfdir}/audisp/plugins.d/au-remote.conf \
-	${sbindir}/audisp-remote ${localstatedir}/spool/audit \
+FILES_auditd =3D "${bindir}/* ${base_sbindir}/* ${sysconfdir}/* ${datadir}=
/audit/*"
+FILES_audispd-plugins =3D "${sysconfdir}/audit/audisp-remote.conf \
+	${sysconfdir}/audit/plugins.d/au-remote.conf \
+	${sysconfdir}/audit/plugins.d/syslog.conf \
+	${base_sbindir}/audisp-remote \
+	${base_sbindir}/audisp-syslog \
+	${localstatedir}/spool/audit \
 	"
 FILES_${PN}-dbg +=3D "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
 FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}"
@@ -101,4 +104,7 @@ do_install_append() {
=20
 	# Based on the audit.spec "Copy default rules into place on new installat=
ion"
 	cp ${D}/etc/audit/rules.d/audit.rules ${D}/etc/audit/audit.rules
+
+	# Create /var/spool/audit directory for audisp-remote
+	install -m 0700 -d ${D}${localstatedir}/spool/audit
 }
--=20
2.25.1

