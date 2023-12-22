Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5637C41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 18:46:57 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web11.29988.1703270810470100268
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 10:46:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=VGQGv4dj;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A377760004;
	Fri, 22 Dec 2023 18:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703270808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Zaw4zLRRJCATow61SWjNBc2tA/WrqhcepmHBK1DHA2E=;
	b=VGQGv4djguaVXpO744T7EsplrrZJilSRxY2Y+VXHhSWhUzff9gspy/kysa2xCfkkfmcXT/
	Z8JSIBfp2US+jFzmypTW3LquzLU3GvQmXq26jkrsV6VlaQkZA2YmcVXc7fP8v6bqP/WH5m
	t60W90RRDMysBHpUAvNXtF7iBFE+fi+wwGWwAxQUuapG/SnsQMaAAly1wYmut3uvklzWuJ
	gzHCataBPrIfySdXOi03A20VRbw4qs2Cx5x6A79rIiCybRYGEmZW1grNqdLX8Ll7PDEGNO
	JNeeNKH7RJuXZSPzWej+mLplV4zp5jlmlQJ5laAHxrXpLa9GnKYJE41WmMnt5Q==
Message-ID: <6f3f3121-47be-4d6f-8dd3-e13ff402298d@bootlin.com>
Date: Fri, 22 Dec 2023 19:46:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: Re: [PATCH yocto-autobuilder-helper v2] config.json: add
 "package-management" to images
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <20231222131907.816564-1-michael.opdenacker@bootlin.com>
 <CANNYZj-iEw6aV1Ki6BOu-xRVxKSmFvGS-thU_13NS99b8Tt_gA@mail.gmail.com>
 <e6174a7a-2981-4b88-a24e-e6f72873886b@bootlin.com>
 <CANNYZj8DWHh2=N+96j8zNosNUC0in-yrbqyUU-7dHWSP=6fhBQ@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj8DWHh2=N+96j8zNosNUC0in-yrbqyUU-7dHWSP=6fhBQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 18:46:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62030

Hi Alex,

On 22.12.23 at 17:04, Alexander Kanavin wrote:
> On Fri, 22 Dec 2023 at 16:24, Michael Opdenacker
> <michael.opdenacker@bootlin.com> wrote:
>> If I understand correctly, even after I define a new
>> 'poky-binary-distro' distro in meta-poky (if agreed), I'll still have to
>> add a new image to config.json, but indeed not touching existing ones.
> You don't need new images, but you would have to define a new builder
> entry in config.json that would set DISTRO to poky-binary-distro, and
> then build exiting images, and do additional steps (e.g. publish the
> package feeds).


Thanks for these clarifications, that helps!
However, if the same images are built, but with different distro 
settings, I still need to figure out where they will be generated, 
unlike the images on https://downloads.yoctoproject.org/releases/yocto/.

Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


