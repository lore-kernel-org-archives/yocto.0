Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFE7C4332F
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 21:23:37 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.190625.1672262610306793678
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 13:23:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=hpF5ZhdF;
 spf=pass (domain: mistywest.com, ip: 209.85.216.41, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pj1-f41.google.com with SMTP id hd14-20020a17090b458e00b0021909875bccso17276336pjb.1
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 13:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z1AxCjuYMft+Ylt/H3STa6j2WDPLFGpBnBHnw7UffWc=;
        b=hpF5ZhdFDMO4+5EVwMOcL6voBaxx+WxLA+7ZXGgzzdBORzReBvhTM7Fd2n/YQryy20
         me8jiNtOht2OawfAaKXqGBOAsqrwR1de64Hl5Gge2Ss7eVBKTzKaCrrubLQGlsvY31kN
         8PIRQ72vYYMb/DdlIYLUehXgzmiE3eJJTA+DCt0I/Pn8WlPKSdwofuELpwOM/haqYO3s
         o4eAwpnB5vyCbQlbtV3rXKyRPxsjZonlNp1o83wYQJxivweC21IcCeb+SFhO/QHz9v9H
         O8PYh1+whG6u6uZTeDUpW1RLjZzWzqolOH5+C3X5zJcQ0Ip8dcZbyAtwrT1KNrTU+9RP
         3pew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1AxCjuYMft+Ylt/H3STa6j2WDPLFGpBnBHnw7UffWc=;
        b=mt6KsPV5yFVbx8X9AaxYAMr0AjydrEmIH5QFL3HEYqkrqV/6x3Ocp22Y8ixCe0ieuH
         iUW9r4h0M1CAZF847GPL9OXAgd9AUIc5JWerHjCdi2BXmyrj1eBKWNiaj4UcmqmyV1TN
         s5eyFzBmjnuWkBA36/M7jJxUTkseX9USWiS4rU6eTLY2S3E+pGxUhrkSJYhKK+B22UsO
         sLSp8Y6S3goKuS1qOin2a8peT2SKYuno5dYuv3eHhyG/6IwrH/rLEKiL5ogLWaTEKTse
         gvi8QMIVzNMbjmIIJhJ8/fwcotCDHhqs6r205fz+s1HK6JnyqXzNB4EZWl0qt9o508jN
         j0iQ==
X-Gm-Message-State: AFqh2kpndIrYU+lVysQx6u1bPiTrP7GSZ8nmtysrx3rzMVzOLV00Nwvo
	zfrvVASBlE0klCQfcgDIou2YdQ==
X-Google-Smtp-Source: AMrXdXu9VCM1M+t8H9nL6UxfNc4246mINvzFQ5LIDC8DInX468ncq7v4REptJlOh+P1hurg7OeHh5Q==
X-Received: by 2002:a17:90a:1d3:b0:218:a9dc:4936 with SMTP id 19-20020a17090a01d300b00218a9dc4936mr42798236pjd.26.1672262609464;
        Wed, 28 Dec 2022 13:23:29 -0800 (PST)
Received: from [192.168.100.190] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id s8-20020a17090a760800b00218e8a0d7f0sm12253766pjk.22.2022.12.28.13.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 13:23:29 -0800 (PST)
Message-ID: <eff569d3-b77f-6486-3123-6e11f73d8bb9@mistywest.com>
Date: Wed, 28 Dec 2022 13:23:28 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] recipe won't build, missing pseudo
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
 <bbecbeeb0710b22a9fcadf09188c948eac538475.camel@linuxfoundation.org>
 <be0f9503-26e3-d7d5-9789-1c3687cb1cfd@mistywest.com>
 <19a64f3a03bce344a4a848dbed2c5b7f0059fcf6.camel@linuxfoundation.org>
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <19a64f3a03bce344a4a848dbed2c5b7f0059fcf6.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 21:23:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58884


On 2022-12-28 8:11 a.m., Richard Purdie wrote:
> On Wed, 2022-12-28 at 07:44 -0800, Ron Eggler wrote:
>> On 2022-12-28 03:42, Richard Purdie wrote:
>>> On Mon, 2022-12-26 at 18:54 -0800, Mistyron wrote:
>>>> Hi,
>>>>
>>>> I'm want to write a recipe to compile phytool but I'm getting the below
>>>> error when building it with:
>>>> $ bitbake -b phytool_2.0
>>>> ERROR: Failed to spawn fakeroot worker to run
>>>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install:
>>>> [Errno 2] No such file or directory:
>>>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'
>>>>
>>>> my bb file looks like:
>>>>
>>>> [phytool_2.0.bb]
>>>> DESCRIPTION = "Recipe builds phytool utility"
>>>> # Needs to be changed to GPLv2
>>>> LICENSE = "MIT"
>>>> SRC_URI = "git://github.com/MistySOM/phytool.git"
>>>> SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
>>>> LIC_FILES_CHKSUM =
>>>> "file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0"
>>>> INHERIT += " pseudo"
>>>>
>>>> python do_display_banner() {
>>>>        bb.plain("some message")
>>>> }
>>>>
>>>> addtask display_banner before do_build
>>>> [/phytool_2.0.bb]
>>>>
>>>> It appears like my INHERIT line does not satsify the requirement.
>>>> How can I resolve this?
>>> There is no class called "pseudo" so the inherit line is wrong. Why do
>>> you think you need to inherit such a class?
>> Because bitbake gave me an error that it could not find it, hence I
>> added it as a dependency.
> A dependency would be something like:
>
> DEPENDS += "pseudo-native"
>
> however that isn't your problem.
>
>>> Pseudo is usually used by tasks as needed by default.
> The problem is your -b option usage. To quote bitbake --help:
>
>    -b BUILDFILE, --buildfile BUILDFILE
>                          Execute tasks from a specific .bb recipe directly. WARNING: Does not handle any dependencies from other
>                          recipes.
>
> As it says, it doesn't handle dependencies from other recipes like pseudo.

Duh,  people who can read have an advantage!
Thanks for the clarification!

-- 


*RON EGGLER*
Firmware Engineer
(he/him/his)
www.mistywest.com
MistyWest Logo

