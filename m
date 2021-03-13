Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.52])
 by mx.groups.io with SMTP id smtpd.web10.118.1615614669548634281
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:09 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=hgRTndv3;
 spf=pass (domain: windriver.com, ip: 40.107.223.52, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xo+c2ePqhs8SWlVhix7mHmaUL1WdChRqT8/pg74kfirIsEkvncJo/+f56+dcbMcPNr6stvdN0wjPAg4m27wZ9qeCbtXzq3FCvkNfvYMc34htzz7FoZQsbYPw+VCZRAd9b4WE7f70820OGzwp3WwoBbUlRq2/vyIXmhnZczsMJu/LeOHKpA1RZZK44Hn+6/BT4dRtTsuK4caH2R/eo6MagkQsDVCpvWwQsu1NuS1HMvoiYqvQqfmUZ0hV5tnkA5W2OqNdF9UL4M53CNciu62lOWy7h2R46tujF7eSat2luy8CsO5KXbDuOr60slrACSPpyc+lBOyaop1gPKtJ0kd+3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UFg3ikzQKhx7H8rmLrFXWHBi1JbC1WPEhFrxPSapox0=;
 b=NHNXwAsMb0JAPOKDn4JsTufBVBMLrymeheFxV8ZqM1pxiK73qZXTttWFIGGhKoiKEVqzswPxPFh0fenL1w/YUVvsn6eNo7ItA3SHIreUZt/pvIGpvTDDpCe912bBkB3Y788UxKriwM9CHJtq2ZMdz3yuBLoe2Z6uhYz+MVYhyO1ALHKtDPFgySRk6W7uRfkM6JACiKZ1lXIjlncQcBBNzoPW2kBXS6cEWlujEf93P63sb9oxKd/59IjQkVOGelNk3gxPfzCNJ15hUTNq2GVojQPir8fFGXPEDjJ473P31q6h/A1yY7+IOmrDtJWhp6+hGNUwVkTfs+FZtQ07maUbyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UFg3ikzQKhx7H8rmLrFXWHBi1JbC1WPEhFrxPSapox0=;
 b=hgRTndv3p31yVokmbPnPWXKhek9Ozb2J38+3vC6sWaatAYQqeFtuxfGzDRwe6gldqHhp/LuZANrj9V2r4umJk7cvg30dQ2/BbDqYfS+v/LSWDK91cX8TH4FaDn4OI9a2Q8MtLOqjZwAOg+RMXD40hvdQYqbpvUmxRTSFs+x4O2o=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:07 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 06/16] checkpolicy: update to 3.2
Date: Sat, 13 Mar 2021 13:50:34 +0800
Message-ID: <20210313055044.239776-7-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8dc55e8f-e4dc-4339-3c2f-08d8e5e3fed5
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23184675D7CF83EA92E72A93F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QSs3smyfIJK4tlCPEpINPna/0nQqWPUjXALEru4tEEX1Rkfaqc1FNI8UTiOtgruE2E8NUPWXFPL3Z2cSprrb4JlMxeFlsDQPTyDY2xZTQ/TxxRHVkgXD/Z7JuMI7MzqMzGxyc2OnPF5L/NRvOtdJDyVfazhw3ht1ayacb6Wlxmkiwv3tNqIxJ/PdWD1nwwrqR6/6ln+0+YsNU7Wa34UWd0AbXVthmfOV8iVLBUhwiXlY2FgD3USMXlUW9347EANyAAzqw3E/93ELEBz16hrLxh8iu9Tx46xhesiDweoDu8EONkuGhrSsy3xzD6LfdPVsaoc+XdiMeCKimZ7YlFvq3FP+zWu58Oe5QcUEpQVF5tHZ5JLOSxUrQkcl7nv62/OAbv+AaGvwrPHvQsOdMS8DXEKWui2v6GOE2LdOo/f9t/f/DFGNV0TWa4iO0Cym0okWfZmJhTg9yiKpC46PT8LF8PD1mGySm8811utwJW5zXNW5HdyDTYkluAwUj/iHqxzEBCxJ8XYAtQ9EA41lJz+4kA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?9GxdCVMihFbNoGunoV1hZtAWn24P8puHUJxdhJLDiqDCRW0dG0ywvkrKtPi7?=
 =?us-ascii?Q?eDexo8v1DGAWwGVTanzWoV6to9Vqs0z2vwgto4tO3GtqrfgPC6kAlM/79HSR?=
 =?us-ascii?Q?62Lp/Q8Hu59MeOpm+Xo/HWpQMHcDWd8UrTDcFj53TqIgohB5bQe5DX+McZOJ?=
 =?us-ascii?Q?ERLlZra4e+fAc8Wvk1OzTyqbykRrSdp8xpZt7tlrg8/JLHSzNXvL2TJM4l6s?=
 =?us-ascii?Q?S6uciQsVzvSLoyxW0g6s205O2D0Y1dEQm1MruxNay/Nc6rmQtt22lpWc0q3C?=
 =?us-ascii?Q?FwhkVXr/L4JmVWxB4R9klIWg/fvYZrH/BKLNKvlp8mfnyRxH7tPzVYgj2dMG?=
 =?us-ascii?Q?e0lfemqof9wYGCAAVOkxACIohJzgVRKWHPIResACnYeQj6Acf3gIJJPXGUN0?=
 =?us-ascii?Q?qrQqpQtQdYYbeQ2B2q7zmWt8wcJ9efnOF8TEMTrMcrX2pKkmIJdXJuowKFRS?=
 =?us-ascii?Q?pF124HUEfrHiUbsiHWFhQre8Vvox2a8dBspJYY3XsCfvUC5osNqICsDRRj2g?=
 =?us-ascii?Q?yS5mCRR44B+ns9/t7avr3DiWIwOvqmaVsDENTLj9I5rqpjm9jgskdPoUIKZS?=
 =?us-ascii?Q?c4I1A+GrYvX772JSn8JV6nSjsxx6ZoGtYD5ZY0ry2JFt4P/asqUmohMHaFt+?=
 =?us-ascii?Q?FBlOOLR3LsZ1fKJBAPOxwF1LWhfWOUzrjE+hiyzOeR11sieXDYpeSF/Wb+KB?=
 =?us-ascii?Q?K3nkMDgBOZ6Hc0bp5DL4F6F8yuPJoxrvKHI2kuwyKOLl97Lqh3GL205sGaC8?=
 =?us-ascii?Q?q48NIXRs7+YTXhiaXNYzx7R49hZDNYxqdBF36sGv0RLNL5XBgeW7YWx3gdQH?=
 =?us-ascii?Q?8PCgCxuV4+2k5etIRDh9mCinvRJ4whiEg0X0Uvx9/YKyLMZTI8bhWE3UkspD?=
 =?us-ascii?Q?Xb7gf1+UCYuDId2pvLhiPWyZfuPclWYXZVUgDUVGyIc7QvYamzjioABlkKd3?=
 =?us-ascii?Q?2X2jznv1k7yTGzouaGuVg1ekOLgjgRfuNmIXn8s0OoHeZ7lKYeahOkRdU40P?=
 =?us-ascii?Q?NC0gRCfOBiwBseTbc3i8H44f+EKxs1fVXu71V4rnPdRRNF/OVppoL8N3/3SK?=
 =?us-ascii?Q?1EtrRVRz93ia5FbWFwsc+DMx8NCk6EJkfUOqm+SYBezB6UuJZQREYJk9hOas?=
 =?us-ascii?Q?EEG3akSqgFofiefugCK+Kr6pBYXlk5ryj9JVjeXLrGNqPrgV6fzddqAGhKW8?=
 =?us-ascii?Q?AJ/8c9eGoNgfnZ75vqUdtKMoyq4auLa7Fn9Hh1csIoFfKR7t76ne1pZ+s+Ws?=
 =?us-ascii?Q?diLSKHah+b3xKPEAbutMaMSXNuHVMLRO9FnFfA4im3pNri5f91XJ23NvYZsL?=
 =?us-ascii?Q?NgmhJKeiPewxyU1hxjWpChh6?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dc55e8f-e4dc-4339-3c2f-08d8e5e3fed5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:07.2084
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SUL/pu9/bw6UQb6iVNCdWaV5ZOC7fr9EFISypqjxMECb32Zq2sarNCVQZ6mAUdAgVPMyqZfMVuh1u/52bjpBQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/checkpolicy_3.1.bb            |  7 -------
 .../selinux/{checkpolicy.inc =3D> checkpolicy_3.2.bb}    | 10 +++++++---
 2 files changed, 7 insertions(+), 10 deletions(-)
 delete mode 100644 recipes-security/selinux/checkpolicy_3.1.bb
 rename recipes-security/selinux/{checkpolicy.inc =3D> checkpolicy_3.2.bb} =
(71%)

diff --git a/recipes-security/selinux/checkpolicy_3.1.bb b/recipes-security=
/selinux/checkpolicy_3.1.bb
deleted file mode 100644
index 71045b8..0000000
--- a/recipes-security/selinux/checkpolicy_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "1302676cd8853f740a963fd6d5bb4172"
-SRC_URI[sha256sum] =3D "dfc7707070520c93b14fbbdfdbe081364d806bf28e3e79e103=
18c2594c77bbb2"
diff --git a/recipes-security/selinux/checkpolicy.inc b/recipes-security/se=
linux/checkpolicy_3.2.bb
similarity index 71%
rename from recipes-security/selinux/checkpolicy.inc
rename to recipes-security/selinux/checkpolicy_3.2.bb
index 1d84ebb..552dc26 100644
--- a/recipes-security/selinux/checkpolicy.inc
+++ b/recipes-security/selinux/checkpolicy_3.2.bb
@@ -5,18 +5,22 @@ required for building policies. It uses libsepol to gener=
ate the \
 binary policy. checkpolicy uses the static libsepol since it deals \
 with low level details of the policy that have not been \
 encapsulated/abstracted by a proper shared library interface."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
+
+require selinux_common.inc
=20
 DEPENDS +=3D "libsepol bison-native flex-native"
=20
 EXTRA_OEMAKE +=3D "LEX=3D'flex'"
 EXTRA_OEMAKE +=3D "LIBSEPOLA=3D${STAGING_LIBDIR}/libsepol.a"
=20
+S =3D "${WORKDIR}/git/checkpolicy"
+
 do_install_append() {
-	install test/dismod ${D}/${bindir}/sedismod
-	install test/dispol ${D}/${bindir}/sedispol
+    install test/dismod ${D}/${bindir}/sedismod
+    install test/dispol ${D}/${bindir}/sedispol
 }
=20
 BBCLASSEXTEND =3D "native"
--=20
2.25.1

