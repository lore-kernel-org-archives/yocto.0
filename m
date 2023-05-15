Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6EFC77B7F
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 00:58:59 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.78370.1684112337280628473
 for <yocto@lists.yoctoproject.org>;
 Sun, 14 May 2023 17:58:57 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=lSYYuDrB;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.49, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-619ca08c166so56317186d6.1
        for <yocto@lists.yoctoproject.org>; Sun, 14 May 2023 17:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1684112336; x=1686704336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Th7tjqjIWGiVvZ5xYI7ngI9iiL2xsQwHsldpnIHrvgw=;
        b=lSYYuDrBbnBj3W2HVf/e6eibRZNyWFeYNVAF9P6rbJCc130CqOuLLEGGxzrGXlnFgu
         +08NhovZEYZeii1cf5WgyGdcGF6fYW5Va0APQhxAhjYH0wvpNCWBzH5cJBL33LutpS2n
         OtWultyoNNfsNd9h8zHpqYxbU9oeZnSLroUV9cX4G7vlEIxoEgpQIXQjRKClGqUaKA3G
         vbtCP5+QttGLpccj/hBMG+0lwiaV1mniQF4OYj1tYX0ZPZC1UyqBSnQojq74hs4DepQa
         sBusAguhRoDJfJDzoG1A8PMeGq6lHq8pcKdAqoXg3N1HYXHNfq9b99HhZoEN/21LUEWk
         2lmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684112336; x=1686704336;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Th7tjqjIWGiVvZ5xYI7ngI9iiL2xsQwHsldpnIHrvgw=;
        b=G8IMr2SDHYtCuXwIYmlAC7tCwnDhcIuNHdJEwdk0BTUOAOXGQp3cgEAZNoacT0qO8k
         iI4rZKZVOrfYi9qXOfUUzS8ZgHgt9cyrh/k9n6jdSWGTRld9GbVR5+WIoTH3fhXq6j6L
         mIdYy4CCkJSEk7LvI9RMnpWdIYqgBd0HLzCwG/nTe0BZHcul4rk5UyHSOP6ruBiY2ZNm
         TXAq80gYTZC8QMGkHaxJRHaViPJjokAjEaf1hLGrl8ps051w1CpK5WEThlbl2+f0zD+W
         E8tmDybWBQnOAuiIY7ErtTPwsVrjye2Wn2CERo7gN5y4xy0Vw5TIHzd4Uws1ugUiYlak
         /j+A==
X-Gm-Message-State: AC+VfDwwa8mxFaVWqnzi3JHapt5I7UATI3uiNpQezvjqZgSWiPrYxFSo
	TdbrrrvovMQOvKazqm3p2mw1ki3hMNtLxYG52YqHLw==
X-Google-Smtp-Source: ACHHUZ5PQmUXzGnnUGqHkMiR1fr7EMLF7AxjocN2lmVkwanmJBDehIdO5WZmVhcqfXsh+kWn9GLSyGS6ZfiNWyuRq1c=
X-Received: by 2002:a05:6214:2489:b0:5ef:5138:1e5d with SMTP id
 gi9-20020a056214248900b005ef51381e5dmr49900912qvb.49.1684112336309; Sun, 14
 May 2023 17:58:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZJrnJYYY7NMF521HemwaGKTFotkUdxC56w-qgYvm_j_Ng@mail.gmail.com>
 <CAMKF1sp+t6xO3ap5eDR-R=JNqbvcWwkxv1U3vWMSaqziBECGUw@mail.gmail.com>
In-Reply-To: <CAMKF1sp+t6xO3ap5eDR-R=JNqbvcWwkxv1U3vWMSaqziBECGUw@mail.gmail.com>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Mon, 15 May 2023 12:58:52 +1200
Message-ID: <CA+EiEZLfrymVYi=d3TOmnoej_pThBEdPOyfGQa-a3K7To02GaA@mail.gmail.com>
Subject: Re: [yocto] LTS EOLs
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 00:58:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60013

The next LTS is being released the same month that the current LTSs go
EOL? That seems a bit last minute. Or will the decision to extend
Kirkstone be made earlier?

On Mon, May 15, 2023 at 12:01=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrot=
e:
>
> On Sun, May 14, 2023 at 4:55=E2=80=AFPM Tom Isaacson <tom.isaacson@tekniq=
ue.com> wrote:
> >
> > I was just looking up the Yocto LTS and I found
> > https://endoflife.date/yocto. It says:
> > 3.1 'Dunfell' (LTS) Ends in 10 months (01 Apr 2024)
> > 4.0 'Kirkstone' (LTS) Ends in 11 months (27 Apr 2024)
> >
> > Are these dates correct? If so, what's the point of the later LTS
> > going EOL the same month as the previous one? There's not much point
> > in upgrading.
>
> these dates are correct. Current LTS releases are for a period of 2
> years, dunfell was extended
> for another 2 years and became 4 years extended LTS, Kirkstone might
> be extended for another 2 years too if the membership
> decides to do so.
>
> >
> > Is a new LTS planned?
>
> the next LTS is coming in April 2024. The duration for new LTS will be
> 2 years or 4 perhaps
> but this will be decided by membership hopefully soon.
>
> >
> > Thanks.
> >
> > Tom Isaacson
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#60011): https://lists.yoctoproject.org/g/yocto/mess=
age/60011
> > Mute This Topic: https://lists.yoctoproject.org/mt/98893130/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gma=
il.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >



--=20
Tom Isaacson

