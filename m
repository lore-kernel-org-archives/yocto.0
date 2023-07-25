Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 438EEC0015E
	for <webhook@archiver.kernel.org>; Tue, 25 Jul 2023 09:30:03 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.16568.1690277397738397389
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Jul 2023 02:29:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=dVj2J9hA;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8A1D224001A;
	Tue, 25 Jul 2023 09:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1690277395;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JV6sKS4P3LaFImGAoo/YE85zDCFzJfZVYXRHQmOpTrk=;
	b=dVj2J9hAtwCAc2fuXX8Lt5Ry/c9JbBiVjQ+s2nu0GPOeH/d9vDgWeLubOzdCPdtoM7fBWq
	1H3DbVJUkx5axQx6Vjkck0thjucwW02g/dUV6pQ/Np4EVgS2MjOekl1+pxJEFLrM/cDFPq
	vMxUcxyVixGj8SLsCo4fp/rwZ2n5gt69tzd4kM3pYS9a+wB9OOGHhBCkoDb8DgNBF3AKuw
	ffIkzZXFXSmkBZLRdUAELIt1eZbjlZGDi+U314gdmoM3S3YA0V9QYhzWO+sIQynfJF7Ml9
	qbz75Npdwwh3375COcyeNe7vtuzWw1gSOYgtp+TTe8YFhpekvMxqsBBtO09tpw==
Message-ID: <bfe983ba-6e04-1956-1e68-52d37dfe23d9@bootlin.com>
Date: Tue, 25 Jul 2023 11:29:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] RHEL 8 support under Yocto
To: steven.monsees@baesystems.com
References: <MADEUP.1774C9587BD7C430.21156@lists.yoctoproject.org>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <MADEUP.1774C9587BD7C430.21156@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jul 2023 09:30:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60645

Hi Steven

On 24.07.23 at 13:12, Monsees, Steven C (US) via lists.yoctoproject.org 
wrote:
>
> Hello:
>
> With RHEL 7 (Linux) reaching End of Life (EOL) and no longer be 
> mainstream supported, We will be updating systems to RHEL 8.
>
> Which versions of Yocto currently support RHEL 8 ?
>
> We are currently using the Yocto Zeus release, and will most likely 
> need to port forward.
>

Good idea, as this version has been unsupported for a pretty long time now.
A good idea could be to switch to our Kirkstone Long Term Support 
release, which will be supported until 2026.

According to the documentation, however, RHEL is not supported. However, 
we support Fedora and AlmaLinux. See 
https://docs.yoctoproject.org/4.0.11/ref-manual/system-requirements.html

I hope this helps
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


