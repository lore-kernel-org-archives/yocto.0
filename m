Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79B01C0219D
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 09:51:00 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.7539.1739440258626694777
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 01:50:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gAgybz4Y;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6e4565be0e0so8130586d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 01:50:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739440258; x=1740045058; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=R3VTwUdrLCV+ynrZfHssqagIIlH45lkqhWpNfhBmz48=;
        b=gAgybz4Y5CBxCjyIJg4Pqzv0gR3vD7wx3E9Lw/olY426QoHiByjkc8zetOOQczrD/u
         mX+14E6jDpMxCsE7sLUaoKu1q2hD6nXlZFRYpCIn8wNVHVpn1LLjphsIR4AiSQwSIVMX
         v1Wtqx9jraJ3T4NOpcx7Zb7uw/jAM2D0OeeE+PLOpWIkpkNTokpjynghRqPnIESkmO8p
         02+QsY/XGXvyyMHPpJovaxwnS3sfqIp0fWQhV0ym1VsCH5q8ukv6McwvtfyOXmES6nq/
         Nxv1O7uyPw/TmIZSekM5ly32/zV8nHm4uCq060omU3yrEHCwVfEPSstAz8urAI5+69hR
         W3aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739440258; x=1740045058;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R3VTwUdrLCV+ynrZfHssqagIIlH45lkqhWpNfhBmz48=;
        b=KzidDDibYDHUpZoWcbBG3m+jl2jEYzeh1DV/A+kmmEywjaNixhwh2Ok9W3XiTNVjjM
         RnZImN6Xe/IkiCkrxb9K6RLPyqyS+AqfC5neuyG9jGHwl66mX+4N7Lbclxr15jxUPh8q
         xSuHh1WWh7FbwwwFHOLNWmpnDt5jHUOn25Cuq2SpH81wIMABNgPL2ovU0b4qeTYP8BCy
         Rfn5cyqpiUgTUAQvinX/fKEeFHgcgZcyNgeV5azMhit0pkj5X7PAHziTBYmIN/ZIt5HM
         Ysn5R+DJzXZYRhrWRjptn47Jxsp2yGXD9RuUPb+FuGYeUmGH4fj9xd+cQbX2oXf9ttle
         fU2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUNXjybHTJ/nrkjsh3J2fCf1lh0LMqJ6VwZ3LeruXG2obLKU1B1/1Va+RP6s26ZrlQGsMNSeg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxS4LdjJIW/klmXjv3+7w2tK1S8McVxT3LeD1jk6UiNpc9Iraj4
	WDOsAE285t7aEbwkuU9c8yuBupa6cc+g+kDwr6w+IPwUZGNuWvyOz3/laJ+gJzVP6m40mQOjkK/
	GeQ7TeQs6KAjEZ2oyzz6b+X2tVNo=
X-Gm-Gg: ASbGncvF6/kY33y8U7/WgqjJCLxqsLVf+K2KLsoe+B73uhsZkp8W2as5ATf9QbDxCCF
	/kK9S8ZXKf+7RpdeSbwc8qaDB7jNjUzZ5zJQl2G8FmolA4X01Qf9lDRufDa05sh5iLEx8ZvwdGs
	xQkP2BAWwhXCPladoCxQbko5iJqJtXNGc=
X-Google-Smtp-Source: AGHT+IE6oPk96o0T21m8Bx1EAI4AGf0QdgAWg5ulE0Jzg/n/6pAUXM9kHXVBJAY2uNyKElrP6YwyfaFHLd7BKBg0Vok=
X-Received: by 2002:ad4:574e:0:b0:6e6:6071:64d2 with SMTP id
 6a1803df08f44-6e660716758mr10138876d6.7.1739440257750; Thu, 13 Feb 2025
 01:50:57 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb9Fr9MFy5uub2_pTRWmVbt96OWBJ5ty+eAB9Qn+LYa_Wg@mail.gmail.com>
 <CANNYZj-PbWQDa5hAc5X6sqHVMvJ0QE01XXwytya8rprwvSsqag@mail.gmail.com>
 <d22a4cec5e317e62f1f44d8d9a810cf4745ccb48.camel@linuxfoundation.org>
 <CAMSfU+6d7gvYkjC5sbUPu6D_hOOF43ZUnM_NMEwmLUxZn6ysSA@mail.gmail.com>
 <4e883a56eb9b74a5663d7ad258194d16b1c79912.camel@linuxfoundation.org>
 <CAMSfU+44qwScnoDP4As37TNHYvwx5mBmTdGEQgq_VVz7woh6sQ@mail.gmail.com>
 <CAMSfU+4MY-JVmWPUixJYiUrtKd2CXHrJuQ0sMJJrrkLzrvAuvA@mail.gmail.com>
 <CANNYZj_8o=SHOn-kRBxzwc8vp3omCL290SA-jKkL_En1m2SWEA@mail.gmail.com> <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
In-Reply-To: <2c1bcbb1d5b75b925d9af2bd300d376a973e314e.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 10:50:46 +0100
X-Gm-Features: AWEUYZmtfxQ_Cu7H5fCEGJJRhRRD9e8aKPo64KZlmHSktAh7-1w8wtYcmybEeNE
Message-ID: <CANNYZj88RSkyChK6NwJU2OVxmGXzD2W8UcGyYe92ii8v8hdFqQ@mail.gmail.com>
Subject: Re: [yocto] [OE-core] Yocto Project Status 11 Feb. 2025 (WW07)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yoann Congal <yoann.congal@smile.fr>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 09:51:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64793

On Thu, 13 Feb 2025 at 10:45, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I don't think the github repo is going to work for either YP or OE
> since there are repositories in both that use pull requests and we
> can't have a one size fits all message. I think that means we would
> have to do this with a .github directory in the repos themselves.
>
> Also note, the global repos probably need TSC agreement. On a per repo
> basis it would fall to the maintainer.
>
> Yoann: Thanks for looking into this!

Alright. Then Yoann, can you propose patches specifically to these
two, with the aim of gently pushing back against new pull
requests/redirecting them to mailing list? It doesn't need to be
perfect, just a proposal (or several proposals) that we can select
from and refine.

https://github.com/openembedded/bitbake
https://github.com/openembedded/openembedded-core

Alex

