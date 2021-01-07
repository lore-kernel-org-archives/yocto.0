Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3810.1609991062261677768
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=QBwBqT7b;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2076.outbound.protection.outlook.com [40.107.94.76])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2B27038C08EA
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hFk5hXf+E3L5c3X3+K9x1IqLh3e6SRJXo3vKoledmcn8iKqtwCuoljdR6Ln3V8bHeaztO9Gil4as3QDqibzJ9atjGFV2CdUKMupPr383TmEuWQwdYKpx+o4v0Wq5z7OYpXCkt0oxbp9PunxXTtlrQ9lnaec7Uzo4uQvhl92f9HoZjGHwtphSE8I/zmpZGLSr8CKrTNgcWDyGyUGWJy0pWHx/MWsxonMTS/Vw1k9ymZel6j9TmxSRMhMLakE93T80bn3GYJz2bhXWm0WEufNqFT2ObnWJ6itfhD807DPjQF7ODmUMH0fLRl14Cc7o2sIiMa/RLmUiQeACGE31GJuDWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f64rv9fkmyAAS+jKOADeM3y1zDz0/IOWCn0eLT0csg0=;
 b=iwYRVjEQWaT42A5NjFocecGGLDhRZjaep2mxJK1fz3Yvwa7hn4t1wRY7PdV014t013ZaM0AsFlqjupYt76bmrsWrDtzqXMXa6K+oBLnIJfGXxl1JpNKWsE1FCcvvsr2cpapJTRam7laj7RnaK0pJXNDQ9jyvBlpqqptf9Qeu8ci573BczTv9Z9XENnfDIPjeBJcjNYsmXeu1K8qNKhRT2U2UFxABg1Oxz8TkkpCmjArSIW0gnw9rlfEA1bSapZx8YI5vLxSdWRKNGb7S/ol5n+Qm1WN/zJ7V18ixbXh73Vl6XEANC0jP7aEVEZcQRkKnbeDNJ+EJGfxJidtYOEKb8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f64rv9fkmyAAS+jKOADeM3y1zDz0/IOWCn0eLT0csg0=;
 b=QBwBqT7bNHnJ6YN2V/Og3HkPTijv4/UDpEmIYjYH77jtR7pzU3kFtS/bwR3m1OyWJ8mPPSOJPlmnUeNbhxih5/eQ72YBeE7j1lt30SC/ukOLsvx/yBMn+pS07Gkiuqs+tRb/XAcMH+hjsquUTunDcIBZs0OhsTLTGoTIBbPn/dw=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5073.namprd11.prod.outlook.com (2603:10b6:303:92::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.21; Thu, 7 Jan
 2021 03:44:20 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:20 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 14/17] selinux-dbus: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:42 +0800
Message-Id: <20210107034345.37200-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 10782f08-19fa-4ff9-00fe-08d8b2be847e
X-MS-TrafficTypeDiagnostic: CO1PR11MB5073:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB5073299DDF9E6B1DA7BEA0DAF9AF0@CO1PR11MB5073.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aRiCTr1RebT2q0YsigFaM0JkTudVGIghpKvkGQnpUqbesFcfLQdqNYNJMfRiSmMtGwGrJLH8IKBTnBAKpkqVNB4Qg2U7ql+ILFuef4LhlpLVsADwusg/KcBZe1lVMLoUtmd+Y3t4gVBA8uzv2PMjhqd6cmzqa2J0DI2W73SzL1rkuwhTvX1wvo7DCzyuVDgFCvv4NMX8h15eDvYOox4uE3nYz+L3ipRfBUSFvtCEmgRrmIiEEAYozGWgmrZCoXjk6gubQqFkErZCBhTm+FXCIbJzW08N83oUqaDKToyRs9+lH8VB+3Wmxvt9HpLyXtptfYUhoSZgyGI/LXvtakTa9r+HXVFZksk9PjuM4iJj8ErTR6b9nWv5MDXHknHvXrwIodTNx744IWOEC+3i2nxETA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(136003)(346002)(396003)(26005)(316002)(66556008)(956004)(16526019)(66946007)(2906002)(186003)(66476007)(2616005)(6666004)(8676002)(83380400001)(6486002)(44832011)(6506007)(36756003)(52116002)(6512007)(8936002)(478600001)(1076003)(5660300002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?YeZwoLPuRD7kEA0RXuVb7XecmmPwmXmHQ66/y/bMjFXEUaY8EoL1t+BCzYfY?=
 =?us-ascii?Q?1BdrxIVn/iA0J8zWJjaFGPxI2ZuTm8KXU1qJkq+RCF1nlg1Tb1WzqM+788v7?=
 =?us-ascii?Q?DaXwPe0sbWNOBzRk4EXlw5iAHqhL/1V8tAWtQDis8Jh+SNxRNjYUPNsynTr+?=
 =?us-ascii?Q?FFR6bhnK7svxuId89e8tXTmqD/8VFSjpG9MMuOlVlOpmPveaFMBpj0yfYisd?=
 =?us-ascii?Q?hTUY0TfNFTOzUa4HMPVW1LgBEPQhyZzQpeKBaBHZGOf4qKZ9/HHLI4J+R4AF?=
 =?us-ascii?Q?gLnqYyjTWoNmDXXs/k9jgFTHsiacXlcEtBLcQAgAbr91rTBixUUEskfsNmyG?=
 =?us-ascii?Q?Itiw3l/F8pmhEmbi9mAaSmSmvqbTpoIASGs639HSqitz1W3Gz+c0MLa86RfT?=
 =?us-ascii?Q?aLhDs8FKu4hSeQfTJLGG/P/PsqJxmLj+yFDnqY1ZppLhc1eQQVA9x0ecwEVr?=
 =?us-ascii?Q?ymMrro/WNgaKyBIQDGbCtLa+NhztFwwsCR8aRCYa4C7ZLfSYRuILnjiIoN5o?=
 =?us-ascii?Q?eCPZBSIMkiBmEQilg9SE+ISlUqVgiROu8coybueL2WyYo+iErMVWxCtOtc5/?=
 =?us-ascii?Q?v2V+R6UwEtvON6KntD9tIc9pcu7I+SFfSyLzD1ZQ+cJKlKFzSuoSdXi1q5E9?=
 =?us-ascii?Q?Dm6LBaQehcC5+yWJVNZ+bP8Auwfy/NYBPh+TAC1AeQxFsvNWl1tVuZv0PEfm?=
 =?us-ascii?Q?YefTZs9Kxljwe1EFPzDRGKzUT/ji9wQJi8KjhzVvIAIX3Xvl/RyiKet99KTp?=
 =?us-ascii?Q?q04dYAOpRw3ZpEf6Z6V6pPhRh7pErw7Tbs4cFq2Z52tUV4xSfkxxKCz1Kn0G?=
 =?us-ascii?Q?52M7LaGoSJKdQg4jMJJpUV1W0gnbg7VfyraReuwUELRgsJlp/kcgH6xJ5huw?=
 =?us-ascii?Q?vAHBfHUmOcowNXotowpY+HjruHVPUR9Y95F2j32FUfU51KhCW7ffyM0UVqgb?=
 =?us-ascii?Q?GbDH4/rSwDcEfMqj+wJO17zQPSH5hzj7aw9FthwoyON68Ql3rtpphueAI/0I?=
 =?us-ascii?Q?5SEk?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:20.8877
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 10782f08-19fa-4ff9-00fe-08d8b2be847e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HzdiEBWgBLXL0aH72UjRzOpBpwYKbEAccmbshqIb5xj4S11MOmsqiXmuDrHCUHAUm8Gj7rCkOUO0gI/LB+ZKNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5073
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-dbus_3.0.bb | 7 -------
 recipes-security/selinux/selinux-dbus_3.1.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-dbus_3.0.bb
 create mode 100644 recipes-security/selinux/selinux-dbus_3.1.bb

diff --git a/recipes-security/selinux/selinux-dbus_3.0.bb b/recipes-secur=
ity/selinux/selinux-dbus_3.0.bb
deleted file mode 100644
index afae77b..0000000
--- a/recipes-security/selinux/selinux-dbus_3.0.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
-
-SRC_URI[md5sum] =3D "775f058ea19f424d99ce3bd13297234c"
-SRC_URI[sha256sum] =3D "95d75603444c3eeaebf25da3de6febb6e1567d5f5d93cde5=
a4b73c88ef6c4f28"
diff --git a/recipes-security/selinux/selinux-dbus_3.1.bb b/recipes-secur=
ity/selinux/selinux-dbus_3.1.bb
new file mode 100644
index 0000000..04e7565
--- /dev/null
+++ b/recipes-security/selinux/selinux-dbus_3.1.bb
@@ -0,0 +1,7 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f=
833"
+
+SRC_URI[md5sum] =3D "b6ad8b3d8497782c6ed480514dfc8ee8"
+SRC_URI[sha256sum] =3D "61f936d200ff8302c513883c67bb7c4c496513e78122954c=
bd33db62086a06f2"
--=20
2.25.1

