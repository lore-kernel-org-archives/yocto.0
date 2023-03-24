Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D8CC6FD20
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 09:00:35 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.96210.1679648429280823209
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 02:00:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pcApJBh5;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 73B551BF215;
	Fri, 24 Mar 2023 09:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679648426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=BfAM0CdDtDVKLn3jxt+a25SHjOpP+ElgYDY+UNlcxPA=;
	b=pcApJBh57gaucS8hrcHxHLtwt4tb/oEFUeq9X6tcF3OT32f+GilfXWVgppH1EhaN6udai4
	vqoh+arMMQwQmn11FFbZllkHperwHFi6wdYbVKQ6w1UYbkiilDBzhQCg/5k1DjqsUcJbui
	qY/U836FtQLIpFX0s0gz6NQQh4eFpiav9bdfOcnuImNFAB9nHa8DA6waPz4Y5PYRdavz2q
	dCU3dD+uy4dq+dKbkkUevzBldr1gYLscXWJoTwbwtTQ9xZe7kNk+BImNjY53OlUNKVsPvj
	nCOaoUCuQh3tkqRWlMaDJ7jNasx3eOzOLZBsYp/jhDRsXSLWq11klXdMXqSy6A==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 0/2] expose regression reports on web page
Date: Fri, 24 Mar 2023 10:00:23 +0100
Message-Id: <20230324090025.26366-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 09:00:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59506

From: Alexis Lothoré <alexis.lothore@bootlin.com>

Regression reports are currently stored alongside test reports and other
artifacts on the autobuilder artifacts web page. This small update propose to
add a link to the regression report (when available) on main non-release page
([1]) instead of having to manually navigate the directories to find it

[1] https://autobuilder.yocto.io/pub/non-release/

Alexis Lothoré (2):
  scripts/generate-testresult-index.py: fix typo in template var name
  scripts/generate-testresult-index.py: expose regression reports on web
    page

 scripts/generate-testresult-index.py | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

-- 
2.40.0


