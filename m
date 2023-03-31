Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6B87C6FD18
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 07:46:26 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.49322.1680248777331725842
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 00:46:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=m2enkAPH;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id EA905E0007;
	Fri, 31 Mar 2023 07:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680248774;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=HlUWgSt/QW9MLcxfK3tzl0Is40Gs3GTQp1qQFwxvmrc=;
	b=m2enkAPHDRK2JTpSCbrZijTiW0ggcc0mqfPC/7ordNyLNqUqZHBoJzUM9LO/PKCT89Ib/I
	P9Uufkz1JOMpZwwpjsM7cUGkDUSnla227ysl0Eu04JJJxdx3vJrQml80WMu7xzbBXC33OR
	ajpxuGnTzIsnSjKciIahAF/2CGTIyWiV6pDETS71cBClgselCEb0kAPVU0seeT6jZqxlnC
	5/AuNanLU/4tFUZ4Zd4wgZqu57ikY5nvhch5rhIK4G8g3fHislH2Q9JjCvZVbvHol/yuZ8
	JTG0uQz70baYqFmNMbd2CFR0qPPN3H4QPMqrzt6hMwrXlaneBrZshz8TUArI1w==
Message-ID: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
Date: Fri, 31 Mar 2023 09:46:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] How to compile binary executable files
Content-Language: en-US
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
References: <424f5aee-84b6-59a4-ea4c-10b2fa2d0cd9@bootlin.com>
 <13330.1680248184001503498@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <13330.1680248184001503498@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 07:46:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59561


On 31.03.23 at 09:36, MOHAMMED HASSAN wrote:
>
>         Can you please guide me as to what I need to load this binary
>         executable file is my generated image file.
>
>
>     Is this binary statically linked? Otherwise, you have no guarantee
>     that
>     it will run on your root filesystem.
>
> It is statically linked file written using c language.


Good then.

>     If so, you could write a recipe to integrate the binary into your
>     root
>     filesystem, as it's possible to do with pre-compiled libraries :
>     https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-built-libraries.
>
>     Caution, in this document, the new override syntax (with ":"
>     instead of
>     "_") is shown, it doesn't apply to Dunfell.
>
>     I hope this helps
>     Cheers
>     Michael.
>
>     -- 
>     Michael Opdenacker, Bootlin
>     Embedded Linux and Kernel engineering
>     https://bootlin.com
>
>
> Will it be okay for me to refer the above link for my specific case?


I'd say yes, write a similar recipe for your binary.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


