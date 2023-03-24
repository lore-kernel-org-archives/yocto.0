Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F19C6FD1C
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 10:24:45 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.97407.1679653476434936247
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 03:24:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=UyXKQ+O5;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AF37E1BF20A;
	Fri, 24 Mar 2023 10:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679653474;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ilHmeIhdWmREndPhhYyGBDp9u50/uegFYhCPhbrdimQ=;
	b=UyXKQ+O5+3kaJNwQVkCzpC14A90iqNT7Sb5M8U3f26usdkYtCf1q0K34Zokd1OFXfQ4Jxs
	rWj4CtRDcpZvVjQW3WkX1y5uwalMAyqmXiI4bK/vDlh0tG/N6Nj+YbMHbbS+uitpYeY/hd
	6AofJ4i5kLOAdwTykY6jxbXVkLP7cssI/2wPETtvVL6t/jV5PIBw6kNxBr1vywVxljrEon
	TIZrxYjz1PTOg6k2Db/qSnBmXgnchBRp7DhsV/aEFNgzkYSB09mT7HPqQ8GXF7meFu6izz
	Ekp/fpN0bnZUArZFAyzCj/slDXrPPUVFnrt18zVewEzaZ9iWKUggmVUPE5RsYQ==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH v2 0/2] expose regression reports on web page
Date: Fri, 24 Mar 2023 11:24:05 +0100
Message-Id: <20230324102407.35348-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 10:24:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59511

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Regression reports are currently stored alongside test reports and other
artifacts on the autobuilder artifacts web page. This small update propose to
add a link to the regression report (when available) on main non-release page
([1]) instead of having to manually navigate the directories to find it

Changes since v1:
- put regression report link in results report column instead of dedicated column

[1] https://autobuilder.yocto.io/pub/non-release/

Alexis Lothoré (2):
  scripts/generate-testresult-index.py: fix typo in template var name
  scripts/generate-testresult-index.py: expose regression reports on web
    page

 scripts/generate-testresult-index.py | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

-- 
2.40.0


