Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4966AEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 08:35:52 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.3262.1687163743886830075
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 01:35:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=E9SFKpsJ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1687163741;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=bU4OGtv/2EgpS/e9B1r+IuAk5wQ6CO76IL0zUO8YWXQ=;
	b=E9SFKpsJ2EADBwW6dFrrlkxWwwpLanTY04e0f8OxeivT/rcUu+6mjp5JKi+1Y7zVYO9XiM
	Xd0uYthicA2VE7TolPskLOSOrG9QmfCgaoIiz6HK7MAsfX5dHPnrOOlWNGedZA0K0YqGV8
	J6GkiuKug0PWV0E0ie074TWDYvWJTCcQR71ez3gb8YsDQ1BKGL5arUsF/F5RI+82esY3ja
	SL7rpxpnZGoMEmPryKszW4Nhc8A4wzRsiOtk93JcjTDvyvcmfhKoCQ7dkvMGets/791gAb
	a9EdNBYHdvO9Gr/+Hbp5WhpIDxeD+FQuC7kgxZ3+5oNQi6ReUkkYTCU+DxH2mQ==
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 3D5DFC0012;
	Mon, 19 Jun 2023 08:35:40 +0000 (UTC)
Message-ID: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
Date: Mon, 19 Jun 2023 10:35:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: michael.opdenacker@bootlin.com
Content-Language: en-US
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Going on supporting Ubuntu 18.04?
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 08:35:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60338

Greetings,

I know that we are still testing and supporting Ubuntu 18.04, but should 
we go on doing it?

This version no longer has public updates, so unless we have a 
subscription with Canonical, we are going to be out of sync with the 
updates that Ubuntu 18.04 subscribers get.

What do you think?
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


