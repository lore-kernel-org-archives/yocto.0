Return-Path: <alexis.lothore@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18B78C636CD
	for <webhook@archiver.kernel.org>; Tue,  7 Feb 2023 14:52:22 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.85172.1675781537038632931
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Feb 2023 06:52:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=BW9o5b/s;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: alexis.lothore@bootlin.com)
Received: (Authenticated sender: alexis.lothore@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 76A1860017;
	Tue,  7 Feb 2023 14:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1675781535;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=80z4dovR2V7mr4BF++jAtWpRjjRAG8tbh4AWYqcCcew=;
	b=BW9o5b/siDT0ej0/LXpvm7u1lbHFxQfAmqH6iUfJujo/ilFxRlpukbVlk6GWuTGiZBgw5e
	YqQ/ACxCFKj+FUaXVlyg+v40SAEMrPRFqPlg84yItDOgFwEy+UeQdwp/4XjuwSUB6bslqx
	hmBMVxMixK88SCcNq1XS5gWF/e1GZb+9DP+0A3awMFz3CvDOQKdDUoxVePJHwH4B8DVDDc
	looxcfCvpcfSPteK7MtyIfJBI43Y0EVjTnu+qYx/3eIy3GQWoKTWdveLe4Bej0GyWOdZxV
	r363TgP/yoKUY3cCIJLj8nOQMtDoFn5tKlgHcnYI2+uRGw818ZQjXDdDSb9tug==
Message-ID: <d354eaf6-17d9-d69a-666e-adb0bfb09207@bootlin.com>
Date: Tue, 7 Feb 2023 15:52:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [yocto] [autobuilder][PATCH 0/3] ease send-qa-email usage with
 older history
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com, thomas.petazzoni@bootlin.com
References: <20230207141217.33892-1-alexis.lothore@bootlin.com>
 <766584aee3b3db7d526098ee3027e5ed2dbf7908.camel@linuxfoundation.org>
From: =?UTF-8?Q?Alexis_Lothor=c3=a9?= <alexis.lothore@bootlin.com>
In-Reply-To: <766584aee3b3db7d526098ee3027e5ed2dbf7908.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Feb 2023 14:52:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59193

Hello Richard,

On 2/7/23 15:42, Richard Purdie wrote:
> On Tue, 2023-02-07 at 15:12 +0100, Alexis Lothoré via
> lists.yoctoproject.org wrote:
>> I assumed that no tool is currently trying to parse the regression reports, so
>> I chose arbitrarily the metadata format.
> 
> The reports have never been useful enough to parse so that should be
> fine.

Good

>> @Richard : on a side note, the broken From field in my previous emails was probably
>> due to an accent in my name, it should be fixed now. Please let me know if you
>> still have issues with this, in this case I will force the --from field.
> 
> It still shows incorrectly for me. It is an issue with the bootlin mail
> setup and DNS, not to do with the character encoding. My changing the
> accent, it is now duplicating the signed off by lines so I'd avoid
> doing that!
Well, that's a shame, sorry for the annoyance. Once the patches are approved or
lead to a v2, I will resend with "From:" forced, except if you want me to
re-send it right now.

-- 
Alexis Lothoré, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


