Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BC21C77B7C
	for <webhook@archiver.kernel.org>; Wed, 24 May 2023 19:52:34 +0000 (UTC)
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
 by mx.groups.io with SMTP id smtpd.web10.3912.1684957946903482844
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 May 2023 12:52:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=KM6LiIz7;
 spf=pass (domain: bootlin.com, ip: 217.70.183.198, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8E385C0004;
	Wed, 24 May 2023 19:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1684957945;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=teN3RyDm26Ep+pxpSiG1KtfZdiutyJZtLpYNYCam/K4=;
	b=KM6LiIz7YcYmrolT2ENL3jvEicPZMBSJ7hcFtVf+BmJFafPVXRk5PDpUDceU+YoljA0/HF
	vUCM4Yi+MdN+WtvA4HGmd+h2VKjFS6HHgardsd+9JTpYhma3S/q1c4PGn3sMDwqDiwdvS/
	9huS9HlPX6SzlsGSyyWm2SoxxjZPM4u/SnFLtEojj/B9SFvi5QzTLhIOq68IYaPzNHlo58
	f+WtCWbfeRRthZLkabz19KLLngVMxafghyDLFdWcuBD6v4rJhri+Qj1BQVh1nGq5d6ZiQz
	ZHrlcURnisIu6OmZRj0N2VjQ8mippvCVuJYvy938dJyMnb1GUSJJs5gm0qcbqQ==
Message-ID: <a82a15fb-387f-8ac8-70a5-13c9df329eb6@bootlin.com>
Date: Wed, 24 May 2023 21:52:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] psplash: white stripes with custom splash image
Content-Language: en-US
To: Khem Raj <raj.khem@gmail.com>
References: <dc33b8e9-3c27-afc0-7595-9020ba69bbdd@bootlin.com>
 <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CAMKF1sq5GkHkumFtS-CgDOPFR5Bydizk2dnMLvmzNECYTy=Q=w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 May 2023 19:52:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60114

Hi Khem,

On 24.05.23 at 18:46, Khem Raj wrote:
> On Wed, May 24, 2023 at 3:24 AM Michael Opdenacker via
> lists.yoctoproject.org
> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>> Greetings,
>>
>> I wanted to customize the boot splash image for an i.MX6 system.
>>
>> I'm using Kirkstone and created a psplash/psplash_%.bbappend file in a
>> custom layer:
>>
>> SPLASH_IMAGES = "file://krtek.png;outsuffix=default"
>> FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
>>
>> The "files/krtek.png" file has a 800x480 resolution, which matches my
>> display's.
>>
>> However, the screen shows two white stripes at the bottom (see the
>> attached picture). Actually, the top stripe is added on top of the
>> original picture, and the bottom one corresponds to the picture being
>> translated upwards (see the attached original picture).
>>
>> I'm running a 4.19 Linux kernel. I couldn't reproduce this issue on a
>> qemux86-64 system (same picture, 5.15 kernel), though the QEMU display
>> has a greater resolution.
>>
>> Has anyone seen this before, or would anyone have an idea why this happens?
>> Thanks in advance
> It looks like the text box for messages is still painted. try with
> both sysvinit and systemd
> IIRC I saw something similar with systemd a year or so ago, it might
> have been different
> thing dont know.


Thanks for the tip!
I am using systemd indeed. I've just tried with sysvinit, and the issue 
is the same. Anyway, I'll check the code for this text box.

Thanks again.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


