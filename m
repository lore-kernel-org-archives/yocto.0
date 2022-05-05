Return-Path: <jchludzinski@vivaldi.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9842C433EF
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 06:39:54 +0000 (UTC)
Received: from smtp.vivaldi.net (smtp.vivaldi.net [31.209.137.12])
 by mx.groups.io with SMTP id smtpd.web11.7838.1651732791103583694
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 23:39:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivaldi.net header.s=default header.b=E1wLIDCb;
 spf=pass (domain: vivaldi.net, ip: 31.209.137.12,
 mailfrom: jchludzinski@vivaldi.net)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id EE39ABD068;
	Thu,  5 May 2022 06:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net EE39ABD068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651732788;
	bh=dIsB+xl7AW1vHeI00OaEECU+hkKj4fe29FAq/1E0PSk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=E1wLIDCb9Mo349n/nH7OWDYMls+sk4JVGOE3z753KCCnBqdXLlZA/Y0Lu0/RtsmXd
	 4AL64Pag+qUMjsFa5/R6Cub0MUJ5FVAD+Lt9BH+WG0fU4k3vzAj8JQ8hrIkBqTQBfO
	 TdMJ9z2UVa+7VMPlr3DecILePVMkSh9bxNswDJLXT2ACfvMZ6sMAfRF2TYyADK1cYq
	 f6z8rb4XDXtq4BYvdpYdmyfhShvR7nybq0xJiApIdahrAwjlFpoj2CMW9RPU/JW5H2
	 M2+83vrPK/Qp3H8604NCbGgbZLPbm4A5ImmqT7vRXAt8z5WmFgBvrFI2mOorsQFBEM
	 a2aHe3H3JwL2Q==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo.viv.dc01 [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6PZYv6jPzAa; Thu,  5 May 2022 06:39:45 +0000 (UTC)
Date: Thu, 05 May 2022 02:39:44 -0400
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp.vivaldi.net 2EB66BD027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net;
	s=default; t=1651732785;
	bh=dIsB+xl7AW1vHeI00OaEECU+hkKj4fe29FAq/1E0PSk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=C802pKdNSthlHmjzWnJAjn0VTghXkKgZFxlSjdW23KjrQBW+giJ77y8UZ1fldBMb0
	 2jQ8UeiKVhQKzpY409u9NGORLG0jz2A+4D5WOG95S66bQdBtJYaVBLLdoLVd6gi/Qx
	 rZb1NGBhUNeqJeY8kLK9WiBoEbgHeLp5N0j+lIWtZWQQlJAL1hf3Npq+3RpIiyGkyH
	 q6iZ99bThFzNq7fKysiqfIztxuYt/vFx7IdOOvBZtXbjywgit4wBC1xfyrhiB4IggU
	 7AQWnxBoRQLlPY87SWyBRo19XDNCKwQsRk57cR0GukA+DCASGbb90bLB1asArGaipg
	 6kDIslqEDRBVQ==
From: jchludzinski <jchludzinski@vivaldi.net>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] OE Linux & board-support-package
In-Reply-To: 
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
 <CAGAf8LwAdtJAyoBTtX40s4iyCcuuA4xrYw9VRTU9VYNk0Yh+hQ@mail.gmail.com>
Message-ID: <7b2fce371a4d490f7691a803823c7c6f@vivaldi.net>
X-Sender: jchludzinski@vivaldi.net
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 06:39:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56999

A board-support-package (BSP) is software that provides a layer of 
abstraction from the physical board specifics for the host embedded OS 
(e.g., VXworks).

I believe the device tree files (*.dts, *dtsi) in OE Linux provide the 
same function. It allows to OE kernel code to be independent of device 
specifics.



On 2022-05-05 01:54, Zoran Stojsavljevic wrote:
> Hello J,
> 
> Please, could you be more specific?
> 
> Thank you,
> Zee
> _______
> 
> 
> On Thu, May 5, 2022 at 5:42 AM jchludzinski via lists.yoctoproject.org
> <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>> 
>> OE Linux uses device tree files (*.dts and *.dtsi files), so is there
>> any need for a board-support-package?
>> 
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#56996): 
>> https://lists.yoctoproject.org/g/yocto/message/56996
>> Mute This Topic: https://lists.yoctoproject.org/mt/90904726/3618681
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
>> [zoran.stojsavljevic@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>> 

