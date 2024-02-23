Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AA36C54E41
	for <webhook@archiver.kernel.org>; Fri, 23 Feb 2024 13:11:17 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.10166.1708693876174407041
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 05:11:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NN/0tGj8;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-299b92948a6so612331a91.3
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 05:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708693875; x=1709298675; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gUjaEdz+vBGG4XBWPlBCieDsFGMG8tjycMt1XS6qnSc=;
        b=NN/0tGj81bRW04Gof7WqPM0gQjOr412PnT5aPDY1f83X5bWvdz0EqLEQh4Cc6kMmbU
         XNAWUl1BZY28HehPbHoedAC+SL0CGvbVMib1Xr4BRSzP2cu+RLbQ5lYU010HbCG72gPc
         cKgc0SWOXrIiu8RV723EI/+TegNuSFxF8InYzbfW0CBkl0SN13Vk0qsr26I8QKrHFSJS
         CTgmhxwJHFgu6qyS5is3PX92kKRylaGhsVahcQmogMtoxv5BA2nlsdpegusm9z0ICyIG
         vXqAMs50oBBZPijy8lNCA0qpiisPBUzE26BpovXWhKuFOj8/II+7dIu7lmoap++zkeD3
         wSAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708693875; x=1709298675;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gUjaEdz+vBGG4XBWPlBCieDsFGMG8tjycMt1XS6qnSc=;
        b=V1c8VNsxo44bBO7DLy899zLgliSyROw7YYkvu+Ots6D7iTcsZbYzLjU4RXdCaKHPpE
         KoU76LqpHjWFIPPTyekPiRrXNlucVOb0MNNm1V2LmIk3y/dOyyD/jpH2KMj9TxWwWvYq
         q2mvp15Iot4DfkB4g/zHePSoJ7xFPUfXM/hAPL3DQj9g7t4UyNhfcDNdJL7ylPGkenpy
         RAfNP8ODAf+9RfFrdiVaWWpbMBP1WRUsO362TZyEKrq44vjO6KcJWiV4aZNHdlU9Y94c
         qTeT0Xzr8+6UiGYOs+7YPp3gWMzGFKzuIOZA63IQGP8xI0y4AHk3HNTwpKBD/tUHFPAM
         YxFw==
X-Gm-Message-State: AOJu0YzX6XKtSKCqIW4H1IujHcWqtdhC8m3q5lnsooYZ06oS3t0TazkN
	P5ccntd2LoWqyR8Vn2XgqRbNnH8pME8OvaQR9+0anzn6pzd0bW1tdH0o/6709vtWiSa64xBH8yf
	o0bbKpEql8LCch2FMzHTARE3qY5PfoR8e
X-Google-Smtp-Source: AGHT+IFvCzAhJiFCNL9xNdIxMgRHxCKe+PJAJT5L4+3yoYFM9oTvXAtSZAwyMETTKBDqp7ySZpnVJItEzOrGqZ5mQVk=
X-Received: by 2002:a17:90a:dc0a:b0:299:d5fa:3e1c with SMTP id
 i10-20020a17090adc0a00b00299d5fa3e1cmr1430535pjv.31.1708693874991; Fri, 23
 Feb 2024 05:11:14 -0800 (PST)
MIME-Version: 1.0
References: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
 <CANNYZj9VBXUESuy91rfF1xbaN40AfU0trdevtLVgXgq37MLk5w@mail.gmail.com>
 <CACSj6VW19X4b7qq+prukimrrUhMYn6Xe2yorn2q6OnDjBYAPgw@mail.gmail.com> <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
In-Reply-To: <CANNYZj-Rm-dKM1xc_e8mTobUgTE3uB8J_xEKDzfPCrJF7cWB7w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 23 Feb 2024 08:11:03 -0500
Message-ID: <CADkTA4N-8JNL5_EOYicbsvAVtEMDzxUMQw6oyA9ckJ7c5fPA9w@mail.gmail.com>
Subject: Re: [yocto] 'yocto-kernel-tools' requires git version much greater
 than general Yocto requirement
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: Konstantin Aladyshev <aladyshev22@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 13:11:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62582

On Fri, Feb 23, 2024 at 6:43=E2=80=AFAM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> On Fri, 23 Feb 2024 at 12:32, Konstantin Aladyshev
> <aladyshev22@gmail.com> wrote:
> > Thanks for the response! What would be a proper way to fix this problem=
 then?
>
> 1. show how to reproduce the issue in plain poky master.
> 2. check why none of the tests expose the issue. You can for example
> grep related keywords in meta/lib/oeqa/selftest/cases. I think there
> are tests that check devtool kernel operations there.
> 3. see if existing tests can be easily extended to cover it, so that
> they fail without a fix.
> 4. perhaps the fix would be to check git version first, and add the
> argument only if the version is recent enough.

Which unfortunately would still leave the problem that the change is
intended to fix, so I wouldn't want to merge any patches to make it
conditional in the kern-tools.

Those changes were made to prevent git operations from running
hooks from the host environment, for both security and consistency
reasons.

We added git-native to the kern-tools-native recipe to get a consistently
new version available for any operations involving the tools.

So I'd add another question .. why is this operation not using our
natively built git ? Is there something going on with the path, environment
or something else that we missed when adding that native dependency.

Bruce

>
> Alex
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62579): https://lists.yoctoproject.org/g/yocto/messag=
e/62579
> Mute This Topic: https://lists.yoctoproject.org/mt/104509876/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [bruce.ashfield=
@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

