Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D632C00140
	for <webhook@archiver.kernel.org>; Fri,  5 Aug 2022 08:40:09 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.4880.1659688805385115591
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 01:40:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=lSth9chX;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193,
 mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 62B8F24000A;
	Fri,  5 Aug 2022 08:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1659688803;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jMHnC/q9dFfoaHfD7NJFyfd1x3Mqd6XGrEYFSJAGUtw=;
	b=lSth9chXmc5ioJ9wDOX36BWdEeMXJ7Ewkya56UT2ySsGEwuQE9C8voDPpAGtamUSpSzWTc
	UH+wb0HCTwulihHXYzce/RITo62bEJKdKyRG8Qzlnxf3nxDDsXLjQ+GFffzwJd7NS9Jhsd
	toLoI/sZeIcTNNWmfUO0SwHbG5no8hYZ9uBpic2ga2lcfTehcinvgTXL1dosYi7Sk9sx53
	L4bYBndM28KEHvFk6GXbER178Nt1yOPwyNJeTRCY0UXjL4iwz/RBrSZgFSMMgKlKowtWWx
	gyG6h/D1p5GoZ4jn3pk7Fh0M6o0qzEcLQG/TsexQ5voDyT43nvnh2BqkoaeoJg==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [yocto-autobuilder2][PATCH] schedulers: switch meta-ti and meta-virt
 to kirkstone for kirkstone builds
Date: Fri,  5 Aug 2022 10:39:59 +0200
Message-Id: <20220805083959.351259-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 08:40:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57783

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 schedulers.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 6d339693ff85..22a12bdf6dd8 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -61,8 +61,8 @@ branchdefaults = {
         'branch_meta-intel': 'kirkstone',
         'branch_meta-mingw': 'kirkstone',
         'branch_meta-openembedded': 'kirkstone',
-        'branch_meta-ti': 'master',
-        'branch_meta-virtualization': 'master',
+        'branch_meta-ti': 'kirkstone',
+        'branch_meta-virtualization': 'kirkstone',
         'branch_oecore': 'kirkstone',
     },
     'honister': {
-- 
2.37.1


