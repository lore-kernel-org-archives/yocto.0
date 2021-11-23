Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CAE2C433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 19:53:48 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
 [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web12.16528.1637697226596959296
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 11:53:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=zXnclmKe;
 spf=pass (domain: burtonini.com, ip: 209.85.128.43,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f43.google.com with SMTP id i12so49295wmq.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 23 Nov 2021 11:53:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kFT/d8jX3AjCsON8qCrctaTqq+d9nBMNax0RVi8BFnI=;
        b=zXnclmKea4pSkIvA4bqIFSG2KjWIgjdLs4nAAKMjB9joN8DgTUv1uRdRXkAU+VlmOM
         Z40B973yCbgXj2dImZCA5WQB3msetlYcOtLbbDXSUhbJlLtWJZXH2/l07KZ6JVUJDJxV
         6Inzl3rV2nQGhQIZ3ZSh3GHQRNlAzso7zijpM+OqMkirLDspUBU50M2NgSBjt4uj4qDU
         je4a+3we01L1rWXgeEgQobC6axrAVCrdUSB/n6cWFWq/+sRHph7uN6Ey9Q5dckNJfjGN
         If1+IOyv+ETL+aMz3/vVC06xzlaSzFS04pmeU0ufkJcssvTGo5Yzlh0hMEXDKpUabtIV
         1Mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kFT/d8jX3AjCsON8qCrctaTqq+d9nBMNax0RVi8BFnI=;
        b=SeqRD6tQJRK3KKzTPZajqGPPV/O4jVgOSRxQ+ves4COrv2O+ubvQFwz+OX4JrZqIQb
         oWnW/29ENMMrM1mACySs0cvzHi58iP/vyHsf4vkgdwL5IV5DUuYQMZFDHrp7/nm783Si
         vLq0PAI3JfYcYJHe36wsYMjB3oTaIbeSRHAq5MT/qVmEEVcVs+cjpCnslVDkLmt6SFL0
         tJkZhvCQQRnaMlBVkA05gsDoz9BxXrrLufwEbetwXXobU/pzr3oJeVFn/d3TpsfGixAv
         bnnjV39Vt20vedug4++eMywiW47OJqQzS9L06yqHazE2fpvud+S2rdErL+yc7X2l215o
         AWOg==
X-Gm-Message-State: AOAM530+3M0xrg54W7twrMTKEroStkiyi2h6QcAw6PDC2Dh3TzEomGal
	6UvISnbWsa3Y9dB2mYYqOc9wdZ4yxpOU6jd8WP4PVg==
X-Google-Smtp-Source: 
 ABdhPJwFyNhuXk7OQ55XLTply076CDVBPkLXIatbOTl1/7BcjJ7+iBwkIooVV4SM7N+iE+Ke7fL4tAarpz1oCuXxZSE=
X-Received: by 2002:a1c:7e41:: with SMTP id z62mr6915051wmc.62.1637697224965;
 Tue, 23 Nov 2021 11:53:44 -0800 (PST)
MIME-Version: 1.0
References: <20211123150331.2431516-1-ross.burton@arm.com>
 <CANNYZj8WZgGfNjF3pf2i5Fg1yJ0BEJVX3jhjDyTa+0Bs-H5ZAg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8WZgGfNjF3pf2i5Fg1yJ0BEJVX3jhjDyTa+0Bs-H5ZAg@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Tue, 23 Nov 2021 19:53:34 +0000
Message-ID: 
 <CAAnfSTvi57f0i83T80Z2SEKpXG6ch3kiSAKJwo3g=2u9-F_j=Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: set
 ZSTD_THREADS like XZ_THREADS
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 19:53:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55400

My personal build machine has been crashing and dying due to overload
with the default ZSTD_THREADS, and the AB has had problems with xz due
to overload so I was being proactive and ensuring zstd is limited on
the AB the same way xz is.

Ross

On Tue, 23 Nov 2021 at 17:11, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>
> Is there a particular reason?
>
> Alex
>
> On Tue, 23 Nov 2021 at 16:03, Ross Burton <ross@burtonini.com> wrote:
>>
>> Signed-off-by: Ross Burton <ross.burton@arm.com>
>> ---
>>  config.json | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/config.json b/config.json
>> index 7203783..c0543d9 100644
>> --- a/config.json
>> +++ b/config.json
>> @@ -47,6 +47,7 @@
>>              "PARALLEL_MAKE = '-j 16 -l 52'",
>>              "XZ_MEMLIMIT = '5%'",
>>              "XZ_THREADS = '8'",
>> +            "ZSTD_THREADS = '8'",
>>              "BB_TASK_NICE_LEVEL = '5'",
>>              "BB_TASK_NICE_LEVEL:task-testimage = '0'",
>>              "BB_TASK_IONICE_LEVEL = '2.7'",
>> --
>> 2.25.1
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55396): https://lists.yoctoproject.org/g/yocto/message/55396
>> Mute This Topic: https://lists.yoctoproject.org/mt/87260143/1686489
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

