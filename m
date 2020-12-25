Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.6612.1608866494693855165
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Dec 2020 19:21:35 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=oS1mz50s;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2071.outbound.protection.outlook.com [40.107.236.71])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8CFEE38C06A1
	for <yocto@yoctoproject.org>; Fri, 25 Dec 2020 03:21:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kKDm+PfQPTM12Zbm4hnZnQntTApB9HxrFbgQLLdvK90x3bgQ87lRGXOyGcyIMTRXvmL9qw2qYlerAploGPTJpQSUlx8AnMPnDrFMJtJ+G12wExwB1qOeJP03AkxxZ3DH9l5517/e7NnyadAWDK4c3qeiBSHLcjeEtOaaKP/pnqUzWX4RvJ1Kxnw6X1FpMHog/AyU13tbaUDVsE5iQ4GukAPafOy/wiaDwk/Pwlb65SvxI+akzHkiXrNrqRInOxCeBPDfxZkM1dz9q4y8bfUaovxVXKLxRsqYrFNbO2pMotx+asm2odUTUE5n5C8FOzCD45a8Fz2A9MbfopFottLAaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q15FR8Hze7xxiRqGh28xrQsbFwjHE8eXqCwN228Zv7M=;
 b=NSm4H6t3ZChUNMQTTG3F0KEbOQlXUTKi7VjYqclm3E5zkMhA6ssaZi9nsNOnZ9MPu4VoV02TacFwM2AxpYEWByo88FRE3kR1nFQhcfXnGMwK4CPljA9wRWZIprL877KoGtnScLyFRJiSw+7OGXkNJfe2bY+k9Q0X7eEJcatdsHsH+zHm3kkEbjcUPyI6Xn4hjEKrYfkIirsMXFK22Xz5CgnvxywRwJ6L1xHnPST/Vo/AMFJF3ZqZMXrnkW88OX0stQslTCPcke9U5Tx+MKXhwK5DSyFE+YgV9iycVcktrBkcXUrBUcRHnzJjBq/EVYdZOgpOUh3i78zPRhD7WsblYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q15FR8Hze7xxiRqGh28xrQsbFwjHE8eXqCwN228Zv7M=;
 b=oS1mz50srxNB+qW4hNemVPluYT2ZyLmMPVWsglyUIbSbaF/Gqdg5YT4JMkxTQts5HbBBS3BcYNumW8fWGLCM/adnuF99lv8G7dhYBxJr6JZeoU5DXbro0FGSYKNEBZdFMGiy8M5kAWiKe8izl9/C9HphMvttnMzXcSy8qejOZhY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:9c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Fri, 25 Dec
 2020 03:21:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3700.028; Fri, 25 Dec 2020
 03:21:30 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	Joe_MacDonald@mentor.com
Subject: [meta-selinux][PATCH] audit: enable arm/aarch64 processor support by default
Date: Fri, 25 Dec 2020 11:21:17 +0800
Message-Id: <20201225032117.298326-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HKAPR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:203:d0::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HKAPR04CA0010.apcprd04.prod.outlook.com (2603:1096:203:d0::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27 via Frontend Transport; Fri, 25 Dec 2020 03:21:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd4ae9da-ad32-4da4-c642-08d8a8842c93
X-MS-TrafficTypeDiagnostic: CO1PR11MB4786:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4786376C19437EC181D0EE27F9DC0@CO1PR11MB4786.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xXQBFJ6cLzF+nuaOZ6QRg2IfXf1QmEfht/B59KFXRmKShjRkRjQrbaRHlUrCoumi8bRexhrRYFDnsPYeOJalsJZ8T2sSz1q1yhJJHCmSVpV5+cPjlhiZMM816bFeK0oK8oWkV2aYmAxuhnmY+EDy7U76Md3njgNhmVAKOU27XaeZhu/Synhl/341rY6trdKsAo5l/UNCVvJYSVwJKx5RJJqwScmDhxl/Mn0xuxPmDqwUoh2pk8rfrYOeIsqXojqfv/3l9/R3vG02KnB1h/WwUZq4Se9pK1NObuXpuLktC3o7f7Z5x7+LxQ9RtaGrO/koNGDsW6RY+LISOudipo6JOg0Ve1FUzSgeNfZSipdDk/sAWSQIgaqgSgUJfSNdZZyBwVNUdmx6xfBthpyk99uj9MNzGE/eOl7eUyKvL7M0izmLHUZcCzs0LkUBUnvuXO8IBJJe0TOJdc6K2exm9nLtrA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(136003)(346002)(396003)(366004)(39850400004)(478600001)(44832011)(956004)(8676002)(2906002)(16526019)(1076003)(316002)(6486002)(6512007)(86362001)(5660300002)(966005)(2616005)(26005)(36756003)(186003)(52116002)(83380400001)(8936002)(66946007)(66476007)(6506007)(66556008)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?1ps26DbhTPb4ebSO9weS4fLqZKVb0/3b3GjCA4w6zoP5T4s+BYGFkF6z5Uyp?=
 =?us-ascii?Q?OS4ZM6+6fDhCVNh3g/LZI37LEpqAdIn+YRfEDchpqiddyyAPWsd3Gur/qwfa?=
 =?us-ascii?Q?M9/kD5cPuhTFLion4rbeix7JLlSkpVxMUlNdPv9meYYac7sLAxfJmMTLlClt?=
 =?us-ascii?Q?E79yt2xMT6gxxfkup/njXdsPLuWQKez34v9K6HZJA8eKhzLZrE5EEqbk9WVS?=
 =?us-ascii?Q?38XXMvi8Xc0ay5Rf5uKtQDFoZIWwoPts5iCbws7biBL5Uhz+11eG23iygCBD?=
 =?us-ascii?Q?RvrOIWiRrtImeDx8g0/7NqMfSUPAwk6V7fBkeeMFUpvDi7osUy3g2R07pesq?=
 =?us-ascii?Q?JkEr0tbx+CsdP1TcDKf5mWbczus8KyfCbMOYyga5NmZnvPcjx3PZzAYtZxaq?=
 =?us-ascii?Q?KQc3oPFWK2tdmtec3G1t3cYj013FM8pU1SthlqNlXqtcEYVIJVS79L8u0nWC?=
 =?us-ascii?Q?7YnxtYEB91iWLfIorpNaG11lrhhRQa2G3qlcdR8S+s2GEKxHo6MiZsA/9p7O?=
 =?us-ascii?Q?4WYnM5tMq2o1pAhB+hAj4Wro5SNCLAINYDZ5ABz5AYGPeqdMbk7G6qOcqUaj?=
 =?us-ascii?Q?joR+fhhZ7V441WfE72M+iyZOsZlHFOM1WGInLV6E+5Zc5cuInLS5j0pfPdQJ?=
 =?us-ascii?Q?jiIY0DWQpJTLY2ZvaoNp+1uO9fcy3XM9f2RkMAZ/NSXG8CcKzmLEVDYc7nut?=
 =?us-ascii?Q?giNb1HmIJlUykT612Pn8pQXX2g+yEG7Prkv9cvrP5sjHIbJxvey4YuOZoD5s?=
 =?us-ascii?Q?PpZzEZQ3SDXMUvFPofuMbSbn2mNz5WGPbpFDLuv2lkZpGYOX9Cyj0MFxOxWF?=
 =?us-ascii?Q?GCQRSVZHX8rjpqwnXmEuUQivbhjYAyhmosLyavoju5lKG7aFY/h7gSJUThBa?=
 =?us-ascii?Q?BpBG81UM9//9g094Rk83dZZjzEJluDG9OJgW3ahSxupyOehN+n/QYjaVL+B3?=
 =?us-ascii?Q?9V5w+7JsDh7hztNg84agSwtmT44+wbR2t/QItug9XNE=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Dec 2020 03:21:30.8582
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: fd4ae9da-ad32-4da4-c642-08d8a8842c93
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8vLulvho5Gqpho38Ww1i6yqDJ6ybJaJe/64aoCYX3s+ffYaQ4Gwj2oe1QlQfnOROIoJBEQuWh4rUTM/b6pZtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

We encountered a runtime error for auditctl on lib32 image for aarch64:

root@qemuarm64:~# auditctl -a always,exit -F arch=3Db32 -S adjtimex -S se=
ttimeofday -k time_change
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

