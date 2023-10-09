Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7EDE95A8E
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 14:11:40 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.62461.1696860690671718254
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 07:11:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=cHZd7dUM;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id B22ED40013;
	Mon,  9 Oct 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696860688;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yXoTUg329y5fPhlGmfoBXyGVjrORDkfEV/O3EsVMH9M=;
	b=cHZd7dUM2v1eEjx8Vuf9ZHPULf+vEuKjhkI4/J+sTaG75WJvrXt+taHaDNFP5clI1Is3YW
	+jNXq2LpsizgrYqDVPYg7zVwHwrkIvTCt34fkEEdDsytI5KlTKD7RMir9qVNfJi4Np0uke
	d7J3fvww645tGnylRhCuZsRosbUhiv0X5u1AUUfwTietqN01Eb2/eegmviDYBnCOULsefH
	ZAAMPX8SUHGPwADuW4MT+IZEHr9oYZSDmPR/wMIIG9htcvz92OfqTsn1/5aw7LgyPyYoPL
	1I7kz3rEqhqQ5qTkzd037EE3SbcI7PfPlgGnJqKPhqqdzzBTuE85oFr5jzicAA==
Message-ID: <4c05da5d-9e30-4018-bef6-b40d91227157@bootlin.com>
Date: Mon, 9 Oct 2023 16:11:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] continuous security updates for the Linux system
Content-Language: en-US
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
References: <CAEt6NwrNMDodSnjYnYd==0raYMnrU+bVb6aTz+pe9vK6EhWP-Q@mail.gmail.com>
 <12652.1696857725620212439@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <12652.1696857725620212439@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 14:11:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61288

Hi Hassan

On 09.10.23 at 15:22, MOHAMMED HASSAN wrote:
> On Mon, Oct 9, 2023 at 06:12 AM, Josef Holzmayr wrote:
>
>     Please see https://wiki.yoctoproject.org/wiki/System_Update
>
> Thanks for your reply. I am aware of the system_updates feature though 
> still yet to implement. Is it possible to update the yocto version (i 
> use dunfell) to the latest one, to update the linux version(mine is 
> 5.4.180) to the latest and to update the tools to the latest using 
> these features. Actually i have no clarity with this so I am asking.


Which version of Yocto are you using? If you have one that is still 
supported (like Kirkstone or Dunfell), I'd recommend to stick to these 
and just rebuild with the latest release update. This way you have the 
latest vulnerability fixes supported by the Yocto Project. Once a new 
image is generated, you can deploy it using one of the tools Josef 
mentioned.

Moving to the latest version of Yocto will represent more work, all the 
more as the latest one should be replaced this month.

As far as the Linux kernel is concerned, I'd rather work with a stable 
LTS kernel (https://kernel.org/category/releases.html), as I guess the 
Yocto Project releases can't match the stable kernels in terms of 
vulnerability fixes and how quickly they are deployed. That's my own 
opinion though.

I hope this helps
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


