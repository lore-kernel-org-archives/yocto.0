Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C032CC41535
	for <webhook@archiver.kernel.org>; Fri, 22 Dec 2023 13:14:35 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web10.22847.1703250865727762290
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Dec 2023 05:14:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=fehQs8OJ;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id EA1D420008;
	Fri, 22 Dec 2023 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703250863;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SppNO6In1/Fg0OI8g5CS0C0QHKQFF6Qg8af6Tr6vdCA=;
	b=fehQs8OJukQrQf+IGM9twxwkbaMYKzXYqW/6x/3kS+pMI2dolL+IsZX/nEIvarxrno4vY1
	QjZ2vNiQmdmFEb5Ol6Adhl/nb4HHxdLO/ob3kPEBabCE0DlF/eB85fWkxSf2Pgp3+PXhMx
	zE+TmtLXlb6wTyg6XfmQWNfTEaD5rMU60IQjNyLiURaefVgAK0Pvkj45FjosEH29pRlsuk
	Nc0+X2wkHfjo0Qf1M2pyURB1/nhATL3IUV7psX8frgqg9c9+M8lUcUvWZophiBBAXH9ShG
	u7pJW16l0DSxE/qO9GEguLzaiMy/uUZwtQBk0NYru9Hlejo0inFWUIaF8oxofw==
Message-ID: <6de0cc50-55d1-4afa-a25a-4c9d1296823e@bootlin.com>
Date: Fri, 22 Dec 2023 14:14:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add
 "package-management" to images
Content-Language: en-US
To: alex.kanavin@gmail.com
References: <20231222114826.812055-1-michael.opdenacker@bootlin.com>
 <17A3251640736EA2.10357@lists.yoctoproject.org>
 <CANNYZj80z59BT6y=2aNW5sKJ8kgOh3uhY_iLFGuV7SPbLWMduA@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj80z59BT6y=2aNW5sKJ8kgOh3uhY_iLFGuV7SPbLWMduA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Dec 2023 13:14:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62024

Hi Alex,

Thanks for reviewing this patch.

On 22.12.23 at 12:52, Alexander Kanavin wrote:
> And also, why here, and not in oe-core? Any such custom tweaks add to
> the friction and mismatches between local builds and autobuilder
> builds, especially when one fails but not the other.
>
> Alex
>
> On Fri, 22 Dec 2023 at 12:51, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
> wrote:
>> Wait, why?
>>
>> Alex
>>
>> On Fri, 22 Dec 2023 at 12:48, Michael Opdenacker via
>> lists.yoctoproject.org
>> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>>> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>
>>> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
>>>
>>> ---
>>> Note: could not test this change!
>>> ---
>>>   config.json | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/config.json b/config.json
>>> index d504d07..bd0135e 100644
>>> --- a/config.json
>>> +++ b/config.json
>>> @@ -74,7 +74,8 @@
>>>               "BB_LOG_HOST_STAT_ON_FAILURE = '1'",
>>>               "BB_LOG_HOST_STAT_CMDS_FAILURE = 'oe-time-dd-test.sh -l'",
>>>               "SDK_TOOLCHAIN_LANGS += 'rust'",
>>> -            "BB_SERVER_TIMEOUT = '60'"
>>> +            "BB_SERVER_TIMEOUT = '60'",
>>> +            "EXTRA_IMAGE_FEATURES += 'package-management'",


Oops, it's true I should have given some context here. Not following my 
own advice, that's embarrassing :}

Actually my patch is for the binary distro effort. We want to implement 
a test that generates a feed of packages, typically from the tip of a 
release branch (or master), and then try to use this feed to update an 
image generated for the latest tag (release or milestone) on this branch.

An idea was to use the images we produce for releases at 
https://downloads.yoctoproject.org/releases/yocto/, but unfortunately 
such images don't have package management enabled, which prevents us 
from using them.
That's why I was proposing this.

By the way, do you mean such a config.json file exists for oe-core too. 
If so, where?
Thanks again
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


