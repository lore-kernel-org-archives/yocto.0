Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E999C54798
	for <webhook@archiver.kernel.org>; Tue,  5 Mar 2024 08:53:43 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web11.17825.1709628816082450319
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Mar 2024 00:53:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=Ovd0wnrh;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D5658C000F;
	Tue,  5 Mar 2024 08:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709628814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1yjWIW9barHogcuc1Vu4LO6eRujYpf2Uuf0atAchCF0=;
	b=Ovd0wnrhkp5rGYJLbnOa9OB8TaKMvFJ2ftDSKPoCHYEpLmirRerIVAPzGQUVQAjyczIOfD
	65clAydE3TEQV6wdOsgUEqEMqVkOy7wFq+qU5aNDoMEd9V4ALlIkNwEfCNf48MvrZP7tO+
	o+DvdQAgWgmk545KtJ84l2A0mTG/xhj5AGrbQafoWdWT+D+HRrmKZuQYxJIBwOQS6sdBdl
	H2Ek4xktT1lY5/T2Xj+VqQ+aVOVW6wmCUrW7MbNQHHebdwaeL6QBUuCCC/lDfK8NUBL4L8
	uZiFICdI+sxw5MPaEsKpl4eVavEKWyeqDjzaU4FZLk3YKqOTjmmabA0FodBQWQ==
Message-ID: <61d636c5-1406-4b2e-849f-48bc3ffd6c32@bootlin.com>
Date: Tue, 5 Mar 2024 09:53:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Introduction and my first query: Resources for learning
To: worik.stanton@tirotech.co.nz
References: <CANuMBWFxwxt7Fr+qab4U+HHFiSMu4KeukjiMVkme-zgDVpiq=w@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANuMBWFxwxt7Fr+qab4U+HHFiSMu4KeukjiMVkme-zgDVpiq=w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Mar 2024 08:53:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62681

Hi Worik

On 3/4/24 at 23:12, Worik Stanton wrote:
> Kia ora
>
> I am Worik Stanton, from Dunedin New Zealand.  I am new to Yocto, and 
> to this list, with many decades experience programming computers.

Welcome to our community!

>
> My question is about what are the best resources for learning how to 
> adapt and maintain a Yocto system  I am responsible for.
>
> I have recently become responsible for a collection of Yocto "builds" 
> (I am unsure how I should describe them) that I must learn how to 
> maintain, adapt, and extend.  Adapt and extend to new hardware and to 
> new software that we are writing.
>
> The author of the system is available only sporadically and is cleary 
> moving to greener pastures and is unable to offer much help.
>
> I have the "Embedded Linux Systems with the Yocto Project" and it is 
> helpful.  However the systems I am working with are, I fear, quite 
> idiosyncratic and highly developed.
>
> The example  of the sort of  problem I have faced and solved  is I 
> needed "lsblk" in my build.  I found that by adding the name of the 
> Debian package to a variable IMAGE_INSTALL  "IMAGE_INSTALL += 
> util_linux" essentially, places "lsblk" in the root file system.
>
> I have no idea why I used the name of a Debian package!


That's just the name of the package, which happens to be the same name 
as in Debian, that's all :-)

>
> I do not feel ready to pester you folks with queries until I have done 
> more reading and have moved along the learning curve.   I am hoping 
> for some meta advice about where I can look for guidance for problems 
> like that.


Happy to help too when we can!
I guess you also found the Yocto and BitBake manuals: 
https://docs.yoctoproject.org/
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


