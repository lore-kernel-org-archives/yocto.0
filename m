Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB145C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 10:47:04 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.48236.1699008416163841221
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 03:46:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=B9kEZCbO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40806e4106dso11769695e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 03:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1699008414; x=1699613214; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GIVwqgcR74+1MmE+Xb65KoprX/ej4pTiTib1IdYoxnk=;
        b=B9kEZCbOwwxf6oKSADVG7OmpCijfdZczROxzSWzlQ37Z5iqdlHQQxYw87FkkaHUtZi
         DR/SX6ktCkMxmsm4uZ+Fdlvk74nxAPMyLl4SPyb6VBqhBY1Mtiao84uZFUF4n28sgvmq
         Nxb2W+PsrILuRq3OzzL3dt7zVPwVH6tKsA1mE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699008414; x=1699613214;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GIVwqgcR74+1MmE+Xb65KoprX/ej4pTiTib1IdYoxnk=;
        b=JKwN52FKaiRLcViXuSxFt9FwbLOaa3zvlhRbHNRmSXpqFT3Tuv5sZkDiwDVTlVGW4+
         cNFVfoHg3ffpXBSiMF6B3H8K1iY3QSN6bQcCInTvcNj+qbZRbHnbv8ucUlouBFuq20XW
         7RdiRbb1u4mjcI38EBJjgYQVA3ZNQQhMdKOLm//6dkm6UqBMtjhCNjjtzDhKNqgroDsJ
         sp24T/rk5F8i2iaAA7WDUHH84A9MBMJP+SMvK+6tD/FqxOehgEte4UEmfC+RVK6PNey8
         u4vApjY2o3q7WWLm3joxsHxWAkUinrGJ7hfzJhk6RluQDQPzlWYwciNS481hfSSSEsW9
         gbIw==
X-Gm-Message-State: AOJu0YySP7gj9cnMpyepLpTdpLzUS45ECsrWXK4qe6xDbbyGWVLxplCZ
	Q9FgOWVg8XwEGMHddd0uzExWrQ==
X-Google-Smtp-Source: AGHT+IHtnvSoopzXB9q1jCgERC7g0fmMNSSkUbUem7qzcg543915i1f6mA/CjjebzZkQ0N6VUDpXZQ==
X-Received: by 2002:a05:600c:3205:b0:403:aced:f7f4 with SMTP id r5-20020a05600c320500b00403acedf7f4mr2371366wmp.12.1699008414346;
        Fri, 03 Nov 2023 03:46:54 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10? ([2001:8b0:aba:5f3c:e0d8:6688:b1fe:2c10])
        by smtp.gmail.com with ESMTPSA id b15-20020adfee8f000000b0031980294e9fsm1468062wro.116.2023.11.03.03.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 03:46:54 -0700 (PDT)
Message-ID: <c286b65922e1be311210497349f3a6950ff3b36a.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v4 1/2] config.json:
 Move AUH from custom scripts to config.json
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, Yoann Congal
	 <yoann.congal@smile.fr>
Cc: yocto@lists.yoctoproject.org
Date: Fri, 03 Nov 2023 10:46:53 +0000
In-Reply-To: <CANNYZj8=2XpXLSQxhv4=3V3nTbYNOhB639mZY12zLru+EyC93A@mail.gmail.com>
References: <20231102152044.3433589-1-yoann.congal@smile.fr>
	 <20231102152044.3433589-2-yoann.congal@smile.fr>
	 <1794135837F88140.3650@lists.yoctoproject.org>
	 <CANNYZj8=2XpXLSQxhv4=3V3nTbYNOhB639mZY12zLru+EyC93A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 10:47:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61590

On Fri, 2023-11-03 at 10:44 +0100, Alexander Kanavin wrote:
> On Fri, 3 Nov 2023 at 10:37, Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >=20
> > Ka-boom:
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/130/builds/59
>=20
> "
> ERROR: Command . ./oe-init-build-env; bitbake-layers add-layer
> /home/pokybuild/yocto-worker/auh/build/auto-upgrade-helper failed with
> exit code 1, see errors above. (1699003823.8)
> "
>=20
> I'm not exactly sure, but I think this should be addressed by adding
> an entry in config.json with "no-layer-add" : true (there are examples
> there).

My changes have a piece at the end of config.json which adds the repo
and fix that issue. I'll separate out that change and add it that way.

Cheers,

Richard

