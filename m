Return-Path: <andrej.valek@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15BFCC6FD1C
	for <webhook@archiver.kernel.org>; Wed, 22 Mar 2023 07:18:42 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.76])
 by mx.groups.io with SMTP id smtpd.web10.37132.1679469516542439911
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Mar 2023 00:18:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@siemens.com header.s=selector2 header.b=Nre3Beq4;
 spf=pass (domain: siemens.com, ip: 40.107.104.76, mailfrom: andrej.valek@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cchn8ckab9pRD/HTWJYlz4w9Neph4q9ESFajnG94lEl1JMgEoYkPAA/sFmJ8YHRNanJoxdgp3b5pd7xc1cM0jw4QxDTIj9KlhPciQR0Hq6q7IsVMg5sqXThPK4DbgwfFhb6xf2Ku6C2aQ1pICGNMnvaVG4Xr8rfcCdRkJ/prvsFDRYI0TiOwyWnuWkqTPCp5YWKLtAFb1NbvOivERBMsSV7VKUZpA3/6bF6Z9bf8wgQeNmBL0eVs7u93T6EFPW1GkZfvIfvVYYvKf+TQHk1S9+KsvXnaFcaeBalbI+5yORdvMPgHsik+w8sA4b0XvqZTuZmpVz6wUbHbJKKOdwTuTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vzU1Qm3A3LJx3v80oUFxi4fqBD4Bo2KBMGnHHYaArWo=;
 b=Psn8TK0GmPqls0nGLYKqy5f8Ek4NywpLlXriM4NLj5+yQBvgqAxCcqhVPo4BjQlJhgb/jTGTc1mOwxGKrna0DVlA1DQuXPTUNjvdvwLb2AJppPSqci813W0cSSLvAFFYmJVLCq+nYAuouPt3Z4P/i1+0CD81PW3Ar/oMU6h6AqZY2ptJUsyF2twX4SCfjvYR9X0OzwJkTU2eyNy4XqyAYj2d5PKw+X6Fky4agw5ThmDM/bWnKIbvdwwudQlMpLus4IzgB4q1NdMy7TIFVwzqXUaNSwLQIGeDVf2e4JLUK4dMCV3llqkbp16JZfDqHlZJlZ0zCdJ938nTsxKxB5xkhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 194.138.21.76) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=siemens.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=siemens.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vzU1Qm3A3LJx3v80oUFxi4fqBD4Bo2KBMGnHHYaArWo=;
 b=Nre3Beq4nTBK7lUlkWqf5QgqoP/j3kBALyy4R2V/87UD9gx3rocUkyAjpF6A84GnJb9ldQorivGB3vOsK14aEQYHI+gtE461cI+gW8fF9DTf0hGuLAH85z/aEOJxEZqi0RzgArJtCs7/v/c+rssZcDkXqnZkQ/go1R9tIEPhR7779Ia1KTDtYpTi7rKZAnpWTRPjBgFcrwdZeTWTflth4NgGSTp7OaVo0nkZJK5bHKFa6tA8CxEVzIVKF8PtJk42+hisHp9yqpLIu55x0kAaWy24PNKoxMmL0F5YtYC3NKH+igqFcgvsOrCdmgxt0Jn/6bPf5iqtpU45MI//RzR6Qw==
Received: from GV3P280CA0029.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:b::20) by
 AS1PR10MB5601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:478::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.26; Wed, 22 Mar
 2023 07:18:33 +0000
Received: from HE1EUR01FT033.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:150:b:cafe::2) by GV3P280CA0029.outlook.office365.com
 (2603:10a6:150:b::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37 via Frontend
 Transport; Wed, 22 Mar 2023 07:18:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 194.138.21.76)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=siemens.com;
Received-SPF: Pass (protection.outlook.com: domain of siemens.com designates
 194.138.21.76 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.76; helo=hybrid.siemens.com; pr=C
Received: from hybrid.siemens.com (194.138.21.76) by
 HE1EUR01FT033.mail.protection.outlook.com (10.152.0.178) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.17 via Frontend Transport; Wed, 22 Mar 2023 07:18:33 +0000
Received: from DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) by
 DEMCHDC8VSA.ad011.siemens.net (194.138.21.76) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Wed, 22 Mar 2023 08:18:32 +0100
Received: from md3hr6tc.ad001.siemens.net (139.22.34.59) by
 DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.25; Wed, 22 Mar 2023 08:18:32 +0100
From: Andrej Valek <andrej.valek@siemens.com>
To: <yocto@lists.yoctoproject.org>
CC: Peter Marko <peter.marko@siemens.com>
Subject: [meta-security][PATCH] tpm2-tss: correct CVE product
Date: Wed, 22 Mar 2023 08:18:04 +0100
Message-ID: <20230322071804.30917-1-andrej.valek@siemens.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [139.22.34.59]
X-ClientProxiedBy: DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) To
 DEMCHDC8WAA.ad011.siemens.net (139.25.226.104)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HE1EUR01FT033:EE_|AS1PR10MB5601:EE_
X-MS-Office365-Filtering-Correlation-Id: 2841fb6e-b7be-4477-c20e-08db2aa5a565
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	u3fusyj5dH5jpVZwkhwC4mqXl9Op1IOKuzMWg5K5eJ+FGm7bavGMvnJkhEY8rEmxlB2Lb09myKEy7b7Uf0fxfJJdF4qu8Ad+w2pvGjryIO9tqw33bfA3chJeKhNSftSSKrLLzDj5J2PDkyg4zbsueCsyFdNO7NPG/CxtbhWkDuqtHyo9L0SiCe1S/5h5l5asJ1WIOd7+m4l0hyDww6SzjdFDHtAGn8kPGaLSs/YcPVVrsYXx+KZ8laHGWVYYG5V6Mi52PG6jZuOQEOLctdapoySsl9UwFUx9U6712P7FT5reMwjq0Q+0S92HudCDqxSlZ08LsSiOGb3j6KPaKJPBxcfgSiPyJUyDJby+5YamwaZM/2N6PmDJDT6nVP1d363oMX+kFMqpJbmXHGWz952C7jXHZkPXcJ4qdfTAjfGAZDdgI3Toq56h8DbYIRRGJmy1vL9r9wUTV80V/xAasGXREPeUP7mj7Mzqw8OsNYETKUS79buSd8BjqiG6Tv2Oc+u+DilEaRDZHmSnTTG2HCKx/2Ndq9vyTRGIKxF3+bvNsryH04RQFMSjB9QouQFZstEaWhASq3+1SgzgWR/PbF/syjJGz0E7KymNHLQQZg+mD3tjkNSiHayetaNPPAqmFrehmTANX6veOpg1+0WL4cpYb8LxhyeSF9Y8TccBD9AekfU95SUl5my83d6tSnWMaqGo/JeOi8q9H6VIyDj3CCaWalck2RCbCsZz1mo/21DDOORG0tQtDjj+2qxcDq9rBpwp
X-Forefront-Antispam-Report: 
	CIP:194.138.21.76;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230025)(4636009)(396003)(136003)(39860400002)(376002)(346002)(451199018)(46966006)(36840700001)(40470700004)(86362001)(36756003)(36860700001)(356005)(34020700004)(82740400003)(82960400001)(956004)(5660300002)(41300700001)(8936002)(2906002)(44832011)(81166007)(40480700001)(478600001)(26005)(316002)(82310400005)(186003)(47076005)(16526019)(2616005)(4326008)(336012)(1076003)(70206006)(70586007)(40460700003)(107886003)(6916009)(6666004)(8676002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 07:18:33.4999
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2841fb6e-b7be-4477-c20e-08db2aa5a565
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.76];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT033.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR10MB5601
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Mar 2023 07:18:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59488

From: Peter Marko <peter.marko@siemens.com>

Currently CVE-2023-22745 does not show up in kirkstone CVE report.
This fixes that.

Products from yocto's CVE check NVD database:
sqlite> select * from products where product like "tpm2%";
CVE-2017-7524|tpm2-tools_project|tpm2.0-tools|||1.1.0|<=3D
CVE-2020-24455|tpm2_software_stack_project|tpm2_software_stack|||2.4.3|<
CVE-2020-24455|tpm2_software_stack_project|tpm2_software_stack|3.0.0|>=3D|3=
.0.1|<
CVE-2021-3565|tpm2-tools_project|tpm2-tools|5.1|>=3D|5.1.1|<
CVE-2021-3565|tpm2-tools_project|tpm2-tools|||4.3.2|<
CVE-2023-22745|tpm2_software_stack_project|tpm2_software_stack|||4.0.0|<=3D

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/re=
cipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
index 657a2cd..cc7e6ae 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
@@ -14,6 +14,8 @@ SRC_URI[sha256sum] =3D "532a70133910b6bd842289915b3f9423c=
0205c0ea009d65294ca18a740
=20
 UPSTREAM_CHECK_URI =3D "https://github.com/tpm2-software/${BPN}/releases"
=20
+CVE_PRODUCT =3D "tpm2_software_stack"
+
 inherit autotools pkgconfig systemd useradd
=20
 PACKAGECONFIG ??=3D "vendor"
--=20
2.30.2


