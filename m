Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CCC6C433EF
	for <webhook@archiver.kernel.org>; Tue, 22 Mar 2022 14:13:51 +0000 (UTC)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com
 [209.85.222.48])
 by mx.groups.io with SMTP id smtpd.web09.10336.1647958430574045455
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 07:13:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hHeDngga;
 spf=pass (domain: gmail.com, ip: 209.85.222.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f48.google.com with SMTP id t40so6683221uad.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Mar 2022 07:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=yoJgHaQmuU6l9zA0vG4A4qMQ1jMl68FfjEx+e3D82ZM=;
        b=hHeDnggaavMH1DNNt7JsdcFcBS4sfLjz0uArtxzgvdN26e8lDruA2gihiY4ZrUKaVb
         4PrF1NxByi5iSOexP1qxeREdpNU5+niFqQqOaeADEGhrc/u4Ej4BmABQX5o1XC0r1FJx
         4E0H1u+tQKU0XrIpbpOGPErYSkY8sbJCPrBfjVNn7MPHBm+zFvn3zYZlniYjNG1AcUf6
         twrZkOj8Vybv58E/UCa29fCfULZQYU4CEko0Ci59XycZg527FxdgaEE77zYQSgUy+gEp
         +OSCZIcVaQoXHvJ9yacni+/2wVUrgkXWwDfGHWieBBxb+5+AHI9Q9jwSOTzCJOFsg314
         EafQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=yoJgHaQmuU6l9zA0vG4A4qMQ1jMl68FfjEx+e3D82ZM=;
        b=1siACYmqZJzi0zdJbcZQ9GwS/bfySmJeFYJcQ4wIn50pRkfyFpCHIU4+/rrZnPmuWr
         BLz7HZf0yEbFdBPxAMnh2r2SQkJbXTctuhjvfXZ8tBf3ITf8Pg3Zh4MFH6sdKu56KY/r
         OPrC0OGNdWBo39ZDNn59WyRjg476Wp7lr7IFxXoNuvEjzXbDsaSjWaGsU0Rb+J1Oso3j
         J0npZJrVyhHksn4ihGGFVmC/F+eqOp+1qSeSQxJW8cOgiKF2q7hzoEnwuyEk+mdhpapT
         VTCQLvS4LrBwo5juFVy7and4xxNnNDhyqlqudd9hvhGCuMBjeZK2iFwVAPFTSUoYgk1R
         wTnA==
X-Gm-Message-State: AOAM532NL8HYOVvqqBc/kFbLh42ZmyeqLYZlW40Nk8K02j/7ynSacEoc
	tIz21LBEkjYx6RHUPCAQpOR5CTV71yGrNMLD5ZdPiSTq
X-Google-Smtp-Source: 
 ABdhPJzaas+r4ogTE8wftEGd1YZ4eRC0D1zdABBu+GePB+j68YQijH8sgfMxLzF/zXkWk8vjddY3hX2ty10ZRjl06PQ=
X-Received: by 2002:ab0:210b:0:b0:350:b7c0:36be with SMTP id
 d11-20020ab0210b000000b00350b7c036bemr9061343ual.73.1647958429574; Tue, 22
 Mar 2022 07:13:49 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAE+BM3meYkLa3J_CUbmvRiz7w5LFE_QqyqkoDrkibuk-ietPFQ@mail.gmail.com>
In-Reply-To: 
 <CAE+BM3meYkLa3J_CUbmvRiz7w5LFE_QqyqkoDrkibuk-ietPFQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 22 Mar 2022 15:13:38 +0100
Message-ID: 
 <CANNYZj8w_i+dPngM_4ucTTFhsCaH0dvqpK998i0hb6FEDNA5Yg@mail.gmail.com>
Subject: Re: [yocto] SSTATE corruption
To: Rusty Howell <rustyhowell@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Mar 2022 14:13:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56527

No and no.

Alex

On Tue, 22 Mar 2022 at 14:48, Rusty Howell <rustyhowell@gmail.com> wrote:
>
> Is the sstate cache sensitive to different releases and or the ordering o=
f the bblayers?   We are upgrading our Yocto-based distro from dunfell to h=
ardknott.  So for a while we will be building our distro on both releases. =
  Do we need to keep the sstate caches separate for these builds?
>
> Another related question... Does changing the order of the bblayers corru=
pt the sstate cache (ie require a fresh sstate)?
> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56526): https://lists.yoctoproject.org/g/yocto/messag=
e/56526
> Mute This Topic: https://lists.yoctoproject.org/mt/89952176/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

