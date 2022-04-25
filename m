Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8396EC54F3D
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.10])
 by mx.groups.io with SMTP id smtpd.web09.26987.1650873633734621449
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=dEVHn50g;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.10,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.8.58_.trendmicro.com (unknown [172.21.163.172])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 586F31000174A
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:32 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873629.257000
X-TM-MAIL-UUID: 61c7539f-e657-4999-8eb3-28c3bd3cf4b4
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (unknown
 [104.47.8.58])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 3EEE51000177D
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5d9Pm/Iji9MfX9Bfw3dIA5rHTpNB/M/gmu3bp4rq+vNDRTjSSqK9pAumDyAH/R/KErcaJr6I1pWU4XMhIRyvhGEA6iJPlOD4yFKNsqJW9kRt6ez8H2OgO18/Cnm2Fot1QqdQOCKTlAaS1d6A/gKHEWjjyRYGqa1KZXBINEbbpTssKAAqoBI9kiYWoGq4JVCjB6aeeCxvrQBLHrSNdnsLGRV+9AQgmC+kvvAHeBLYWcin3suWIfXEXbBdcyzNEj3Wg1xQoDPwNBIlQuuBBt3WdGuOgtVpdvFa6qLEybIBIsGwzw4wmRE8fT+J50Diix3NWM/qSS1cAyWMquHd+BRUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ycof7EBR/+z1AquB4ea+ug9gfhupVVwjlJ5ec5I61EI=;
 b=JC6iNYCPGrVvAXxjNT84ysOkfyhs1X/6dom4jKbMNzBvg6Gwhm1p1KBhCCEex1CZOf2FreUMKrukZG8q9zZbiflRdJ+9vqdJfMiP8yKnzQTNCeiZbKAR+aG7S0MCvzpABnUIWXP+oskU3U2BiWb4tq91ZrLuPxqFea0TSJaxzpKEm423XwD41wEZdynp3YjZa1G5zNt1uQy7lD1wXajAvgq8yhZ3Be7MEIhhxZuUfPrNreDs64xz0tFxP3jmOC9+oPgAuR83ziTYcIw8dyBlynmOTW7ruO0IgpR5A+T/qiIr+Qfbq1nDIFmAo+fAzuD8/Tz489AxPX5n58Ru4Bt4Rw==
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
Subject: [psplash][RFC PATCH 03/14] Remove unused save_termios
Date: Mon, 25 Apr 2022 10:59:43 +0300
Message-Id: <20220425075954.10427-4-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 3d683571-317c-4919-a427-08da2691a4a5
X-MS-TrafficTypeDiagnostic: VI1PR04MB4462:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB446213053EE0D01E443BCCBFECF89@VI1PR04MB4462.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	f7eFJtMrHCJf3i5IWBVJ03f/0yTPQjFY7yD5RuR93u5NWiMVf8Lb5qwHbgnNdmKqc8pXN7X1lubmm/rCkg9W0dsW5AwZF9yJCDxqgMFXsILoE6s5a356hs/4euZ4d9VaZPp3RGxvYTphvSKFp6ioLIbYk3p5q6mhv8Ykg9bY7MwKliaEMaEfjhMHrfzXCnBfDslGsSszimNpaS1pENa1lem1tqAo0zzJBDwtWHnA/daRVomjFCBhpT72EXBpql+dEln01auvUas8aYKwLZKPcr+cOPPS74jVSWWw9hnq2StvELykoiHxnPDRv4dUjEF6BhCQaNab6mTQ0AYZBb0KSgV4SjDpYFE4/w4piSkXy8Tjj1TPljsnxLxRw4ydTOrnyOYMYnM35KKhUH00oOrAv3XNcQKQLFlPybm6wHz8jua8HFxJdkDdLao7m9lfcX7LNtWASjWPin5OvRXXKxDHqJR+6XQXLRYmVe8F5MfTG2NzYnD3rOA4YYqVGtHQuz2aJ4vPXfjYGQKzeZ5th4qyuBQBYMw5ctKP+wj2f9LVJXrY9kU2eae+tf/0bL3c2jRQpkjlsoOhg8jUIkx9+5f8CKCD/nM2VCS68DE2KgfsmITW3FGh43Hue1p+kQnu8+9WR1cayHHYAhsijlWEM9DWsrgLugwnboeSvihTyEm33W2mJhB4xjXCLtaQYhHjdAnP
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(346002)(136003)(396003)(376002)(39830400003)(46966006)(36840700001)(2616005)(1076003)(336012)(186003)(47076005)(107886003)(316002)(83380400001)(6916009)(36756003)(36860700001)(40480700001)(82310400005)(26005)(4744005)(8676002)(42186006)(44832011)(4326008)(8936002)(70206006)(5660300002)(2906002)(508600001)(81166007)(86362001)(70586007);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:19.9841
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3d683571-317c-4919-a427-08da2691a4a5
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT014.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4462
X-TM-AS-ERS: 104.47.8.58-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10-2.255300-4.000000
X-TMASE-MatchedRID: /m0W4FzTGdeRmYpU4vHLUk7nLUqYrlslFIuBIWrdOeM3ZbGC9oP/O6F3
	5mbpOvU8ED0QTbY0JODsk41hdN/PKpcFdomgH0lnURmnjiU5zFtpkajQR5gb3savT21DsLD/UEh
	Wy9W70AF5zdAzex5xZt2tR2Hfn51B2Y6fIpeGZvbgyreTUiPnmXQbxWoQMLmFt0FJ2BAmfQuUTG
	VAhB5EbQ==
X-TMASE-XGENCLOUD: 41f04398-f231-434b-aac5-e8e21035d8ed-0-0-200-0
X-TM-Deliver-Signature: 724FF21076E2C934105B099A73452F13
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873632;
	bh=m6Ucj+zDOYnd6OesjliSsJfIWPCCXISDQ2SeuJmW2M8=; l=769;
	h=From:To:Date;
	b=dEVHn50gZS8co78J+rHP9KMuIZzYL5cY9M7icnA3kOO4a3abcD5JMqApaLN85y2DI
	 NdxNGO5fYjm5jYDGO87cEa2kZMtkODuEwA1E+giZWvV4y3tZ9WmSEMUosN0XMxqbTu
	 jg0JvTrixNwYOk/PJeFCL0NJ+5gu7lnV+gWxlF9PI4SCwnDEH5DbxQNVbchRIZtxy8
	 yhaj4jNgqq29OXa4B+g1EyQwdHpAKaTer5aoNdUItIJISuWp+rZk9SbWzXZYyMFCey
	 6PV/ZhpGWctg7cktDCOJPscANMrTkh8XupUaITbVMXEEwbFK2Jr0E4fH3g3fcMKv5z
	 ShXNs6zdrXY0g==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56869

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-fb.h | 1 -
 psplash.h    | 1 -
 2 files changed, 2 deletions(-)

diff --git a/psplash-fb.h b/psplash-fb.h
index eafa293..6c4599c 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -22,7 +22,6 @@ typedef struct PSplashFB
 {
   int            fd;
   struct fb_var_screeninfo fb_var;
-  struct termios save_termios;
   int            type;
   int            visual;
   int            width, height;
diff --git a/psplash.h b/psplash.h
index 3739ca3..8e68b7b 100644
--- a/psplash.h
+++ b/psplash.h
@@ -32,7 +32,6 @@
 #include <sys/stat.h>
 #include <sys/time.h>
 #include <sys/types.h>
-#include <termios.h>
 #include <unistd.h>
=20
 typedef uint8_t  uint8;
--=20
2.30.2


