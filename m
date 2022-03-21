Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31A3BC433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Mar 2022 09:06:31 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web09.28434.1647853590240153440
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Mar 2022 02:06:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=NiwPHJS1;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196,
 mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id D8B41E0007;
	Mon, 21 Mar 2022 09:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1647853588;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CyPrrJRnWZUSRMtCO9GdODfoJjMqFNsXofKJBnVbe3g=;
	b=NiwPHJS16xGd43e9sMCclXb9br/381hhOlSNj1CmGq6e4yD3z47kHa3XV9ipfrVJLHqhJw
	Rjrl5uG7v6m+ZG7Preu6MNZlrZEtydU/MIF7ZuHgjexLQ7PzkPQ3pQoTkCCQOUcfTuzWlP
	rVZWrmYEfrasiopQYFAf9ZDZv/9Mg9/zPtO5PnasEJOJELkGorLxG0W5laXy84IuVQEmcG
	p9WdBewjBiDhEDLBsxZ3hqvOc+NZ61YRkHuMC73v+vQG1kCz1Z3QcGc7tyWxQt9TqSxM2h
	DxSx0eKsAKn8hGBrsZMHnF6fK9Lr+p+FSniDoV4Lvs6z3JxoEHrUGuq5rYx56g==
Message-ID: <7cccc933-da90-d1ab-bb9c-39ea17e2c387@bootlin.com>
Date: Mon, 21 Mar 2022 10:06:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Quentin Schulz <foss+yocto@0leil.net>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 3/6] scripts:
 run-docs-build: factor out all yocto-docs branches building
Content-Language: en-US
To: Quentin Schulz <foss@0leil.net>, yocto@lists.yoctoproject.org
References: <20220318163651.3016936-1-foss+yocto@0leil.net>
 <20220318163651.3016936-3-foss+yocto@0leil.net>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <20220318163651.3016936-3-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Mar 2022 09:06:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56512


On 3/18/22 17:36, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
>
> master, master-next and transition only differ from other branches by
> their output directory name. Let's put everything in common and only
> have a check on whether the branch is master, master-next or transition
> and modify the output dir in those cases.
>
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>  scripts/run-docs-build | 35 +++++++++++------------------------
>  1 file changed, 11 insertions(+), 24 deletions(-)


Reviewed-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
Thanks!
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


