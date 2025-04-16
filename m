Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07092C369B1
	for <webhook@archiver.kernel.org>; Wed, 16 Apr 2025 06:36:32 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.13176.1744785390507325490
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Apr 2025 23:36:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=u1/Z7KRT;
 spf=pass (domain: smile.fr, ip: 209.85.128.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43d04dc73b7so63632465e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 15 Apr 2025 23:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1744785388; x=1745390188; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7hLNOBEIDL6jI5Cm+VUZDBSELb+rdt5lvAjHaZ9D+Hg=;
        b=u1/Z7KRTr3bD6UTKqwY6tnz1d2z/Y1NjO8kgX04fNhZNDTeGzSQdrYlJ0W9CC4ZTFN
         xkWSTnZC5bG6ybeKjSMDQq76ZqwDdwovz4ynFiKVPTPHNlV+y3TSyipPJyqA+TQ8DfwU
         10T6KgqjSWLPb7okqQmFNdvw+XlctPFJpZKac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744785388; x=1745390188;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7hLNOBEIDL6jI5Cm+VUZDBSELb+rdt5lvAjHaZ9D+Hg=;
        b=O9PtNJg3X0EYc380mRkeYlLrlh/8Jax1LnQrR84urquPkti2kzshmTVeEiMYcIxJPn
         vyAzWw9kjC08sLDCg5u70zgAeO/j56lLYwiRIp59UsyXZklXtSosokoRW+XXRV4Xi8TO
         QphkAZOU69Tb+oFyagtN5Ki52IqIkSO82+fM3k3YOdS/KedsdVfPKy+THEythZzwGQiR
         ReoJ7xGu46sNbjQvYBlMJqBgfV4GP7GVTZmyab72RxwsTc22IVOG5us9NgFLElsSPKae
         78quAM2OPyGa/Xn3B/8RxNZrBc9GXsQorCwHZZfwYnkkRlTP6mmBJTI+UHBbB/Oou8vs
         7KWQ==
X-Gm-Message-State: AOJu0YyNWIqFRJ/x+9eZsaKiItvS3HaIVNyibEJBeQPw6WdSZ6aVvFQo
	WrhkzAnfTGAExlyOeseQIX4TyUopnJXqmbM7syzfdMBWdtDi9hwfHjpLFqRP+EOzrd429FRYcHm
	o4ttO1RxSvLa0HUOTX9X7A0zpAaxhHKNrHeTzSxYIuMbFbo1b
X-Gm-Gg: ASbGnctlRKVVT1FczV1LSrj5bP8igU5hk+/EqNYoBLHQ7RfyEAI30WWd3YmM8y2/OEi
	yAIgexyZQNUkXrTpdG//l3xSaJEUatf/44cmGyJd13M1N1R80d7uAiATQYFqV7tEp5c0eJVWdBe
	8GC0xltHOaBAgBn6agSW+vlsZco1s/CNw/eeHqIukGwipnYHR9IdEWNc4=
X-Google-Smtp-Source: AGHT+IHhl/EgiI6kxo0u16HCPQYPzGS7ULjiU7rzC9O95kc1LfYbh9XZr14bm8RkI1om0WJAh0+WZnRX0e3a51dvbMs=
X-Received: by 2002:a05:600c:3ca0:b0:43d:2313:7b54 with SMTP id
 5b1f17b1804b1-4405d5fd35cmr5145205e9.3.1744785388218; Tue, 15 Apr 2025
 23:36:28 -0700 (PDT)
MIME-Version: 1.0
References: <0db86de0-be49-4e9e-bdc1-d7798dc63a98@windriver.com>
In-Reply-To: <0db86de0-be49-4e9e-bdc1-d7798dc63a98@windriver.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 16 Apr 2025 08:36:01 +0200
X-Gm-Features: ATxdqUHTuySuuPeKwYcMHxlcyH5c1BxQBM9ew5oIsTkTjc7b0yGyf1i0a7oNaRQ
Message-ID: <CAMSfU+5U51dE+ch0Ncerx2s5aPDMTS8fdw+TcByTX7UtCfKkww@mail.gmail.com>
Subject: Re: [yocto] Share another use case of layer overrides: world build
 for specific layer
To: yocto@lists.yoctoproject.org, Qi.Chen@windriver.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Apr 2025 06:36:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65182

Le mer. 16 avr. 2025 =C3=A0 07:36, Chen Qi via lists.yoctoproject.org
<Qi.Chen=3Dwindriver.com@lists.yoctoproject.org> a =C3=A9crit :
>
> Hi All,
>
> I sent out this email just to share another use case of layer overrides,
> which I think is kind of useful.
>
> Some layers depend on a few layers including the oe-core layer. If the
> layer contains quite a few recipes, how do we do world build for it? Now
> with layer override support, it's kind of easy.
>
> Take meta-virtualization as an example, adding the following lines to
> local.conf:
>
> """
> DISALLOW_WORLD_BUILD =3D "1"
> DISALLOW_WORLD_BUILD:layer-virtualization-layer =3D "0"
> EXCLUDE_FROM_WORLD ?=3D "${DISALLOW_WORLD_BUILD}"
> """

Oh nice idea, I may use this for meta-oe reproducibility test:
https://git.yoctoproject.org/yocto-autobuilder-helper/tree/config.json#n297

Thanks!

> Then running `bitbake -k world' will only build recipes for
> meta-virtualization.
>
> Regards,
> Qi
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65181): https://lists.yoctoproject.org/g/yocto/messag=
e/65181
> Mute This Topic: https://lists.yoctoproject.org/mt/112290750/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [yoann.congal@s=
mile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
Yoann Congal
Smile ECS

