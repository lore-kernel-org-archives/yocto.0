Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEDE9EE643D
	for <webhook@archiver.kernel.org>; Fri, 15 Sep 2023 08:28:41 +0000 (UTC)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
 by mx.groups.io with SMTP id smtpd.web11.16164.1694766516870206154
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Sep 2023 01:28:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mtXh4rBr;
 spf=pass (domain: gmail.com, ip: 209.85.208.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2bfb0a2682fso30698321fa.2
        for <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 01:28:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694766515; x=1695371315; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JAJrYMBSRF2fYKPN9DvrSp0xOl2ZoagpFuO+k1mZ3Ck=;
        b=mtXh4rBrV5wcvHRYblT1g0DQWnrOInJaNerCwyRdseI84+FBvnHIPH8tmGPN2MV4j1
         iIhRRMwFvtWxRWWVtXicLIb6lHdT0Em1DdjPye1aqnodiHy7DwFveFLT7outNHfFI/LE
         wUr4S8Eik19cF698rJQ/vEGM/bXCejn0Hn5DGg8ZjkFrpAG5BpW4Roast8MGEI6LVLad
         N6z8CZ0K7ThgF5HCo85hoN+fqzntDBMFM6gxnR7rQY2lKbSyyKPQPRRDih4VuC7tgpBS
         wpTqbPt5Rlmh5YUVgZmPCqoMMlRW9hKuGgkNSKEK9gcJACYzyJyC376k7xY3im4lk1zz
         R6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694766515; x=1695371315;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JAJrYMBSRF2fYKPN9DvrSp0xOl2ZoagpFuO+k1mZ3Ck=;
        b=gxu/wBx1u7UQnl1sSnL6I+Ep4SGmz2xS2zPHy0Ct+z8SYm10PUQKV6ybh0O4/nONHI
         S6IOl+2UIoTc/kElRpR1VBhWGB9Q58ytH3Evh750jgYPxgvSGhfIaqXEudyl/yu3EO+O
         Zx1/DIKxrA4wRX6Y+7VBznehAEF/FxbvGifU4dW55+C5lsQh0uSEMd9kUXVHlXsTsXZG
         Hb4kehQwuk8MqIEkSb8V7djvdufibJ+ZmKe1HMOBix1nA6fUKl7okFZrLQJdM87mhedw
         iONSvkMWIGGKtOELoB09y4/57t/PUlY2NM0b8og32b7r3zym2Kg2kDrmb4Fh3NO/CIkI
         cUUQ==
X-Gm-Message-State: AOJu0YyWuHz5gsUZAYVZwWvR9aF6J3uzbnK45tW4xDScgk1S2di+mxUN
	unyZcOuukDkBjoG58lwiIQp8fVkBAPKtwWuLLlE=
X-Google-Smtp-Source: AGHT+IELPUPbqupLkt9NyIW9rlw+E92tU1eRGJXH2MZsmpedUF0OqsR/KIz6kYCQwY3QAU/EK0Vz9eh+rt/hS08wrC8=
X-Received: by 2002:a2e:b24d:0:b0:2bf:b182:9b7f with SMTP id
 n13-20020a2eb24d000000b002bfb1829b7fmr896638ljm.26.1694766514737; Fri, 15 Sep
 2023 01:28:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com> <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
In-Reply-To: <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 15 Sep 2023 10:28:23 +0200
Message-ID: <CANNYZj9mekKZwHs839m3r8sYbTiTLPaqzP=8C_-9=4w6MiJTaA@mail.gmail.com>
Subject: Re: Core workflow: sstate for all, bblock/bbunlock, tools for why is
 sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Sep 2023 08:28:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61016

On Thu, 14 Sept 2023 at 21:54, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> Effectively those "configs" are what the eSDK is, you're just proposing
> a server side set of them rather than a built copy. In many ways that
> could be useful way of possibly rethinking the way the eSDK works.
>
> So in that sense I like the idea, we should just be clear the problem
> it solves as it doesn't solve the "why is my build not using the cache"
> question specifically but it potentially solves other issues.

Right, I didn't make it clear that this idea is not about 'why sstate
is not being reused', but rather something I thought of to avoid
placing people in that situation to begin with - offering them
'pre-fabricated builds' with guaranteed sstate availability. I have a
hunch there'll be plenty, for whom this is just fine, and eventually
this could be the basis of that oe-setup holy grail :)

I'll start with the simplest enhancement of printing what would be
rebuilt. There's a lot of code I need to understand, so this needs to
be in manageable chunks :)

Alex

