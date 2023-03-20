Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31BE1C7618A
	for <webhook@archiver.kernel.org>; Mon, 20 Mar 2023 14:04:05 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.14800.1679321041179867081
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Mar 2023 07:04:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=gVrvqXYG;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 45938E000D;
	Mon, 20 Mar 2023 14:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1679321038;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LUSKECCVghwvc2HEjGO4XNwY9C8lF/uevAo0Qm76v5E=;
	b=gVrvqXYGPgOzqrRLKxnBoRB2WHwU1eXdJ5L0nuQzHLlD8FFcf+cRa1PB25GhCPoHpGbSGz
	xUYPlWbwV2F0pIZjK63Ky2+jJAQxGHtZz/Ma0Eup4JPcsOM3j6u7nIJpUTYPxqWHU/UHch
	c4UevukE+vr9Bn3Y2hAQ5mlZoXfiAIWpRnVkYHMNRfZbfEw6HlHbq90EbyTZqAYthBUSFl
	Jb6ERgXRPn6KlUcul8G3VIu+fNec3Ca7iMJ986U7BSFMRJ4SVvC0FhxIvGlV1NDwxqu6FZ
	44KUB3RnbBqXHP2+I9/uM3q+WJJpeCGjDvefd/cKEjAvFORplUz57Gy2zJXaMQ==
Message-ID: <94e0c188-bb0a-95f1-5447-96722e7c5848@bootlin.com>
Date: Mon, 20 Mar 2023 15:03:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Cc: yocto@lists.yoctoproject.org, Vipin Vijayan <vipin.v@calixto.co.in>
Subject: Re: [yocto] libpcre error on compilation time
Content-Language: en-US
To: Sethu Madhav <sethu.m@calixto.co.in>
References: <CAFjAHzHOXoKD1Wr3Wogmz5=9gkoTPw53_q_9VxD1ntZ=Fo42uw@mail.gmail.com>
 <2663d424-7a09-8346-d2eb-31e96a096cce@bootlin.com>
 <CAFjAHzHibGhqwnnBXa5A885-46j1BO6-CaniQO-BOjiO7HW-2g@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAFjAHzHibGhqwnnBXa5A885-46j1BO6-CaniQO-BOjiO7HW-2g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Mar 2023 14:04:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59473

Hi Sethu

On 17.03.23 at 05:47, Sethu Madhav wrote:
> Hi,
>  it is not building with the 8.45 version which is included in the 
> kirkstone version.
> Some error is coming at the do compile stage .
> We just added libpcre package from the openembedded core git kirkstone 
> branch. Is there any dependancy or anything that's is needed to do 
> apart from that?.

I don't think so.

I just made a quick test by adding

IMAGE_INSTALL:append = " libpcre"

to conf/local.conf and it builds fine (through the "core-image-minimal" 
image). I'm using the "kirkstone" branch of Poky.

I hope you find a solution.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


