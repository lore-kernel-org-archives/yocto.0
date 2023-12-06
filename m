Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B9CC4167B
	for <webhook@archiver.kernel.org>; Wed,  6 Dec 2023 10:00:26 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web10.28336.1701856820024244566
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Dec 2023 02:00:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F3UA2Ikz;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2c9f85eff28so57316021fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 02:00:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701856818; x=1702461618; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dm/O/1FPblw2KVTsUUSu+2VDTuAW+eGZEPoFxgrSK1g=;
        b=F3UA2IkzC1Hx42f7jErXdmiYcwcAaYjsZP+hYIdJHbNpjHjYKCVd0C/iwK0odrhz/A
         F+JUpUWOrZ7vPe9MOpn6GWBRCnpURUmoBVhMdJWiRBReuphH4bK5/rlD1zBll9hbSoSb
         2mczRAZ539Em9Q1BPuGQdDu1kdUOQtOpsJiDfPuW+bJsy/U6aji7w5qRmYA9maFOyTmW
         e4lhClZRzQaVlQoegySH1rYz5DXAY1bgvHaJW6xfXnksMPRdGyQugCd330mLo5odWoUd
         yfzHkLe2S9Stjo7cvE+LX4Xsh0IyyidFZ50dLlnXRcI4ksIvE6s2ON6j+BCgY41UAgEo
         eV2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701856818; x=1702461618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dm/O/1FPblw2KVTsUUSu+2VDTuAW+eGZEPoFxgrSK1g=;
        b=SHaFeWpIXxdTuEZ4+p6cY6Ttg/jxPhHYoqRshzwPzeG+Np354RKmy/IPREjMOfcDvY
         WSRrNLNlg0zUISG/BPNiXdRlMOd/jvm1pQKX4bt0tm524v9kN8di1pJjZoA2Or3hOcNc
         w57VRbgojeXbo53nt6bAI6LSTYnOC3YDrTa64lIrCy2I9hoTswcMCG3926bam3ZbJYGW
         X9eH9Z3HPYd7fM6DsxiSMS77fEgo+0FbXShvajfQzk134qANExAWDENn7AvTRldUGZxX
         29uxaY0RjUtZxMIeg4c14T7d5+Y+dBHEfwMtCQBdZQgidvuw1EbFgeEBHX4X8+oZkE3r
         saFA==
X-Gm-Message-State: AOJu0YxBvbFvm2xS5gLYOztyUfy4lRoXruY7dqDKlaGwLaR4wrfuXGVS
	Yz+ThRtTFFNu8Uve8EZzACj8S2QSS6JWm9Wn2HI=
X-Google-Smtp-Source: AGHT+IFSPUZI9fkxl6byXvuEsv/6dCkbkWJwUXOFqp650h2gMs4pgYPKWhPmmUDqg/ATL6pfBo1syuuZcnqGx4oQ4hU=
X-Received: by 2002:a05:651c:1031:b0:2ca:1854:79bf with SMTP id
 w17-20020a05651c103100b002ca185479bfmr418527ljm.63.1701856817973; Wed, 06 Dec
 2023 02:00:17 -0800 (PST)
MIME-Version: 1.0
References: <CAPJWBniiK8mg2K6SPpwofx_+aNvKHNe2PerxdDhkeRy4W3=ymg@mail.gmail.com>
In-Reply-To: <CAPJWBniiK8mg2K6SPpwofx_+aNvKHNe2PerxdDhkeRy4W3=ymg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 6 Dec 2023 11:00:06 +0100
Message-ID: <CANNYZj-ev0f88828RB=+ojFrLDG8X+O_WS5NSbYNBF0-ctki1A@mail.gmail.com>
Subject: Re: [yocto] Reg. Efficient methods to transfer yocto source file
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Dec 2023 10:00:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61813

We're working to improve sharing of builds (I posted a prototype
recenty), but for now the simplest is to copy sstate cache and
download cache manually: together they will prevent others from doing
full rebuilds. You also need build/conf/ and all the layers of course.

Alex

On Wed, 6 Dec 2023 at 06:02, MOHAMMED HASSAN <hassanchattarki@gmail.com> wr=
ote:
>
> Hi guys,
> So I have been copying and transferring yocto source files into different=
 partitions to test new features and to have a preexisting working build. I=
 generally just copy the files and I am aware that this will take a lot of =
time. I was looking for an efficient way to transfer the source code as lat=
er I will be transferring the code to my other team members as well. I copy=
 everything except the tmp directory.
>
> Please share some efficient methods to transfer code.
> Also is it good to use GIT to save entire source code?
>
> Regards,
> Hassan
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61811): https://lists.yoctoproject.org/g/yocto/messag=
e/61811
> Mute This Topic: https://lists.yoctoproject.org/mt/103007903/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

