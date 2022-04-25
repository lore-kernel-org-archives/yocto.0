Return-Path: <Vasyl.Vavrychuk@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7507BC54F3B
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from repost01.tmes.trendmicro.eu (repost01.tmes.trendmicro.eu
 [18.185.115.30])
 by mx.groups.io with SMTP id smtpd.web10.26692.1650873630938861794
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@opensynergy.com
 header.s=tm-dkim-20210503141657 header.b=R0tDgxis;
 spf=pass (domain: opensynergy.com, ip: 18.185.115.30,
 mailfrom: vasyl.vavrychuk@opensynergy.com)
Received: from 104.47.1.57_.trendmicro.com (unknown [172.21.180.2])
	by repost01.tmes.trendmicro.eu (Postfix) with SMTP id 79E2D10000BAE
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:29 +0000 (UTC)
X-TM-MAIL-RECEIVED-TIME: 1650873628.250000
X-TM-MAIL-UUID: e179b477-f3e5-4f7c-8249-3c01809e7a2d
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (unknown
 [104.47.1.57])
	by repre01.tmes.trendmicro.eu (Trend Micro Email Security) with ESMTPS id
 3D56A10000317
	for <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 08:00:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3rKcvxuspWi4CR8Gc0fSwbGuSA4VShCsBhJfcYnAe4tq+3SsdrlBqyHTXb84Y7cElEEtccsN/Y8nCy36E5z38xGw4Bx5JgEslMHuRmud6ttnouD9dZyI/Cpmc8GUqdrGp0fJE2X5ttwWhgJHtMi6ImbOk0u3ddb1+vGSdM0WRFNjIhMCfWM22Y+r2kA9efAUVfodAqN6IOf88iy5M/J1x4huB4tMhKccT58aVa6yq9MghmVFa/wfDpVbGk6+OcVlw78kfqE7748ZM0OfWrfNtvM9jhzILs8mJz3rVdzb7ppX02NX0Qe1nCJcjEfrE4rYw0kid2IbWp6ZiRJ2Cb0LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u4GBG48HkmSF+5dl6xvn+e6HaeaNVALI+X28kd6+irA=;
 b=h17CJ/Q065kfAj1ir/nVDSdrHOIIXlxCGJwO80a54PhihgwfOURsn8YLNglvnOA+jgXtHjBJCom5kkeCC4OiZX5A40udaBiipK/yfbNWq1JWhhFnn5ChuRqIOMGmqiHnqcfxTBbykxpw1aEVtWCBSNAO4gQWlrC0PdiuQc1wcHIYsrOdag0amPuu1sdKF1FlCbRsIE6PPZJRsXKZyczrTQCNP/E4LvWwYmYIEDBajT4GLT1V1klHFAfyT6JisVjJBLzpgd7UUZRAyiFezU2iLWixrH/cm/R+2RSIbJFI9xu12e15BpSCzNFgB0VOe0o4vR0BmYBHJn1WkFL7TYpejw==
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
Subject: [psplash][RFC PATCH 04/14] Remove 'psplash-fb.h' from 'psplash.h'
Date: Mon, 25 Apr 2022 10:59:44 +0300
Message-Id: <20220425075954.10427-5-vasyl.vavrychuk@opensynergy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
References: <20220425075954.10427-1-vasyl.vavrychuk@opensynergy.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 291b4fc3-f83c-4457-23f6-08da2691a4c0
X-MS-TrafficTypeDiagnostic: AM5PR0402MB2771:EE_
X-Microsoft-Antispam-PRVS: 
	<AM5PR0402MB27718379ABB60E8F326CDF71ECF89@AM5PR0402MB2771.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XNXS6rnMwiEcrAOXJ5htvAJS5WDBVP5dIRjRaWZ6NuXL2bgUdzLBtHNOC9UEefLA0AgY/q4kKiacmlayzpjcF5a+XygL164l9yXJk0WK6OtNA969p2x7nohnOKmQXrOGejgoswbAVLXRfopJtMy9ov46sb5eDmKWuTVDg/jiOSblZefimSfHS/XLD/KRPqiNHHHYY5m3kbo1Bz5nmmck2WPoJ86mv3e82CqD27IVT2LpsUwMCPeB94DklFW9NWTsbKQveu3MfYth41PYMPSm+9uVHN/682Cbm6KsidHoY+CQCnJ3jXOwUOKSrr+0HS3D3krtp/0hP5Rd/Uutz2y32/8XfEn74hXsFfQFwJZF8BcG3hRK3vS+BqAGGLl/cizQjzuntWmqx1nRfVCaq25/p6PLAlWS8bwO/8Rv9qnLplbUvwH/zg8tTRhZc4N9YF3w3WidAZKcwUDdmNKwd1SSaneDzzPuEI+5uSde4L8VxP1qvGrnnR37moQGTnE9SB4nmShZxhrNJYbgnFc1k7Yl1I0cuHczZPuVJwVCi0x0StTM0WNA0atVBcmkFCDjVE0tTpLe19qzpdzwg/7FaWz9Dwd6K93v9NXs1nBRFZWWf3YJkWzSUpePbYVsdQs+dusNrtpapnuPGsWLqVgg/B/WgvA0YrU/PY0MD9uoaPtIGaaV8EF3qtirvYRMq+6X0q+Q
X-Forefront-Antispam-Report: 
	CIP:217.66.60.4;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SR-MAIL-03.open-synergy.com;PTR:mx1.opensynergy.com;CAT:NONE;SFS:(13230001)(376002)(39830400003)(136003)(346002)(396003)(36840700001)(46966006)(36756003)(70206006)(508600001)(107886003)(2906002)(70586007)(4326008)(44832011)(8936002)(6916009)(26005)(82310400005)(5660300002)(42186006)(316002)(86362001)(81166007)(2616005)(1076003)(47076005)(36860700001)(40480700001)(8676002)(83380400001)(336012)(186003);DIR:OUT;SFP:1102;
X-OriginatorOrg: opensynergy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:00:20.1734
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 291b4fc3-f83c-4457-23f6-08da2691a4c0
X-MS-Exchange-CrossTenant-Id: 800fae25-9b1b-4edc-993d-c939c4e84a64
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=800fae25-9b1b-4edc-993d-c939c4e84a64;Ip=[217.66.60.4];Helo=[SR-MAIL-03.open-synergy.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM6EUR05FT013.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0402MB2771
X-TM-AS-ERS: 104.47.1.57-0.0.0.0
X-TMASE-Version: StarCloud-1.3-8.8.1001-26854.006
X-TMASE-Result: 10-1.484300-4.000000
X-TMASE-MatchedRID: Se4t54mhS/3qTm7+Zl/pFbnHu4BcYSmtwTlc9CcHMZerwqxtE531VNnf
	JrUSEbFDXht2JKuRTne5cURAloITPv46FBYGUp+VFEUknJ/kEl5lVdRvgpNpe/oLR4+zsDTtlu/
	VKvCjKPVrRX3THGQ0DwfoPL/vEdSKauYV82NEiviQZicWxHZLvlqAtPM/2FFilExlQIQeRG0=
X-TMASE-XGENCLOUD: b5846e52-dafe-4512-a4b4-27dd7ffd23cd-0-0-200-0
X-TM-Deliver-Signature: D8B6597D06D000C8C5D42E9024F27875
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=opensynergy.com;
	s=TM-DKIM-20210503141657; t=1650873629;
	bh=Rj4En4melWC2YiIt5RpJmKsHjSFikXPZGK9BB7XnQJ0=; l=1553;
	h=From:To:Date;
	b=R0tDgxisIJYC+Z+0d9U9/LJPfL1S9gE6NXTKS0upfF5T5gHA2T8uw3vjWpELKCG0I
	 cYIYb0FmGnl2WE3trbUNSYTSs+Bzl5dbniRKE4pK4u7t24aQ6XWtxMqEXKNKu7+UXA
	 EF3C+TTuDgUsnPYHsg/UUVjjxDKqjVImhX7L1tcFA5XtqYZsSHR1aHVzGQGlG0DkR0
	 uiLKRm5W11er6KtSBBtGyqLK7Ty02d7S8EzdUchGOhfgGycjhWImYbyGRxLMohGSeK
	 YV535ylc0hAAKYlhuXgz9zseE/dJu4TueEdeEja8zHFf8tK3mCmoZ2IagmqrGEEs2T
	 uCZGtcvgHIIIg==
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56867

psplash might not be necessary based on framebuffer, it could use DRM
in future too.

Signed-off-by: Vasyl Vavrychuk <vasyl.vavrychuk@opensynergy.com>
---
 psplash-fb.c | 2 +-
 psplash-fb.h | 3 +++
 psplash.c    | 1 +
 psplash.h    | 2 --
 4 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index 1d2d7db..5dea82a 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -8,7 +8,7 @@
  */
=20
 #include <endian.h>
-#include "psplash.h"
+#include "psplash-fb.h"
=20
 static void
 psplash_wait_for_vsync(PSplashFB *fb)
diff --git a/psplash-fb.h b/psplash-fb.h
index 6c4599c..4d5c460 100644
--- a/psplash-fb.h
+++ b/psplash-fb.h
@@ -10,6 +10,9 @@
 #ifndef _HAVE_PSPLASH_FB_H
 #define _HAVE_PSPLASH_FB_H
=20
+#include <linux/fb.h>
+#include "psplash.h"
+
 enum RGBMode {
     RGB565,
     BGR565,
diff --git a/psplash.c b/psplash.c
index 62244ba..18c012b 100644
--- a/psplash.c
+++ b/psplash.c
@@ -11,6 +11,7 @@
  */
=20
 #include "psplash.h"
+#include "psplash-fb.h"
 #include "psplash-config.h"
 #include "psplash-colors.h"
 #include "psplash-poky-img.h"
diff --git a/psplash.h b/psplash.h
index 8e68b7b..7489e75 100644
--- a/psplash.h
+++ b/psplash.h
@@ -15,7 +15,6 @@
 #include <errno.h>
 #include <fcntl.h>
 #include <limits.h>
-#include <linux/fb.h>
 #include <linux/kd.h>
 #include <linux/vt.h>
 #include <signal.h>
@@ -78,7 +77,6 @@ typedef struct PSplashFont
 PSplashFont;
=20
=20
-#include "psplash-fb.h"
 #include "psplash-console.h"
=20
 #endif
--=20
2.30.2


