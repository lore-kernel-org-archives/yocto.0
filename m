Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45C8AC6FD18
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 17:13:10 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.2115.1680023589034767369
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Mar 2023 10:13:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=HKTjM9ze;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0B7BA2000A;
	Tue, 28 Mar 2023 17:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680023587;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=B/ff5SxKOEPovmufyr1gl/xghMqxSUi3WiBHB0U2RY0=;
	b=HKTjM9ze7E7p1CJHFI5AArFnFrkQ6D2ZPlF8cJ3Cr8iClsbhIAusn6IRaop7uaQstOPKWG
	ARpA4EE6SRKIWjxPug+iZBPL22N4eMgp4XQrxTGQ5b64iPK8mgcwKZi0ILsEy2oNf8lO5n
	PAkv9ED1NMK54SBvdwQId73xbtIlH0L/uI1VvU6Ka7XFM86LyQTOrO6Rd33cqh7Xb84t/6
	Ma3wNUSqQpWm8XzXYTRO3RtgPyEZBbBO2i58h79dbopQX70S7EvE8CSm/9uxNqcidx171j
	vpNZFz+tiLSEbC0Ckb4pUdGT9KAYL1GgU7gYNdvIRhRGMG5Z0DYMparkLB1CGw==
Message-ID: <0f565e97-9f6e-8bed-a6f5-a7033eeea702@bootlin.com>
Date: Tue, 28 Mar 2023 19:13:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing timezones in tzdata
Content-Language: en-US
To: nagarkarajay@gmail.com
References: <6Fay.1680023020146984361.rxcA@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <6Fay.1680023020146984361.rxcA@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 17:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59543

Hi Ajay,

On 28.03.23 at 19:03, nagarkarajay@gmail.com wrote:
> Hi,
> I have a imx6ul board that I am working on (SOM has been purchased 
> from a company).
> We are using Krogoth (2.1) and we need to have ntpd as a part of the 
> build. ntpd is working ok, however the tzdata that we have in 
> /usr/share/zoneinfo is missing a lot of zones (looking at it in detail 
> we realized that 30 min timezones are missing .. i.e. GMT+4:30 , +5:30 
> etc.). One hour timezones are available. i,e, GMT-3 ... etc Any 
> suggestion on where to look for or what should be the approach to fix 
> this ?
> - Ajay


Wow, Krogoth is 7 years old! Are you sure you want to develop a product 
with such an obsolete version? Your root filesystem will be full of 
unpatched vulnerabilities.
If you are sure you want to continue this way, you should try to update 
the tzdata recipe to a more recent version (see the updates to the 
recipe in the Poky git repository).

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


