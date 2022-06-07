Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A61C43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 10:56:40 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web08.11259.1654599399615324383
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 03:56:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PzPo1/Gc;
 spf=pass (domain: gmail.com, ip: 209.85.167.48,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id be31so27711931lfb.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 03:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VGatDKWrvTNMs7GOf6+8LoGdkd3SYdpzVbtxJsfBgfo=;
        b=PzPo1/Gc/zCeRdKHPqqdiu22aV8rSK4lQ4AxaANYUfhkxkanLA1AhBHUqXDYoT6nGo
         agMXrUpYGRIztjxR4ZXqH6pzjezBqDSscWUi4IvRxAWm2ZJ55Dc6EQsjgF58H85RtH3N
         ZJqnZjlMprl/y9CUPnIF2x6/VZYj6Lyhx4skHbMRaOOmW6RsAJ5AnaRnKb+hpZ1IDWcg
         UwZhQhZVbpY65a7rVdPrnCPvx8MufrRyfR7L4C6/V7A33YZXr0573voF2kySuey6qasD
         zLUyiXUa4/I2gKGUYFQCDSA3btXpo/o1/MC/KHlVdIDIF7opFveBBJzhKUr9gXKT2Hki
         In+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VGatDKWrvTNMs7GOf6+8LoGdkd3SYdpzVbtxJsfBgfo=;
        b=juuROVAXCzPGD53AoYyVvzCywUSWKGC45//+J3jIT2ypdao1Im6i4kgmEUOT9ucDz7
         1yaa8n8/yGyXmQ1qaSEBDdKdCODEwShEwHrxnROd6lLQE4iSo6LQ8NPCFmS06PDP4rcs
         lDTfj1u1oreoqPlKeKPHB0TRNGo/7jyaZMZ6LGrlBcX1C5r1OiB0FcGxT1lL8YrxVRvK
         sy6RSlaGSBn7ADx6NBOjE3yU42u2/qXIW/tiN0MseLQPEfFaXr01BHNlJsQSwx6+w+Jd
         w3cpZofdrfwLX/S/KbBKhALUabT0JR9p835cJjDFxNQh3FC2QZe4x4IkzmxB9WRRJ9Ln
         Ouyg==
X-Gm-Message-State: AOAM531RuebG7+DMdx7Ap2QUHjgc/JmrNrwoESTnMYCp7udnrzNbPHFT
	2zSOSe+VKl7KLeIjVyLxmkECLOpR4qdKzrsPgXk=
X-Google-Smtp-Source: 
 ABdhPJwnX0HCWCDJVNcyo6U5tBQgW9GTzmFgNZzLVXtw8ZVrb+f5mR+dd8kIpKTQQSn5x4ic23VfxIQyjDH9fNMG0qg=
X-Received: by 2002:a19:650f:0:b0:478:fe97:f761 with SMTP id
 z15-20020a19650f000000b00478fe97f761mr22068015lfb.673.1654599397446; Tue, 07
 Jun 2022 03:56:37 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj_kJrXDCG7xnVVRhHvNpTFCkPFyayNBBVAga7zrhKuXKQ@mail.gmail.com>
 <12370.1654598201864880141@lists.yoctoproject.org>
In-Reply-To: <12370.1654598201864880141@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 12:56:26 +0200
Message-ID: 
 <CANNYZj9pQhqgTnxhLqNUReNWdGGHPouaiLcBU7ShWCF9bV8Oxw@mail.gmail.com>
Subject: Re: [yocto] How to remove the python3 from Yocto SDK
To: Vinothkumar Eswaran <evinoth1206@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 10:56:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57286

I need to do additional investigation to give a better answer, but is
it possible for the team to start the host python with a full path,
e.g. /usr/bin/python3, so that PATH doesn't get in the way?

Alex

On Tue, 7 Jun 2022 at 12:36, Vinothkumar Eswaran <evinoth1206@gmail.com> wr=
ote:
>
> Thanks Alex for your reply. What kind of testing you mean ?
>
> The problem is when other teams use Yocto sdk after sourcing it, python3 =
is pointing to the one from SDK and not from the host. During the build for=
 some analysis, the team require python modules which is not part of the st=
andard yocto sdk. These python modules are already installed to the host. B=
ecause of the PATH change, the build fails with no python modules found. Th=
e python modules the team use is customized ones and adding it to image is =
not an option here.
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57285): https://lists.yoctoproject.org/g/yocto/messag=
e/57285
> Mute This Topic: https://lists.yoctoproject.org/mt/91597064/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

