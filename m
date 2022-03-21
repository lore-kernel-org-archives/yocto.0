Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6A8C433EF
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:19:13 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.27912.1647854352731666621
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:19:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=b7iteg/0;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 66C7C1BF205;
	Mon, 21 Mar 2022 09:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647854351;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D1rLE7Iu86Dp11tnEDKGmPeG6TWAp25EjmqpDyeQ58s=;
	b=b7iteg/0BSYzn1lDYbQTbdrexiJBNyiSCZUnde1jsZGAMQi/1sD3RHnqJvqKHmvKb9MtqS
	mxcKKX76Z55gguQXkybPdW/1tKCOmgo2MUpTGMvr04iDd0m6ppPUCeq3xNV7dVwTOOeGYh
	Xq191BInDyUrKdw3a22BGZpShgsuQKa/hkVu7Z0twifPSmnuwCArO9WpLqJZ9pv1ws7loO
	bX1ir+Lr91Tb0FKlURwibP/jimmaG5B8KjJDDDKl+EYFgtwgLerCc9G1a7oWHV3SkJKO7c
	eX4ej7zdnsBQkUwTdNz/fcPGyNgP7k9n7RXcbi5gdKn9t/cE+VC0UZ2TqOATmQ==
Message-ID: <49a7430a-b246-90c9-db28-a538fda1f17e@bootlin.com>
Date: Mon, 21 Mar 2022 10:19:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schuls <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 6/6] scripts:
 run-docs-build: factor out yocto-docs tags and branches building
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
 <20220318163651.3016936-6-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-6-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:19:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56515


On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> Except patching which is specific to tags and yocto- tag prefix
> stripping, the logic is identical, so let's merge both loops together.
>
> Cc: Quentin Schuls <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 36 ++++++++++++------------------------
>  1 file changed, 12 insertions(+), 24 deletions(-)


Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Thanks for making the script much more readable :-)
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


