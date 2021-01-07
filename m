Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3703.1609991041711817310
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:01 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ICLsAiv+;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2072.outbound.protection.outlook.com [40.107.94.72])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9941C38C0528
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yh/dmx8jKvdytfFPwovQIhc/PxRuyHGuMNqlbW1DupOlNdmMX7nPyclhHwGolutc5g3pQHh3Ed/V96bodsCxt++2ieFxgDfzIAQVN/bURSnB8iqq/4BgWXKU6vx3t/aO9YL3Fync74zOAOBSfMz2OD4I318TAS++J/SJldG7qkErYCwfQcRRfK727MKP+qMVkknXd3VP/GFY18Q9GOtlMRoN3gSadEX8sNZR1b9vEf1WegjHWR5i8RqtKVntZBQHQ+D2r3bO7MIpw8BH9FGowkN6/XXOgkW/PQ3y6eVmtCIB0UUs+DCP2IMP3mXxowE2QsYyPG3mIeTkGRymcCH4+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ciO0JRwJQ6YlP7G9Ts6Ia1Quy7XL+zR8adS7YItW4As=;
 b=LCbNKu5GSfGX1GTYusUuO9TxyWNzVCFWYyNkmTx1b1fVZxrGQEgmijJsaptLjHX4PUFDwmBBXhNcVk6b6BKzI6krgs20jcBUai6t5i0FBkK9FVGH9caCu4O3oSVTICMjQci5SibSHNk5Bmt9VMOZ1EO/LKuV/oxgJwUiRL5XcHnT64XvtbCD47jcnkho6XSeSroJ+W2I/SrN5FMqIPtKrE5PzvVYm0W9PK18tMx32kNSenBsj9211hy+9KdDkRqghuHNbUTHIL/spzwT8JNymocoAPAV1E/YLtQVO7i/4x9MejkUuxXRXFgut5oMvTpmbnaSp7EEWqgVr7xLdGde6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ciO0JRwJQ6YlP7G9Ts6Ia1Quy7XL+zR8adS7YItW4As=;
 b=ICLsAiv+d0MZpfUXa33xQO+wadVCyC7qYVW0UK91QT+yC5JZpB6bUgjJuInfLqLBSZh4bNgQcM+WzT6XQjeK211wHJnhbxr0ffkytU3d0nH6fxi5zSAgE4sDG6fm575aX17AXPg5sem1pTbu5WODBQdPhRkHmlbM20XcPOMGcS4=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:00 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:00 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 01/17] audit: enable arm/aarch64 processor support by default
Date: Thu,  7 Jan 2021 11:43:29 +0800
Message-Id: <20210107034345.37200-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:43:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3450790c-02e3-49ae-29af-08d8b2be7844
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1584F2D9C8658F43D196EF5FF9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sHQdlHIpFemTneR24KXAmAgwECRYbt5xcQBQdZHynvewwugyUmHvczIHNLcNYdyvscEP8OpJBvjGZHW2iRg9PnE6b5gq1muUEa+BIQp+ELsztXob/ejRvc6BtQlT/abXmbDiDSdYcJHfb/OwIU02gT2inVjruTF2CJFx5Rj89nqo0ngSgnxswolH29CM3feRqVLaZQ9Lhojj+ecHzvK66huNAUMvo60ZzWZaRQfogex2nC3X/TxFBmaKky+PyCRm8Xc1DMLPFwEG9CHqN+lS6IWUrHXsS5tB5vu81lqbLb/zL3Bpiey2cgQXdnX5GUi9Zs9p8HJiRsCMyvgcBFwmwpd5W+hxP8toA7vmmCqqvSQBgW1BcxgUfcL9U+vYhRBnUhEBxUEdd6U5CgRrTpQxYNES8GqRH4dGoI3yeApEANYj1fTi0y5VHnaEqFIVgNyBKXoqYYJTEKRlRjaA67okuA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005)(966005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?PUqruT8OVPEMpA3znrhACeTSUeH2PEGCZMwDckE+/WvgyyX59SE0r8yDGWpq?=
 =?us-ascii?Q?gNcbpoB+nResimp21AgE3ON7JJRhy3bi4kOoeozeWzGZvzgUrb2rTJzdgT0/?=
 =?us-ascii?Q?iuD89e4WyZenlhbeMb3A9GhMHIKxUUoG6frvw8fx5wkR7lMnzvO8QtxZBXEr?=
 =?us-ascii?Q?eKPvzBTGs/4IE/eAnDGoziUuqVzQTKBo0lIB1EKnMR3zL95gQIA8m8D9p/ft?=
 =?us-ascii?Q?a5aG2yTKG5nPItvIRlWwGrTnUZGhLkaemJprFKxkPwuG2xm1nQb9ynRGFQ6p?=
 =?us-ascii?Q?tZVP/shCi7yzMuOH+R1rITen0oxHdo3PtuGR/lsrqiFCxuC6A669LLQP0Qr5?=
 =?us-ascii?Q?9qFbLgrWyy79/DNU4Xnq9uWfj0s7daXcU+MtQcXu/LioBylmJLvMP9vfclzO?=
 =?us-ascii?Q?nw/YUgDZHrFEQJEwwZOp0vepFhhpES4Lcn6kjAlJEuiIrsn3ML7o6nBf6iCz?=
 =?us-ascii?Q?cJpXQzOj2KKqxvyhC7BJ/xvQPFh0/Mvp8Z1JYckkxeIXJSjQdT8ble7yKt4F?=
 =?us-ascii?Q?+XcX1PJ978NIPvVbVyrdjQbaqnKrTMHlZmH5IgLF+HgdMG5z6YB305H1wglw?=
 =?us-ascii?Q?wbJHvpag3v9GBO7PAvXzdhZPqh55hp0thK6bgbi4kgbFM8FJxUH7FcljL3lh?=
 =?us-ascii?Q?Xe0VMhbS9OMVLSttQGTvqLfZt8vp1uPEp0La7r0H8AnS89KF6E1u+bIUnyUP?=
 =?us-ascii?Q?bx69RTZmDdNrE7DtvsrHiYo5Djm5zFCi0UUXMyYvOJgxYrYTpvEYWGdduSdN?=
 =?us-ascii?Q?CXjici3F7Y9nynxL2n55Pr3Dg1ZFP5XHgAsfMEojUp7Swk7jbT/5ooWpBt/L?=
 =?us-ascii?Q?ykCv2SRbZTYHA5mo9zSHbUyLvDgvTVaIEPabe8spAD8XfzKDvnAMm3IthEFU?=
 =?us-ascii?Q?5hJublS9F6K5cVysl6bFxUJXbBZBSpN0JDJ+/ZnLxZqHnfuIjTrrDnOmipFe?=
 =?us-ascii?Q?GurbySXc3Tl3l6Hl7aO3oSMzENzGi2CfxFvGp+7OvB4gGjtkYv1F0XJ0Vntq?=
 =?us-ascii?Q?HMeV?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:00.3750
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 3450790c-02e3-49ae-29af-08d8b2be7844
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YVfOG/9Lu5VTno5VAnTqQSFg0Ms6zK7oPc/wGnz9Xl0sh/s9ndsERlzwP7k4t30pV6DIJsDuZGx0ztiJn7m7Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

We encountered a runtime error for auditctl on lib32 image for aarch64:

root@xilinx-zynqmp:~# auditctl -a always,exit -F arch=3Db32 -S adjtimex -=
k TEST-time-change
arch elf mapping not found

The root cause is the aarch64 processor support is not enabled for arm
build. Refer to Debian[1] and Fedora[2], actually we can enable
arm/aarch64 processor support unconditionally.

[1] https://salsa.debian.org/debian/audit/-/commit/8c6b2049bafb52712ca981=
e73d5b79d5bd97e08e
[2] https://src.fedoraproject.org/rpms/audit/blob/master/f/audit.spec

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/audit/audit_2.8.5.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/audit/audit_2.8.5.bb b/recipes-security/aud=
it/audit_2.8.5.bb
index e3e5ddd..e2e0352 100644
--- a/recipes-security/audit/audit_2.8.5.bb
+++ b/recipes-security/audit/audit_2.8.5.bb
@@ -41,9 +41,9 @@ EXTRA_OECONF +=3D "--without-prelude \
         --without-python \
         --without-golang \
         --disable-zos-remote \
+        --with-arm=3Dyes \
+        --with-aarch64=3Dyes \
         "
-EXTRA_OECONF_append_arm =3D " --with-arm=3Dyes"
-EXTRA_OECONF_append_aarch64 =3D " --with-aarch64=3Dyes"
=20
 EXTRA_OEMAKE +=3D "PYLIBVER=3D'python${PYTHON_BASEVERSION}' \
 	PYINC=3D'${STAGING_INCDIR}/$(PYLIBVER)' \
--=20
2.25.1

