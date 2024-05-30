Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B10AC25B74
	for <webhook@archiver.kernel.org>; Thu, 30 May 2024 09:51:05 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web10.4419.1717062655834834054
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 02:50:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dt7/p93h;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso5577441fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 02:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717062654; x=1717667454; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHIZKHK9jOnXH6QFBharri+hZUWnk+IbpWZ1rJowKRI=;
        b=dt7/p93h0myWUjHmzDLyGkC/BjGo4IdHIyXNXHtA01Psl3h+usjb+q+Z4Ecv4TNozy
         NWN8Q62MWs9pwL7c1bX/CRuq2mOpro7Katne8lWfo0gUHX9XTlwrQLAdtgSc9qECSUGp
         eTzMC1TnTbi5ldINpZUbDC6jFppeCchpyjfpR2uSuEAiNuCLLy96Z7K5zRpMmxFNEJLc
         urj1TASjXwqJl5dnXM8kqfZaFKLxO2lWS/ZRltdICKtnON+br1gVQ7AbD7n2dAyh0+/L
         zMz7c/K68ROtbcGK3rVQGY1y3g4N+gYQf/ug1sqZBffD6iFj9bvpdOd5eIB/H++EWrjp
         Wkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717062654; x=1717667454;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LHIZKHK9jOnXH6QFBharri+hZUWnk+IbpWZ1rJowKRI=;
        b=ecpaMhe6KpvrUw8F9ShlNmGcdad+6kVEhs0NYitDfUD92/mhgfwclm+MKlKsQNdmmx
         Bwmx0clmAEZ4JixYWgDfSLSf0pRaE2v3dIWmXqcOn5r6+n7UJvNPfOiWqtFfcOz2+1pS
         QPgBH7llV0cILX73Qp/WXE70aRIyPWcOGlkhLiGDMPL46F3LHZt2aR1U8XywJOzuMCXU
         rpZrtH0o+0QiFGYg1jZKNKIEwICIQPK0FRZyUw5vCnSHCLIl6NgE/HRnOotpI2BzFItp
         Xemc+Zd5zbzPPQwrcokzX8LEFy7eC2rgyyx2qV21mpJ8ecS2rpTLg0K4zFQH0szpKn3L
         7VbQ==
X-Gm-Message-State: AOJu0YwpMwyQlpByoQe82LaOpLG4+cZFzPDs047PKHhMv+1NEKAN9g3t
	/EXpLJKV4UEfU2RuV3szI9/mwKkh3NMFbTMK1U+f99IorXg4BEPdPdbKH1YkxufALmDFFJoUZD8
	LTz2PUd4jmPR2OaZE+cGxzMTjgRJu0Q==
X-Google-Smtp-Source: AGHT+IG+pwAjROOx4HFjJflUpvvCSti2y+V6/ZUsWLr4LBDzxbFGxoM/W9CKAsJcCbbT2WNv+zoLw8ZnVOwROJd1SGc=
X-Received: by 2002:a2e:3501:0:b0:2e9:8150:8efe with SMTP id
 38308e7fff4ca-2ea84ca382fmr3238921fa.26.1717062653758; Thu, 30 May 2024
 02:50:53 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9nYyaTk164KYdCxXbcf6snvgCKseS-_sUzxcktSiAb9Q@mail.gmail.com>
 <27121.1716999189293869730@lists.yoctoproject.org>
In-Reply-To: <27121.1716999189293869730@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 30 May 2024 11:50:42 +0200
Message-ID: <CANNYZj9WxSLVHsXcUbwA2xEME8e_qQ6=ygBvpOLukc1TvAb2mw@mail.gmail.com>
Subject: Re: [yocto] Bad lib symlink in Host SDK
To: lukas.weiss@janitza.de
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 09:51:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63241

On Wed, 29 May 2024 at 18:13, Lukas Wei=C3=9F via Lists.Yoctoproject.Org
<lukas.weiss=3Djanitza.de@lists.yoctoproject.org> wrote:
> how can i see if the link is broken on build or packaging? Since the path=
 of the broken link can't be known on build process (it was entered in inst=
all process of SDK sh installer), i will not be able to find it somewhere i=
n logs or env. It must be some kind of variable that is used here, but i ha=
ve no idea which one. Note that the broken link os not only the wrong direc=
tory depth - the parent-dir dots only lead to /home/admin/sdk (not root).

You need to look in ${WORKDIR} of nativesdk-udev, specifically, under
image/ package/ packages/split/ directories. Links like that are
typically created already at that stage, so is it correct then?

> Since we use host SDK not only for tests, but also for partial "Simulatio=
ns" with real devices connected, qemu is not the best choice. The pain is j=
ust on another end.

It's just not a supported use case and you're entirely on your own
trying to make it work. nativesdk- is meant only for building
toolchains and their dependencies; any target items should be built
for the target and deployed to physical hardware or qemu.

Alex

