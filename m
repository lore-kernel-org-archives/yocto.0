Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16A03C54EAA
	for <webhook@archiver.kernel.org>; Fri, 27 Jan 2023 08:26:29 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.97885.1674807980077438015
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Jan 2023 00:26:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=TZVK/fpZ;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0F33D24000B;
	Fri, 27 Jan 2023 08:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1674807978;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4hcXjXRPlsc6XG3oFAI+VRYb8ssDAk83aYdVEslUzyM=;
	b=TZVK/fpZZv7V0lLZOumXeAanpM0rkyWmOtvGAyW6/VCiVdXNXhxEoye2MdJ4m+yRfBz8is
	bkKzlEIvthgQJzuxcRV36NqwTkcPmmm9e1luhuv+fm1TR28TaXhC5nyIR6i1p0JlDGSMVy
	93UmwlQzEhQJm42hBncnqwT0l91Vkh+uoJfVRazMthCz0iKuz/tN9+oEdzeGTRYwy/Nwdp
	GGCSPrqImQejX2dW7/TzSaL8jH6g8w0PXgBWF25UR5owMQaFuqTZJm55QI3qPFMMse0vqq
	gff4qm49YxcxIYWskOASOyF6rrW3IcwA9v4lLR2FBkq5OOfdTtOh5+m1BGOgmQ==
Message-ID: <c24f0f04-93d5-07db-1aa3-809a0f3e972f@bootlin.com>
Date: Fri, 27 Jan 2023 09:26:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [yocto] [autobuilder][PATCH v3 0/5] generate regression reports
 against proper releases
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
References: <20230124173017.134017-1-alexis.lothore@bootlin.com>
 <6c9f63bbb86f39e3f2a24bbecd89499006edf7f9.camel@linuxfoundation.org>
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <6c9f63bbb86f39e3f2a24bbecd89499006edf7f9.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jan 2023 08:26:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59073

On 1/26/23 23:42, Richard Purdie wrote:
> On Tue, 2023-01-24 at 18:30 +0100, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>>
> Thanks. Since I like living dangerously, I've put these on the master
> branch for the M2 release build. I wanted to see how this does in a
> real world test.

Thanks. Please feel free to reach back if you observe any unwanted side effect,
since most of my knowledge is based on scripts reading and autobuilder builds
history. I have tried to test it as much as possible on my machine, but as I was
discussing with Alexandre Belloni, the many stubs and fake data used do not make
the tests as accurate as the real world case.

> I did notice one issue which we'll need to fix in some follow up
> patches, I'll reply to the patch about that.

ACK, I am working on it

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


