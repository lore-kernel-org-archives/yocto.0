Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B27CE71D2E
	for <webhook@archiver.kernel.org>; Fri, 29 Sep 2023 13:09:28 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web10.16723.1695992960768693912
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Sep 2023 06:09:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V7uTyQbN;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2c17de836fbso85838111fa.1
        for <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 06:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695992959; x=1696597759; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nNY2aCJGmtRSFNGtbGYVSxxI2Zr4bLMWrpjRE/hrJcg=;
        b=V7uTyQbNv/+mHoofqdpP3/WTndmQ3vKDo5BOZzGbSp5cIu9bWJcka0KuRUDobRvb5P
         f1UNw8x2L/taMuZORmMNLcHL7tfkwwCjWii4cWERvxkBj6lvGU8ODvgI8vBwmZe74Jdc
         xF0E/CpkC4HcnOooebkMbb4w3vP/d5/+8JyQHL80fpF2KaJIoy1uy9BG/+9dRv2VkZqW
         l9Oe6T+0Ixxzf3cMyayuz0mR/81i97dVH5IKA/G0m4zUGGGYvo12HHFTu9Z/xANGlIvx
         JaL9A4ou1OsA6R3QOkutHqgvKd9FyCRfGocwhoc8OxhnEkELpHUi4IdpvstRasYMgmvB
         strw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695992959; x=1696597759;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nNY2aCJGmtRSFNGtbGYVSxxI2Zr4bLMWrpjRE/hrJcg=;
        b=pyNJaj/rzNlENcI7OHTcGlnuCO4+1w/tCjyq81uLwSNRkPnL5u+mrDMuiM7GWW/mpB
         2ISZBvlCGbDScGepHXGTfcgbTyS+ZYSo3MzuULYPjyZp4bHX02u49zlR8GoNRAK37fVx
         9VWbrKx/EJ1S97T1Xa/zxTTzBYLb6kucyOi2D3F7wUfvVKj1v6SVLYxTZCgmm1H+5ziW
         aZsPzDEuBfLnkAaXGOxNDzDN/9c/RKKI7YcMyW38xvy0k5hsVVDkhGBURjmfqzeCGT0c
         37pA6cO7Jv7M/Tjwrkn/8C6VBqyRy5zK3MaSgA/WHwZeokwX9/fl/cNw7+SF4hS4C2ZN
         FMmw==
X-Gm-Message-State: AOJu0YxxRLIg3JrUgLHs8voQj3SyNACuqkhmWGM9tjAndfrA1xk+s+BA
	9Lz0EXCAZIwDXxeGdIY8ziO7YP+4eQ+BURsvdLY=
X-Google-Smtp-Source: AGHT+IHT6idlN0Cptv0H42kmLdH/+7iNGxOUVD5uuLBtX/CJWbXC0Hp4xusbjZAQRVLKlfGfhwBQqFLTunykjp327fc=
X-Received: by 2002:a2e:97c9:0:b0:2bd:10ee:7d22 with SMTP id
 m9-20020a2e97c9000000b002bd10ee7d22mr3682008ljj.51.1695992958547; Fri, 29 Sep
 2023 06:09:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
 <5ef99df95ab74e74df6f1e07ef4877487230d9fe.camel@linuxfoundation.org>
 <CANNYZj8RAvj=sJtQuH9J_zKKAsUbhcdKe0hiA2JJy1wwxuzDNQ@mail.gmail.com>
 <DM8PR12MB54304C00CC6C924121E1CBDF8BF8A@DM8PR12MB5430.namprd12.prod.outlook.com>
 <CANNYZj8eSZZOfPGYCdYPrWjHf74dmRW5uYAZfTBp7JemPXxQCg@mail.gmail.com>
 <24b60007a669d075fa1e4ccd18980ada93714c7a.camel@linuxfoundation.org>
 <CANNYZj-YBTN_yje-fyzp12YDF9XMaZSuMvLh6qA1H+9GEYEmfA@mail.gmail.com>
 <7564ae2b6c036b10a35e8c9927c0ab2cf533f35c.camel@linuxfoundation.org>
 <CANNYZj_16s-JuZAQ3pccnf-8Lb=yMQ1+a9FiU1abLXgORs70rw@mail.gmail.com> <ad1f866bf7b231ccd57f91f2f0a9256d18eb533f.camel@linuxfoundation.org>
In-Reply-To: <ad1f866bf7b231ccd57f91f2f0a9256d18eb533f.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 29 Sep 2023 15:09:06 +0200
Message-ID: <CANNYZj8iRGygNAdVdHQ-k8JodmzRaLK+vx2tKhmWBBEb8R4-dA@mail.gmail.com>
Subject: Re: [Openembedded-architecture] Core workflow: sstate for all,
 bblock/bbunlock, tools for why is sstate not being reused?
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "chris.laplante@agilent.com" <chris.laplante@agilent.com>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>, 
	Julien STEPHAN <jstephan@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Sep 2023 13:09:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61165

On Fri, 29 Sept 2023 at 14:27, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:

> I'd prefer to see some dedicated bitbake API used even if we need to
> create/add it. tinfoil and some of the bblock/unlock work shows we can
> get stamp data, the question would be how to get it without
> "disturbing" the existing build.
>
> By using dedicated API, we'd be able to control the console output.

I just noticed that compare_sigfiles() has a 'collapsed' argument,
which, when set to True, omits most or all of the task hash printing,
and with that its output should approximate what bitbake-whatchanged
is aiming to do. This is currently used only by buildhistory, but it
could be used by -S printdiff too, e.g. by having verbose and concise
modes.

I'll run some experiments, and let's see what the overall output looks
like in real scenarios (e.g. 4.3_M3 vs current master).

Alex

