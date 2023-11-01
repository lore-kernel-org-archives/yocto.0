Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9248FC4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 15:19:47 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web10.10170.1698851981231569043
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 08:19:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jGprEKPX;
 spf=pass (domain: gmail.com, ip: 209.85.208.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2c50d1b9f22so89341471fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 08:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698851979; x=1699456779; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tQO8VwiRKREozLSHDAg6JNtkxmm2aLzixBNKyQAJNk4=;
        b=jGprEKPXhlL+9vYGOee0gPdFfLIK/tYDuuolXQDfKrWvsIqDQjINhSbIDNAndze7KL
         JeJ9ek8/OcK0JNLcxGOtDngJLBSymdL2LPauB7rY3jjSgmUzFhKVikUchGFlTHTbWsWo
         8pzRxY71mzsxFH9x6BT7r209f0G+v0Yx6wl2QgyWzySLzPO3stGFhObeA8qtJReaIadS
         x3F3TIdM9EtgueVKVbfmwyiDMiLC+QSTvrvXq2GvTuJjbak157ceLSE/E+42zDXPzIdS
         zJrTVrty+GDtnfhP3NQrCknz6lnK9k1vRj/MqcXeRHWCklxcAwRGIPW5QwxUBbik/uF2
         1lVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698851979; x=1699456779;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tQO8VwiRKREozLSHDAg6JNtkxmm2aLzixBNKyQAJNk4=;
        b=spCA+gISG3MYB8nhe3/FyP3S+c0R4aQxjx4LScJz98lPdKrU4NMQx2tpICI/rFeazR
         /JZja3M9K8pyBfvu1O5MsV5ViSzeo/J8iLJXTQu6QpwZczB2YdKA7OGHjnOJHgA1EXy3
         2D5WCgnYO4/wEjSnc6oGADvxF6DFS5OHaj52vuu/xC2eEA3V5SfoG3daVUBZ//JiFMFz
         HKwjVRKHavIclsq76/bKwZgz9QI1PY60wt8Upyk0Kg1JMptJ+AqTnSVava9xGTN+ehWA
         1wRuQ/I/odkMwhOAzvGz+D1co/pMCd6W/c8HCsfwL0M9lU2YTbGYOrYbwTSUWkKyjMO4
         aWMQ==
X-Gm-Message-State: AOJu0YwoyF9YHgdl+u3DSEi0Oxh9dKe9kglkZjHiLJxeeVPKn3DNvX/s
	5uKoOMhtmEzHcoos5Qr+HG0e7I/BOShdse8+6cg=
X-Google-Smtp-Source: AGHT+IEvJ037NWBjNHuB/J3dXCL+QevejM+8BkRY8msJYvRQMbOE6NqQI0DFYwKpc1wJI3ccyKToTBT20pnLHrwYLT8=
X-Received: by 2002:a2e:3e1a:0:b0:2bf:ab17:d48b with SMTP id
 l26-20020a2e3e1a000000b002bfab17d48bmr13309789lja.34.1698851979153; Wed, 01
 Nov 2023 08:19:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com> <649b2f000761831cabd1f5737fb5b30a2ffc3654.camel@gmail.com>
In-Reply-To: <649b2f000761831cabd1f5737fb5b30a2ffc3654.camel@gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 1 Nov 2023 16:19:27 +0100
Message-ID: <CANNYZj_Cq+cncw5SCGii=Mhj0KGgo=qr=hCuo+wpdvtR9C=Qyg@mail.gmail.com>
Subject: Re: [OE-core] Core workflow: sstate for all, bblock/bbunlock, tools
 for why is sstate not being reused?
To: adrian.freihofer@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Michael Halstead <mhalstead@linuxfoundation.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 15:19:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61557

On Wed, 1 Nov 2023 at 15:18, <adrian.freihofer@gmail.com> wrote:
> We are currently experimenting with replacing the eSDK installer with
> the bitbake build environment for our users. Part of this
> transformation is, of course, the shared sstate-cache, for which this
> discussion seems quite relevant. The workflow we are aiming for is as
> follows:
>
>    1. Setup the layers and build config (out of scope here)
>    2. Download the sstate for a particular recipe (usually an image
>       recipe).

I'm not sure I understand the case for downloading the complete set of
cache objects up front. What's wrong with 'lazy' downloading, e.g.
only when the objects are actually needed in a build?

Even then, does --setscene-only do just that, or am I completely confused?

Alex

