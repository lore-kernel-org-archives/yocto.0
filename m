Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8106FC05027
	for <webhook@archiver.kernel.org>; Mon, 23 Jan 2023 12:33:39 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.41265.1674477216845139574
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Jan 2023 04:33:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ERWyJZQr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 973666000E;
	Mon, 23 Jan 2023 12:33:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674477215;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Sp/r4rm4HDvN5ybzdPsjJMWW217BZFASZvj4gSZ4Nw8=;
	b=ERWyJZQrR2s3JSIa+E2k0NwsZ4TRzpgY2qEmSZjm7k83a6sbLf0DXnEYprLGrNn83SRE1f
	KxkUMlOVOOWqtN741H0sv5VoQllj+TYKd28h6ESxRw06CRD2260sBfUDhJBPclajqwf+Q3
	HLaEYQbrKj9DWmIOEnFUrtrzLYit2UrfpvQ31uUi+41eQrKKpv/mP0QHXyY29X9/kf/LIT
	/Vgpm5PF4g8A1zEVbXQUzE9wCKyX4bFMpvOk0cS6urqoWR7MVaPtbu18na1zb9kTVALVF5
	tZY9QKCBxKPd0e+EmcYIccWM7A04Z/SuoxedEvFejn52r3V2mhbui8c+aOBewg==
From: =?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com,
	=?UTF-8?q?Alexis=20Lothor=C3=A9?= <alexis.lothore@bootlin.com>
Subject: [autobuilder][PATCH v2 0/1] rename send-qa-email in builder
Date: Mon, 23 Jan 2023 13:33:42 +0100
Message-Id: <20230123123343.37841-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Jan 2023 12:33:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59035

This patch is tightly coupled to the patch serie in yocto-autobuilder-helper
which aims to improve regression reporting. This serie bring some
renaming/reorganization in send-qa-email to allow unit testing it, so the script
path used in autobuilder needs to be renamed.

This patch is sent alone/appart from the main serie on yocto-autobuilder-helper
since it is not the same codebase, but please let me know if there is another
expected procedure for this kind of "multiple repositories" submission

Alexis Lothoré (1):
  builders: update send-qa-email name

 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.39.0


