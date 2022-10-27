Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC269FA3740
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 19:00:39 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web12.1386.1666897231424534121
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 12:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=et1TzCJD;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.176, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f176.google.com with SMTP id h2so2457575pgp.4
        for <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 12:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SK09QFbTNXG15qCGR10xqceCJwMHg7ud+voO6GkCd1M=;
        b=et1TzCJDfJlwnUBKqsI3I7xwAF2Yq2tJVoDr5MOWLKndIG+wZ+aX0PNPDD9PKfN+HC
         vVsVl/SrOZkaZBanj++YjfS0L9Wz+MaNhreMmZ3R33qsae3IRIZiNQUMmhE2/9rJYZy+
         dJ50+WkUNw5FNlhtrGlAXo4+UvX94nmm9hWojh9/WkoP/F7YTc60yZmuotx1qkWW5IiN
         1mbn73TswuD6z4iRZMQXQjjrhF2WIeBqEUilzZryv8m0DpwrPwt9JE8a9geod1G9bxg2
         NZOsOMv+zKWDF7WvWzaihmITXzFIlYdBL8QclIFQZKixO6ha6PWm29RQP5ApTKhSN/ze
         zj/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SK09QFbTNXG15qCGR10xqceCJwMHg7ud+voO6GkCd1M=;
        b=qgSouQOHS3Q1gzXtDWQs7Bli344zhX277S4RrNWXqvaoNLoPVri/TNWVVw+K4ZZ8Yf
         YMdFC5g6Vz5g6pE2gy33/2bZQ71w/qyKsIBodSvv8cAXN+4wJC2pjkXy7dc24nhv5N2S
         kkVYp5AzTIH/re6NsjueQBfIXF7+fYZkcf65y7ty5jEBGpZJGjDMC1wpPFdOdPuP8pkR
         5/OvkK4sIKuVS1AJD/pQV+AF5EkfHm3/D4DWhkKzBqpQuPmskSMfrJym7YHqxC7LghoY
         tcvm15lQmYgld58pWUhVrChX2qP+R49RcA5jPl7GYLltaH9ZLCtKkaj7JABMFSxdPCbo
         6wFw==
X-Gm-Message-State: ACrzQf3qMlGBt6aFG/2qO4b6Ul+8NKeb9bAcELwjVCjZdcLkUFWozg7r
	9iJQLsF1G0C3uw4StTZl/qdlVg==
X-Google-Smtp-Source: AMsMyM5Z8tdIP8KWgCWLn8yqGHBggCWkaVNRbfS4Uo/wy0KoLmCX/11kOk7dgzjAwaJlWcuAIoAYBA==
X-Received: by 2002:a63:693:0:b0:46e:e210:effb with SMTP id 141-20020a630693000000b0046ee210effbmr24439611pgg.10.1666897230624;
        Thu, 27 Oct 2022 12:00:30 -0700 (PDT)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id e9-20020a17090301c900b001782f94f8ebsm1583003plh.3.2022.10.27.12.00.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 12:00:29 -0700 (PDT)
Message-ID: <133de83c-2697-fcc0-9b07-803f2d6eb4a7@ibeeto.com>
Date: Thu, 27 Oct 2022 12:00:27 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Content-Language: en-US
To: ron.eggler@mistywest.com, yocto@lists.yoctoproject.org
References: <nSWO.1666832391012021941.SCBQ@lists.yoctoproject.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Re: [yocto] patching of device tree from layer
In-Reply-To: <nSWO.1666832391012021941.SCBQ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 19:00:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58427

Ron,

On 10/26/22 17:59, ron.eggler@mistywest.com wrote:
>
> Hi,
>
> I'm new here and relatively new to working with Yocto (creating my own 
> layers anyways). I'm working on developing a SOM platform based on 
> Renesas RZ series of MPUs.
>
Welcome. When asking a question on a mailing list it is always advisable 
to put all relevant information pertaining to the question into the 
email and be specific about what you think the problem is. It alleviates 
people from having to collect additional data to understand the problem.
>
> I've followed the guide on Digikey by Shawn Hymel to learn about 
> device tree patching 
> (https://www.digikey.ca/en/maker/projects/intro-to-embedded-linux-part-5-how-to-enable-i2c-in-the-yocto-project/6843bbf9a83c4c96888fccada1e7aedf). 
> I assume many of you know about it as well.
>
Not necessarily. There are so many different devices and there's 
probably nobody who knows them all. :)
>
> It does a good job in describing how to add changes in a dts file. In 
> the example, a i2c5 node is added in the dts, overwriting what had 
> been defined in the original dtsi file and I'm doubting the 
> cleanliness of it.
>
It is good practice to override definitions from a dtsi in a dts. That 
is the entire idea of the device tree include file which is what the 'i' 
suggests. The idea is to use dtsi to define device nodes that are shared 
between different platforms. Some of them are always enabled since all 
platforms use them. Others, like the i2c bus in question, may only be 
used on some devices and hence they are disabled. Some nodes might only 
be templates and the platform's dts needs to complete them if they are used.

In this particular case it would have been better to simply add

&i2c5 {
    status = "ok";
};

to the dts as the other definitions were already present as such in the 
dtsi stm32mp15xx-dkx.dtsi

> Would it not be better, to patch the node in the dtsi file and add the 
> required changes there instead of adding them to the dts file 
> essentially overwriting what was set previously? I imagine this will 
> essentially lead to two nodes being defined with the same name, the 
> latter just overwriting the former, is that so?
>
Nope, that is the idea of using the & before the device node name. All 
of the &'s and the node's root definition will be merged by the device 
tree compiler into the resulting device node definition. In this case 
the i2c5 node's root definition is in stm32mp151.dtsi which is included 
by stm32mp153.dts which is in turn included by stm32mp157.dtsi which is 
included by stm32157d-dk1.dts. (I might be wrong with the details of the 
chain as just browsed through it quickly but you get the idea.)
>
> How would one go about patching the dtsi and making sure that the 
> patch is applied before ther file is included?
>
I don't recommend doing this but the example explains how to patch the 
dts file. It works the same way for the dtsi.
>
>
> Thank you all,
> Mistyron
>
>
:rjs
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58421): https://lists.yoctoproject.org/g/yocto/message/58421
> Mute This Topic: https://lists.yoctoproject.org/mt/94595311/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


