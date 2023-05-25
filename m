Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5407AC77B7A
	for <webhook@archiver.kernel.org>; Thu, 25 May 2023 09:39:38 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.7977.1685007576038893518
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 May 2023 02:39:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=TdjPKQdP;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8E4C660012;
	Thu, 25 May 2023 09:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1685007574;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mOM1WtBHJ/3ICY11ZjcnUHCvE9WX6jlMEmV78RlwpOo=;
	b=TdjPKQdPmail0XzgJGbu5w+1H2vWwZkJIurpWXhpxW1/nUOC+2kgQsjcbFGLiz2T4WZuHw
	QFYkCAIqCruiL5/A0TuV3Mtuce+SBf5xYM/4OtWwWEsQzYsy+aGH+GC43EgI4GIiBMw9Rn
	CHy3GeyDfK4AcraE1YdwylxaSNY/neWtpBTMpTLKbkHHYPQ0uM5VzVOF6sZr1mPefyDsMZ
	qLYOVuLcwFlo6wELZrfUMZZqe9HZrOwnBOGENFMOg2aKC50/CPfGGUMcNjiMo7fVCDqLpv
	JvZsmQKB7VMmZXPKNzdmHU7IDDXJ7Y4HGfjb8P3PL45zSyQi7u14mgZ3Lsw+Qw==
Message-ID: <305111e6-2a94-4296-196f-9e16454b4111@bootlin.com>
Date: Thu, 25 May 2023 11:39:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: Khem Raj <raj.khem@gmail.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] psplash: white stripes with custom splash image
Content-Language: en-US
To: Tim Orling <ticotimo@gmail.com>
References: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
 <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com>
 <a82a15fb-387f-8ac8-70a5-13c9df329eb6@bootlin.com>
 <CANx9H-COECkEFztZXmxLF7rNZkkjfuZpBL9y+ZC4_Xvc-tBXhQ@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANx9H-COECkEFztZXmxLF7rNZkkjfuZpBL9y+ZC4_Xvc-tBXhQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 May 2023 09:39:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60121


On 25.05.23 at 06:22, Tim Orling wrote:
>
>
>     Thanks for the tip!
>     I am using systemd indeed. I've just tried with sysvinit, and the
>     issue
>     is the same. Anyway, I'll check the code for this text box.
>
>
> https://git.yoctoproject.org/psplash/tree/configure.ac#n34
>
> I think.


Yesss!

EXTRA_OECONF += "--disable-startup-msg --enable-img-fullscreen"
did the trick:

  * "--disable-startup-msg" to disable the upper white box (I didn't see
    the startup message anyway)
  * "--enable-img-fullscreen" to avoid the upward shift.

Many thanks!
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


