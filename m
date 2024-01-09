Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87A91C46CD2
	for <webhook@archiver.kernel.org>; Tue,  9 Jan 2024 16:07:21 +0000 (UTC)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web10.20551.1704816433035866635
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Jan 2024 08:07:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DHICc6q8;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-50e80d40a41so3788047e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 08:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704816431; x=1705421231; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x90dYIYbIjXcGAGskhLW9T6axcOyZHH7j6ghUr2kol0=;
        b=DHICc6q8/SfpJQquQMdi3q/wBJnwVebDMKP0WaUGJsvIHL2f2B68LneDwIx5WUqdFX
         f/PZj+Rw1axtFXGMDZbkR7vHBaOAPZWXX5g6sBWidhdSuLatarNoTSrFSG5OuTv4+mWn
         MCSK91xFcjYT9aeb/CSh515n6Uv+AwswR/BHevCI7UjYng18gJ3RfDvHDie0imCz7Qsd
         0UTyyW0g+qIbBzt766FqnBBtNPbPD5gtvU1Pl4fQnPQy5ARFDFF2YDnJSvoFi7YHon+M
         DCIsaBSUxersVYxr2f0upMAGzE52i6o/p2r42GIjW4Ev0TacelafnMNG2/sjUIqAZM37
         fKDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704816431; x=1705421231;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x90dYIYbIjXcGAGskhLW9T6axcOyZHH7j6ghUr2kol0=;
        b=QYvqW7EopLxOkQS31gGD155jUx5PhRxkdLlsPKZVU2wIP8ROCMQndvz0U2nsi459at
         imGFcXxfhk3ZVUUioPBp6YofVleq1205ULx/Qj7a2jjBQDQwekz2zwYwG3IpDY/94DKD
         sLKeA+OrsqHYCJoHG7PmdMNWZXd9yQT2urgQyO3udop2JcP7SKMIw9wdy1nUyoPw7JWI
         FOwKvQYfb02hU9VDQTh/gEqYh51gGNJOaC/Asmfehe7DnWmtbZBqeYB/mY/V+0R6vJdI
         7NDEgalCbUGNYx+62XxGDm1EWburZHcE3wDSxJutKPskGI82tvuQJVr6s/2cm7gK1b05
         uREQ==
X-Gm-Message-State: AOJu0YzeOq0VideMKX3HyB9Lwzqy4929gMeDFcYIHMBPZRUsWFUzb5t8
	EP2B+YEkI6bSgAJOXP6MsVb1g+VMeOi9GtgecO52d3wP
X-Google-Smtp-Source: AGHT+IGpbGqeH58bKntBhhNQVO+/K5lZkVfz6DWkG+hsDjK1gLRo92ZjU3ARGZxggm14lqjw3+IVZjPBX09rqto35Ek=
X-Received: by 2002:a05:6512:124f:b0:50e:c845:5be6 with SMTP id
 fb15-20020a056512124f00b0050ec8455be6mr1119012lfb.107.1704816430960; Tue, 09
 Jan 2024 08:07:10 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1spDcQJ6OBwqudAPiseOu3PXHrfwkCQ0c60DCbaw8mXuEg@mail.gmail.com>
 <28934.1704816100450184675@lists.yoctoproject.org>
In-Reply-To: <28934.1704816100450184675@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 9 Jan 2024 17:06:59 +0100
Message-ID: <CANNYZj_me5m6HCsYZvJgJamCO9DtnZCBes0JFmuCxfvVdsEHEQ@mail.gmail.com>
Subject: Re: [yocto] Problem with overlayed recipes
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Cc: Khem Raj <raj.khem@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Jan 2024 16:07:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62126

You need to inspect ${T}/log.do_rootfs for your image to check what is
actually being installed.

Also check the packages for simple-local to verify that they contain
what you expect to see on the image.

Alex

On Tue, 9 Jan 2024 at 17:01, Daniele Lugli <daniele.lugli@gmail.com> wrote:
>
> IMAGE_INSTALL="packagegroup-core-boot  rt-tests hwlatdetect kernel-dev simple-local"
>
> By the way, rt-tests are missing too.
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62125): https://lists.yoctoproject.org/g/yocto/message/62125
> Mute This Topic: https://lists.yoctoproject.org/mt/103602112/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

