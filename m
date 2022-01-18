Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8989C433F5
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 09:44:17 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
 [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web09.10632.1642499056327758626
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 01:44:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 4A24024000B
	for <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 09:44:14 +0000 (UTC)
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Advertise lore.kernel.org archives on website?
Organization: Bootlin
Message-ID: <f06c5032-edd5-e0da-512d-e8ccb0d1eca9@bootlin.com>
Date: Tue, 18 Jan 2022 10:44:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 09:44:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55896

Greetings,

I see more and more people using links to the lore.kernel.org archives,
for example the ones for this list: https://lore.kernel.org/yocto/

These look more convenient to use than the ones on
https://lists.yoctoproject.org/.

So what about advertising such archives on
https://www.yoctoproject.org/community/mailing-lists/, at least for the
ones which have archives on lore.kernel.org? I was thinking about just
adding an "(archives)" or "(archives / public mailbox) link at the end
of the description for each list.

What do you think?
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


