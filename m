Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A146BEB64DD
	for <webhook@archiver.kernel.org>; Wed,  9 Aug 2023 08:27:25 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.83747.1691569645053276975
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Aug 2023 01:27:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=PtrJkEQw;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9517C1BF209;
	Wed,  9 Aug 2023 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1691569643;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tAMURbC5mAt3sY7IX0olwLZZfJpVr6Tjv49jU724rPA=;
	b=PtrJkEQwpt43HyyB1syuIzjX5Q5HnVo1ydmDeLmCTRCKP3Vxw2x/VxLsr6gZyejHk7WKx2
	YHobcjm6DWdP+g4zAhnSR9DBNLgIKlEKhE1sBiq/mfw6psUy+pYkTgNy69rPuksI7P/XJI
	Co0ygueI6S0cHJZXoeL210Ai29yybJEYqDk4F8jq+3bXEzahrQPUR2y/5mRT3WpZh0CEnT
	Ov9JyI/Bin1GwMMu3L0FUqkrBFqJdpYQedIzvZE67RKavxAopcfkrHUpNQE2eWBERjhDEX
	1oYKfjqqZ5+Oix+PIf6pr6aKHgJYp8xbBgqVSq7iO4BahBPuB75HZ12sBp5HmA==
Message-ID: <d309c8b8-8944-1ff9-3a6e-0c2c543e266f@bootlin.com>
Date: Wed, 9 Aug 2023 10:27:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: yocto@lists.yoctoproject.org, Ming Wen <mwen@ambarella.com>
Subject: Re: [yocto] [Poky-Kirkstone][Ubuntu 18.04] The last poky-kirkstone
 can't work on ubuntu 18.04.
Content-Language: en-US
To: Alexander Kanavin <alex.kanavin@gmail.com>
References: <n9Hl.1691564423269187466.55AD@lists.yoctoproject.org>
 <CANNYZj9DCaw5W+4SB0WJmwHhzB9n09gKdViPy2vgrwg9q6Dckg@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj9DCaw5W+4SB0WJmwHhzB9n09gKdViPy2vgrwg9q6Dckg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Aug 2023 08:27:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60760

Hi Alex,

On 09.08.23 at 09:04, Alexander Kanavin wrote:
>   I need to remind everyone that Ubuntu 18.04 went out of support on
> 31st of May this year, and it is no longer possible for the general
> public to run that version securely. Please keep that in mind, whether
> or not issues are fixed (I'd rather drop 18.04 from support list, and
> as soon as possible, i.e. when the AB workers are updated).
>
> Alex


I submitted a patch yesterday to update SANITY_TESTED_DISTROS on 
Kirkstone, and as soon as it is merged, I will update the patch I sent 
for the Kirkstone docs on Monday 
(https://lists.yoctoproject.org/g/docs/message/4108), which removes 
support for Ubuntu 18.04 (among other changes).

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


