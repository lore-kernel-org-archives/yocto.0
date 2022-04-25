Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82D2AC48BE6
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.26])
 by mx.groups.io with SMTP id smtpd.web10.26693.1650873631846550782
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:32 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=Brn0EHie;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.26,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.17.175_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id EDD96100004DB
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:29 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873626.609000
X-TM-MAIL-UUID: 1fc9125f-038b-44cf-95fd-427745e77319
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (unknown
 [104.47.17.175])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 94CA110001756
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d4jWifrZGftU+ijYACgldWHYZr5TGKXl15PYCTGCCcDzSKGofAQvR9PoT1coJm6cEl7tMujZx2Fk5BNti9onm00Dn1KOPsvAtxb5uM692HZTYH/XaS3bU8V7XFQrbe51wgp+c+y/dEzD2d3ctZh0R99VyHX6T7Fy1GcT1XwvIaAhn3e/1xD0yySI5oFi+DlMkhGb1E0AxeLmIgG0bXRZNDkMeMeNIyi2lOfCtNJg/ElKJktj2ZD1iJk1X/nsE7EtlFczuQUrMnWzMG7l0cWILvuAOEk5ksG/EMgNDTBY+twVQDcNQk1HWKuBktjCmwjD0NW9qdwG/T9UxmRSWUJpdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ava69eCTuamIUHIQ5hfu/j47Jcr7rNxY6PIfgLf2k88=;
 b=bMjQ8LAnZUeNG2cOlCH0/t0kfdQRuKMaJFqNPS4s4PwpKi2yi8RFyhLrvWK4s4UzqPfzLzh7JpwrbX6H6tmeodi65BaSduH0iUneO187tHfapwoqRk0gGask+5Z8taKyjez6ViVya9Zibkhshq8Ch5FgvHVV0DQ53y1RckhMFqSr460y3nh3GXoXadWf14ia6nSW0j/L8hGJzDV4zfGojhCKFUenpBe7Vxeqi6cl+Ew017vmofqALZTELR7CY5g01ZXeX2Fq6Id+nW3XHTKd0z54OWLU+UojFtLR2Z050i0Dv8YZCPzlXm7Kvs48vUlKekyW61WTAmClmJZ7HMvcSg==
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
Subject: [psplash][RFC PATCH 13/14] psplash-drm.c: Allocate resources only for
 the first connector
Date: Mon, 25 Apr 2022 10:59:53 +0300
Message-Id: <20220425075954.10427-14-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: ef7a7f2a-f492-4500-b0dc-08da2691a665
X-MS-TrafficTypeDiagnostic: HE1PR0401MB2668:EE_
X-Microsoft-Antispam-PRVS: 
	<HE1PR0401MB2668DA77D481EBAF70C2276BECF89@HE1PR0401MB2668.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VI4dMtl2EWiTb1Fl2kc1b/qeE4V4+vvFNYYzuc4fpVYkV1+lMz8tVfcl90Z7O1wy0B07S6ctu1tB232bxmbBryp5nlmSGePRifguvY8y/T72AJvHSbkJmommnWDIiyH4GaBp5ljhxsDs7Ph1fmohTbHGYBoCFYCSU5GY6weAjSPuDNxhbRrtd4H5uTXmstEwti5dFnvmSd6F80Z2c+9y5ENQmZCeLqp7eYmtwJS7qEUU2XNoVIeIqOzY7Qt2epV2FMf40O31gFazQ+BvANUqPaib7XD+nA3N60DD9LcSlpBl0fSS1ND2ZTHJroSEj6uDBzynoobosRCsrj2NDTJjD2LhB3YK28y3xmWesLn0wRjq4n66iFuAaHwq558ZyIZTR7Kh36Yy07ks4KrKBunMBENGK+NFggOrELtXmbQWF08gR0zYRUdQ0o/FDV93UdSXFp7ZLeLg6tWI3jnVXbloXocBfQRQUCKYPjXqJxNq6xmsnH0Zq9xcxiXeE3XpggQveC7ElnxbFk05eDRqbVc2f3/+nD2rkfBuCpbVVVF4xmm1IC4wAWDVgMb7prpFfd/JrKr2BE72TY//67Qmmjvrn64abwfRqcwfrC/yAZvayYgwZzAQUftpvgloA2xMwAv/UU6lfrevnGFPiOVNEodqa+R0wiKy1HbjEujYq49r20Yqw948TB7UBWYRn8mK4RkE
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(396003)(376002)(39830400003)(346002)(136003)(46966006)(36840700001)(86362001)(40480700001)(47076005)(1076003)(5660300002)(2616005)(81166007)(508600001)(8936002)(44832011)(2906002)(107886003)(83380400001)(36860700001)(8676002)(186003)(82310400005)(42186006)(70586007)(70206006)(4326008)(336012)(26005)(316002)(6916009)(36756003);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:22.9204
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ef7a7f2a-f492-4500-b0dc-08da2691a665
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT020.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0401MB2668
X-TM-AS-ERS: 104.47.17.175-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10--1.866700-4.000000
X-TMASE-MatchedRID: 6Rb6MxL3kQhc4VNP6KaaNk7nLUqYrlslFIuBIWrdOePfUZT83lbkEB/a
	4gy0uyn1Zf0PKG4nSis+n7xNIBqpwf3L/XoEbJvungIgpj8eDcBXwkJe8uf18fcjNeVeWlqY+gt
	Hj7OwNO2+SzuwiNJ7ewOE3TnaJbPMue2m0OnarV+BDcBZeno2h28+bi0evGkVVlxr1FJij9s=
X-TMASE-XGENCLOUD: b596556d-1541-4545-94d5-0bd527f9830e-0-0-200-0
X-TM-Deliver-Signature: 4B75157F6560D3E40563D7BEB06BEF55
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873629;
	bh=tFjc8XPTGr7ptgHpqlbtB+Y4n22YYUH5VxHiHOFhgPU=; l=1188;
	h=From:To:Date;
	b=Brn0EHieZ1OY7YT3SVeSllKo6cs6YIf2DGdnigqjgJcg2iVfb2DTN/vWMIHGowvlU
	 FsEF7a9oO9ZKPZrbqMGYC5q2gbRMnjpH/Tf5guhKUzj8BpzGRY6AFSGrG+BiApSjKh
	 CCbo6dZ0f3mOJGCpQyDx0ElOb6tGLwkZ3MIrNqFkVAD53A8vjZh9JNePq+405SZh5E
	 cH/ZSZQgSUd69Y0gnJ1oLtCCbULmWJjqCabgG2FttLEBgHJ9yR9XXTwONOX1dtOLCg
	 E2eaFQHCWwDm4A0tXhxoKX+UDZtJ9WBzCQXEaM5gVNxvM0Dul4fFExz9U+3+lFCtXC
	 SADrDlPsyrF0A==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56868

Since splash screen is shown only on the first scanout, there is no need
to allocate resources for next connectors.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-drm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/psplash-drm.c b/psplash-drm.c
index 2468cf1..5e56286 100644
--- a/psplash-drm.c
+++ b/psplash-drm.c
@@ -39,6 +39,8 @@
 #include <xf86drmMode.h>
 #include "psplash-drm.h"
=20
+#define MIN(a,b) ((a) < (b) ? (a) : (b))
+
 struct modeset_dev;
 static int modeset_find_crtc(int fd, drmModeRes *res, drmModeConnector *=
conn,
 			     struct modeset_dev *dev);
@@ -196,8 +198,10 @@ static int modeset_prepare(int fd)
 		return -errno;
 	}
=20
-	/* iterate all connectors */
-	for (i =3D 0; i < res->count_connectors; ++i) {
+	/* ~iterate all connectors~ - Use first connector if present. It is
+	   optimization related workaround since psplash supports drawing splas=
h
+	   screen on one scanout anyway. */
+	for (i =3D 0; i < MIN(res->count_connectors, 1); ++i) {
 		/* get information for each connector */
 		conn =3D drmModeGetConnector(fd, res->connectors[i]);
 		if (!conn) {
--=20
2.30.2


