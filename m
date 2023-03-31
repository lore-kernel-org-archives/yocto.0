Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F52C6FD18
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 09:50:37 +0000 (UTC)
Received: from relay10.mail.gandi.net (relay10.mail.gandi.net [217.70.178.230])
 by mx.groups.io with SMTP id smtpd.web11.50694.1680256228179388428
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 02:50:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pL/OXO92;
 spf=pass (domain: bootlin.com, ip: 217.70.178.230, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 9CB6D24000D;
	Fri, 31 Mar 2023 09:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1680256226;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UFzgkSq8R8LwX6kpVgHnitkP1Gq+BMOosgFIS0OZfI8=;
	b=pL/OXO924FRjAXexxrmOhnVZUksdnyTkYvJo+cJ3x3qqsXiMwmKZtLGAV988Ad74idL71v
	7HOeuoYEfcJPNh+sfHEX+dKQLj71VrwYeroYhXcLIcrR1eazBppSp919pz1MrkfOYR6Kcl
	V9Hsz4rpEgkDtN1dW5UdTU+ku3Xcp7eOCueyI9W9uhpfQzR5LiYQS4taZKXCexA0Uxr97h
	MwLbeFTKanHErYe+0DJywhSrSwUxVhSUZ1RRzmtydLE2pjat2YXPh57jeLuIgvkidkCMlV
	MgvZUchJUL4dnS29boIcZ0i9cAv3UA26TZqZOEg2ORU3o7/xOTsLtX2ODhlbIg==
Message-ID: <0de7fc3d-4b15-b178-3800-f5b8f4f26442@bootlin.com>
Date: Fri, 31 Mar 2023 11:50:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [yocto] How to compile binary executable files
Content-Language: en-US
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>, yocto@lists.yoctoproject.org
References: <61a0925a-8514-bb93-e110-73299944b054@bootlin.com>
 <13330.1680255730648731834@lists.yoctoproject.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <13330.1680255730648731834@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:50:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59563


On 31.03.23 at 11:42, MOHAMMED HASSAN wrote:
> If so, you could write a recipe to integrate the binary into your
> root
> filesystem, as it's possible to do with pre-compiled libraries :
> https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-built-libraries.
>
> Caution, in this document, the new override syntax (with ":"
> instead of
> "_") is shown, it doesn't apply to Dunfell.
>
>     Will it be okay for me to refer the above link for my specific
>     case?I'd say yes, write a similar recipe for your binary.
>
> Its a .exe binary file. Will it work?


Not if that's a Windows executable (you can check with the "file" 
command). Just try to run it on your target system a
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


