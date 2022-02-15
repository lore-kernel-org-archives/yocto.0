Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26740C433EF
	for <webhook@archiver.kernel.org>; Tue, 15 Feb 2022 00:19:13 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.3574.1644884352156006694
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 16:19:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=U4vHfFSU;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id y9so16023762pjf.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 14 Feb 2022 16:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=vvIbFzEfEt/qTUrZ52kW4GSUb7qRuvtjq7oxFRituOg=;
        b=U4vHfFSUVb2NnYELlUFiVu/tKNwM/JMpf2fYnsKnnEJ5vYgv86mSSEL1NaeOc5Phqn
         ERT2uf/2Jb4Vpl74vPzTb16Ypl3ebP1uNWaDhbdYUESR6sBJxgYbKAvmD0GULEar7GoM
         gW8nH77DcUsDfxW3+4c9GsvcA7BeqX3uCA3kqHQ3oz+X8EA3iHGsPCAmeS2pAbAlc7uC
         wzIDKImPY964QyxHIyJxXFK+t6wAeh5SVn1Xl796JGkduHUAZ8ms8jaDGpvfmIvK4n6r
         /5/ZwylF8eGdNKvIBvK/ufKX+an+ms1+lBa4ldXfTdPb5lt7BpR80hNtRPNd6bDt/8vT
         ryTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vvIbFzEfEt/qTUrZ52kW4GSUb7qRuvtjq7oxFRituOg=;
        b=bjtBzf49D6hVDWG8xdrDLH8Nyu5NRm3TVisItIYjYPmUhAHaoFzNqFPqNHTmuREjNV
         i3W1mC5F9mDg6/413bullbyV/zU0SEPfyRSOwdjLbxJ44y5fpE7iQbBBEaWF4/YM0jKZ
         lQ2ZDpwHtmnIrwWzJsnBK6hu0PwqSTB5mA/MPtD1LocSnhgiL5x787ennby75KMNjpAi
         Uc6TPlkW8Tl9SskJRFr9GqXwXEUopLoXiHjTTJkLlkRIjcv8/CPTbybdbxfoTHdIOi0l
         p6Ta5vkjbHOBLv0R+AqGGeEXKJ/0wD/yJWFzTiUqrT19OP/u+35E0eC9pNJv5Q7IXsom
         eyeA==
X-Gm-Message-State: AOAM533EHYj+kR0B8n/VDq1uP+mSQ3mi4OcwTBm9lYX6KZmdm+xBMQBx
	nLV2n0aSl1Q5sQ1gqE14N4c=
X-Google-Smtp-Source: 
 ABdhPJwWy++XwEJybmu6QITqU5iEgpqikOklvDLe+iaPjKVC0C+GteBGE7YzYVOeayTjrs1C3QJc6A==
X-Received: by 2002:a17:903:2309:: with SMTP id
 d9mr1446728plh.16.1644884351620;
        Mon, 14 Feb 2022 16:19:11 -0800 (PST)
Received: from ?IPV6:2601:202:4180:a5c0:6697:5eb1:f384:6c93?
 ([2601:202:4180:a5c0:6697:5eb1:f384:6c93])
        by smtp.gmail.com with ESMTPSA id
 j15sm40313271pfj.102.2022.02.14.16.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Feb 2022 16:19:11 -0800 (PST)
Message-ID: <abf14a4c-9aee-c5c1-56c3-067a41a25314@gmail.com>
Date: Mon, 14 Feb 2022 16:19:09 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [meta-hardening][PATCH] meta-hardening: Fix override syntax
Content-Language: en-US
To: Akshay Bhat <akshay.bhat@timesys.com>, Akshay Bhat <nodeax@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20220121163239.1922917-1-akshay.bhat@timesys.com>
 <CACrMeVCYE5-2925VKW4x_a0AOhj7a+8OorGBRxiS0+vhq=aXBQ@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
In-Reply-To: 
 <CACrMeVCYE5-2925VKW4x_a0AOhj7a+8OorGBRxiS0+vhq=aXBQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Feb 2022 00:19:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56193



On 2/14/22 09:05, Akshay Bhat wrote:
> On Fri, Jan 21, 2022 at 11:33 AM Akshay Bhat <nodeax@gmail.com> wrote:
>> Commit 352e6498a missed updating the override syntax for the
>> "harden" distro override.
>>
>> Fixes: 352e6498a ("meta-hardening: Convert to new override syntax")
>>
>> Signed-off-by: Akshay Bhat <akshay.bhat@timesys.com>
>> ---
> Ping... any feedback on the patch? If not can it be applied? Thanks :)
> <snip>

Thanks for the ping. I didn't find this in my inbox but found it on lore 
mailing list.

Patch looks fine.

thanks,
-armin


