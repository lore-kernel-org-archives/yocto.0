Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C708C4167D
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 22:41:50 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.54721.1698532901823502022
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 15:41:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=dwxpZxbY;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40907b82ab9so25039145e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 15:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698532890; x=1699137690; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bit8tXEufGahLYvASBhcREDwmytSuoxMWMt2NMeXJ7E=;
        b=dwxpZxbYvLK3EfyTunZNKle2j7YtN3YlJtbVMujjzIOEeNpLYly9BeGZBDtXzSdxhu
         t8tGMfLjNvJaHvyaVzDk+U0quZHfgUZ44ZpXzO/w3kVL3hf+RVmKPCJBVqJwlR9v/xq/
         WdGGivM2UvRkxSIRoTCXv1NHSx1NMtOcwO1Ic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698532890; x=1699137690;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bit8tXEufGahLYvASBhcREDwmytSuoxMWMt2NMeXJ7E=;
        b=RxYFKKdWeS1RUWnbnbQX4h1dPdUCnRMy1J+4r/1j5dtNWDkqKUgSOK5j3amjKboCiP
         GVjU69SAcGb8pQeQCuXm40WUA2/QnBMFvkoLNtUrWaoE+E/MGyXVTl6zabrqniyXKjnt
         pRx4pQs1H8l2YHmExim61TocFfclzVnoboxuQXebyse1aFlBvZ0W/xFnCMAAOeoWg1vG
         lsISXtVZ4hh++xKIUkLHKIqwJtAHBTCv19zDemI+O0NseuyZDFKaAv6yXs2IbKeQoB0P
         hqPF2KE4sNwnhKHCtEUvuBSW7o0OpP6iogJLn7uzfJ8keEmCmda/8hQv4IN/OJVmxGpS
         pILQ==
X-Gm-Message-State: AOJu0Yz7cGNMcBqzV2QIpRH6rmbg9KwfOtKdv468ZIN2U7Cqy9wPQVJo
	MivX9b5j0EAe32YQyl6c/DCbtg==
X-Google-Smtp-Source: AGHT+IGy13Saxl1e8zJcPmlEqxOrObqdmDB4WmWomWKuDqN0PkSxN5htlCLz2AhQF3WO2A9Xkckrtw==
X-Received: by 2002:a05:6000:184c:b0:32f:7beb:d009 with SMTP id c12-20020a056000184c00b0032f7bebd009mr3302660wri.17.1698532889896;
        Sat, 28 Oct 2023 15:41:29 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:947f:e7ae:1eda:3e35? ([2001:8b0:aba:5f3c:947f:e7ae:1eda:3e35])
        by smtp.gmail.com with ESMTPSA id a17-20020adfe5d1000000b003142e438e8csm4777562wrn.26.2023.10.28.15.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 15:41:29 -0700 (PDT)
Message-ID: <86491097d313e9d378246eb9355c2aa7487ba5b4.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Fix
 check-layer for meta-poky/meta-yocto-bsp
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Tim Orling <ticotimo@gmail.com>, Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org
Date: Sat, 28 Oct 2023 23:41:28 +0100
In-Reply-To: <CANx9H-BX880Zc1ozQps=Q3W9+oWYzTS8jKusUzZo0RsEes1Sig@mail.gmail.com>
References: <20231021091829.968295-1-richard.purdie@linuxfoundation.org>
	 <CANx9H-BX880Zc1ozQps=Q3W9+oWYzTS8jKusUzZo0RsEes1Sig@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 22:41:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61512

On Sat, 2023-10-28 at 11:10 -0700, Tim Orling wrote:
> Steve,
>=20
> This needs to be applied to dunfell, kirkstone, mickledore and
> nanbield=C2=A0(none of those are performing the correct check now).

I've gone ahead and backported this since I've been working on this
repo a lot recently. If there are any issues we'll resolve them...

Cheers,

Richard

