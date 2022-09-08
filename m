Return-Path: <yoctoproject.org@herrie.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA087ECAAD5
	for <webhook@archiver.kernel.org>; Thu,  8 Sep 2022 08:28:09 +0000 (UTC)
Received: from outbound4.mail.transip.nl (outbound4.mail.transip.nl
 [136.144.136.2])
 by mx.groups.io with SMTP id smtpd.web09.2925.1662625680109669120
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Sep 2022 01:28:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@herrie.org header.s=transip-a header.b=ZyVzpvOi;
 spf=pass (domain: herrie.org, ip: 136.144.136.2, mailfrom: me@herrie.org)
Received: from submission5.mail.transip.nl (unknown [10.103.8.156])
	by outbound4.mail.transip.nl (Postfix) with ESMTP id 4MNXLj23BDztdbn;
	Thu,  8 Sep 2022 10:27:57 +0200 (CEST)
Received: from transip.email (unknown [10.100.4.34])
	by submission5.mail.transip.nl (Postfix) with ESMTPA id 4MNXLh0LqNz7tB6;
	Thu,  8 Sep 2022 10:27:55 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 08 Sep 2022 10:27:55 +0200
From: Herman van Hazendonk <me@herrie.org>
To: yocto@lists.yoctoproject.org, yocto-advocacy@lists.yoctoproject.org
Subject: Re: [yocto] [Yocto-Advocacy] Help needed: list of products built with
 OE / Yocto
Reply-To: yoctoproject.org@herrie.org
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: 
 <47d011ca872cb9e5434b6cb352e526d1d7b05b1e.camel@linuxfoundation.org>
References: <5bf26cda-3fee-7233-c7a2-390f0bbd36e4@bootlin.com>
 <47d011ca872cb9e5434b6cb352e526d1d7b05b1e.camel@linuxfoundation.org>
Message-ID: <1eb11fe866a7f67b22ab5d675c5a3b5c@herrie.org>
X-Sender: me@herrie.org
User-Agent: Webmail
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission5.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1662625676; h=from:reply-to:subject:to:
 references:in-reply-to:date:mime-version:content-type;
 bh=i1qMoxgC/+1ZxY8Thi/l/rxVuoVkhWT7PouBGEXnyYM=;
 b=ZyVzpvOi01K+mBy6hFuB+uOrn9iN5V0z2JhmXHNMDgeH3mTxduDXvZVnAJkQvNJnLz3gMg
 /Q6fOEKqO8eXJiE5z4Y7mUNxrYLf/6ogQB1zAcm8YWVvkHil8jf26h+c/u9hRim6vYc6KA
 0eJiYh6jsC898jEMyqDnBm4RaKIgpaOGi/g/ZY6JenNoXIXE6HTE4uWg9G0tTFbO1Xq4tQ
 fMdqwm7M6rQpZpnHFjKXpuqrrv7BCp83yUwPFrTpGRd6nWAm8bLlevaqZIzaGLaYoW3XK3
 YUysVJouppB2UTG3fnn+nsZjB7XLUEerFI06ZTtD2wnEbfAVLu105yM1c7tFQQ==
X-Report-Abuse-To: abuse@transip.nl
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Sep 2022 08:28:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58006

All,

I've updated the list a bit. I've added AsteroidOS, LuneOS and webOS OSE 
and their respective sites.

Best regards,
Herman

On 2022-09-07 12:05, Richard Purdie wrote:
> On Mon, 2022-09-05 at 18:51 +0200, Michael Opdenacker via
> lists.yoctoproject.org wrote:
>> Greetings
>> 
>> If you are using the Yocto Project to build your products, and are
>> allowed to mention it, one way to contribute to the project is to add
>> such products to the list that we keep on our Wiki:
>> https://wiki.yoctoproject.org/wiki/Project_Users#Products_that_use_the_Yocto_Project
> 
> Just to add that we also list projects and companies using the project
> as well as products.
> 
> Being able to show where the project is being used and who by does help
> the project "prove" it is used, the scale of the usage and why it
> should be maintained and developed.
> 
> Cheers,
> 
> Richard
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58000): 
> https://lists.yoctoproject.org/g/yocto/message/58000
> Mute This Topic: https://lists.yoctoproject.org/mt/93521487/3618673
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [yoctoproject.org@herrie.org]
> -=-=-=-=-=-=-=-=-=-=-=-

