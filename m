Return-Path: <michael.haener@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF406C32771
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 08:11:10 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.65])
 by mx.groups.io with SMTP id smtpd.web11.3980.1663747869219052886
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 01:11:10 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@siemens.com
 header.s=selector2 header.b=wmAMxJHY;
 spf=pass (domain: siemens.com, ip: 40.107.5.65,
 mailfrom: michael.haener@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C+3aHB1vNSUQHAwEThpwPgksISZX+f6E8zWEOsD5mJvpPb1skPDcRj84HGKC5VqxqchCHmGCLfRot2G0OOIW6970QccEaeTzFDADCdZ1OWHOmx4iuu3WmzvhpfmkS/sWAo2QvIAOyQjE/ml2VS4hZmNx3wLb768MhIZvwqRNv1kviHKvH5KmHkYyxw6Zg3NZdaGzxpF/+S5qoq67zj9tkl6r5qWb/KdA30IdW08F7iTmjDfrmiErfwbmOCmhQPMAD7j65b8wj9Jk8Tdczvj+F4Xywh3WsRxi1719D4+cLCaoE8u16a+tNspnXKWYOdOT5f7R+ypfWFZ27ihGLFvyJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5hGXoB08WnJoaRsjYf2QJO8RkquYKOHVDIFIFTU2+i0=;
 b=Hz8bJVmAtd19zZE7+6vBnpJndGBHCyjaqBHl0adwL4YsLzhFamG6jSYwyIX1vu87uCRA42whRAsFwkiXB4rzcdRMR4CKbf4VSEiJiVvK6om/kBFZUk2P9bwXwFDaIEYhOV0d4zjCB79W3f8r2Zz7e969OXjEiFPZ479YRPA0iHo1x7LqHLyEQnmaIuWQT8gs6rabjLIwIELo9ZLfMYn/NsZ7NMPK0XgxH4MJ+xoIJJr0lxZ7uOd7nxYrZRgW1b6ePFG0G4QPZYIDK7KXZDJNkH9cTXxFz02/ThrqlSLVgDh+EJvkN+oDwCthEo4JFsbC0K5fVfyV8tp9BtTc/TtG/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.74) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=siemens.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=siemens.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5hGXoB08WnJoaRsjYf2QJO8RkquYKOHVDIFIFTU2+i0=;
 b=wmAMxJHYX3PaMj866rDvtr0p/PDZtwIfo7EycwcA26Xfo7UK2cdGEUa7dO3r9ypI0zsxqTKLrW8yrOT7WoORwTtXY9mgLGDlMqi3zludjP58MPhuRg0xYspdIanJ6EwuxyaX9HPou/Tw93axCtthoHf5gJF9m5UfxWsQIfWvoHIs03CcuU4go2h6ayaFVwe0HjqNs/CH7d/9jCm8/n2K+dcSAfoM0PTgEvGXuSCOUHcR3AZmr5ND77C6WAcy5TMY3SvYoyBzvXBU3iZ4kNx8Khn4CR05DySsiPVP0pQjoCu+tmYbLML2r2Uk2L8SyK7rtY1fbUQe3yid+4W4ItX4PQ==
Received: from GV3P280CA0068.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:a::20) by
 GV1PR10MB6217.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:150:93::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5632.18; Wed, 21 Sep 2022 08:11:05 +0000
Received: from HE1EUR01FT051.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:150:a:cafe::38) by GV3P280CA0068.outlook.office365.com
 (2603:10a6:150:a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.17 via Frontend
 Transport; Wed, 21 Sep 2022 08:11:05 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.74)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.74 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.74; helo=hybrid.siemens.com; pr=C
Received: from hybrid.siemens.com (194.138.21.74) by
 HE1EUR01FT051.mail.protection.outlook.com (10.152.1.71) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5654.14 via Frontend Transport; Wed, 21 Sep 2022 08:11:05 +0000
Received: from DEMCHDC89XA.ad011.siemens.net (139.25.226.103) by
 DEMCHDC8VQA.ad011.siemens.net (194.138.21.74) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12; Wed, 21 Sep 2022 10:10:53 +0200
Received: from md2v2rpc.fritz.box (167.87.17.69) by
 DEMCHDC89XA.ad011.siemens.net (139.25.226.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.12; Wed, 21 Sep 2022 10:10:53 +0200
From: Michael Haener <michael.haener@siemens.com>
To: <yocto@lists.yoctoproject.org>
CC: Michael Haener <michael.haener@siemens.com>
Subject: [meta-security][PATCH] tpm: update the linux-yocto rule with the one
 from sanity-meta-tpm class
Date: Wed, 21 Sep 2022 10:10:08 +0200
Message-ID: <20220921081008.47681-1-michael.haener@siemens.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [167.87.17.69]
X-ClientProxiedBy: DEMCHDC8A0A.ad011.siemens.net (139.25.226.106) To
 DEMCHDC89XA.ad011.siemens.net (139.25.226.103)
X-TM-AS-Product-Ver: SMEX-14.0.0.3080-8.6.1018-26680.007
X-TM-AS-Result: No-10--12.211000-8.000000
X-TMASE-MatchedRID: G9cENiKYZmdLGCEON4HQO63+wuBya2Bp7fg45MYQVOJ8nLwuiNHSSEtc
	8DbogbSE31GU/N5W5BD+BBNCMRDYQ30tCKdnhB58I/9UW5M5dROXsEDIqZePI+TCMddcL/gjyms
	k/wUE4hr4ibNi9ALLMXisIk2ueStP+KsI/y4kORjiejcicfhNlBpgZKgdA3Nj
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--12.211000-8.000000
X-TMASE-Version: SMEX-14.0.0.3080-8.6.1018-26680.007
X-TM-SNTS-SMTP: 
 6A1C13D09282C411D89A6C604BCBA3AB7BA08548DD8697910ED0DF8E896D10BF2000:8
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HE1EUR01FT051:EE_|GV1PR10MB6217:EE_
X-MS-Office365-Filtering-Correlation-Id: 34337f20-c547-4bcc-c3e6-08da9ba8d4b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hYbWLfgXxArH4DVe047wb5uIvIXmzVCr0dhD5hh3yYak+ebT+0LBxlcEYQcBl5N5xQEOkArTy9H6HquB/JLx++rtO8Srv1KxLl2PC64zfA9lv8GK/G5vI0I5muYRfH9EddEzmiggv0Tli2WAXwWPGAVtBzZ52LXJXGx4QdkLYDrYOup+eWw1d2GeJJTS/m1PfdK1G0biUQibcDhezP9aORQ6mkXPHgm7bW0TM6ab9XNzoHxq3Ajvb5fxV2ESxNGRB2d+2ocRpvV4n0v4wq7TLH8U8Yv07vbFku8gkhUyPXnWA5UaeN8sEZYLdZigqiRJC2WXgSeu84pFIKwg/D+dQusrC0YHbe1kjFyY35w2zlTtCSCX6dCSQT3NEW3j7aFyFfEsixzrech3bPPKcAR5BIPI9H3QbuxyNFbSKAHak3K0pS2yqv9x+T4C09Ph1WkHtUTVW0fyFzHjdwaUFhnvvE1ZoX5dLlxldIR/BuJXeIKRu5rxeM9tY1RiNvMTpJ8BFU2zev/kgxALRoN+MZSArsejUOMC7gsLBP8DXcrfQTejnsJVmtG/oWIlIS/swNOCZZbvBk+Zi3bo94xHysfWscC5R6T41m0Oqu3t0pLPjuVqTxhPpx2slqgpwQoslNOLt9BDq4McLfYlfwzLvv5VWaS7VMg7zwViy9A6JlzjQuYuArVmL3wn10b2LhDwpS0Nd7vsQjxXZeUutTGzBa0W9yhb9b29qzPn9F4dEns9Z3hS7riYFlvi2pfMByA3AFGFneCeO5bYPQ5JWvkgC7YzNg==
X-Forefront-Antispam-Report: 
	CIP:194.138.21.74;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:hybrid.siemens.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199015)(36840700001)(40470700004)(46966006)(6916009)(44832011)(4744005)(82310400005)(2906002)(40480700001)(36756003)(6666004)(316002)(47076005)(82960400001)(36860700001)(82740400003)(4326008)(8676002)(70586007)(5660300002)(70206006)(86362001)(336012)(16526019)(1076003)(186003)(478600001)(7596003)(956004)(2616005)(8936002)(83380400001)(7636003)(356005)(26005)(40460700003)(107886003)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 08:11:05.0680
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 34337f20-c547-4bcc-c3e6-08da9ba8d4b4
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.74];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT051.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR10MB6217
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 08:11:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58111

---
 meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend b/meta-=
tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
index 2cf1453..e8027ff 100644
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1 +1 @@
-require ${@bb.utils.contains_any('DISTRO_FEATURES', 'tpm', 'linux-yocto_tp=
m.inc', '', d)}
+require ${@bb.utils.contains_any('DISTRO_FEATURES', 'tpm tpm2', 'linux-yoc=
to_tpm.inc', '', d)}
--=20
2.37.3


