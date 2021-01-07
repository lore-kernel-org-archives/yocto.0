Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.3689.1609991055847355144
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:15 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=UqAGexhA;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2058.outbound.protection.outlook.com [40.107.94.58])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BB9AC38C08DB
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9eU5N51KhRrrgCEFImSOIFfFebAnPyf2ss8hoSa32+6L/JTrJi1EDnrOv77UOppJFQpXMzrxI8v4nixlvP7BpXKKKtJG5yZrD9DnluwCAljk50XAOdwzvp6Ajj1scFJTbyBy7WdzLi0e2VuMUFsokeIkBUKZTNaMa7OcyG1Q0fEzCMNVRzSySPxEEM72n4wcKRXo7hW9bad5rZ6hDaunVLVClG5zDI+TyfZrPHUq6b4iRCPYxa2QWAeQAyAPcR7Ccw8eqeF4br85eziRab7uhda6uR8znxr9fJrpfbqHixfNfTVUmTFHk9EpUokpnm7xweG9AxUlE/TKJ+WfuFygw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88vIfJkHW6rIcz80VYNIdsb2YkE84mT5t5pIAH5yuWI=;
 b=NSHvluqhT8/6F82iZPQHxcITHVoPsahdmNW0Y9IhaO+ZawSfpqwmLfpSzB7bn5RJB+3H7BoKDsVCMETzMxHcJwgN6m9eckiD0O5sXyy9hwrCaZ5yiySsRNxWAfVAvmb9OGOwdzWzgzQKpjHOzh/DIh+h7ldIw+bX4kcfJIsdPXQx5Inz16fV9OgrjMqg7YyMHUUPEhtNOzPz9O8lgKMDRMdKWI3ndAfTLyZ4jVg0/LWiptRH5ZdB83QvPX92AZi8r9Trjx5q37aUdyOhQ5ese2iIRU7Mzy1ntnSD1pHxPYN/zhuriC90uuZ+S6W1+TEYO0ggkufrKDl0sJpEnoOAgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=88vIfJkHW6rIcz80VYNIdsb2YkE84mT5t5pIAH5yuWI=;
 b=UqAGexhA9X0jag9flUN/AXRcWtU5zCpVLIW3zNkcZPvwvdoZ31+F0Do8lz+2wSB3kcB+ReFfqvbE4oBPywaAqiyMwwQ9aRDseh88TxS6J/1HqxH+uCeu/sHgF+gCAgg5/Qq4QEMQhmNbd6mKG893Hj8UDRNSHB3MYgtY+gNFWZI=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:14 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:14 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 10/17] policycoreutils: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:38 +0800
Message-Id: <20210107034345.37200-11-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c0b4935e-a29d-4bae-24f7-08d8b2be80df
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB15845BA82F04485F849941A1F9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6HL1XA4ZMTmp+sRy8FM1qzsQ++TPMiC5JaTT5hHcwGDpuRk86umBjv/ykWQNLq9PreNz8iwr/VSVqiFYvHxxSxJdfDP2CetSCRPEDWdNkhO+73OsiqTArIOYHL68yyvV/HAkCp8PJb9slU74fr7RshcuRAL6QGGbf4AS3eEL6qeKtf1J/Ad29tsyRCEd4H87N13E+NuDpSIjPHojp1JPfjBH+nHEoJn6jE7jmeyiM8vFeCx7Ja+5nLQdjdyudV7D5qp3f0FxWvoRXRLCIYSXc5RSRrEFoO6IRRyMHAB/u0YY5Xo16KtQUN/XM3L6fMjoWmAzrY4UMwQ8nXKAQA5S7FGltMccNT10bvGbtHrv4wM43xHCmByncw4zOvlKF8QBrVHx0i4SnI9Rr6pVPDYBUA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?RSKin/Wjwm92IkJ9X6eOua6GAhcUlAdp4llvhIPo3k+XBPmYEmigNv3w6VUt?=
 =?us-ascii?Q?Tzs3ljzUMPFWrBA8HZ1Bgg0cHnKk6WLGfKkVKXYH6ck/iRvgk+4jsJHOEvwX?=
 =?us-ascii?Q?YGN41zI3NHl99GtfXn7kXzfoIBuLOPHt+xqPTY3M8WESGitYn8aHKByMxoKz?=
 =?us-ascii?Q?/vGSFydHqtdaNuUNS6T9BlXYV3Tk6PQwac6h9KbkEbRGFbd2Xrt6flyas1XC?=
 =?us-ascii?Q?JN40LDgJZ7eHIVwVTxwMlNG/7x6VEaCnngDvJf/YsG9r0euN2nsSlHjYmIbV?=
 =?us-ascii?Q?uIslWr17Z8P0aWMt67K5/ueewYB5yoiO98m+pLbgKhNG27S24Jxwx+hfKPqG?=
 =?us-ascii?Q?R2ZBNP5Oxg7JcoKlnuuxpFGhUT2vqK4a5lZ/BWe9fA42bnsblEd+te7clyX9?=
 =?us-ascii?Q?rM/j6wXRKZrKKZy8Z/GjGRt8B+hQafoNuufL5UNV9lte0H0hkMwqrZkq0JSh?=
 =?us-ascii?Q?EkQBZx1+f61/3VoYzfe/X/HiEhoP07/lYPWjB2Bum/PW0x8BmBm3COOP3Crl?=
 =?us-ascii?Q?a8R3XxcYhJBTm0WSm5pz9NZBOvCSBDyqIpd7G/TEdY3HkUBTtPyoXxXdCp6B?=
 =?us-ascii?Q?vlDJ8nNyXxRy30Vud7jPivPbEgsF30bDfsv5TXl/ZDQx7N4C7R/Lq5NHGOfM?=
 =?us-ascii?Q?Z7n12FNJbMu5CQ+78K4s7d7jEj6nEj5Olwqq9TzCkhapyhXYdu5iR5L9wgfK?=
 =?us-ascii?Q?dmq9YnbqmHmq0iociGSarVuYT3mvE7qKEiwGwH516M8ec/PrVo7T84Bv1chG?=
 =?us-ascii?Q?+hsSzsT/IHoOYQUVZ6ym2wz5fUUWYN1PLLHELlK97G9ZOp18f2S5S4wXZis/?=
 =?us-ascii?Q?pfbvq+Z6ka7cCc/U+G0OVjKAJINsxXV529sc9o7ZYKthZVRXsl3ZvnmhppQf?=
 =?us-ascii?Q?1H6rHVJEYphGHRe9OmNcy0aieNdJea5lfROfDmrnKNj6J83lary2iJ0doRRY?=
 =?us-ascii?Q?ck4+nGdcu8WJ4icWFNkXWWsaYQePNWDrBG+mJT5KEqgOjLqBzr7EZOBRtbQP?=
 =?us-ascii?Q?P+U1?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:14.8344
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b4935e-a29d-4bae-24f7-08d8b2be80df
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RKG+hItbWxojsFG8cu6gh0IYeBDrp7ZUGpN0/8kEK6a5CF1E8jJaJ5O7OGimzFcT/SBmaA8efT1fkaXadzLH2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/policycoreutils_3.0.bb | 7 -------
 recipes-security/selinux/policycoreutils_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/policycoreutils_3.0.bb
 create mode 100644 recipes-security/selinux/policycoreutils_3.1.bb

diff --git a/recipes-security/selinux/policycoreutils_3.0.bb b/recipes-se=
curity/selinux/policycoreutils_3.0.bb
deleted file mode 100644
index a4e0287..0000000
--- a/recipes-security/selinux/policycoreutils_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "7e95941f1ac00b25b69c7157d49a375f"
-SRC_URI[sha256sum] =3D "3379c9bd722e36be9bf8856c6fa373bfa9b33305ac9da5fc=
807cfe7fa605f489"
diff --git a/recipes-security/selinux/policycoreutils_3.1.bb b/recipes-se=
curity/selinux/policycoreutils_3.1.bb
new file mode 100644
index 0000000..f56d1c3
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "3097ac2c83e47af130452f10399282cb"
+SRC_URI[sha256sum] =3D "c889f62ee80f8b6a369469a9b8af51f5b797975aeaa291f5=
c5960cc12eed1934"
--=20
2.25.1

