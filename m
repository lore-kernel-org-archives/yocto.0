Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF541C6FD18
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 07:25:26 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web10.49127.1680247521069975731
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 00:25:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=IGrcj24h;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 352151BF20A;
	Fri, 31 Mar 2023 07:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680247518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gUUaDoQw7BTmN0/3p4D8mq0hrOsBrRWt0ALBl04Virg=;
	b=IGrcj24hcrU/SVXGBISQWIuCZpQVXeqJof0RI6UvM4l2qDHQdVqiWYea86STqNNdscWois
	F2hTgKqL0TjZezGnKc9UUAeJBddP+IB45JU0h7j6oP+z24VdpMamkPtqtBeUNidwOgWlAi
	MaYXPLuXjJiblm/a1U/sDbhrqEqkCXPdZ7KHhj/egwwXYGUyyUz8uySzxEpQi1PvLKkIAy
	Y2szAUmV3Y3ZJCNDB428ShOKD8tthkHv5D7AMunQYCHGjFu0QEMf4CQLPPLXaIstoIVQyg
	xYz1UYZTUFYwHnhzgrCaPkjH6eQi00tqJQAweqgeMsDhJIUtH+LyUwmwzAImtg==
Message-ID: <424f5aee-84b6-59a4-ea4c-10b2fa2d0cd9@bootlin.com>
Date: Fri, 31 Mar 2023 09:25:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] How to compile binary executable files
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
References: <CAPJWBniLt1kzG4zoDuHNZyQX1NFkneBTo=hoFBPH2AFJAhyv6g@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAPJWBniLt1kzG4zoDuHNZyQX1NFkneBTo=hoFBPH2AFJAhyv6g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 07:25:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59559

Hi Hassan

On 31.03.23 at 06:34, MOHAMMED HASSAN wrote:
> Hi guys,
> I am new to yocto needed your help.
> I have an executable binary file that is probably compiled using the 
> gcc compiler. I am using yocto dunfell for my project my build_sys is 
> "x86_64-linux" , my target_sys is "aarch64-poky-linux".
>
> Can you please guide me as to what I need to load this binary 
> executable file is my generated image file.


Is this binary statically linked? Otherwise, you have no guarantee that 
it will run on your root filesystem.

If so, you could write a recipe to integrate the binary into your root 
filesystem, as it's possible to do with pre-compiled libraries : 
https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-built-libraries. 
Caution, in this document, the new override syntax (with ":" instead of 
"_") is shown, it doesn't apply to Dunfell.

I hope this helps
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


