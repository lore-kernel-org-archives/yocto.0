Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29821C433F5
	for <webhook@archiver.kernel.org>; Wed, 23 Feb 2022 15:26:32 +0000 (UTC)
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
 [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web08.8935.1645629990596061544
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Feb 2022 07:26:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=ddb1kybB;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 6809E40009;
	Wed, 23 Feb 2022 15:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1645629988;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TWN11oYlXnYBrKZn/TJ8AR2N5/hSeyzArMR/3xKILw4=;
	b=ddb1kybBjQeYIzjCKDq09GmS8k6j9rHieUUlqwu0OD8ZkeXUOc7Ekb5G6RwN2BedyXvfRL
	BqZGLnS/MaE8AU44SnHpRIUwjLBmuJF3LncaGmzgcaDRmlzEw5aTNBVoujoGGVaLZ6si1c
	FEucXltybP8BuvbZyjhi+rvcWmtA9yWh2/4MRETB1UaZkerzvNe1tLApSY4EjHL0EJi1pV
	jlG5pOpqMZzMMwpQ6d1fOfVrvhxAqX88r37pTbRwWFx1RtBwMkcOq9f/sDOW0faTIxizux
	b6tVfRyiuBqONw1rrbnVcFxEzJbmupQgWNnEbEiAWuHiqYshrA6gnp2+Rk9/tg==
Message-ID: <753dc9cf-397d-6573-120f-f342f921c538@bootlin.com>
Date: Wed, 23 Feb 2022 16:26:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [RFC] [PATCH yocto-autobuilder-helper] scripts:
 run-docs-build: make the script fail hard ASAP when there's an error
Content-Language: en-US
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 yocto@lists.yoctoproject.org
References: <20220223113106.2781516-1-foss+yocto@0leil.net>
 <a5f7761a-6d02-6fb1-e998-2a5b6633ca1e@bootlin.com>
 <c56d5311-6fb6-7656-3f57-e2181ae8e93f@theobroma-systems.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <c56d5311-6fb6-7656-3f57-e2181ae8e93f@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Feb 2022 15:26:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56266


On 2/23/22 15:52, Quentin Schulz wrote:
>
>> Agreeing with the change.
>> How would we get the script output?
>>
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/114
>
> seems to be a good place to start with?
>
Ah right, thanks. I won't forget it next time.
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


