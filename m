Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54181C6FD1D
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 09:21:09 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.68201.1679563261558967746
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Mar 2023 02:21:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kLhbaBaX;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 362ED40010;
	Thu, 23 Mar 2023 09:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679563259;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k/6EfxunAz8YilwW5RZvGqyyK4pV+Mx41C/8rrtFTFI=;
	b=kLhbaBaXLpi0cBer4OEDO73krso80jInhqyojBpuDd3uIx8+jv1uYrOnaAsCtkIDH/I8a7
	zWQRiWcvDwUALyso1QKaUMh4OOl3W1mt0UKs+IZ4J6fgOgunTWeAKlX7kmBd+OOkywB9wQ
	zjmkZrJiqr7PF7/esZ3EBKrUEotA0hqAqINPNgayZZkC1VdK8qWErJhNfty1zNmDqd1izW
	2C/jZqJrGJ58XczHN5ITps0XOfAbGutEjP5zP6wjdfEkWedNKalxWY84LaeTTMtR0w4iYh
	BDIYr9P569OCkgCOL/QZdL0yiXg/BxWLBKQf8+zFGFk8RDam5TPMgqhU0rK4DA==
From: alexis.lothore@bootlin.com
To: yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com,
	thomas.petazzoni@bootlin.com
Subject: [yocto-autobuilder-helper][PATCH 0/3] fix regression reporting for nightly build
Date: Thu, 23 Mar 2023 10:20:54 +0100
Message-Id: <20230323092057.17918-1-alexis.lothore@bootlin.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 09:21:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59498

From: Alexis Lothoré <alexis.lothore@bootlin.com>

It has been observed that regression reporting is currently failing on nightly
builds ([1]). Those builds parameters are currently not properly managed by the
base and target computation for regression reports. Add default behaviour to
generate report against last tag

[1] https://lore.kernel.org/yocto/20230313145145.2574842-1-alexis.lothore@bootlin.com/T/#m4c1e0a8124c1bcfb74a80c4ef64176f42fee4e4e

Alexis Lothoré (3):
  scripts/test_utils: test master nightly build case
  scripts/test_send_qa_email.py: allow tests with non static results
  scripts/send_qa_email: return previous tag when running a non-release
    master build

 scripts/send_qa_email.py      |  3 +++
 scripts/test_send_qa_email.py | 15 +++++++++++++--
 scripts/test_utils.py         | 10 ++++++++++
 3 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.40.0


