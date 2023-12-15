Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECCA1C4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 17:42:55 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web11.68985.1702662172755330396
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Dec 2023 09:42:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=L9ENU9d0;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3ba2e03e21cso744388b6e.0
        for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 09:42:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702662172; x=1703266972; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZfD2+k39xuMFSxV3w2NR6ML8cKAp+A8o4a6pKirA1o=;
        b=L9ENU9d0H6XDbAn2yD6PyTUPQ//PGvERizTb2VOG5oNvJENf9HdzxAa/Xsve3spZHb
         1fSUeQfjws1JxZNerJrW9Si8CMSubtG5w9Kg+lPiAX544eBf6np3jGs1zVL7y5pc/pGI
         avgvI01+I+qVTpCeDOS9ELLDENr4dtJosZjXYvPYqnX/JzyEBpxqt3UxSDNhr+91cvlD
         EGsd+PCt3Izj8+iAq90RhEiic5WmSHu2jKbD7Yhx68sKodputjPdde5waRRMUrJGhI9w
         v0huFC12/ePP0DnrJ1lWYZTBJnGp1p1JH+ojcFYC4De804IxAcAU1rZm5hHC/mSBdPvi
         jTTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702662172; x=1703266972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZfD2+k39xuMFSxV3w2NR6ML8cKAp+A8o4a6pKirA1o=;
        b=Jy5YLwI1Eg9POChQW5y3yMxXDEfDbYi6i9Mvw1Ih6RPYSsCYPlmRiE2HZSiXy07Iy+
         AdXmRusNjXEkIZ7hg9tlv5FdalrsEG8KYoNooxjLKFk05elGIaH+mtPc7YKG+loEQWTn
         zbTtKwPtAEzuJdLMSvhjXO3HH/cSPL4t/DcmoXoCdfcHx8N7L8zUFyfYvasjfmLEAxFF
         kEPtNNdUSwCPcwkpKOFfdZEU1rgSePAbbjBPjtqfaEveIzEECL0/fRsBPopZvkki7/ow
         rGZSWO8hcIi1ykX7uoxDEonTxGeRgU23KC0LBwe7tF0w+dfp1q5FgccuhdattOP6URdA
         Dktw==
X-Gm-Message-State: AOJu0Yw3m824xGfUGFP0wj742UXZ+brjOuWj2HEpp1WtXvQqkrBs+rbN
	fMDJDPmw1rh2vwhjCy/tlK99eXh8zpXP7fZTOwQpaOvl
X-Google-Smtp-Source: AGHT+IEDbR0gk6jQ5UvXthjaBdA3cSEdc5tVXzXgGEUIgv0u8qVAxNqAMp11zEpfWoHj2yyarWgoXUdal4H7La0PClI=
X-Received: by 2002:a05:6870:ac8b:b0:203:7eb5:92f4 with SMTP id
 ns11-20020a056870ac8b00b002037eb592f4mr672680oab.88.1702662171931; Fri, 15
 Dec 2023 09:42:51 -0800 (PST)
MIME-Version: 1.0
References: <CAMKF1sqv7_9rz=NqBshF5UHmm9A8ZjmZbtbi13MSOPwiYOzaTQ@mail.gmail.com>
 <2894.1702661885019298270@lists.yoctoproject.org>
In-Reply-To: <2894.1702661885019298270@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Dec 2023 09:42:26 -0800
Message-ID: <CAMKF1soJSbBV1tHaNm9eVTifvspOT89vAOYCH9bYNqj+0EaQDQ@mail.gmail.com>
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 17:42:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61912

On Fri, Dec 15, 2023 at 9:38=E2=80=AFAM Renato Mendes
<renato.mendes.pes@gmail.com> wrote:
>
> Hummm. got it. Could never imagine this situation.... :-)
>
> You mean backporting to dunfell? I'm currently on kirkstone....

backport from master to kirkstone branch ( meta-raspberrypi )

