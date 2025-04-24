Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE016C369D1
	for <webhook@archiver.kernel.org>; Thu, 24 Apr 2025 11:16:33 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web10.12510.1745493377784460335
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Apr 2025 04:16:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F75ulMzA;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6e8f6970326so10260346d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 04:16:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745493377; x=1746098177; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dFnKBxAY0U5wEd8x7NAoFjDHWlh9/xy5v8pubA5qY/c=;
        b=F75ulMzAirTRtbYNJ4/y5Xsk3agXbIqB7Xip8fmnhY59/umS8LfXaiGZy3HIJW0lJV
         Rnkf34iHN6nYTnsa68MfQRboKXMibUZZCONnqH96dU+kpeKiX4DqhMiG1FmxvrN9BDfW
         eiZoL+ABSVLBmtJIdmTAwqryCF1AWtmg+lBVRX0/s7uCmRGGfJF0+vF4cUvFzPr49tgl
         8kRPhO+6L4iqglDuKryX/vLMoqHp9cVYShxBXNfTc1lEdW+QOOiGdrVlNehrQ8y2Q5Jm
         O69j7SjZA1YLbasHi8ViZX3bUxlnyVnxi2J845Blue76IVrpKGVZq3TFHTUmAzy87jx6
         9H3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745493377; x=1746098177;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dFnKBxAY0U5wEd8x7NAoFjDHWlh9/xy5v8pubA5qY/c=;
        b=THcKQZjEwv4MD1bszlj/1slxeCzcMJRUrcdDsUgAwekVjbvvrJzW7AQOVN46JTEAJ2
         XQkfCRvtNf3TW/Ap9JEi3iaa2GY4qIt26PXl11aCnIQDEHYp5eWnt6AS3GNhqyb7MKR4
         V8K6kNeCjcTw+/4iMLscLcYcBQPthAB2iToEMuhArK3oRizewLa5hYtdtDvARntUpRvE
         YS95Z56OW4n/8npdxOJIAEipU/Ke62YwzWMHTeLey9MIlC9UJKwQ76QQ5JgjoQ9lcM0s
         aRnaZdRKLDOwOyn2X4dZytPLg3zg0O+73In/Vhbug7Z1N4QwbeH+/Qe3GhcWr2jfNWin
         2EOg==
X-Gm-Message-State: AOJu0Yxs4Va+qW6t/iDjr/Ga/VsZ9HoUbQ4bLINgzybweqJXxzsBsdHZ
	AF4QjiBgPjWgnXNlXdWUHfhQrqRFCMB8qIdg9yPnNRcRYKGfU3prhgQrsmSiNR9cqn+bKyfXh4e
	gBBW3w955ByP90bIT/6ON+qo2ao1y2TUo
X-Gm-Gg: ASbGncsCUPyClTz/99iULXDMG7lB2Q1dkLqLQKVf+I2vnQdK55Mh6UqQfnzX7mbLO2h
	LMHbokfcBsuAwCVv7Ui+biBFUTPXpr5AQg6rfh+RoZyydD+mmWB3HTEpRrdURXOp+tDqkq0I2ZA
	BYUyd1FOMbcI+jPNn+h/xL6bOS6kdXpfPTdJKnoje/IzgQ0ZaRMTTTJaCh
X-Google-Smtp-Source: AGHT+IEkKpdLmpPTF/EZEoGjo4NmzPdBVOAw0A742/eymY/pAQiiFQsQ4s0ZOh8IEWw90Bf6t0KTFHid7GwLE8bIY2A=
X-Received: by 2002:a05:6214:cc9:b0:6e8:9dfa:d932 with SMTP id
 6a1803df08f44-6f4bfbe0bbemr39061466d6.15.1745493376821; Thu, 24 Apr 2025
 04:16:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAJo0Az5-Wy8RyJMcNG=0XynEaJ30YUr9eRXno0ZC6yKB4bQYLg@mail.gmail.com>
 <183447646FA7BED4.31078@lists.yoctoproject.org> <183447EA8991BD5A.31078@lists.yoctoproject.org>
 <CANNYZj9ZEiVebtxiaXEsFSR_2EmYDq5Qx4M3wskpKdL0mZMvXg@mail.gmail.com>
 <CAJo0Az703ob3hXzqYGHCxVQ=L9RLpc_yYf2uOsTskkZ3g3JZ+A@mail.gmail.com> <18346FC88571D13F.11031@lists.yoctoproject.org>
In-Reply-To: <18346FC88571D13F.11031@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 24 Apr 2025 13:16:05 +0200
X-Gm-Features: ATxdqUGY_UmgaSuzaEECrirbHN_CPjZjD8KeRNtAL3xnVnjpeuwN6EdocssMnlw
Message-ID: <CANNYZj_iPmqAd21sRthbPHRhJ0u27YqxuCNH1+N-t8-dzmFvpw@mail.gmail.com>
Subject: Re: [yocto] [auh] Setting up AUH for non pypi recipes
To: yocto@lists.yoctoproject.org
Cc: Tom Geelen <t.f.g.geelen@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Apr 2025 11:16:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65241

I have now sent a patch to address the core issue:

https://lists.openembedded.org/g/openembedded-core/message/215360

Alex

On Tue, 8 Apr 2025 at 21:51, Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org>
wrote:
>
> On Tue, 8 Apr 2025 at 21:16, Tom Geelen <t.f.g.geelen@gmail.com> wrote:
> >
> > Ah nice additional thing indeed. I will keep it as UNPACKDIR as I
> > believe that is now the preferred place.
> >
> > Other than that, does anyone have a clue on why devtool (via AUH)
> > always seems to throw a git error when it tries to upgrade a github
> > based recipe?
>
> As I said, the particular error in your original message is caused by
> S = "${UNPACKDIR}/git", and if you tweak it as suggested, the upgrade
> will work. If you have other examples I can take a look, but AUH
> handles oe-core pretty well in general, including github based
> recipes.
>
> Alex
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65128): https://lists.yoctoproject.org/g/yocto/message/65128
> Mute This Topic: https://lists.yoctoproject.org/mt/112148749/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

