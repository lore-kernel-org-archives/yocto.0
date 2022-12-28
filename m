Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CFC4C4167B
	for <webhook@archiver.kernel.org>; Wed, 28 Dec 2022 15:44:15 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web11.184131.1672242252009278814
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Dec 2022 07:44:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20210112.gappssmtp.com header.s=20210112 header.b=7iuQ0Vo0;
 spf=pass (domain: mistywest.com, ip: 209.85.214.176, mailfrom: ron.eggler@mistywest.com)
Received: by mail-pl1-f176.google.com with SMTP id t2so16386190ply.2
        for <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 07:44:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9lK91oehYy9lbJ8XyOKj1we621eeHxIKXOuklAtOxH4=;
        b=7iuQ0Vo0ArSNigbNZBHf0mKWn6zh5X8z35+nYLRZOjH0ACsPcvXhjvbgjjML9+SqJo
         NlUAc3pMLVyT6qBflz70tbr2g0t+Cu6nnsi9+FXgkPfiQ5ki/WTYJLi0m9r0WwmNpDWo
         wQ+MAt5gldPQa8IqsyRG2WYpC/i9bNuEqGGmq8+ZE/TslgLveOml+5IW3UQvTmgr42M2
         oUxZTI7lFgbpLOaNa9L/YNFmc1NHya2f/xOhEy7cLggLr0Oh/lzxqPjACQPzttntFpOw
         eYXBOz4ZEcXpANCmWZjGfCJOQ3o6s+LAo29G+V1+9X+lces0YquFwMavnwfITRczIZKS
         amvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9lK91oehYy9lbJ8XyOKj1we621eeHxIKXOuklAtOxH4=;
        b=SihRGLPQYTGtV7krzbgAP8vES+q0UF2DiRnbSSplNjAmvIqR86eOl5HGg2hvH1BBfR
         R3Kh7WEw5zBT5SROuq601W4KSR4JyVpapyVngynPbrmIwN6oLkwj/0LCWKE54JJEHif/
         yerDSvnn8Sn4u0D88SQevqwmXgWOOf+DtQOTdMt/reqLkzKO940bknxvvK0AjIdxb4FU
         bHeD80QpPAkkt0KV5A70JQt4WakhM37buXobbAH5GBUoN5BHdL1UAlpmewuM4fttKhHy
         sqIuVUcgtxQrJKXPDjd9ONdmhNF4LzKhumxGfd8dai/3f7VzP1qu3hJSDjG69T0PtMiw
         vDhg==
X-Gm-Message-State: AFqh2kpKaGBLtHZvwSDMVM6cjrbUp6/43RJz8XkbXoaoVmb837n9OrGN
	B+bI026zye/qK+KKN7l7sbOlyg==
X-Google-Smtp-Source: AMrXdXtiSF6+bK8vWpmPjbc0ZEShP1CFnMM+uhZQQfmIX9EooSW5usRPdHXaAkA9ssPyp+XVVTf9Pg==
X-Received: by 2002:a05:6a20:1e48:b0:a3:1e96:96a4 with SMTP id cy8-20020a056a201e4800b000a31e9696a4mr32774343pzb.43.1672242251319;
        Wed, 28 Dec 2022 07:44:11 -0800 (PST)
Received: from [192.168.99.1] ([209.52.149.8])
        by smtp.gmail.com with ESMTPSA id n7-20020a622707000000b00580c0219f16sm5826003pfn.169.2022.12.28.07.44.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 07:44:10 -0800 (PST)
Message-ID: <be0f9503-26e3-d7d5-9789-1c3687cb1cfd@mistywest.com>
Date: Wed, 28 Dec 2022 07:44:09 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] recipe won't build, missing pseudo
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <c8e02a83-0061-d3f2-6c60-1ca836719836@mistywest.com>
 <bbecbeeb0710b22a9fcadf09188c948eac538475.camel@linuxfoundation.org>
Content-Language: en-US
From: Ron Eggler <ron.eggler@mistywest.com>
In-Reply-To: <bbecbeeb0710b22a9fcadf09188c948eac538475.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Dec 2022 15:44:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58880


On 2022-12-28 03:42, Richard Purdie wrote:
> On Mon, 2022-12-26 at 18:54 -0800, Mistyron wrote:
>> Hi,
>>
>> I'm want to write a recipe to compile phytool but I'm getting the below
>> error when building it with:
>> $ bitbake -b phytool_2.0
>> ERROR: Failed to spawn fakeroot worker to run
>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-bringup/phytool/phytool_2.0.bb:do_install:
>> [Errno 2] No such file or directory:
>> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo'
>>
>> my bb file looks like:
>>
>> [phytool_2.0.bb]
>> DESCRIPTION = "Recipe builds phytool utility"
>> # Needs to be changed to GPLv2
>> LICENSE = "MIT"
>> SRC_URI = "git://github.com/MistySOM/phytool.git"
>> SRCREV = "8882328c08ba2efb13c049812098f1d0cb8adf0c"
>> LIC_FILES_CHKSUM =
>> "file://../git/LICENSE;md5=39bba7d2cf0ba1036f2a6e2be52fe3f0"
>> INHERIT += " pseudo"
>>
>> python do_display_banner() {
>>       bb.plain("some message")
>> }
>>
>> addtask display_banner before do_build
>> [/phytool_2.0.bb]
>>
>> It appears like my INHERIT line does not satsify the requirement.
>> How can I resolve this?
> There is no class called "pseudo" so the inherit line is wrong. Why do
> you think you need to inherit such a class?
Because bitbake gave me an error that it could not find it, hence I 
added it as a dependency.
> Pseudo is usually used by tasks as needed by default.


