Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5F9C433F5
	for <webhook@archiver.kernel.org>; Tue, 18 Jan 2022 17:18:34 +0000 (UTC)
Received: from relay12.mail.gandi.net (relay12.mail.gandi.net
 [217.70.178.232])
 by mx.groups.io with SMTP id smtpd.web09.15805.1642526312120110826
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jan 2022 09:18:33 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: bootlin.com, ip: 217.70.178.232, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay12.mail.gandi.net (Postfix) with ESMTPSA id E5DEF200003;
	Tue, 18 Jan 2022 17:18:29 +0000 (UTC)
Subject: Re: [yocto] Advertise lore.kernel.org archives on website?
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <f06c5032-edd5-e0da-512d-e8ccb0d1eca9@bootlin.com>
 <fb0ca4c357451549e87969b53a383ec99eaf8623.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
Message-ID: <f7515ce3-ecc2-8930-763e-04dc03b6f1ed@bootlin.com>
Date: Tue, 18 Jan 2022 18:18:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: 
 <fb0ca4c357451549e87969b53a383ec99eaf8623.camel@linuxfoundation.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jan 2022 17:18:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55903


On 1/18/22 12:04 PM, Richard Purdie wrote:
> On Tue, 2022-01-18 at 10:44 +0100, Michael Opdenacker wrote:
>> Greetings,
>>
>> I see more and more people using links to the lore.kernel.org archives,
>> for example the ones for this list: https://lore.kernel.org/yocto/
>>
>> These look more convenient to use than the ones on
>> https://lists.yoctoproject.org/.
>>
>> So what about advertising such archives on
>> https://www.yoctoproject.org/community/mailing-lists/, at least for the
>> ones which have archives on lore.kernel.org? I was thinking about just
>> adding an "(archives)" or "(archives / public mailbox) link at the end
>> of the description for each list.
>>
>> What do you think?
> Sounds fine to me.


Thanks for the feedback.
Done on https://www.yoctoproject.org/community/mailing-lists/

I added lore.kernel.org links when applicable, and also added the
openembedded-devel mailing list which was missing.
I could shorten "Archives / Public Inbox" by just "Public Inbox" if you
think it makes more sense.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


