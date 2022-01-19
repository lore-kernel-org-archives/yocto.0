Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3497C433F5
	for <webhook@archiver.kernel.org>; Wed, 19 Jan 2022 12:16:16 +0000 (UTC)
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net
 [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web12.5350.1642594575515456449
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jan 2022 04:16:16 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.178.232, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay12.mail.gandi.net (Postfix) with ESMTPSA id F0863200003
	for <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 12:16:12 +0000 (UTC)
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Invalid checksums for SRC_URI ignored?
Organization: Bootlin
Message-ID: <f4fc69b8-7ead-d9c5-a52b-32bdf77b4143@bootlin.com>
Date: Wed, 19 Jan 2022 13:16:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jan 2022 12:16:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55909

Greetings,

I reused a simple "hello" recipe and added a non-matching checksum to it:

...
SRC_URI = "file://helloworld.c"
SRC_URI[md5sum] = "34f0efd76b4f18888888888833cdd129"
...

The rest of the recipe comes from
https://git.openembedded.org/openembedded-core/tree/meta-skeleton/recipes-skeleton/hello-single.

Why doesn't Bitbake stop, reporting that the checksum doesn't match the
source file?
Anyway, why does the recipe build without a checksum? Shouldn't
checksums be mandatory?

I'm using the "master" version of Poky.

Thanks in advance
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


