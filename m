Return-Path: <alex.kiernan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 801F6C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 09:40:01 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
 by mx.groups.io with SMTP id smtpd.web10.32624.1702460396874162463
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 01:39:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b8GnaBWn;
 spf=pass (domain: gmail.com, ip: 209.85.208.176, mailfrom: alex.kiernan@gmail.com)
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cb54ab7ffeso52640451fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 01:39:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702460394; x=1703065194; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ctngi4V3DmgXW9yvOaM1AMYsUCUWxTDlHV+aNN2JbFE=;
        b=b8GnaBWnptTiNpWc5Aahq2EDSU0yQwIAjFErfhhu2abEyvjYO8TZdzbLj8hggKngYD
         92Mj1UNBDgmg7mrdGmdmg7PmN5OfHg+txQu26M74cvaUFAIdqlotZCsdE7QZMgZGmCz8
         8Cv3TiJHZapYB5HmpX3JyRrNDpeXbRooEVF+Zi/nlK4YQiImi8xhoC3Pr7eDeGr7RHU8
         /U5Cr/fCxcJ0MHgjZHpL3QtltX3psqhYCm0hjYpK8WU5rH9HqWSZZHA9l02/SEgC2gFe
         GiF991zIOq3gFzFEnC7niKAn0p1D2YuTh3cFWa3c8v0bLe79M9RmjEwBpwCM6pccFTHb
         9HfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702460394; x=1703065194;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ctngi4V3DmgXW9yvOaM1AMYsUCUWxTDlHV+aNN2JbFE=;
        b=cS9JwbTr/7GPl7QtVtmziVBrNm/aCUW2wjONKHxld+217hKvn4IYanZPW+IGdGbln2
         0EsIv+/kj1O5bz31VJaMaWrDKyK+T8tvQdA2RpNdKYBfVQ1vpl9YY2nb9DK0qrAH2t/B
         1JogMmj6K0Awe257gTmu2ZSTSK9OrEE4oIwJ8wLR7Z8U38PdkqVtIgANEDAXdrbhndZz
         k/bUDGRK7uXxA3lmYr1f7coqvQ8RlbvmxntT4esKPlTIvKyQ/t8FXNiXiHmuH5jLQgBw
         oT9D+yW6bYTl9xTqE5sBcrb5IKvLL0eVw9bLGNw3KRTlHgpIabY4jJLoLANVLwDH/9FG
         gNjQ==
X-Gm-Message-State: AOJu0YyPuzdmGohDA3Xl7U2kg+sSPAr29NGb09EwzbMi0Lwt7pDiIUdh
	84Vx1ThDVcQdAbMAa+BW1RyXdSdFD4Kf5JVgsyXUsSMM74o=
X-Google-Smtp-Source: AGHT+IEwcyszXcZ0r4fdxq7ylCAr5esQF1xhNZv8fRbLw7xtje8VhK6kia6HO2C8KCORzxWktZu14+FCZQsUBGQVf/E=
X-Received: by 2002:a2e:b8c9:0:b0:2cb:2bd7:38fc with SMTP id
 s9-20020a2eb8c9000000b002cb2bd738fcmr3865728ljp.15.1702460394230; Wed, 13 Dec
 2023 01:39:54 -0800 (PST)
MIME-Version: 1.0
References: <10379.1702413544329430628@lists.yoctoproject.org> <16371.1702454625543134373@lists.yoctoproject.org>
In-Reply-To: <16371.1702454625543134373@lists.yoctoproject.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 13 Dec 2023 09:39:42 +0000
Message-ID: <CAO5Uq5Q=-v258vP9Vmm=6A16sJtDoH2UF=-WF=D69Phe=_kFiA@mail.gmail.com>
Subject: Re: [yocto] do_rootfs failed
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 09:40:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61875

On Wed, Dec 13, 2023 at 8:03=E2=80=AFAM <daniele.lugli@gmail.com> wrote:
>
> Not sure. I don't see the original error any more, but
>
> NOTE: No reply from server in 30s (for command ping at 02:08:20.176053)
> Timeout while waiting for a reply from the bitbake server (60s at 02:08:5=
0.440750)
>
> How can I know if this timeout happened before or after completion of the=
 bitbake command?
>
> Also, I see a lot of warning messages like these:
>
> WARNING: rt-app-1.0-r0 do_package: URL: git://github.com/gbagnoli/rt-app.=
git uses git protocol which is no longer supported by github. Please change=
 to ;protocol=3Dhttps in the url.

Add ;protocol=3Dhttps to the SRC_URI - see
https://docs.yoctoproject.org/migration-guides/migration-4.0.html#fetching-=
changes

> WARNING: rt-app-1.0-r0 do_package: URL: git://github.com/gbagnoli/rt-app.=
git does not set any branch parameter. The future default branch used by to=
ols and repositories is uncertain and we will therefore soon require this i=
s set in all git urls.
>

Figure out which branch the SRCREV referenced is on (probably master
or main) and add ;branch=3D<branch> to the SRC_URI

> Are these important and how can they be cured?
>
> Thank you again
>
>
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
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61874): https://lists.yoctoproject.org/g/yocto/messag=
e/61874
> Mute This Topic: https://lists.yoctoproject.org/mt/103135158/3618097
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kiernan@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Alex Kiernan

