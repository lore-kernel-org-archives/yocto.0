Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3EBEAC5475B
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 12:24:16 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.11095.1710419054962627122
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 05:24:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NV4wAKEL;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d476d7972aso10318761fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 05:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710419053; x=1711023853; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxRmn6guVSJti6vyfbZn4xr6PC9Y4z90t6Jp3k228zg=;
        b=NV4wAKELuh2EHE5IDqvbxANwNxJzhTghQrADNdWR6J+7dGRJM9hPpLC3A7LZg+9TUe
         jVSvnsixgoH7/oVSdyu5u8CQELPJIaLX9d5NGZHykxbT6Z6d0Aqev7lFXEPhfkcblQys
         v5lmfz14hMMq7vp8gGS7K3STkOb7HhhaJm8VDontA0ALf0LsZB26uHUEG7jDUdoKuObo
         k5cOJkHrOF6Wqi+c/T+z6COZyu6KWvYi8kaDE5N44efRm6NKuZgC1VZFcHDptzYBNO/O
         0P0YDlo/ob9raJBml5+ptZoolh5VIqyUukdvr16QgLAH143QO7DX1d1Ewc8MJF5ig5rS
         zjnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710419053; x=1711023853;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LxRmn6guVSJti6vyfbZn4xr6PC9Y4z90t6Jp3k228zg=;
        b=qlQGzj4XGz/RE10XaUwi71arZPj0YjATDTCDMzOSP/s4mqiFYH9kD0slhPs/gLM7sh
         1FfaVmAG1v/zGrgcyFTG03kC2vywwnlCBZu01r2cbUuaTSDMMxHoL478hvlC1BseZ8B1
         5rFGXK9+SKJtnVqKkZ++uH/vffOViD7Emg5Bf4dIK+njmOyPGxvNzu1C/R+wd421W7d+
         1uF/zpQIciNi/aI7JWzh3wzsxHDRamNDUtmacwgLNia0mKZXQ05AjK269VL4g6GAgJxZ
         lX867cSDxoP7kU3tV36dlR6ysNNHGXvIMcxeM9pKYltvwDM+o70jc+Pdd4atH29zjCZr
         9heA==
X-Gm-Message-State: AOJu0YwYx5p6guwYV3zVdqdBAFS8tvktCBbYjq8N0UeVJ6X1KifaFXmJ
	kLmFinonHn0FbH5yOysjLxP1cIwmGZgVN/kqRhMM3DYYypFwkGP816vKt0jGOPNXRIiskjFSRSv
	0moLxwhfgbxO+T70C4r3fAaXXm7oKhsY5
X-Google-Smtp-Source: AGHT+IFHV3KaNo8pqw2dMUtKMrHwI/EQeU38nzZd629Ig3RgruzfO4T5MR/GSZCdo2Nx3tCARZ1NPu9Pa7KEiVSxeXc=
X-Received: by 2002:a19:5e58:0:b0:513:c98a:2c71 with SMTP id
 z24-20020a195e58000000b00513c98a2c71mr1136811lfi.38.1710419052800; Thu, 14
 Mar 2024 05:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPJc0BbU0owt6dVnmOBSrT+Ji=sBNMYhgWtgRUhxT2RN_A@mail.gmail.com>
 <CANNYZj-kae1ozTWxhTOoXT3N-4gfLcJBphfbTw9gfcOeZfNChw@mail.gmail.com> <F0AF6E21-86FD-4C78-9D40-082CB17D43A0@arm.com>
In-Reply-To: <F0AF6E21-86FD-4C78-9D40-082CB17D43A0@arm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Mar 2024 13:24:01 +0100
Message-ID: <CANNYZj-0LMft7bRMdgotZNnM8VJr8gci6L+W_CdkM-wRH2-cfw@mail.gmail.com>
Subject: Re: [yocto] PACKAGECONFIG variable related patches
To: yocto@lists.yoctoproject.org, ross.burton@arm.com
Cc: "joel.winarske@gmail.com" <joel.winarske@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 12:24:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62761

On Thu, 14 Mar 2024 at 12:45, Ross Burton <ross.burton@arm.com> wrote:
> The rationale behind this is that changes to the recipe/sources may mean =
the patch no longer applies correctly if the PACKAGECONFIG is enable/disabl=
ed, but that combination wasn=E2=80=99t tested.

Even if all such patches apply cleanly in all their combinations, this
still leaves the developer tasked with a 'change request' with a
particularly unpleasant complexity: n^2 slightly different source
trees that all need to be understood. And of course the original
developer who did this left the company long time ago and left no
documentation.

Alex

