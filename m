Return-Path: <ricardo@foundries.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1846EC433FE
	for <webhook@archiver.kernel.org>; Wed,  2 Nov 2022 00:06:58 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.515.1667347612330432222
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Nov 2022 17:06:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@foundries.io header.s=google header.b=NdLuzJkQ;
 spf=pass (domain: foundries.io, ip: 209.85.167.45, mailfrom: ricardo@foundries.io)
Received: by mail-lf1-f45.google.com with SMTP id d6so25695213lfs.10
        for <yocto@lists.yoctoproject.org>; Tue, 01 Nov 2022 17:06:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=foundries.io; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rp8eKD/sa1gjJzlQABhKRV1VrlpUVCJ2uE9n71djayY=;
        b=NdLuzJkQ9Da001+0R3IMC4EPa5NIMcVgrYfoFoqqMjcKCPUXbqpmzjeb4Y2fIiQvqO
         xn6pvECnVNT6JqGYfMxnboFxdKehS4ml/8RLDx3+nkb6Cwsb86nlyuvXosQySq0V+8qH
         mmhWBJAfPDSw4VqYi2CI/24kWXu38SA8s92jhcdwFm6e3NNhphXBcH/owqhkY2/JqsV+
         hJpSbYaqKY0QMYbb8fc2i3j3FAzdgfAT9H66YD5DYPwOWuE+fjjoBkeeWFL74tW5Kxt8
         YT8I+Zs16xx0Pped40Kkxcb+W5H7dEXgOO/9VnHOaAoPiGi0F26fHxBreaNsF0KqDvmK
         3b7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rp8eKD/sa1gjJzlQABhKRV1VrlpUVCJ2uE9n71djayY=;
        b=LEtRFKGoE+gpQTGpmGKP8/OnB6bvanEAro9nwne/a/hdCBJHEF8Hocy8PP7olSBBtD
         eE1gMaqs47XPkH7OsF/0qkeqhVdQ+bbXGaCGVLUX3vIDWx1vG7BmRrFNkqFA1ZtCF47J
         EI4qJSRV/f8DFGLq8pMPRmNblFfKH1Lpf7yrFvu6CQMFADu0IrlSQu86vgcMBavAgCXK
         SIPWeqG/F4/A+v2bsB5zKKHW4/mACSiEwEP9GKetJ0fGbcxnZVkvndXnR9T/InycNgOl
         erRH/CVAYkqwK1AZ2JGxXD1MsW+YpGjMHoxGVBtWRBOSudjwCOfxPnZ/ICcVOwPsOGEk
         jdyg==
X-Gm-Message-State: ACrzQf3VoB94gWGYkWwYzGEv5bWzoeDwozfdHIQSQEX9e6/nbPnAnPSQ
	wkGENDesrchMmVfxnzR2FodD21d7V8+YTuY6DewI
X-Google-Smtp-Source: AMsMyM7WlIjfwcW7mlx6+fauJW+fn6sPIcHBkii5w4JSFB49F3vtaTheikRD7g9ahfPIY33Xnj+Ou6WJG9xE1r2mT50=
X-Received: by 2002:ac2:51c1:0:b0:4b0:73bd:f3d7 with SMTP id
 u1-20020ac251c1000000b004b073bdf3d7mr7112842lfm.397.1667347610149; Tue, 01
 Nov 2022 17:06:50 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
 <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com> <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
 <40a6ff41-cce0-957c-8d89-fa3a2e01f254@mvista.com>
In-Reply-To: <40a6ff41-cce0-957c-8d89-fa3a2e01f254@mvista.com>
From: Ricardo Salveti <ricardo@foundries.io>
Date: Tue, 1 Nov 2022 21:06:13 -0300
Message-ID: <CAAaKDhH6n4S8qL=bHtgZsrvZAKmidHdQ860Cv55+XnVtWS1LQA@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Jeremy Puhlman <jpuhlman@mvista.com>
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>, Jose Quaresma <quaresma.jose@gmail.com>, 
	Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org, steve@sakoman.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Nov 2022 00:06:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58465

 On Tue, Oct 18, 2022 at 7:54 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
>
> On 10/18/2022 3:31 PM, Bruce Ashfield wrote:
>
> On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:
>>
>> On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
>>
>> On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma <quaresma.jose@gmail.com> wrote:
>>>
>>> Hi Rudolf,
>>>
>>> I have reported this issue and together with a path [1] to fix it.
>>> Anyway Bruce has fixed the issue in another way in [2] and this works for me as well.
>>>
>>> [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
>>> [2] https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=6a4752ebbe7d242c02b3c74a5772926edd243626
>>>
>>
>> Yes indeed. This has also passed my other regression testing, but I was traveling today and couldn't send my pull request.
>>
>> I'll send it over the weekend, so hopefully it'll be merged shortly!
>>
>> Bruce
>>
>>
>> Did this end up getting sen to the list? I also validated updating to the specific hash resolved my issue too.
>>
>
> Nope. I got tied up with some other issues, I'll send it tonight when I get a moment!
>
> Bruce
>
> Thanks!

Just noticed the same issue is now happening on kirkstone, since the
kern-tools-native was also updated there.

Seems we're missing backporting
533720a1756454447341769c4a0969fce8d6f287 (kern-tools: fix relative
path processing).

Sakoman, is that one already on your list? Otherwise we can send it to
the list as well.

Thanks,
-- 
Ricardo Salveti

