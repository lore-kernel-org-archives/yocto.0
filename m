Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC2CC7EE23
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 12:14:21 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web11.8133.1685448855117412211
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 May 2023 05:14:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=U7G6gypm;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
X-GND-Sasl: michael.opdenacker@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1685448852;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0UrhbysehKO/b2sETVXVKBFE6crQLcEgiAfkyFwlkOg=;
	b=U7G6gypmUJngU/SZ65QQupDWy4V70rQ9bZLL362vXTdIldgKmRj0ZBJ9VOg0QBF+8oWbOC
	F/KOtSb81lhqE9eTFyGaOVzaUgwWLQ0PKhHnMuPB8ojtt83JEHLpJexkAMccmMNuulpEsg
	bsxYlJGH2S15GWR95VQPpoEm4+wIq4JyDuOoTxntaKpfhafJtR5RIWgImTR/6nTbmSgf0I
	Dxxg+puvL2/MfUEhRvt/2d9gCHr2WjPrDEHh361zeBwlXfpLBzoY0CKzF1WN4CeNiQN6OS
	xQfFMmO65sPksTEKO0GLayPua/sHm+Ti7UY02Xxre1yeqH0h/MXBTF/TOFdCbA==
X-GND-Sasl: michael.opdenacker@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 5C663240004;
	Tue, 30 May 2023 12:14:12 +0000 (UTC)
Message-ID: <a003d41e-cd94-461c-2d33-5c1fd2907547@bootlin.com>
Date: Tue, 30 May 2023 14:14:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] LTS EOLs
Content-Language: en-US
To: Nemo <me@captnemo.in>
References: <0AEAD6FD-4839-4790-AAC7-339951A914B3@arm.com>
 <27650.1685437143631158381@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <27650.1685437143631158381@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 12:14:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60147

Hi Captain,

On 30.05.23 at 10:59, Nemo wrote:
>
> Thanks for pointing this, I've filed a PR to fix this here 
> <https://github.com/endoflife-date/endoflife.date/pull/3044>.
>
> A preview is available at 
> https://deploy-preview-3044--endoflife-date.netlify.app/yocto. Would 
> appreciate a review from folks on this list.
>

Thanks for this update! Note that

  * You're missing the recent 4.0.10 release
    (https://git.yoctoproject.org/yocto-docs/log/?h=kirkstone).
  * The 3.3 release was supported longer, until Apr. 20, 2022
    (https://git.yoctoproject.org/yocto-docs/log/?h=hardknott)

Shall I send a patch?

> Planning to setup our automation against 
> https://git.yoctoproject.org/yocto-docs/refs/ so we can notice new 
> release much faster.
>

Good idea!
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


