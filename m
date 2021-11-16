Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBFDC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 18:47:37 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.220.1637088450297807503
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Nov 2021 10:47:30 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 6D4E31BF207;
	Tue, 16 Nov 2021 18:47:28 +0000 (UTC)
Subject: Re: [yocto] Yocto Project Status WW46`21
To: Stephen Jolley <sjolley.yp.pm@gmail.com>, yocto@lists.yoctoproject.org
References: <10e401d7db01$331874d0$99495e70$@gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <3d0f440f-3721-4b9e-e2af-c018783b183d@bootlin.com>
Date: Tue, 16 Nov 2021 19:47:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <10e401d7db01$331874d0$99495e70$@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 18:47:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55352

Hi Stephen

Thanks for the report! Sorry, I couldn't attend the meeting.

On 11/16/21 4:47 PM, Stephen Jolley wrote:
>
>   * A request was made to continue hardknott support in the community
>     and this was agreed until Feb/March next year but will not overlap
>     the LTS.
>
Could I update this on https://wiki.yoctoproject.org/wiki/Releases?
Cheers
Michael.
-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


