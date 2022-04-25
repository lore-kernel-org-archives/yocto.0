Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7BB8C5DF62
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net
 [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web09.27727.1650880895319608648
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 03:01:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Lj5FMPU/;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 5053620007;
	Mon, 25 Apr 2022 10:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1650880893;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qwj8ICs+DTDNBUPpCu3Vz7OdHHsQsVWlKXH/1ugKUdg=;
	b=Lj5FMPU/yVfPn+KFH77+VIr0J+pEsv6Mlwo3Bir+n90BUHmj26cbyI3DcdYP12H6cc2AYA
	w+DrpMjR8+MMqD+JDqY0FNbXETFYOgaVZgmrVQD/STXdkeWIFS9uw7Ltg79jk5P8NtzACu
	fMlguJrd0Sf2zBlwfmr8kBn9SkcI8RGHMoz7pkSkQOcNE97EAQzQnlDs5g4rTyDz8ewKT3
	LWNfuNJv8SG9vNzDheElwMDdv8IFa850Y/gZKOnWFEgH1RSaczsgmXXyDseZCtviTi4yOA
	JFLQmo2n6rbODL7KE/KZk1FuUOlku0cbx8oGqDvuU4xjs65V6gGuxgTgQglSiw==
Message-ID: <9d78e218-a9a6-f298-3630-3d272aeab5f2@bootlin.com>
Date: Mon, 25 Apr 2022 12:01:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [yocto] have busybox prompt for password in initramfs boot
Content-Language: en-US
To: Embedded 1 <toyonembedded@gmail.com>, yocto@lists.yoctoproject.org
References: 
 <CA+4rcE4K6aPMpAcgTsAcj7AY1YNF1sw2uUh=j3dToFGWg=f53g@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: 
 <CA+4rcE4K6aPMpAcgTsAcj7AY1YNF1sw2uUh=j3dToFGWg=f53g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56877

Hello

On 4/23/22 22:56, Embedded 1 wrote:
> when I boot my initramfs and run init=/bin/sh I'm not prompted for a
> password. How can I require a password before entering the shell?


That's what you get when you use /bin/sh as the init process. Instead,
you could use the normal init program built in your image (which one it
is, Systemd or BusyBox init?), and get it to run the getty program
instead to get a login prompt.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


