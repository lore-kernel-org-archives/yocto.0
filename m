Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13077C433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 10:02:44 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.6795.1642068162885546510
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 02:02:43 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 0F3F5E0376;
	Thu, 13 Jan 2022 10:02:39 +0000 (UTC)
Cc: yocto <yocto@lists.yoctoproject.org>, Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto] Reproducible build website broken (CORS setting on
 git.yoctoproject.org?)
To: Michael Halstead <mhalstead@linuxfoundation.org>
References: 
 <CAJdd5GYy58np+zpzGQg=KEcNv2OTHzu0uXjxK2J7v1LKbTnQVw@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <b97aa04c-29b0-444c-a02b-844a9e71e5d8@bootlin.com>
Date: Thu, 13 Jan 2022 11:02:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: 
 <CAJdd5GYy58np+zpzGQg=KEcNv2OTHzu0uXjxK2J7v1LKbTnQVw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 10:02:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55834


On 1/11/22 8:48 PM, Joshua Watt wrote:
> Michael,
>
> I noticed that the
> https://www.yoctoproject.org/reproducible-build-results/ website went
> down (it always shows "Error fetching test results"). I did a little
> debugging and I think that the CORS setting on git.yoctoproject.org is
> not allowing www.yoctoproject.org to request the data anymore. I
> thought we had fixed this at one point in the past and maybe it got
> lost somewhere along the way?
>
> If that's something we can fix, that would be great, otherwise we
> might need to look into another solution for fetching the
> reproducibility data.


Still broken :(

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


