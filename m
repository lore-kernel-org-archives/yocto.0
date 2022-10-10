Return-Path: <michael.haener@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F026C433F5
	for <webhook@archiver.kernel.org>; Mon, 10 Oct 2022 08:10:53 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.74])
 by mx.groups.io with SMTP id smtpd.web11.3828.1665389443758091555
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Oct 2022 01:10:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@siemens.com
 header.s=selector2 header.b=iPKfkmwP;
 spf=pass (domain: siemens.com, ip: 40.107.6.74,
 mailfrom: michael.haener@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RpG/ikETnSVzh/mY02wv02r2gI1tLe/BkvMbQPEjf1uPPLU84tsZM0Uo+ibrqoFT/BjgxeX+fG1HQaxQ+xvzdDFxlKllj2ewbekAs1qASPtNBzlUfak4BTcEn6X6OWwWrr2/ExjkVWJehrSB/fHEPpuiLdBWcFzjPJ+QklJmGlm+xcvMFTW9Py8k2CmpOlq80Yl0nOjnptsDLTTz0Lqf1iz1Bh07OlQXRCBhYEbtYygZGmsrdY0shL2MwDGlQbfrvr/oQT3fv2cudLPvymv2Nkw7HwdpDa79B0w1wERZW9fj2l4vpPfhdgBdiK5By3iEvc9/DZaZzynVYZOAarNZRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YwSH90gME73GNcQi3wB2zkVZZ2TQ5bHTVIzsI3lT5FQ=;
 b=bnnGJpVEkOGVT44D6xDfU4PmPSl5es+o0X5a1ozfHLYUpERBJZaws2OGrXqWzI1VXeno/3X5H46vIyTFStaQP1nGGGS8mn/FFuNb8s9v8VjMUIQmRNhfJJdsKXHCdYTGdt/S6DeC2GgZn8iMCddOsls82sFzPBYxdE/DmIc16vvR9bTDES4WroRSo8GhWUyEsZREHz1N6G2Uh0umRJiEcxND/Nul+CKAF60y/7+hEuUV8YwLM0UnK9jE7+hlTzxIDivHae7xHgI79+IHpipgQJFWxsQ2kKa4B8VOxZIGV+j3Os9B/v5Ln/AFocNmKsuOq7SL2U44t/3IX0U0DjIrSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 194.138.21.75) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=siemens.com; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=siemens.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YwSH90gME73GNcQi3wB2zkVZZ2TQ5bHTVIzsI3lT5FQ=;
 b=iPKfkmwPdUEbyRNEGEcE29UOQOQmtgULMHCWnEKDH2cYhp8fkvxSkAad0rqc+73q2fm1QQprgpJujhxmLZDUh6YsR63cJwROHo+dQxRPfByILKn1x3jCV5xRs5gvD2sjL6z7xU89LnhEiGeYVwp5mSxIl1QTiCV0gxSmfKEJNrhJIjqXLpjTmVTP5cVYB3ClhXDRJoBjsSwzJceyks6k3pFg/An7q9+ovQmeh8RqgY+YLlO61wDRDbCnAl3IKTzMdHhXGWTYf02zl59v4YCBZivQKxmboYQW6OKlmcOtC7YOtmIp3EQuEgzx7oMQMe/HCUBlbmREmsktCrfniut1OQ==
Received: from OS6P279CA0099.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:3d::8) by
 DB9PR10MB6738.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:3d2::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Mon, 10 Oct 2022 08:10:40 +0000
Received: from HE1EUR01FT003.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:e10:3d:cafe::96) by OS6P279CA0099.outlook.office365.com
 (2603:10a6:e10:3d::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15 via Frontend
 Transport; Mon, 10 Oct 2022 08:10:40 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 194.138.21.75)
 smtp.mailfrom=siemens.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=siemens.com;
Received-SPF: Fail (protection.outlook.com: domain of siemens.com does not
 designate 194.138.21.75 as permitted sender) receiver=protection.outlook.com;
 client-ip=194.138.21.75; helo=hybrid.siemens.com;
Received: from hybrid.siemens.com (194.138.21.75) by
 HE1EUR01FT003.mail.protection.outlook.com (10.152.0.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5709.10 via Frontend Transport; Mon, 10 Oct 2022 08:10:40 +0000
Received: from DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) by
 DEMCHDC8VRA.ad011.siemens.net (194.138.21.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12; Mon, 10 Oct 2022 10:10:39 +0200
Received: from md2v2rpc.ad001.siemens.net (139.22.105.227) by
 DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12; Mon, 10 Oct 2022 10:10:38 +0200
From: Michael Haener <michael.haener@siemens.com>
To: <yocto@lists.yoctoproject.org>
CC: Michael Haener <michael.haener@siemens.com>
Subject: [meta-security][PATCH] tpm2-openssl: update to 1.1.1
Date: Mon, 10 Oct 2022 10:09:48 +0200
Message-ID: <20221010080948.88094-1-michael.haener@siemens.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-Originating-IP: [139.22.105.227]
X-ClientProxiedBy: DEMCHDC8WAA.ad011.siemens.net (139.25.226.104) To
 DEMCHDC8WAA.ad011.siemens.net (139.25.226.104)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: HE1EUR01FT003:EE_|DB9PR10MB6738:EE_
X-MS-Office365-Filtering-Correlation-Id: 58f59734-1fa9-43dc-bd85-08daaa96eb9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Itj6KkL3RGFevXIx7WzDZnKjYHLw3fQcn2vbAf5tnFfOtY+pbjHyV8btENa73mA7NORfrrScwyr2UUrx2TV54OD1VuXNKK1/WI/4SFLHzdy5p0SDlRQUAug8DonUYDAUej97zRN//uVZ3wW6qgVaZJUFqEjD+2oMhIVgiTpQYo6Rq6EmntQj323RWilu9CL+6EsapWL8tylrzh8T4o4tLlltCqUqj5C2j80ZQZOQA7lFdk3mGcJTqiUyxL50QI/bFcCV64XPnq3m6xQLVIqmxXiecSAlzTBY6F3mHXM07KKvO0G5Yo+UUavb1qSYds2LwuVUhbBP3svS2e85My43oI+Nno6hssCBbQ/gBH3ebqy0X+1J8P2Av77y2IoCgCV8Hld1q8Tn3wsL+MRT4YAmy84d4I02GzojcfHTcTB96aeobUo6+csOb4pq99ZWSm3gb9YAu8kX7Yf6UFjzbIHKj9j3lY8hn+CWdwNcOg3fOfOWdD6hJz1gfP01PllYzYV9BoH65ZI7G8aU9QsYbbSkFzArSAppDr7B+75Vy77sGgqz5CcLR26tR7pHMOY0+HjywA4JWvmVqAmvcUdCJ83LE2yntPFEjJKpW79pQsRJyPQtbKDSkYS+JlV/FmHSHcTq1OWNtxmCI8b1kukRYipOitP136gRusymMh+TbVvk0zDVW8FUp3wJeyAHDwwK0QkxPMhA2FpZM1PAxznGyGB4uYAKXM4XwRYXnsLZpaRoo06zN8eIL6sya9KnIZmrMGLl2mfRGzCB+zVYYMZ29SpEchXIGc2ptgNMoEROm/Vi1g4cKfS9EfwqMxnNdtH2YH2bNHw1LyTcJL8ILLSt9DquqQ==
X-Forefront-Antispam-Report: 
	CIP:194.138.21.75;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:hybrid.siemens.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(39860400002)(396003)(136003)(451199015)(40470700004)(46966006)(36840700001)(316002)(70586007)(36756003)(36860700001)(2906002)(356005)(47076005)(5660300002)(1076003)(83380400001)(82740400003)(186003)(86362001)(40480700001)(956004)(336012)(82960400001)(16526019)(81166007)(8676002)(4326008)(6666004)(26005)(478600001)(2616005)(44832011)(6916009)(82310400005)(41300700001)(40460700003)(70206006)(107886003)(8936002)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2022 08:10:40.0012
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 58f59734-1fa9-43dc-bd85-08daaa96eb9a
X-MS-Exchange-CrossTenant-Id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;Ip=[194.138.21.75];Helo=[hybrid.siemens.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT003.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB6738
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Oct 2022 08:10:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58302

Signed-off-by: Michael Haener <michael.haener@siemens.com>
---
 .../{tpm2-openssl_1.1.0.bb =3D> tpm2-openssl_1.1.1.bb}            | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm2/tpm2-openssl/{tpm2-openssl_1.1.0.bb =3D> tpm2=
-openssl_1.1.1.bb} (87%)

diff --git a/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb b/met=
a-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.1.bb
similarity index 87%
rename from meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
rename to meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.1.bb
index 263ca2c..b676871 100644
--- a/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.0.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-openssl/tpm2-openssl_1.1.1.bb
@@ -6,7 +6,7 @@ DEPENDS =3D "autoconf-archive-native tpm2-tss openssl"
=20
 SRC_URI =3D "https://github.com/tpm2-software/${BPN}/releases/download/${P=
V}/${BPN}-${PV}.tar.gz"
=20
-SRC_URI[sha256sum] =3D "eedcc0b72ad6d232e6f9f55a780290c4d33a4d06efca9314f8=
a36d7384eb1dfc"
+SRC_URI[sha256sum] =3D "5a9bb0c6c61d026272b8843cbc291b5dfa9a55c1661a513b1c=
980807ad2dad01"
=20
 UPSTREAM_CHECK_URI =3D "https://github.com/tpm2-software/${BPN}/releases"
=20
--=20
2.37.3


