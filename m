Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E667C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 16:22:57 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.58186.1699028566357853996
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 09:22:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gD1iAIk9;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 118911BF203;
	Fri,  3 Nov 2023 16:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699028564;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0DXqaoGzdoLnw93/1ozMYGkb7I+7RLkd5Vdvi5LTRpU=;
	b=gD1iAIk99ergFDceNy8J5IkZAenpSE8f+q0aVui3T3HhWIvSpp9fpLF7JDyKtKnQEj2axf
	2FGOd+P8BolVXmbQ+UVOOpdwi5iT4YuflfBX56KJGDFzpby86RtJEGwyhHpw4yUeCb80X0
	B2vT6egHuGRJ2n5zgf/A3S8+97DjQPm2MX0upwNLzgpijWz7xb7QSJGXHTvAXxF9MNmT0n
	MxuRu0GmkH7P3mqjwVQRuQpBq0wLQDGkLg/bWnPfyNGGXPVPMpVDsqVgmkZRqSeERAGCef
	G0seJO6JU98yZCdjYPvwB1V4IYlS+01jbrQFkt1xDawVo92dr4YZFMmLysnkJw==
Message-ID: <fb777f1f-6b9d-4351-972f-17fed0ef3cbb@bootlin.com>
Date: Fri, 3 Nov 2023 17:22:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
 Regan BUSSY-SOCRATE <regan.bussy-socrate@navocap.com>
Subject: Re: [yocto] Package dependencies not generated?
Content-Language: en-US
To: Jose Quaresma <quaresma.jose@gmail.com>
References: <0e2b4e8a-58ab-4f7b-8548-1fd2011c5485@bootlin.com>
 <4b04aad4-03e8-462e-bd27-a1de18708083@bootlin.com>
 <CANPvuRnM=RgoVabG4i+JZyZcybrHxsiGD4TOf+OZRyOnx4iDmQ@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANPvuRnM=RgoVabG4i+JZyZcybrHxsiGD4TOf+OZRyOnx4iDmQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 16:22:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61602

Hi Jose,

Thanks for your help!

On 03.11.23 at 16:42, Jose Quaresma wrote:
>
>
> Maybe because rsyslog uses dlopen to load the libestr at runtime,
> if this is the case the recipe should explicitly add a runtime dependency
> for them.
>
> +RDEPENDS:${PN} += "logrotate libestr"
>
> I'm just thinking out loud and I have no idea if this is the case.
>
> Jose


I don't think that's the case, because "libestr0" is one of the 
dependencies of the "rsyslog" package. So, it was automatically 
detected, but no package for generated for it. That's what I don't 
understand.
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


