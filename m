Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8711CC46467
	for <webhook@archiver.kernel.org>; Wed, 11 Jan 2023 13:26:00 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.23454.1673443555302788928
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Jan 2023 05:25:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=EPdDRGTY;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: (Authenticated sender: alexandre.belloni@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 3C2FD20014;
	Wed, 11 Jan 2023 13:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673443553;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=t4v7vVLyUfmj+yum9JMG8d8EWvnQk3QjTtB5QXcX5L4=;
	b=EPdDRGTYysF5DXKWUjk8fqCF7P2c8TnjbGCEeMOTaG5ZCZkr9KWPdhLk8JB9WXhuGsdRyJ
	ybqJO4Vf3m6IOegCTx4R4tapq/bWXhTm7QtJgCBM+pNTX0UR1e9lySXIxGJeYxxCEIOPzA
	6anN31OGUjBD4VtitMa/eVpMiTama8eYkrK/VAQZ27WYdgCgPTfz55HHNdEzc2PUuzidam
	x+gBxjmd4pk9OSNiYch4fny9hFmGJFHhzoj98MctG6yC2nbCaNdH6IKRT+Znyz3Nwn6Tdr
	5VYzRVDNCcRM/wEBW8Ofl17gO4LkjAHEbp7Uy8Yw+nF68FZaSybv4eSjOjMKAw==
From: alexandre.belloni@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com,
	Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [meta-mingw] [PATCH] mpfr: upgrade to 4.2.x
Date: Wed, 11 Jan 2023 14:25:48 +0100
Message-Id: <20230111132548.742832-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Jan 2023 13:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58966

From: Alexandre Belloni <alexandre.belloni@bootlin.com>

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 recipes-support/mpfr/{mpfr_4.1.%.bbappend => mpfr_4.2.%.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-support/mpfr/{mpfr_4.1.%.bbappend => mpfr_4.2.%.bbappend} (100%)

diff --git a/recipes-support/mpfr/mpfr_4.1.%.bbappend b/recipes-support/mpfr/mpfr_4.2.%.bbappend
similarity index 100%
rename from recipes-support/mpfr/mpfr_4.1.%.bbappend
rename to recipes-support/mpfr/mpfr_4.2.%.bbappend
-- 
2.39.0


