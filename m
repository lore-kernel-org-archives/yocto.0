Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2F20C46CD2
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 15:24:16 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web11.25245.1703258650089970442
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 07:24:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=R/aFKiDm;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id AA4A2E0008;
	Fri, 22 Dec 2023 15:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703258648;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NTUrFmegxkZ+j08V0r+L6XG7sQu5BJz/VM4XZP2vuvY=;
	b=R/aFKiDmvt/DSHwSIcTCkPaYMds3dfk+aiAlZhNQZ9QoezXUTM0bGsoG6Qni+R/WcPFKz8
	l+hUmLI0A5kP7jqG8ZPJiIeaeZntV4hs/kTYhrf+ob/nelUtQoQ7m0zySk9vZXz+qKkqjA
	84ADdTb9TqpjbMtDDs0Fn+BKgBjalVVASgMPXfmC9xlB7XM/WJiwLlWEhTU+R+K+ghkGl2
	an4MUiizUiWgBeMS0AWB6HAcQf+mwEAd+I3ZxbS740zZGKMRX83dvwEJF4rapmb6i0d+nh
	V34eHSflmpUZmL9xfXpAVGdgrCYwkujiXXtxiVq4Fl5d8j+dqcpuld3n7FajCg==
Message-ID: <e6174a7a-2981-4b88-a24e-e6f72873886b@bootlin.com>
Date: Fri, 22 Dec 2023 16:24:07 +0100
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
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj-iEw6aV1Ki6BOu-xRVxKSmFvGS-thU_13NS99b8Tt_gA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 15:24:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62027

Hi Alex,

On 22.12.23 at 15:13, Alexander Kanavin wrote:
> Thanks for explaining - I would instead make a 'poky-binary-distro'
> distro configuration in meta-poky, and collect all needed settings in
> there.
>
> Placing this in config.json significantly changes how all of the
> images on autobuilder are assembled and tested, particularly there is
> no testing of images without package management anymore.
>
> I would in general want to avoid adding any further 'global tweaks'
> that override oe-core or poky defaults.

Thanks for your advice! Actually, I wasn't sure how to make the change.

If I understand correctly, even after I define a new 
'poky-binary-distro' distro in meta-poky (if agreed), I'll still have to 
add a new image to config.json, but indeed not touching existing ones.

Richard, would you be open to this suggestion?
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


