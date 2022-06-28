Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A56C433EF
	for <webhook@archiver.kernel.org>; Tue, 28 Jun 2022 12:34:35 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web09.54580.1656419670843323615
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 05:34:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=V0e9z6Nd;
 spf=pass (domain: gmail.com, ip: 209.85.208.174,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id n15so14714333ljg.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jun 2022 05:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Usc3/M6/baZqgxUclntuSlagYTr5b77bjsi9yjX6G1c=;
        b=V0e9z6NdWXTdOwKitAoXPXaqIDDs07LCv1y7xmvPkV5wxU0FYDXguxzNpqyG79nBVy
         FCyQ7mb2qph81PDT9+t2SQ4DJ5gX6h1kYYihq11FJPvvGf4GRyWEJu2ovwIob2UtRult
         CUNWgPXmdOCSKQJa3LsGUduKbgqfnn07GLy3YliKmwvZU0L5s8tnUx2Vbq0XGW0KZGGN
         XRwmj9Vzro020nnbHi8oxFrNKLa6lY47E0FtaGd9NTXuXsBr/q0NN99HNK9UZVdOVOem
         lF9Sfj2OFg7YkI+lKiC+w3A923L1U18qa2MdTJaT8l6MnDjv6psQmp6P8YCfFp65Vu50
         u2sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Usc3/M6/baZqgxUclntuSlagYTr5b77bjsi9yjX6G1c=;
        b=dxndzvyk1m0583VoJUaMrVdlrdMyKxjzrTH2MahBTH4v8lcvxMNwyCa6PJmqNR30xs
         VQI7VLsFIRRrWfa7CVuibjUBLm0KXsBk5uGQhHQDQNkPtUz+s80zc19TgUTb3NIVNFSJ
         bEZly0+Dye0bL/3FYypRZUhf+T8SF1DNZQqVLQm4lcY7nc0ImSPJB5jZvaVi/if1/+PR
         v9WAK9qRRa1a9KWyLbp/vbTU2uFNwcvRXIwcS/2mMx16GFmuo+cJtidM5WSoMf8wb2xd
         q/UH6fpxrj1qvOfmlVv2KdIC4MczUBEZuujy9VM50haO1ONnT+QWwvTMMB0sperfVSVe
         B2WA==
X-Gm-Message-State: AJIora+9MKMhHcLyzv5ge4BfUWdHkRUD+q9MrQBLUkQbmuzfPy2GSj9/
	I8frFdD+sGX0LeES+cSn4P4PIzgZzfqX3kx5Thg=
X-Google-Smtp-Source: 
 AGRyM1vkL9iQ4eBChQ2DVa33QVBv3bZ68UoOwbRPwyZNTsoTG6ZTunh3olK4Z0vy3aV/z5DMv/Cd1hyKuTfcem9R0oc=
X-Received: by 2002:a2e:8555:0:b0:25a:7efc:4670 with SMTP id
 u21-20020a2e8555000000b0025a7efc4670mr9853823ljj.513.1656419668871; Tue, 28
 Jun 2022 05:34:28 -0700 (PDT)
MIME-Version: 1.0
References: 
 <AM9PR10MB4403B8BF23EC7571D7F2E5C7ACB89@AM9PR10MB4403.EURPRD10.PROD.OUTLOOK.COM>
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
In-Reply-To: 
 <CAFf=Mr2Sjxi9e1oLBo9Q97hS3R_0KAk1vGx63af4bp6UBQ6BMA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Jun 2022 14:34:17 +0200
Message-ID: 
 <CANNYZj927L02QUQX51x=EjcTWr2YZ9=5Sb+-zk6r50zfiN_9MA@mail.gmail.com>
Subject: Re: [yocto] yocto support
To: Senthamilarasi mathiyan <arasilinux1086@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jun 2022 12:34:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57402

If the change is private to you, then you can make a simple layer and
make all the needed modifications there. Is this not possible?

Alex

On Tue, 28 Jun 2022 at 13:51, Senthamilarasi mathiyan
<arasilinux1086@gmail.com> wrote:
>
> Dear All
>
> Good Morning!
>
> In my project, I am trying to create one custom image recipe in my yocto build system.
>
>  The reason of creating custom image is  -> having few specific configurations for kernel and some specific driver Makefile changes to enable coverage.
>
>  I cannot go with .bbappend file, because we are maintaining a recipes-append folder in our meta-layer which is common for all the production build image recipes.
>
>  My change is very specific it should not come as part of normal build images because it will affect the production build.
>
>  My use case:
>
> 1. I have one .cfg file for kernel - which has kernel specific configurations.
>
> 2. I have Makefile changes for driver file.
>
>  I should bring the above changes to kernel and  driver Makefile during build time without using .bbappend file.
>
>  I want to create a custom image recipe with the specific changes.
>
>  For example : custom_image.bb =( This recipes should have core_image_minimal.bb + my specific changes)
>
>  When i build bitbake custom_image.bb,  it should  build  with core_image_minimal.bb + my specific changes .
>
> Other images recipes also should not affect by this changes.
>
> My humble request. Can anyone please support how to proceed?
>
> Kindly share your suggestions.
>
>  Regards
>
> Senthamilarasi. M
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57401): https://lists.yoctoproject.org/g/yocto/message/57401
> Mute This Topic: https://lists.yoctoproject.org/mt/92041991/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

