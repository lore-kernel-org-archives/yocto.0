Return-Path: <yoctoproject.org@herrie.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC5D5C61CE8
	for <webhook@archiver.kernel.org>; Thu, 12 Jun 2025 17:35:26 +0000 (UTC)
Received: from outbound4.mail.transip.nl (outbound4.mail.transip.nl [136.144.136.2])
 by mx.groups.io with SMTP id smtpd.web11.473.1749749719670255564
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Jun 2025 10:35:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@herrie.org header.s=transip-a header.b=Cf59Z3Rw;
 spf=pass (domain: herrie.org, ip: 136.144.136.2, mailfrom: me@herrie.org)
Received: from submission14.mail.transip.nl (unknown [10.103.8.165])
	by outbound4.mail.transip.nl (Postfix) with ESMTP id 4bJ8n033w3z7w73;
	Thu, 12 Jun 2025 19:35:16 +0200 (CEST)
Received: from transip.email (unknown [10.103.8.119])
	by submission14.mail.transip.nl (Postfix) with ESMTPA id 4bJ8mz1bJrz2mZN1X;
	Thu, 12 Jun 2025 19:35:15 +0200 (CEST)
MIME-Version: 1.0
Date: Thu, 12 Jun 2025 19:35:15 +0200
From: Herman van Hazendonk <me@herrie.org>
To: yocto@lists.yoctoproject.org, quentin.schulz@cherry.de
Cc: mauro@faresoftware.it, Marco Cavallini <koansoftware@gmail.com>
Subject: Re: [yocto] How to manage linux-firmware recipe
Reply-To: yoctoproject.org@herrie.org
Mail-Reply-To: yoctoproject.org@herrie.org
In-Reply-To: <e4d934ed-4041-4648-ac29-95b37defd5da@cherry.de>
References: <e8b3ebf1-1636-4edb-af41-421464ff71b2@faresoftware.it>
 <19279.1749711955494286548@lists.yoctoproject.org>
 <5f9b2079-b6a2-4f8c-aa26-1827ed4aa252@faresoftware.it>
 <e4d934ed-4041-4648-ac29-95b37defd5da@cherry.de>
User-Agent: Webmail
Message-ID: <47b74f21aa5ab44b16d5534ff1901396@herrie.org>
X-Sender: me@herrie.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: ClueGetter at submission14.mail.transip.nl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=transip-a; d=herrie.org; t=1749749715; h=from:reply-to:subject:to:
 cc:references:in-reply-to:date:mime-version:content-type;
 bh=tAoRwBvSzWfK0hULSVfI7ZLu+0P2zQbzG2ncuh05caE=;
 b=Cf59Z3RwlcdxaO9Cj8PFlYSSc7jUG9eVNU9xYd70qMrn8A9m02JExhxCQ7XKmHctkENqr7
 NQXAWxwuRrqYu1zCgDq+GTdGhTNJeKlFccw4chXHFqFMAcdzmwuTgL3sokv/pO6BZ4YJeV
 SctXlbIX2qw/2X6C7W9UOxojwjmJ9l95kqh1i/Y9FPVtvHsftyHApjvgcoj1Cqqvb+IG5K
 WKZCsC0uombsmMj9KplE6Oct6X4ACz+Jy3Q4mm5R+O2w8sXgqLZb5ROpHpwClA0+pn6Pkd
 HpKZlFDu6KAS/fxiGxuG0YrZqoiOOktNxDsWusQ2X2ARB784UM8trABKONkDeQ==
X-Report-Abuse-To: abuse@transip.nl
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 Jun 2025 17:35:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65510

Hi Mauro/Marci,

For our Pine64 devices we use something like this:

https://github.com/webOS-ports/meta-pine64-luneos/blob/scarthgap/recipes-kernel/linux/linux-firmware-pine64_1.0.bb#L20 
where we use part of linux-firmware and some custom firmware binaries.

But as always there are multiple ways to achieve what you want.

Best regards,
Herman

On 2025-06-12 18:51, Quentin Schulz via lists.yoctoproject.org wrote:
> Hi Mauro,
> 
> On 6/12/25 5:39 PM, Mauro Ziliani via lists.yoctoproject.org wrote:
>> [You don't often get email from 
>> mauro=faresoftware.it@lists.yoctoproject.org. Learn why this is 
>> important at https://aka.ms/LearnAboutSenderIdentification ]
>> 
>> Hi Marco.
>> 
>> 
>> The "master" recipe comes from poky
>> 
>> ./poky/meta/recipes-kernel/linux-firmware/linux-firmware_20240909.bb
>> 
>> 
>> In my layer I have a linux-firmware_%.bbappend, where I tried to 
>> change
>> the content of ON_GENERIC_LICENSE, to remove some firmware.
>> 
>> ./meta-mz/recipes-kernel/linux-firmware/linux-firmware_%.bbappend
>> 
> 
> Just install the package(s) you need instead of linux-firmware, e.g. 
> linux-firmware-iwlwifi-7260. If you know which files you need, you can 
> use
> 
> oe-pkgdata-util find-path '*/your-file.bin'
> 
> and it'll tell you in which package it is.
> 
> Cheers,
> Quentin
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65509): 
> https://lists.yoctoproject.org/g/yocto/message/65509
> Mute This Topic: https://lists.yoctoproject.org/mt/113594047/3618673
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub 
> [yoctoproject.org@herrie.org]
> -=-=-=-=-=-=-=-=-=-=-=-

