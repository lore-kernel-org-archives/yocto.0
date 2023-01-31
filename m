Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37769C38142
	for <webhook@archiver.kernel.org>; Tue, 31 Jan 2023 16:10:55 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web10.16175.1675181448624946168
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Jan 2023 08:10:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=qxIx0jbI;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.181, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f181.google.com with SMTP id 78so10400145pgb.8
        for <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 08:10:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x+But5P9Kx/fuGeF/0+KHgC0MPn3QOQwDmwoRzplA60=;
        b=qxIx0jbIZNHAgm1UzLuSU6pZejLCxFghAB9Y+xmdXrbyTmFfAEIyBkdF43j04j9ExB
         2DTQ5CkhOrBcZv37IhWsUgJCwU32/uMaysHN6NMku1TS1xFrRMjgA0dcpVUNAmyHXzgC
         243LiEyafh5MoEa7wJGFT43HrOq+U+B+Uw/IJIFBJFEp9iPtS79x12vZNPMHXJQ6BpYY
         9SulbrzcuxXOC7PJlpQIoo4ySpKfdhcx3FKb8mLUl2VAJCzg25x2b8KOW2vRE0VJqSf6
         hcPh0skqjmf9xzLoMyyNLaTKEUsLXpBGRhr9b9zwF220zk+WbNaR1d3vl+9ZDpL86Yw9
         I6wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:references:to
         :content-language:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=x+But5P9Kx/fuGeF/0+KHgC0MPn3QOQwDmwoRzplA60=;
        b=qmLlEgC1IL0Ome10v8m3Apc62eRYaA3qHp6s1JBXxHs+XqTJQcm2Sak4TpmPGZ2tAX
         mgsRcffXZbe492okMedDRnGbZPA2hDvQ5Y8me8XAuFkyONlp4YBpS02twFM10DzaRgfz
         AkpbaLthbA3DRqgGnrZ+0p3G0mAvQFsZMVMTVba1DC/1Qn7U/EvnEiBuuqDLJPOQk+WX
         XezEVRcO/Y7Z5/s90DmluflbBrrHfEzVBT7N7KCdCwlhhTk4//YgXC/RqEI9l+5A4Hy1
         o+Tb2T21eRvUl9+Wb2Q+Gdl+mNAEQWvIPiEZGuGbeoMDfXhwtxT+1f7iGefF/lapBx7u
         WWHg==
X-Gm-Message-State: AO0yUKW/TOfyXkaO5zOLoY/YmIaz5KbkIO+cFVraktw4Kdjo7q8MxwZ6
	caOjMr5EG3yRcvU+pMx6bD7Uwg==
X-Google-Smtp-Source: AK7set8K61v2N5lfOBf8ZQ02T89j8lE5xqaUaI57/cZCmGdS1tyXPy1rN1tHAcDb8ZUwy3PVAtmgfw==
X-Received: by 2002:aa7:9564:0:b0:590:72de:db46 with SMTP id x4-20020aa79564000000b0059072dedb46mr19634196pfq.13.1675181447900;
        Tue, 31 Jan 2023 08:10:47 -0800 (PST)
Received: from ?IPV6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89? ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id e14-20020aa7824e000000b0056283e2bdbdsm9694739pfn.138.2023.01.31.08.10.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:10:47 -0800 (PST)
Message-ID: <32eda577-c7aa-4862-f05f-a16448d91705@ibeeto.com>
Date: Tue, 31 Jan 2023 08:10:46 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Electronic Consult <electronicconsult1@gmail.com>,
 yocto@lists.yoctoproject.org
References: <CAGUWaEFzFPQ6v3RH97Kw3-fpjaFfMTfU9VC3FTMA+7DZtEcQQg@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Subject: Re: [yocto] Setting recipe PACKAGECONFIG with in a Bash script?
In-Reply-To: <CAGUWaEFzFPQ6v3RH97Kw3-fpjaFfMTfU9VC3FTMA+7DZtEcQQg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Jan 2023 16:10:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59123

Hello,

On 1/31/23 05:34, Electronic Consult wrote:
> Hello,
> I've searched & can't seem to find an answer for this but I'm sure it 
> must have come up before.
>
> I'd like to automate the generating of images using Bash & create 
> similar recipes but with different PACKAGECONFIG's. How does one do that?
>
PACKAGECONFIG is to enable/disable features for a particular software 
package on a per-recipe basis. Hence, by its nature, PACKAGECONFIG is a 
recipe local variable. If you want to set it in a global configuration 
file you need to use the syntax:

PACKAGECONFIG:pn-<recipename> = "feature1 feature3"

if you want to override the entire PACKAGECONFIG variable, or

PACKAGECONFIG:append:pn-<recipename> = "feature4"

if you want to add to the configuration.

> It would be something like:
>
> #! /bin/bash
> source oe-init-build-env build-microchip
>
> # Generate first image
> PACKAGECONFIG = "foo"
> MACHINE=sama5d4-xplained-sd bitbake microchip-graphics-images
> # Upload image to 'cloud'
> mv sama5d4-xplained-sd /theCloud
>
> # Generate second image
> PACKAGECONFIG = "bar"
> MACHINE=sama5d4-xplained-sd bitbake microchip-graphics-images
> # Upload image to 'cloud'
> mv sama5d4-xplained-sd /theCloud
>
For this I would add the specific PACKAGECONFIG to a bitbake pre- or 
post-configuration file and call:

bitbake -r preconf ...

bitbake -R postconf ...


>
> Thanks,
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59119): https://lists.yoctoproject.org/g/yocto/message/59119
> Mute This Topic: https://lists.yoctoproject.org/mt/96651827/3617932
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [rudolf.streif@ibeeto.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
-- 
Rudolf J Streif
CEO/CTO
1.855.442.3386


