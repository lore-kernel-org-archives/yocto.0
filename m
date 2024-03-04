Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9C3EC48BF6
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 16:02:30 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
 by mx.groups.io with SMTP id smtpd.web10.102973.1709568148885691362
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 08:02:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=bYbdpb9Z;
 spf=pass (domain: bootlin.com, ip: 217.70.183.195, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id A58A560005;
	Mon,  4 Mar 2024 16:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709568147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eHZZOwOlXGFAZrVMxrXHEz+0q1Z/HmZaA7wm/m0JZho=;
	b=bYbdpb9Zio4o54q7FNPqKzm8J5Acx/Ab/brgCQew0KoWrLl5EPDsyn28QLy6B634JMZuf2
	OezeSnw8TyWN8k5KXfjg5180YzjMuD4FCbdVaU/l5DBg+xxDcW7/hn4nism6xjwOXglVtD
	ry3gR6n4NOcq3iQIBbsTsVjuT8CcIjG5zd2Wx6g1W2VXZGpZFsgVg8ju2ZFtRRG2HtkL4u
	Do64Z2+0ayvuWl+hAKFL2G46nBpjZJbdqvORGI6N/9L9vIMgfI2KSlxT3GEZMHCtF4AxNF
	xjSCwBbAMAyq6M9pTStMM6jFsh4ZGcJ6TQUWH9gjyg3ArAUpgvaHWW09cXh3Rw==
Message-ID: <c8873a38-aac6-4cc4-a828-4c039897b5a2@bootlin.com>
Date: Mon, 4 Mar 2024 17:02:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Switch
 poky-altcfg to use ipk as the package backend
Content-Language: en-US
To: richard.purdie@linuxfoundation.org
References: <20240304151405.2093292-1-richard.purdie@linuxfoundation.org>
 <ab742630-87e7-4fd2-96e3-a7987481c47a@bootlin.com>
 <e5fe9f472bf8766413f7fc9713c68fc5c72214a8.camel@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <e5fe9f472bf8766413f7fc9713c68fc5c72214a8.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 16:02:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62673

Hi Richard,

On 3/4/24 at 16:48, Richard Purdie wrote:
> On Mon, 2024-03-04 at 16:34 +0100, Michael Opdenacker wrote:
>> Hi Richard
>>
>> Many thanks for the patch!
>>
>> On 3/4/24 at 16:14, Richard Purdie wrote:
>>> Since we plan to have better "binary distro" testing on the autobuilder
>>> and we plan to primarily use ipk for this, having ipk based images available
>>> as part of our builds is desireable.
>>>
>>> Since we want systemd based images with ipk, it makes sense to leave standard
>>> poky using rpm images but switch poky-altcfg to use ipk.
>>>
>>> Whilst late in the release cycle, doing this now for scarthgap gives us a good
>>> platform to build off in the long term too.
>>>
>>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>>> ---
>>>    config.json | 5 +++++
>>>    1 file changed, 5 insertions(+)
>>>
>>> diff --git a/config.json b/config.json
>>> index fd8335f..4d0f258 100644
>>> --- a/config.json
>>> +++ b/config.json
>>> @@ -127,6 +127,7 @@
>>>                "BUILDINFO" : true,
>>>                "BUILDHISTORY" : true,
>>>                "extravars" : [
>>> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
>>>                    "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
>>>                ],
>>>                "extratools" : "${EXTRATOOLS_URL}",
>>> @@ -140,6 +141,7 @@
>>>                "BUILDINFO" : true,
>>>                "BUILDHISTORY" : true,
>>>                "extravars" : [
>>> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'",
>>>                    "IMAGE_INSTALL:append = ' ssh-pregen-hostkeys'"
>>>                ],
>>>                "extratools" : "${EXTRATOOLS_URL}",
>>> @@ -198,6 +200,9 @@
>>>            "altcfg-hw" : {
>>>                "DISTRO" : "poky-altcfg",
>>>                "BUILDINFO" : true,
>>> +            "extravars" : [
>>> +                "PACKAGE_CLASSES = 'package_ipk package_rpm package_deb'"
>>> +            ],
>>>                "step1" : {
>>>                    "BBTARGETS" : "core-image-full-cmdline core-image-sato core-image-sato-sdk"
>>>                }
>>>
>> Actually, to use these images for testing package upgrades through
>> feeds, we also need enough free space in the images.
>> Could we also add something like IMAGE_ROOTFS_EXTRA_SPACE = "262144"?
> Setting that "globally" for those templates will potentially break other
> images the usual way to do it would be:
>
> IMAGE_ROOTFS_EXTRA_SPACE:append = "+ 102400"
>
> but I still worry about side effects, e.g. for minimal or initramfs images.
> Which images do we plan to test? core-image-full-cmdline and what else?
>
> We probably need a set of definitions like:
>
> IMAGE_ROOTFS_EXTRA_SPACE:append:pn-core-image-full-cmdline = " + 262144"
>
> but something like:
>
> IMAGE_ROOTFS_EXTRA_SPACE:append = "${@bb.utils.contains("IMAGE_FEATURES, "package-management", " + 262144", "", d)}"
>
> might work.


Ouch, good catch.
I'd vote for the second option. When we have package management, it 
makes sense to keep enough space for downloading and applying updates.
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


