Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0902FECE564
	for <webhook@archiver.kernel.org>; Tue, 10 Sep 2024 09:45:04 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.18866.1725961495357266570
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Sep 2024 02:44:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lRY2kZ99;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2f75f116d11so33012921fa.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 02:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725961493; x=1726566293; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8v7eQK43qRRy1zXZIPljWiIuyJ+lneccpFNI1PUzK5I=;
        b=lRY2kZ99mcHddmwrqbcUI2xPDwoiotXX23UEmPVeqCOH+HWvIPxdrmNXeBSWx0yKP5
         R69NvVUPSowuCAwARRtO/nT4t/1bA/kkobKFKre8NOYTC1KoiteoJIKzEK79QGHe6+iE
         qWm+M8n6S09p5xYGrMnSm+ppOOt4he9U2B4M8KWlFG4hM1SQlk0t5haikAibAI+x+hDg
         gwX2XfE0z7E2iwXNY3x27KsihH7OFiXcsQzQ627yIWTKooQk/rc6HZjoeArXyHvieowM
         nxdZ7GEPv/R03qvXRZNW9BTKZVwbq0SFwBPkFfgYZNp4rOXBhXKwKSrjbb7NkrYbdRGr
         BuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725961493; x=1726566293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8v7eQK43qRRy1zXZIPljWiIuyJ+lneccpFNI1PUzK5I=;
        b=oK/XaX7fX6Pm3yTSy1DU08O4FejG7d3xCp1zxFgh5TREeWM61WEItR96A4reVKBLtP
         gsfD3KjhvpS5ffXJ09Xal6Ci9Yi2W1lYaZ58MO3zBlXAbQy/aZNqP2Ks1kYWchAM/6t3
         0NRd5DiZmFgRgueOSmKKEEQ657IrWJpPDV5HpmBU2oG3Bl6gEQq2iNxJ+PPQ7jWlHQE8
         rlB9sXsB/coDutXBdjjI1P2DF8oT19w3vTOvKUC7acMJIV8hNmQEPd2Z01fEv11rEACL
         mcss4G0sfunKm9dNbf4856ZQUmDphYQ2Ps7qyfUzZpqDKPaVq8dS/2mFhApk43Vf1tzH
         kdSw==
X-Gm-Message-State: AOJu0YyeFAoD9TIsdFvdH14YH+PELAFzndT/TxHkqxn4i2Pgr5/V8DBe
	AtZUsRyPneZC6sDvj+nsxtH5MhMVXqFtrK4X9jQL2ANI+3YoApM2lid3ddLwcLO2lWEH6CINKaj
	IdtEw4Wy1TWgd+knO3QYJ4VImUhNLJA==
X-Google-Smtp-Source: AGHT+IG+FJ+I9iUwaitJB6WdIfxLuwZ1l1QIazTdL+oBGGV31cbke7DTn/TAN7kkY1j5bGtpFTRB1sdRNRb84Iy5X0U=
X-Received: by 2002:a2e:b00a:0:b0:2f3:b74c:48d7 with SMTP id
 38308e7fff4ca-2f751f280f2mr75660461fa.25.1725961492731; Tue, 10 Sep 2024
 02:44:52 -0700 (PDT)
MIME-Version: 1.0
References: <67a6de78ca24ef67f18cba5ea26678651aaad44e.camel@gmail.com> <15381.1725891844505815590@lists.yoctoproject.org>
In-Reply-To: <15381.1725891844505815590@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 10 Sep 2024 11:44:41 +0200
Message-ID: <CANNYZj9xVDpbWsa-5b0HoNR-jMyQZgVPp3LazLQx+q-GuDjBbw@mail.gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
To: yocto@lists.yoctoproject.org, radoslav.pesek@microstep-mis.com
Cc: Adrian Freihofer <adrian.freihofer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Sep 2024 09:45:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63810

On Mon, 9 Sept 2024 at 16:24, Radoslav Pesek via
lists.yoctoproject.org
<radoslav.pesek=3Dmicrostep-mis.com@lists.yoctoproject.org> wrote:
> thanks for the explanation. I checked the slides, watched the video and t=
ried this workflow (partially - didn't try deploy-target and finish), and i=
t seems to work, but still have some questions:
> * Alex, you write above: Classic esdk bundles will almost certainly not b=
e developed further. - so am i getting this right, that there isn't gonna b=
e a way to generate e/sdk installer in the future (and there will be only t=
his workflow available)?

They will be supported and they will work as they do now. What I meant
is that esdk bundles will not gain new functionality or get their
shortcomings addressed.

> * Adrian, you write above: The second thing you need is a shared sstate-c=
ache. This feature is now available officially in Yocto. - do you mean by t=
his publishing it via web server? So if have it published and it works for =
standalone esdk, will it also work for this new devtool workflow under norm=
al yocto build environment? Do i need to do anything specific or will it wo=
rk out of the box when someone else creates their own yocto build enironmen=
t?

I'm not sure what Adrian meant by 'now available officially'. Sstate
has been supported for a very long time; the basic workflow is that CI
machines all share a r/w NFS directory which they read and write from,
and then this directory is published over http and made available to
developer machines, so their yocto builds can be quickly assembled
from pre-build sstate artefacts. The key part is that developers build
configurations cannot deviate from what CI has built, or yocto will
have to rebuild the changed parts and everything that depends on
those.

Alex

