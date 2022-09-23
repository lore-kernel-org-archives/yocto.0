Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D19C6FA82
	for <webhook@archiver.kernel.org>; Fri, 23 Sep 2022 13:45:33 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web08.7559.1663940727288278536
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 06:45:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VfzxNEGX;
 spf=pass (domain: gmail.com, ip: 209.85.167.51,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id a3so330181lfk.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 06:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=uJwsInSxuR+13QFdvG4INBIcAok9YW1WB+BANF6hhQU=;
        b=VfzxNEGXS26geE75zqRVEU7nqkjklZU05L39bVxA8sxyVE43vFoPFa1rl4y7MDniRF
         nFgLan/iKy+zF4zfrvK+sV4u0tOxQDirEI3kP/goKOQwjBYntDBWVr+dzcGU+MxuBe3E
         NZNl8+eU0PGjpF/m1IOKpC/568ct65vvUUAAqhMYP/DexGNXWio0tLWlR7DvgJ3xt9rd
         DzUJPoEnBufA3mLLYWVMDWzT9CazSgYrniGvI4Up8u2/nDnoXvuXRtfR7L/X6rekM5vb
         pTh5Nl8sDdVl8If7e6QnjHPzn+g7c3q5WdqgyZHhzvVR9vBexq1EfYUxtp4BxTsM7php
         x5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=uJwsInSxuR+13QFdvG4INBIcAok9YW1WB+BANF6hhQU=;
        b=kUPqEn8ODU2mO4gp/XI04ik69qVWH1UatREGBMxYem79bnGpAzyGZH6yPRNBU143E0
         oUL1o0GcpR+khzihYh4WeWZDGIVxHG289RH+7PbsUBWr8+htskdARkq9YoLD7UMWZ53w
         SUl3LtODjoegbpHcF1VS0wOSFyLEXrTEgF1Qe8KWW5iAWDxQiZhm9GTs5iJHay+yj5UP
         lbFb7H078hH7E3Bgwm2EU7IJiNkDeC8ZHzdorLjkpyWM7smgNBd2EWhmpRlB8srbFkMy
         Ihh5lAbVE4LIul47nzLSv1JKhxvcYv5azVUiAO8PBt7wOgjBk5hAYxTYBdJmCi8zB2ez
         OiZA==
X-Gm-Message-State: ACrzQf18ee3Q3/syOoMByYXjHjJwUBRepLyQxPbirA9hZoIair/6ocsP
	chQzwDwAlZpaNUagghStJfiQ3q9Oz5zvN2DONKQ=
X-Google-Smtp-Source: 
 AMsMyM56L5Kfm0A8hZkZzz728mKagEzCJYPreiVZgZn6KRYF3ktm6KeCtebIQWd9fa4Yu1l9T+2Vc4xk19KPFpVGGt0=
X-Received: by 2002:a05:6512:950:b0:497:c41e:3d0c with SMTP id
 u16-20020a056512095000b00497c41e3d0cmr3458273lft.673.1663940724955; Fri, 23
 Sep 2022 06:45:24 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB18354240D7ECB34DC1D1F61CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB18354240D7ECB34DC1D1F61CC7519@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 23 Sep 2022 15:45:13 +0200
Message-ID: 
 <CANNYZj-eH--escv13Q1nAEBzZqRkZbP7D8sMWqyRQFPJzB8fZA@mail.gmail.com>
Subject: Re: [yocto] Building vulkan-samples
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Sep 2022 13:45:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58146

I finally got a moment to look at this. The binary with the samples is
being built (you can find it in
$WORKDIR/build/app/bin/x86_64/vulkan_samples), but is not installed.
So if you want to get it packaged for targets you need to adjust the
recipe and add a do_install:append() section that does it (plenty of
examples in poky/meta). Patches welcome.

It's also a bit sad that no one has actually used recipe until now,
otherwise we'd know sooner.

Alex

On Fri, 23 Sept 2022 at 15:11, Edgar Mobile <heideggm@hotmail.com> wrote:
>
> I added vulkan-samples to CORE_IMAGE_EXTRA_INSTALL but it only installs s=
pirv-cross not any of the samples am I missing something? Regards
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58145): https://lists.yoctoproject.org/g/yocto/messag=
e/58145
> Mute This Topic: https://lists.yoctoproject.org/mt/93869516/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

