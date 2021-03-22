Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1622.1616429958550545591
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 09:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WM17+qtl;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: twoerner@gmail.com)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com [209.85.166.169])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7CB0038C06FF
	for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 16:19:17 +0000 (UTC)
Received: by mail-il1-f169.google.com with SMTP id 19so15381925ilj.2
        for <yocto@yoctoproject.org>; Mon, 22 Mar 2021 09:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=gcA/aApc5OV7qhz+TSNcB+fZB14UoTMm1EvKZ9z96YA=;
        b=WM17+qtl3V0pJIbuvsHWAijieyg06veHShfaZHKN33c+m0vicetK89i9zQHEhwIzTE
         SBHnWPX9tkqe3xmJ0dJAERU9fV/TIlH+D6vYAWl9mkGg7dGHMWmaEE3+H6qim+VLiLgI
         24A9PEvmZ57akOFQeCU1fQfeV/vMoro5LxPTTUsZ7ero/mqM/FfPsJPnxO2FXlkkf4Av
         QRTgqs0l5ZQrIeFowmGXqDw0RMRzagUUigO0sm6LkAp0Z8fUtKZmKwBHqFK1F1LdLQiV
         KJoHaWXi8WHQQn+re6b1kd6sXqQ9ptfxVFbX+dM9hM8HscFVwNhbGbqSQ5Wkgr2Zaf2X
         MetQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=gcA/aApc5OV7qhz+TSNcB+fZB14UoTMm1EvKZ9z96YA=;
        b=LD3arRJhlj6u9HE8KNX2AqFixhl/JSG9Iwxhiyv2cDdhAk4w2tZC9Ih4wuubLpTKYo
         3dHowf6rtCjcMeYhqAW/FEoEhqEU44Gj1QmXjQJp7R+KsIWKRHnqv1e3P3nFm3rkakbn
         t0vHt9+Piq4Ye5POE10xcWBzwHSqxQwTnale/3b6E/RU7jni2ps/fY785Yw+q9UVa+Ei
         T3tV0TUXUiwYD4RJ/ZKzA+pYv7ENX2EtUtsrehQhjr6C5sQeC2+54+k6mj7kJClQPWsV
         cNU7iY4fOjgH/32EIvk3ynA8i133nEc+4ZZfqUnvQN2qDslopH9GLTogV3KPzt+7VryF
         8/fw==
X-Gm-Message-State: AOAM5302xp6EcSv3mapOm6UhXWcY5BN6nCtdrvu/esRFy/HzkuBM1W9F
	JvgxbOSuNqd+9Lo+j2PYL+KqxC0rdd4HLLXXVPI=
X-Google-Smtp-Source: ABdhPJyLYNi8rGTRbc3sGVTu3a6dLiEe2GVTf2YV/ldQbgAI0Y8nbpeftp1CW7JsK4PdtXqZKSEjemPgVDpsQzgDqGk=
X-Received: by 2002:a05:6e02:e91:: with SMTP id t17mr670542ilj.258.1616429956792;
 Mon, 22 Mar 2021 09:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
In-Reply-To: <CA+4=imbkwhhbPF6UPEuBQ7qAraCPy7v-edWJdX00UVrBzW2B_g@mail.gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Mon, 22 Mar 2021 12:19:05 -0400
Message-ID: <CAHUNapR8MhKx1K8Ta2P+FLdDmHNagtU=mzvBcvGdgJA27_X7QA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] Add machine definitions for NanoPi-M4 boards
To: Yann Dirson <yann.dirson@blade-group.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, Yann Dirson <yann@blade-group.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 22, 2021 at 11:00 AM Yann Dirson
<yann.dirson@blade-group.com> wrote:
> Wouldn't it be useful to have a standard way to specify such hardware
> variants, that
> would be recognized as such by the layer index ?

Sure it would! But then you'd have to get all the BSP layer
maintainers to agree on that format and use it=E2=80=A6 :-/
