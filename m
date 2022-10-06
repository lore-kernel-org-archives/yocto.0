Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA47C433F5
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 16:36:31 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net
 [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web09.1280.1665074184792514878
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 09:36:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=X6eBJjna;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 77E6FFF807;
	Thu,  6 Oct 2022 16:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1665074182;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OWe27C1AsG+lQfwYUeJThb+fbGuex0xttOEJDq59ewc=;
	b=X6eBJjnaIx1Pa6cYE3q0Y2yNgT7z/HMG+KYaEJAzrvO2bcbK9psl+wGcEvE/Wov1vx7j7x
	OpixQY4U/xE7GZ45G1dwx8QGGNbqFdPGOujJ1xxAX8f9GyPut2R/GSbSXuWC7M5V1LFR/j
	yWS+EuwoYNkBvF5ngH1bKpuvwY3R02BDptlSAMDHU48A3o7GAk1uaAkP9jL4IZj2kqfNV0
	VxkzUCliAVX301PSYiV/4c6JWi9dBNJ4rpx/2tETESBJpkJBrmnSed34TeI7HrPfEJ7IGp
	UkJRT69PY3vPvEX0tU8rUoDrB177TBLDZKYXWIuvO0/7ywU82MrrbT+Kzy0hmA==
Message-ID: <931a9536-5f23-f48c-0831-33d2add6406e@bootlin.com>
Date: Thu, 6 Oct 2022 18:36:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2)
 #GPLv3
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>, poberauer@yahoo.co.uk
References: <dh6q.1665062865199915963.1z69@lists.yoctoproject.org>
 <CANNYZj-nXUaw9PVQ-3E1xAxLxJp6bwjw6v3UvhEUxFNMz0084Q@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: 
 <CANNYZj-nXUaw9PVQ-3E1xAxLxJp6bwjw6v3UvhEUxFNMz0084Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 16:36:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58278

Hi Peter,

On 06.10.22 15:46, Alexander Kanavin wrote:
> On Thu, 6 Oct 2022 at 15:27, Peter via lists.yoctoproject.org
> <poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
>> "It is over. There are no excuses left if you are still using meta-gplv2."
>> -- https://twitter.com/yoctoproject/status/1552209990148145153
>> "There are other ways of removing GPLv3 components from modern OE/YP builds and we'd like to focus people's attention onto those."
>> -- https://git.yoctoproject.org/meta-gplv2/commit/?id=43bf0e8d5985945d19d01f94bfbbda420c4435f3
>>
>> Where can we find more details re the best ways of removing GPLv3 components please?
>>
>> Or, starting with a clean slate and adding back only what we actually need (for i.MX 8X and Qt Commercial).
>>
>> Have tried searching, but going round in circles, as all the results so far still point back to meta-gplv2.
>> Including the "How do I":
>> "If you use INCOMPATIBLE_LICENSE to exclude GPLv3 or set PREFERRED_VERSION to substitute a GPLv2 version of a GPLv3 recipe, then you must add the meta-gplv2 layer to your configuration."
>> -- https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_build_an_image_without_GPLv3_Licensed_packages_.3F
>>
>> The context is that some of our customers require Secure Boot and Chain of Trust (in an embedded environment).
>> If we keep GPLv3 components, then we need to provide "any methods, procedures, authorization keys, or other information required to install and execute modified versions of a covered work".
> The suggested way nowadays is to set INCOMPATIBLE_LICENSE only for the
> image that is actually going to ship in a product, then work your way
> throgh specific gpl3 dependencies that get pulled in, and eliminate
> them one by one - precisely how is impossible to tell beforehands, but
> typical problems are bash scripts (which you need to package
> separately and not include into the product, or rewrite in posix shell
> and use #!/bin/sh), or optional dependencies on things like readline,
> which can be switched off via PACKAGECONFIG tweaks.

Thanks for raising this question, and thanks to Alex for providing 
guidelines.

I agree that the current wiki and documentation don't provide enough 
information on excluding GPLv3 packages. I'll propose an update to the 
manuals. Stay tuned on the docs mailing lists...

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


