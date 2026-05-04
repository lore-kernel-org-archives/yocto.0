Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA07ECD3430
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 13:08:48 +0000 (UTC)
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14218.1777900121294544503
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 06:08:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: key syntax error: missing public key data" header.i=@rootcommit.com header.s=dkim header.b=Ckhcxu3f;
 spf=pass (domain: rootcommit.com, ip: 185.246.85.4, mailfrom: michael.opdenacker@rootcommit.com)
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id EEC6D4E42BB4
	for <yocto@lists.yoctoproject.org>; Mon,  4 May 2026 13:08:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BA3375FD5F;
	Mon,  4 May 2026 13:08:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3DB1811AD18E6;
	Mon,  4 May 2026 15:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=dkim; t=1777900118;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=3y1IfkCFarXDiMmaQgpxayJfCBbSCalDFwe0plaKCDw=;
	b=Ckhcxu3fu9BiBZGqCE0qo9sIOgJ8kpV54iycZXAA9G7+p+CfLvNa21j4X2Y+SckBWA+O4I
	MQKkMr1TMoK1CgnpwY0dYMQ6oo5V10Ya9UZnYipBM35Sj3cJPtp5+dPoiaJEdXBj9D+JaN
	iXuY33XGQFO+FQDXoVx/t3rMqgg3Lm8DSqfEKiLag+BGxPbHHM8ym5i49PRZ/kvefEoEHU
	JkAuKFqeTiO8u8FanXM9phE7QzxRKOmb43TEHXrtKJMVwshy3/dV9vVBTJcUzGFmTBHBvb
	KVurkKaKPH4dHhBjuHgZ5cNxH55K3NQsYAnYgAckZhqLVeb0m2tJlLCBL7MQSA==
Message-ID: <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
Date: Mon, 4 May 2026 15:08:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: Quentin Schulz <quentin.schulz@cherry.de>
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
 <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Last-TLS-Session-Version: TLSv1.3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 13:08:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66470

Hi Quentin,

Thanks a lot for the tip!

On 5/4/26 10:47 AM, Quentin Schulz wrote:
> Do you need to generate an image for that partition or can you simply 
> have what will be part of that partition be generated along with the 
> "root partition" image?
>
> As far as I remember, wic can split files/directories into a separate 
> partition from the rootfs, so that would be an option that doesn't 
> require hacking things around.
Interesting! Unfortunately, I'm not using Wic but Toradex Easy Installer 
on this project. Therefore I do need to generate a partition image 
beforehand.
Thanks anyway! I good to know for another time.
Cheers
Michael.--

Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


