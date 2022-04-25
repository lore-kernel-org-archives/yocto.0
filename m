Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68429C54EC5
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.6])
 by mx.groups.io with SMTP id smtpd.web09.26984.1650873627127755678
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=iyB13wSh;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.6,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.17.174_.trendmicro.com (unknown [172.21.180.2])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id AD966100022E1
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:25 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873625.073000
X-TM-MAIL-UUID: cc68405b-88d9-4915-b0a6-cbd770e69ee9
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.17.174])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 11F5C10002D3E
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MZpIc5ygoLRBMi4w3rQWboBGr8MTXMhWRW8MrBY9Njdl7nmENZldtpMywNpRcK+MWfoLzR35nWlkcPuYYueU1F3DyNTwbxg2w+kg0xiAfCryaF56xBej0to/9/M6+PaRC2MS1CMNALgbWVx3n9yELhmq7PN8x5d/LnCo80RnM6OQcV5ER2qjV45hqWBNRJune9/9rBd9i8TNVW5HYLrKyHrLLqSxoTlu41TxEJn069r8UIbeachWGebE9P6K+Q+kY1RPVVsylR7c9GsPDjN9wV5jCjvf8K4HzHb2XQ+7KWl9AtMZ3R83tIFp/vHht6IyOZVKvnkkQGVkFnQRldMg2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0fJ3ira3RimZtXr6e2Ti9sIIkmIMvarpqBTMt746Tnw=;
 b=e6tok5DuconW1Eslw1X1LHHW1+XJRBXN6dIAmU0voWr1IVuE9snhXXG9JvQT4ina929CE26lRXT6pYgVVD4oRgLI6MhcEWDaNEPhVWfahoXgpyWFtAC1lfGME4CdVv0mDOf7HiKDjraTIfWYRftUM++i13mwNSnRAfCPTOY8GIrh4lqRmvnVEmY2Uzh+/Axt3XKUCkNPJJKI62nMdBdPnaV0JcDfbmiriXuQ8pTojv7YbTqJxpZ1iP2dotig+nG1y42hdGYmiEPpel2enhGJhOw8W/NThklptqTtoQbgQJfXSb+kO3OpffDgq/G2ULQlzAvRmaaZXpIB+ZvB6KXyDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 217.66.60.4) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=opensynergy.com; dmarc=pass (p=none sp=none pct=100)
 action=none header.from=opensynergy.com; dkim=none (message not signed);
 arc=none
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 217.66.60.4)
 smtp.mailfrom=opensynergy.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=opensynergy.com;
Received-SPF: Pass (protection.outlook.com: domain of opensynergy.com
 designates 217.66.60.4 as permitted sender) receiver=protection.outlook.com;
 client-ip=217.66.60.4; helo=SR-MAIL-03.open-synergy.com;
From: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
To: yocto@lists.yoctoproject.org
Cc: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
Subject: [psplash][RFC PATCH 12/14] Reverse modeset_list
Date: Mon, 25 Apr 2022 10:59:52 +0300
Message-Id: <20220425075954.10427-13-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 2ae5129b-f70d-40a0-1d31-08da2691a631
X-MS-TrafficTypeDiagnostic: DU2PR04MB8775:EE_
X-Microsoft-Antispam-PRVS: 
	<DU2PR04MB87757D4A1CACC7C0081403DDECF89@DU2PR04MB8775.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GLU2x5BqbrSvnNieJyqvhVN5HyvqGl5tjuLKodldn8ui2Fqg7uXi1Q74sAzXznjpXTobf48lbfsCR8I4yeU2W0U4CVjzTKbVM94+VqLXEkuknEIk7/UH1nI27uT2z1dRkFyjE9vCRdjQPCzGjAFJtavdLLx/5j1VTHY6X14RG+dF06R/L0x+pyZI3AEcCbhJfUBczsQNBPixWUF/aNO2S8l8WHIQCvx4ys3HfyKkFSYMft4VExVDmM9biVn+1BR2dzbtoxzsPypZt+oe3d/mc1wUwwilT6balOWnO5AjBhOmLQurpGuGgjnHdeW6c5fOM91cUH2OWxEdcJiaPcZ0s3szr8plpWE9uchPjGBkzu+jYjE+Ca+WFIG8NOUMIHdiDvSDHAAgYdPdWD8i/GIPwD9PGQ9t21NGHr+KcNloKlRR3dRSwd/WwAVb6PLtoi6Z9uU/UuMCdVpIcWmFsKGBLymxgSJ6E2eKh0Og8ckafUfy6pS9RX4ZRjAy6N5c2vpeTsaHKiQFxz0M5Zczw78aXvGsg/HXRS6QLsDpko+knjgX8Paj3OPAFi4mktsCLw9qXEhGfFKmKxoJ0URfJsaGssPGY69/SvvkGXtMPkPFPTo1zgEXkePXruaTAGE72GTkc2SzPZr15McBqp0oxjNRjQhPeTypgZb/aFINfNv1AOcJBrzl54veqnwJY+j6t6Vl
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(376002)(136003)(346002)(396003)(39830400003)(46966006)(36840700001)(42186006)(82310400005)(186003)(6916009)(47076005)(83380400001)(40480700001)(336012)(8676002)(36756003)(36860700001)(316002)(81166007)(4326008)(70206006)(5660300002)(70586007)(107886003)(2616005)(26005)(8936002)(508600001)(1076003)(4744005)(86362001)(44832011)(2906002);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:22.5915
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2ae5129b-f70d-40a0-1d31-08da2691a631
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT059.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8775
X-TM-AS-ERS: 104.47.17.174-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--0.029000-4.000000
X-TMASE-MatchedRID: 8qzDc62TWy8dh0bHKS/78q7i5EFUmYlswTlc9CcHMZerwqxtE531VICu
	qghmtWfXpCZmRBaJ+pgv/zJQ0aiPJvvlwQ3r+q9MEVuC0eNRYvK0aicQ5bmD5umdrzaSKL9co8W
	MkQWv6iXjCeE5v4lH5MIJ+4gwXrEtIAcCikR3vq9Q7u8u2aInpnwG9xzBAxOt1cJ8itq6ieAWDx
	j4ju31axv552Yh5Qzk
X-TMASE-XGENCLOUD: e5184981-13e8-498e-a331-6ac041344fe6-0-0-200-0
X-TM-Deliver-Signature: 51E2C9B46A956B407FBFAE41D64403ED
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873625;
	bh=Tx0OjK3zkLmy/uzPIAmN4bfi0nso0c4fTi880kxFxmE=; l=1035;
	h=From:To:Date;
	b=iyB13wShqLm59YH4rIemX1oQlczhVO9oJ4Uv6YESmkp5QE5GRB4Xxx+0JEARrbIPF
	 W3E910+0QdiVc3txVeKYAfxFvFnLkUyc3DsaowBuNGtriq4yFrnibdZZrcauMt2Qux
	 jyiXan3LPp03fqrFW5ZnMEIjeNavhif0559BxUAI9udVw5I3ahaQFCf0WqXlM+CBoo
	 swcP1zEbPqRa22yZHComHG/R5H0fu3OB7GV+8uS1JdhSSg9Py5mu4jt25uYdCadzHt
	 3VR3r11SLiyI1cfirigNV+KH/R8BXhPSFiq9V+pvrOFZKRgdZK5Jv4F1Zy8ob60Dwv
	 Qk3Njwjkcwl0A==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56865

Now, it has the same order as connectors in drmModeGetResources. As
result splash screen will be drawn on the first connector.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-drm.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/psplash-drm.c b/psplash-drm.c
index 30850ed..2468cf1 100644
--- a/psplash-drm.c
+++ b/psplash-drm.c
@@ -185,7 +185,7 @@ static int modeset_prepare(int fd)
 	drmModeRes *res;
 	drmModeConnector *conn;
 	int i;
-	struct modeset_dev *dev;
+	struct modeset_dev *dev, *last_dev =3D NULL;
 	int ret;
=20
 	/* retrieve resources */
@@ -226,8 +226,13 @@ static int modeset_prepare(int fd)
=20
 		/* free connector data and link device into global list */
 		drmModeFreeConnector(conn);
-		dev->next =3D modeset_list;
-		modeset_list =3D dev;
+		if (last_dev =3D=3D NULL) {
+			modeset_list =3D dev;
+			last_dev =3D dev;
+		} else {
+			last_dev->next =3D dev;
+			last_dev =3D dev;
+		}
 	}
=20
 	/* free resources again */
--=20
2.30.2


