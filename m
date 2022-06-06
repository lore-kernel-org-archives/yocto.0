Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DB13C433EF
	for <webhook@archiver.kernel.org>; Mon,  6 Jun 2022 16:47:45 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net
 [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.652.1654534062686171589
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jun 2022 09:47:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=aSgSow9J;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AF4A81C0002;
	Mon,  6 Jun 2022 16:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1654534060;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JNef+h4Gj2GW3CGAKgO714xxbH+pQl30qohhJ1hsRuU=;
	b=aSgSow9J1rRjaLoLSFvCtKpk18ckN0vpE8zjFoBtowQxpZQwyEtFCgA5i5XRPdMPoW6dks
	yAy4eMdo14cZNryC3TVFqmloIFoSqd15UM3KG0DsdxmFtmCt+5cDgWjwBYkBYOywijelgJ
	iUNc4D8OdPfdmIUvLeDiWqX6TItkRN6sWKR113w2V74MZ+8YmmWtMhTIEA2tgVl4KT7A3i
	Ov+skoWz12Zt02LjCrzXUgU1/BS3Gpv/86ZqfDZyzlYNH2YOj4SvRWSg7OLLlVgcx700nd
	DausgqlI3ic8CAdGNKS4rxK6uEPo8RNRrg70XU8HmPppfb13gdnMa31DcebhAw==
Message-ID: <c62f5f40-b99d-5682-6310-0cc9af10ff25@bootlin.com>
Date: Mon, 6 Jun 2022 18:47:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [yocto] [PATCH 1/2] manuals: SYSTEMD_SERVICE allows multiple
 services
Content-Language: en-US
To: Paulo Neves <ptsneves@gmail.com>, yocto@lists.yoctoproject.org
References: <20220603163521.146659-1-ptsneves@gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220603163521.146659-1-ptsneves@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Jun 2022 16:47:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57273

Hi again Paulo and developers,

On 6/3/22 18:35, Paulo Neves wrote:
> State that SYSTEMD_SERVICE allows for multiple space
> separated systemd services
> ---
>  documentation/ref-manual/variables.rst | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/documentation/ref-manual/variables.rst b/documentation/ref-manual/variables.rst
> index 367b4674e..ed52c3508 100644
> --- a/documentation/ref-manual/variables.rst
> +++ b/documentation/ref-manual/variables.rst
> @@ -7656,6 +7656,8 @@ system and gives an overview of their function and contents.
>        When inheriting the :ref:`systemd <ref-classes-systemd>` class,
>        this variable specifies the systemd service name for a package.
>  
> +      Multiple services can be specified with each one separated by a space.


Wouldn't it make more sense to call the variable "SYSTEMD_SERVICES" instead?
We could add a new variable and deprecate the old one.

What do you think? Would it be worth the trouble?

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


