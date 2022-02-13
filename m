Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D426C433F5
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 18:05:11 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web08.24135.1644775510476410630
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 10:05:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Fhy9NU+q;
 spf=pass (domain: gmail.com, ip: 209.85.222.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id w18so7053889uar.8
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 10:05:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EumGOlrIzb62ZjvX6i5jXiIgREGUBVmSXDZx9wLxmbk=;
        b=Fhy9NU+qNKpevnu7o0GQy5S1aWzwGg0DO8aTW9YQy9y9Gt6Ml9dOdpyqVKGaW+x5ro
         Ws0MZDDGrJL21NDy5a5M+TpAk7maj1ehVU8DRJbB1/xyHswJflQHBxJrNTTViDb0a3AX
         lUHJB/Dw/5HVpt7nxdfsnFf5FoLh4vXtuzekTxMpLqsobEFWpmw7vlDuxOxECZJAvWOR
         Pm3ONtP7j+MSnoZ1mvenrHSbeKMcTi325IBLxyZPIRduwEO9v+s0W8uHlb4FLZ3zPeN9
         z0/R9qRA6h2QQeDDVSELH5WGPVcOwozZ6jAjOFyymFsZQBAykUIoFuURUznBiMpqCp6n
         BbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EumGOlrIzb62ZjvX6i5jXiIgREGUBVmSXDZx9wLxmbk=;
        b=5igBYr+g3NFcOf0lFYcP/Mao2S3UXJAdCLqrOirliQzVt6uKbMeZagaQEsH5m67bdx
         IXoXNg59gLJiJ0cHo8fbpFLHpQZXjnprmGg+Fwj30dUi4O5YJNyoRc1qR68QjdIAo/3l
         2JAqkp+yw6kyxwIoxEtiNRt2jgB7HZ/waYfg5WYAF6Wc7NSwyhTTyEzcKuTK44+tCRAt
         V2qTcVb9i1Y1phv9Nt2YVwhPWcjNs9VTchMIUWXg15arNt0MbXTSOMxlTfX23a6tcpSz
         KxydV2qVE3dmUniXnbk+mTSYTwTs0xot7F2Xp27E4iWbIjOqnVJGaVKVbINRTXfej8kg
         cWzg==
X-Gm-Message-State: AOAM532IMzMw7U06O0PWkgiiCHfPA70OzkSdIr+WzCGj6LgbHakJ6Adp
	J/4zazlWB1ypUMPXFosGPquR134MJBBNlfTrhbw=
X-Google-Smtp-Source: 
 ABdhPJwIwKoutqhA9oSsLETERrgy86QWcr8r42Yg/hir8X8fWhMiSupy8VyAc+PHAJ1uPPVuah4Q9CpIZdfNeW0RbqA=
X-Received: by 2002:ab0:3392:: with SMTP id y18mr2812124uap.71.1644775509600;
 Sun, 13 Feb 2022 10:05:09 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
In-Reply-To: 
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 13 Feb 2022 19:04:58 +0100
Message-ID: 
 <CANNYZj-E_tfYX9L49+M1V20qARaOCeJtht_prbAq6W_MiyoAEQ@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on M1 Mac
To: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
Cc: Anders Montonen <Anders.Montonen@iki.fi>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 18:05:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56174

Even if you do manage to start a build, performance won't be great.
Yocto, by design, builds the entire stack from source, so a lot of CPU
cores is essential. Don't spend your time waiting, get an
appropriately specced Linux workstation, or an account on a Linux
server that your organization might have for the purpose.

Alex

On Sun, 13 Feb 2022 at 15:56, Abhijeet Tripathi
<abhijeettripathi3003@gmail.com> wrote:
>
>
> On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen <Anders.Montonen@iki.fi> wrote:
>>
>> Hi,
>>
>> On 13 Feb 2022, at 14:24, Abhijeet Tripathi <abhijeettripathi3003@gmail.com> wrote:
>>
>> Hello yocto-devs,
>>
>> I'm new to the yocto project and trying to set up a build environment on my M1 Mac which is arm64 architecture.
>>
>> I'm following the steps as mentioned in below link:
>> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions
>>
>> But it is always pulling up containers based on amd64 architecture. Are there any updated steps/link to set up a build environment specific to M1 Mac(arm64)?
>>
>>
>> Looking at Docker Hub, none of the published Crops containers are built for ARM64. You can try building the containers yourself, making sure to pick base distros that are available for ARM64.
>>
>> Note that there are plenty of reports of Docker performing poorly on Macs, probably because of the file system implementation. You may be better off using a full VM via e.g. UTM.
>
>
> I initially started with UTM but the problem with virtual machines is that we can only use half the resources of the machine.
> This makes the builds slower, so I was looking at the container way.
>
> Can you point me to any documentation which I can use to build customized containers for yocto builds?
>
> Thanks,
> Abhijeet
>
>>
>>
>> -a
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56172): https://lists.yoctoproject.org/g/yocto/message/56172
> Mute This Topic: https://lists.yoctoproject.org/mt/89112092/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

