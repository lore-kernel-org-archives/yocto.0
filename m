Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582B6C433EF
	for <webhook@archiver.kernel.org>; Mon,  1 Nov 2021 23:21:16 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
 [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web09.2197.1635808875839211514
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 16:21:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LZdNsGr1;
 spf=pass (domain: gmail.com, ip: 209.85.215.178,
 mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id n23so7847295pgh.8
        for <yocto@lists.yoctoproject.org>;
 Mon, 01 Nov 2021 16:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=WxAqbt4xjO9BE1H1v7iMSc1gvYV99Tbcfu+mDdXsDz4=;
        b=LZdNsGr1WvHCDTAi4Z2QmYdN1XyzwsR6HLDVHvtCdlLqCAM1U/2JNnEZq+LEntpDBG
         o+5FnInetu1ptRh4UdzOBYWtqnnfudkuQUSp0hBOD+B6ZXFy1ev46LJhEpPK/zuYiUEm
         7mVS475vghrcrrXFNtrj1r2CKiv8iZBhKA30HCMwP4pIKVPt2fZKCsjhPS3NFP+XqONh
         +3gpjwddyftBBl5dj2gc4MfQHfzPAI45GwrrnmgWsvh/ETQJ9hkrhjKs32vFjUiF+NYZ
         k2PArXu9R43YQYb1UA0o/KdlU8m3pRV/njlPJoWleTkcrr227jKE8buuXfTS5y2aAh5n
         Nyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=WxAqbt4xjO9BE1H1v7iMSc1gvYV99Tbcfu+mDdXsDz4=;
        b=dHZcbsFHYbwN88IoaAm6+AkR9l0HS+xL/QhCG9BBUFVvgwgRhpU8IKxdguo8tZ65rl
         syA6yoK8QzwCIMQUYLfvXzjS3Whp18Xe03tJY32GFSPxE537vXozo8jJ38/iMOPZtIy5
         WDgKh04p+Can9BJHnWJ3NM6/J704/vKumcEzam9YWJtYKCLa73btD0KeH2pJB4Sd7GZI
         AbHXbVVwrzdatajKaBtCzq85jIfkwUH4VzX5Le3DNUfvrmohRzReJc6VCTJRfs5YW2MR
         G81Kh9R/7DLeyJFxvaNje+DHHex28y/Histnpk/uMntXCN9kyyaaBTnfuDTsipibkpCX
         lhVg==
X-Gm-Message-State: AOAM5325a3kw6X5LRlW4RG/NKCMD/5s6b246Pjy8ktDFsGLnfWOdHSlV
	m0ftOhbEzHDp6/Tul77tr/g=
X-Google-Smtp-Source: 
 ABdhPJzW8wFgt+o68SqrOPpfhXaRXsJqAxgMvynNZcepP4aEmIueuk021xeCLCZ3PJarps0ar2q7cw==
X-Received: by 2002:a05:6a00:1311:b0:455:c1f8:4637 with SMTP id
 j17-20020a056a00131100b00455c1f84637mr31823891pfu.83.1635808875196;
        Mon, 01 Nov 2021 16:21:15 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:bd3c:e564:be3d:908a?
 ([2601:646:9200:a0f0:bd3c:e564:be3d:908a])
        by smtp.gmail.com with ESMTPSA id
 om13sm460143pjb.12.2021.11.01.16.21.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Nov 2021 16:21:14 -0700 (PDT)
Message-ID: <084e5148-36e1-7ccf-339f-847b0062c826@gmail.com>
Date: Mon, 1 Nov 2021 16:21:13 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.2.1
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
Content-Language: en-US
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Josef Holzmayr <jester@theyoctojester.info>,
 jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <e26334762f4d4b2e7f0f12a0f429da14@vivaldi.net>
 <CAEt6NwrQjy1fwr-7p+LeXn+rR_TmWS8Zz_EzTi80nvLE_x_xBQ@mail.gmail.com>
 <7f8785ff1f11dbefb2082e739f20b515@vivaldi.net>
 <CAEt6NwqSiEd3wX_6+-1p0V=y5aDGJ8JMv7RVJW3z7KSwU5H90w@mail.gmail.com>
 <af40bae3c3c249771f4d553d8f1754340c192cb0.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
In-Reply-To: 
 <af40bae3c3c249771f4d553d8f1754340c192cb0.camel@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Nov 2021 23:21:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55207



On 11/1/21 3:52 PM, Richard Purdie wrote:
> On Mon, 2021-11-01 at 21:50 +0100, Josef Holzmayr wrote:
>> (re-adding list as I messed up)
>>
>> Am Mo., 1. Nov. 2021 um 21:45 Uhr schrieb jchludzinski
>> <jchludzinski@vivaldi.net>:
>>>
>>> I want to build this image for a Raspberry Pi, which means ARM.
>>
>> MACHINE = "raspberrypi3"
>> (for example, pick your specific one like
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/tree/conf/machine
>> )
>>
>>> Is that not possible?
>>>
>>> That can't be true!
>>
>> Building the SDK for an architecture other than x86 is not supported
>> at the moment.
> 
> Not quite true, aarch64 is supported and tested as an SDKMACHINE value.

at one point, I had ppc64le working as SDKMACHINE target as well.

> 
>>   But again, this is about the SDK. And you probably just
>> want to build the image, where the standard procedures apply. Add the
>> BSP layer, set MACHINE.
> 
> Right, this sounds like MACHINE is wanted for raspberrypi.
> 
> Cheers,
> 
> Richard
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55206): https://lists.yoctoproject.org/g/yocto/message/55206
> Mute This Topic: https://lists.yoctoproject.org/mt/86733811/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

