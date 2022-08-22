Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D839C28D13
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 10:55:24 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
 [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.16359.1661165720228269516
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 03:55:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PKuvUb1s;
 spf=pass (domain: gmail.com, ip: 209.85.208.171,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id e2so5307378ljj.1
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 03:55:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=jBx4trEn0poh+QIJ5Tul2qYTQMYUF29uIfxhnLzf+B8=;
        b=PKuvUb1s0kpuT/+TjfpKApzsksehWyqb+Vkbov78tSyEH9kq15f6LYZVYrJQ33J9zr
         0+Qa9TVNStKXfB2EDwFkPNkGF36q0R7tFl0JeaC2qfOIBxix/oyDBUjd1wwWEc2NElXZ
         ZhNaq32Yhd+xIXPEPGfCkc++xo4mGKGQQO3AtYJkkiQS0p6rGjtdSBJrmSDxmAvkzSsG
         AsUkBLRRoFu/B8jR1qMCidaj4fcC30lulAEZ5NZuX3ZMtJlOa4+IjnmWTFJStcILqmZX
         zHJIyhJj2OLraA77M/IntHJ2DITDW5RCwdG+682v5/59qj5S1jXm2mpxPCFjP1a9IelK
         pTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=jBx4trEn0poh+QIJ5Tul2qYTQMYUF29uIfxhnLzf+B8=;
        b=CcU9ljnlKIWWq651mQzOX/dLGRahPSXJpo+rNuhqr8G9THT199Gwy56evtPpSDmPDo
         majC/CjyqywvP5GjKrU1CPuJworX3W9RA9pmpsdORFNTzgU62VoCwclMRHK1JE+pBJqd
         vRERQG7LUzIGRVp6KhspKpcElml9uORHbQUc7kbpsCP+EOMK539N+aVSqivPDj7yMrHT
         0lOpYA+iHjyQfDAIonWDM656ArmP9C+CNeqxSiS53fPGflt817SQoODzClnSIv/RxnGF
         0Q565pRu9GL+G5hFmNTgR0mavPD4NbPz+mpgQPEerTw56tVeCoclmYid1hkhg3zLwIt/
         LLHQ==
X-Gm-Message-State: ACgBeo2o/Ikl3kp5Ypqs02tGmaKmW1plky98+WTUeiY3NVE6eF7lIB34
	B+L/UOmGqNw2P3RY+vBxu2TIvUjuYnl5x5Qf8HI=
X-Google-Smtp-Source: 
 AA6agR6E07KvD60DWfTORQYlwrUu8HRoXr+4JJgOdcCLrqjoMMUhBWnbtfxiBAzW/dWJ9kyU4rkdogCq6G0PEoqVmAM=
X-Received: by 2002:a2e:8518:0:b0:261:b4e0:ecd9 with SMTP id
 j24-20020a2e8518000000b00261b4e0ecd9mr5162160lji.56.1661165718302; Mon, 22
 Aug 2022 03:55:18 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_bq365NmL__Jcb4u8_ErCvfBPGqh9X02-AHkt2uwU-7g@mail.gmail.com>
 <9629.1661164370586257074@lists.yoctoproject.org>
In-Reply-To: <9629.1661164370586257074@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 22 Aug 2022 12:55:06 +0200
Message-ID: 
 <CANNYZj-beaYcdcmWeGGWVkk3xmf3EUuFXjdmCdBvxHxt7K=C=Q@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 10:55:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57869

You need to rebuild the image:

bitbake core-image-minimal

Alex

On Mon, 22 Aug 2022 at 12:32, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello
>
> i was not able to find that how to force a no-graphical execution by unset Display before running bitbake . So i again tried to test my image by previous method
> bitbake rpm busybox curl run-postinsts
> bitbake package-index
> bitbake core-image-minimal -c testimage -v
>
> but this time i did not get error like previous one this time i lost my deploy folders in which images folder was present . i have no idea how it happened i am able to see all folders except deploy ( see in attachment) .
>
> kindly tell  why deploy folder got disappeared and how i can recover that ?
>
> Thanks in Advance
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57868): https://lists.yoctoproject.org/g/yocto/message/57868
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

