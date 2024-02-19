Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3134FC48BC3
	for <webhook@archiver.kernel.org>; Mon, 19 Feb 2024 09:00:39 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web11.37544.1708333229191491578
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Feb 2024 01:00:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=kRs6n8/p;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0836E4000F;
	Mon, 19 Feb 2024 09:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1708333227;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1Gwx6skHs7YSKE9u0CDLQR621TY6J9MSkTd0CbvmwJM=;
	b=kRs6n8/p9Iw/mMHSx605vswc1NwRllonfNBc+EGtxDn42nwSDxO3A3rg6/MPCxvWX4eW9y
	SONZPwW1esYH30ozIUmrzG6SsaV/pTRrVzZKECLnTW93sfrcTspcHvWiJGMs/OSNxglZmR
	Xa1NLSAm/DoLVspx3KMzjppukKzzNZldyuA6n47dTIyjAifA9/7ByZWxFs4Xy5DRy9jGf1
	+f5dbquGgN88oA5A7zl3fdyycUEzOc1W/f2DfNoCN8zMBNdCewRJXzvKdnqhkTFtOVOjTm
	8mmYZ1WWaNgUoa2KbjUituibmOOsMxjVmAq3N87dY3j3K0cwrWvXWlPrmJvbtw==
Message-ID: <a5f4d4a4-2ca0-406c-893d-e9bae4dcc242@bootlin.com>
Date: Mon, 19 Feb 2024 10:00:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH] lynis: Add missing runtime dependencies
Content-Language: en-US
To: belouargamohamed@gmail.com
References: <3d7ead69-9f5b-4c6b-9215-195b397e3d19@bootlin.com>
 <32626.1708174911574167451@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <32626.1708174911574167451@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Feb 2024 09:00:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62538

Hi Mohamed

On 2/17/24 at 14:01, belouargamohamed@gmail.com wrote:
> Hey Michael,
>
> I did what you asked, can you please remove my previous patches ?


Thanks a lot!
Actually, I haven't merged your previous patches yet, so don't hesitate 
to send the new ones.

Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


