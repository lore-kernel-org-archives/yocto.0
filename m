Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E848FC433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Mar 2022 14:51:55 +0000 (UTC)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com
 [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web08.26278.1647442315397144989
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 07:51:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=T3NdTVAR;
 spf=pass (domain: gmail.com, ip: 209.85.222.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id a28so962861uaf.7
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Mar 2022 07:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gCjcD8sbkQ4O23VB8dGKvdIZNjMzgwZhXsigprapaX4=;
        b=T3NdTVARPRcAocLhC0M5i+au/XFonevSEFYkrvGk8+nI6npYEQxyWwiY7d2uXa3CYf
         YNNj9nWPhuN7k8s+YbS+M04zoZvOb7h5HOvv5Ue041FjEf9vxR1Ut4D1spe4oT66dQa4
         bsSoVW/hVyLw9+e09sqbporZ4Hd2E/b46ure5x1OpDe9+tQ9NAARqG6JCPhMlbV3Q25a
         BpO2rKnqjJykIr4Q7rAB71D7WWuLAkCPCMjnaaLBHOzJm2Jc9TdIdZUDcGgcdgl5fi8P
         sxJ953K1ZARCJvW6UX2pIDnbLeoh0jMafKywBmMygFdZxKETlkPE5TZC2YMAzvAWsmZR
         SHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gCjcD8sbkQ4O23VB8dGKvdIZNjMzgwZhXsigprapaX4=;
        b=GqozZkLiS9Sr3XsTN8jhUCx5EKLvNk/Cteh2MG8ElWwHUBpyFPJkOB2rGIvvEkptSE
         X6/Q0FLJbZj0hVtbg2ywvdygEWQ7Ayt+dVriZqV7uEz1VXXS294HUjwx1tJNouMHZYP3
         y/zvIyHbfhO0z60Gg0R+PbZ/7DuHztOZV7tYVZiYafiDy4l5Ivf9ehkR/nyCidP053Uy
         CwdOPV6Tg6UtvC1SiKS7Dp2G43uT2ffBQ5T2oyS1eos7Fd1UxU3LYoGmm7JkOITRiZtz
         i4Sj9BdFy+EarXlDEjQDTmrwkzrHelMJBHooVddBYpSrLKrRluW+JspjTrm7y1ij/Drc
         COGg==
X-Gm-Message-State: AOAM5311IShbnc/dl41zOYegbwokWFkur95arBbANiQ/xy4u8PQ77I8+
	IUbkrWYjt5Tpwbu8BUceLEg+nwritCVsujd2Qp8=
X-Google-Smtp-Source: 
 ABdhPJzYRTQlXsbvMJB6risyhEuM5a+aD4XiKlQeCZqeOR3abBy4fE8foenwticXm045509ZkSlV/JWHe4Rw2cjKWCM=
X-Received: by 2002:ab0:210b:0:b0:350:b7c0:36be with SMTP id
 d11-20020ab0210b000000b00350b7c036bemr2682488ual.73.1647442314524; Wed, 16
 Mar 2022 07:51:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
In-Reply-To: 
 <DM8PR16MB43578CD48FE66AE37B2C3545C7119@DM8PR16MB4357.namprd16.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 16 Mar 2022 15:51:43 +0100
Message-ID: 
 <CANNYZj_5Msuteo-xTAZ3UeynnHKC9hWyWL_gc3_zH+ubHq_PGg@mail.gmail.com>
Subject: Re: [yocto] runqemu - ERROR - Failed to run qemu:
 qemu-system-aarch64:
 Virtio VGA not available.
To: Edgar Mobile <heideggm@hotmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Mar 2022 14:51:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56471

This configuration is not tested. If you want accelerated gl, build
for the qemux86-64 target.

Alex

On Wed, 16 Mar 2022 at 12:46, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> Greetings,
>
> I tried to run an Aarch64 Yocto with qemu on amd 64 Host. For that purpose, I built core-image-weston from Hardknott following the manual
>
> https://www.mail-archive.com/yocto@lists.yoctoproject.org/msg07306.html
>
> I then try to run
>
> runqemu sdl gl
>
> But it always aborts with
>
> runqemu - ERROR - Failed to run qemu: qemu-system-aarch64: Virtio VGA not available.
>
> What can I do?
>
> Regards
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56467): https://lists.yoctoproject.org/g/yocto/message/56467
> Mute This Topic: https://lists.yoctoproject.org/mt/89819473/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

