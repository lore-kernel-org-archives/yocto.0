Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70DF8CD3424
	for <webhook@archiver.kernel.org>; Sun,  3 May 2026 20:40:09 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.1902.1777840807404239272
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 May 2026 13:40:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: key syntax error: missing public key data" header.i=@rootcommit.com header.s=dkim header.b=mvrD6lDW;
 spf=pass (domain: rootcommit.com, ip: 185.246.85.4, mailfrom: michael.opdenacker@rootcommit.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D198F4E42BB0
	for <yocto@lists.yoctoproject.org>; Sun,  3 May 2026 20:40:04 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 98E97602AC
	for <yocto@lists.yoctoproject.org>; Sun,  3 May 2026 20:40:04 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D0BDE11AD1BC4;
	Sun,  3 May 2026 22:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=dkim; t=1777840804;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language;
	bh=v4/ebuHDqix0OVwFcLPOm4tHWAtSP6MGgBm+4H1vOqc=;
	b=mvrD6lDWEvdkLnesmceg9+xD/1MM7DUS02EruQuiBdgesPloM0EV5C0FNgWfwjeCKHGq2y
	K4tvrfNGHI1lHaWlvdvAQ+qSsr0Bt60KJBvkI8c6zlHMCxahBqD6t4O26I742lWeSzTZZ+
	Y0Vee/FDpEQkAGnAVKexkhk2w9SrfeUcAx4O/PgE3st6NsAUe0FI1xkNTUSA8wjR7ZVtEL
	ti/gwH3tE6iQ0xlYLL7kEYA/eqwNJwpmrOFY0MKAww3SVVAZe7/Z1759QOmLZemrsXU0AW
	yq4AUuiA0C5O2DiKcEwg773Ed7pH4GPml8tUHz6GJADzD0/N8DQ5O6ntrFNosg==
Message-ID: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
Date: Sun, 3 May 2026 22:40:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Subject: Simple solution to create a non-root partition image?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 May 2026 20:40:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66467

Greetings,

For an ongoing project with a read-only root filesystem, I'd like to 
create an image for a non-root partition.

To give you some context, this partition would contain data and scripts 
to be used at first boot to do per device provisioning work. Some of 
these would be removed after provisioning, as they could tip attackers 
about how secrets are stored if they get their hands on devices that 
haven't been provisioned yet. Hence, these cannot be in the read-only 
root filesystem.

To create such an image, I tried to create a new image recipe inheriting 
the "image" class, and then install some packages into the image with a 
"local" IMAGE_INSTALL list.

This seems it could work, but I'm struggling with removing dependencies 
(bootloader, kernel, etc) that are only relevant for a root filesystem 
image.

Would there be a simpler way to create a non root partition image?

Thanks in advance
Cheers
Michael.


-- 
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


