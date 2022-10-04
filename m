Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6989C433FE
	for <webhook@archiver.kernel.org>; Tue,  4 Oct 2022 19:40:59 +0000 (UTC)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com
 [209.85.166.182])
 by mx.groups.io with SMTP id smtpd.web12.15360.1664912451374751046
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 12:40:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DBC3gHVm;
 spf=pass (domain: gmail.com, ip: 209.85.166.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-il1-f182.google.com with SMTP id y17so3136903ilq.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Oct 2022 12:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=ggpK0abF10S04qamOWaNr81kr8v6cmh60N+Yiw4WkXM=;
        b=DBC3gHVm5WMbRqrrOxJ0XYu419DwxpuUtyVOSnA2mT695/1rDzcNPqRKbsNxZr+dBq
         luJOgkvmGn0R2bvIqkSkqga6MOFYwK/Gopu5QOw2EYAsAq9SHlSIeasBETP5zKv3+Gg4
         fmRhSJkp3T2GXf+ram87/8S+yr15OeqO+Va6zf8aMwaAgL+YOs2uV1giTU1+qvimnZIo
         JXZdp+5+qIiLmYhOCU9l26g+9QWF1mSlxYNwQgw1CdfOVbhDghVPJrCJLdrK93mbDwVg
         MQ8l6SIGir4k/qZjP/MXjmlEROscxbWrdI6cNKRiC+58zM+AYHz5Izrv7VCraKQaPZtt
         Wiwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=ggpK0abF10S04qamOWaNr81kr8v6cmh60N+Yiw4WkXM=;
        b=Ap5Vt8UskFgHNFVN3VFMlEwnFMxRM0scC//Xf2BjslWxSsqYE5VMcjBCBRR5OL8YsB
         iGQFjKzSXDcBPVNf7UR0/D/neuOfZDRdK6LBGCBdRLdbaDxy0T0/8DCx6ZEbe886C7tx
         f10ofNsT4j0ENOdkYU23xbse6XFW5lt10vFoghzWLOFd2mrRhTw52GsuJN7FtaXVI7da
         yUVMhECTCc04OKFLBXX08ZAgIC+h6Wp7tN8s1I23R5QaQtllipbUWS9GG//VJqsrsNtu
         UAeRYHNQHcA6H9ogulTKGVJpLKjpTbIP7RAvTnjjSUm8d4z+u399d4nXhmBk18K5fMY6
         kzzg==
X-Gm-Message-State: ACrzQf3flvay3Xb5J3BjUfhJjIQXwsoOz+4HeFgYe3o4BeFpqZeTjeOz
	HXCqtiEJxJZuhfXtXyFOQDgq45SvINp0mqpvUDg=
X-Google-Smtp-Source: 
 AMsMyM4aTYzEYzE11uThy7Cucwe1cmDTcWPuySRG5noRuS1ydtI7IRSzsds1Xxt/qO6jqSl6NFMhCkSwHfMlK+3c9sk=
X-Received: by 2002:a05:6e02:1688:b0:2f8:3768:a620 with SMTP id
 f8-20020a056e02168800b002f83768a620mr12499958ila.98.1664912450635; Tue, 04
 Oct 2022 12:40:50 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_KV7GRBubeCKGDho=CXe1xpkzE4XAiWoFDT25aO-VAYA@mail.gmail.com>
 <4602.1664720098520336517@lists.yoctoproject.org>
 <CANNYZj9sZr9YfKHqGFTO10_gOE9+vEcO6Kx3jhOicTYVgXYK7w@mail.gmail.com>
 <CAGQ3h14ka1rL7c-hdrWpWkTOJ7sTFUwPF2X0zg=2VkEeHhscdA@mail.gmail.com>
In-Reply-To: 
 <CAGQ3h14ka1rL7c-hdrWpWkTOJ7sTFUwPF2X0zg=2VkEeHhscdA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 4 Oct 2022 21:40:39 +0200
Message-ID: 
 <CANNYZj_dqfKjMjsjubxr02Q8R6OGW-eQMoS+CnheZASkmnvceg@mail.gmail.com>
Subject: Re: [yocto] Run rt specific test in "core-image-rt" #patch #yocto
 #qemu #dunfell #linux
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Oct 2022 19:40:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58266

You can simply open the recipe file for core-image-rt (in poky/meta)
to see what it does. The realtime-ness (of any image) is set by
setting PREFERRED_PROVIDER_virtual/kernel to the realtime flavour,
which you already did, and so core-image-full-cmdline will be just as
realtime as this one.

We do not have a lot of automated testing for the realtime behaviour,
as it is difficult to control in a qemu based virtual environment.
There's basically just poky/meta/lib/oeqa/runtime/cases/rt.py

If you want to check timings, etc. you will have to most likely put
the image on real hardware, and experiment with running tests and
utilities from command line. Then you can think of how to automate
them.

It would help if you describe your overall goal.

Alex

On Tue, 4 Oct 2022 at 21:21, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello Alexander
>
> But core-image-full-cmdline is not going to give real time exposure, isn't it?  The requirement is to make real time image so core-image-full-cmdline will satisfy the requirement?
>
> And would i need to run test of rt-suit one-by one or there is something so i can run in one go? Can you refer me some documents in which I get all these information as I didn't find all these info in one document.
>
> As I am new in this thing please guide me . Your guidance is highly appreciated.
>
>
>
> On Tue, Oct 4, 2022, 18:31 Alexander Kanavin <alex.kanavin@gmail.com> wrote:
>>
>> The log file seems truncated?
>>
>> To enable the standard rt test, use
>>
>> TEST_SUITES:append = ' rt'
>>
>> as seen in https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n1138
>>
>> and build core-image-full-cmdline. core-image-rt is not well tested
>> unfortunately.
>>
>> Alex
>>
>> On Sun, 2 Oct 2022 at 16:15, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>> >
>> > Hello Alexander,
>> >
>> > Please find log.do_rootfs file for the image.
>> > -=-=-=-=-=-=-=-=-=-=-=-
>> > Links: You receive all messages sent to this group.
>> > View/Reply Online (#58250): https://lists.yoctoproject.org/g/yocto/message/58250
>> > Mute This Topic: https://lists.yoctoproject.org/mt/94066549/1686489
>> > Mute #patch:https://lists.yoctoproject.org/g/yocto/mutehashtag/patch
>> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
>> > Mute #qemu:https://lists.yoctoproject.org/g/yocto/mutehashtag/qemu
>> > Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>> > Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
>> > -=-=-=-=-=-=-=-=-=-=-=-
>> >

