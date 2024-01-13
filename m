Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA5E6C4707C
	for <webhook@archiver.kernel.org>; Sat, 13 Jan 2024 07:10:18 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.15125.1705129812417064755
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jan 2024 23:10:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=m8al6fRr;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4C411240006;
	Sat, 13 Jan 2024 07:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1705129810;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/M3VDOM/IqmavYn/PuhYLDS8lElJJeFsZ8K4oeA4jcY=;
	b=m8al6fRryTPtMZCfUHkwPvHLdvufAK/nHhAxyKPusMHKUBV2Lo43ubRY34xgnsOwNJCwi7
	GpnQ867dexrnRUTYoWOOt09kj+cvQlJ8UCF4R7QJbpI8TCue2yCTf4UcpiHTmg6/ph79Jw
	dW2y5wh6AYPQpC0GyJpbQrRMA9hh/ouh1VaZHIQF90IsREIU2h09L+MVEZS03p2u3UoRVC
	F91G1+ViKUVdZZQeGmoQRLjSlVQqEPToPLo0PEFE/AzR5RqiL9H94Kd7PJHKgRs/KWLBuH
	jBCI8DGyWBeT5QYKypJgYlA4ACHmzfHp5KmFe+QZEytdlyXO1U5HzAWl56LOtA==
Message-ID: <a603da01-1b12-406a-8e22-99142f3b1ed1@bootlin.com>
Date: Sat, 13 Jan 2024 08:10:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: [yocto] Binary feeds: how are we supposed to use "dnf upgrade"?
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <17A99EA128CD2305.31870@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <17A99EA128CD2305.31870@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jan 2024 07:10:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62139


On 12.01.24 at 15:05, Michael Opdenacker via lists.yoctoproject.org wrote:
> Greetings,
>
> I'm making binary package update tests on Nanbield.
> No problem with an ipk package feed. If I remember correctly:
>
> > opkg update
> > opkg upgrade
>
> I'm running this from a Nanbield 4.3.1 image, using feeds generated on 
> another machine with the tip of the "nanbield" branch.
>
> If I switch to
> PACKAGE_CLASSES = "package_rpm"
>
> If can't seem to be able to do the same thing:
>
> > dnf upgrade
>
> OE Remote Repo:8000 0.0  B/s |   0  B     00:00
>
> Error: Failed to download metadata for repo 'oe-remote-repo8000': 
> Cannot download repomd.xml: Empty mirrorlist and no basepath specified!
>
> Ignoring repositories: oe-remote-repo8000
>
> Dependencies resolved.
>
> Nothing to do.
>
> Complete!
>
>
> My http server doesn't even receive any request!
>
> Here are the contents of /etc/yum.repos.d/oe-remote-repo8000.repo:
>
> [oe-remote-repo8000]
> name=OE Remote Repo:8000
> baseurl=192.168.1.34:8000
> gpgcheck=0


My bad, it turns out I was missing "http://" in PACKAGE_FEED_URIS
Anyway, our current tests don't test updates through package feeds (I'm working on this)

Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


