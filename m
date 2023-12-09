Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3270C4167B
	for <webhook@archiver.kernel.org>; Sat,  9 Dec 2023 10:16:23 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.7127.1702116977389466291
 for <yocto@lists.yoctoproject.org>;
 Sat, 09 Dec 2023 02:16:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=MB2j075m;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: alexis.lothore@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C8CE240002;
	Sat,  9 Dec 2023 10:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702116976;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Mg/N/fFtm/2rnLTT0lvUYFjSFjcEvUU42us77SxEaHY=;
	b=MB2j075m4fd+8GrU6Oi3a0mGnFLqfqVNlOv61JGgv5sNSTAPnsakIddqkoCwLNmIt6w3Qs
	7sO2rjmDMi3CDEyJGxuW7HVvCm4AfzuxQ7e8dEmrvQzoo9DtCDTXA/CGCS+odM47Aa1xgt
	XgW3iD3NmAd956NyimoovxZkExdld2M2isTAq5inRe7csv3+rjVEH4StEGpblhuphZv/bH
	8StSmlEmyB7Ht6JvE6fEPral307bZL7SgSSiJYkt7zaDMY23CMCKvpYUSGISbtIkmv3Zqm
	OwS3mHiNSSc34mjQZxx2Jzx/E6pQSROWfoyUBUbgTJR1VTVosBwEtp+RhArNxw==
Message-ID: <0bb18943-f9e9-438a-b1c1-eeb155cf62ce@bootlin.com>
Date: Sat, 9 Dec 2023 11:16:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper][mickledore][PATCH 0/3] fix
 mickledore tests reports
To: yocto@lists.yoctoproject.org, steve@sakoman.com
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20231208215915.225182-1-alexis.lothore@bootlin.com>
 <CAOSpxdafJrqLWoXs+=0Zkpe=DGsp=MHWXWj07XXQOpbhb1Cyiw@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Alexis_Lothor=C3=A9?= <alexis.lothore@bootlin.com>
In-Reply-To: <CAOSpxdafJrqLWoXs+=0Zkpe=DGsp=MHWXWj07XXQOpbhb1Cyiw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: alexis.lothore@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Dec 2023 10:16:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61851

Hello Steve,

On 12/8/23 23:39, Steve Sakoman wrote:
> Mickledore is already end-of-life, so no further builds are scheduled.

Ah, yes, I checked that before sending because I had a doubt about whether this
series would still be useful on top of mickledore, but since the 4.2.4.rc3 is
still in progress, I was not sure.
So ok, feel free to drop this series.

> There is a dunfell release that I plan to build this weekend, so a
> patchset for dunfell would be much appreciated if you would like me to
> test it with the 3.1.30 build.
> 
> And a kirkstone release is due shortly thereafter, so we also need it there too!

I am not sure that a backport is really needed on dunfell and kirkstone, because
- "dunfell" is properly described in BUILD_HISTORY_DIRECTPUSH in config.json, on
dunfell branch
- "kirkstone" is properly described in BUILD_HISTORY_DIRECTPUSH in config.json,
on kirkstone branch
(so yes, the issue was really affecting mickledore specifically)

Anyway, the wider issue is that those branches are lacking almost all
developments I did since ~January on send-qa-email, so some things may work
(test results storage), some other may not (regression reports based on those
results). It is also true for poky. A whole backport is of course possible, but
that would definitely need some thorough testing before using it for releases.

Kind regards,

Alexis
-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


