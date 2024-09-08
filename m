Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 818EEE6FE49
	for <webhook@archiver.kernel.org>; Sun,  8 Sep 2024 16:49:07 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web11.33594.1725814144295906635
 for <yocto@lists.yoctoproject.org>;
 Sun, 08 Sep 2024 09:49:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EfrxRRws;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-42cafda818aso10649405e9.2
        for <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 09:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725814142; x=1726418942; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uUb3B4UPoio3Q07YV8jmqHDwHhW040DIwsNZgvkSZk8=;
        b=EfrxRRwsMGTuW+eNs1jPFxnzENYwEpz/ti2J5KLAeQmGriexfc7o+keX1NvSJ08dar
         JIYLI91T6IMwi6P4S80pAyd55Y8BYFh65Woj07cMvx9GagX0TZaGZKotGJ4g+bcpwT8+
         yWROyJ5SwUVvbr2thdywU5JQiR3hMuqVWaZBHopaSqtcG+6lo31O1Fic61C072vZWAHg
         ut0THDJgKFfcWLDdGsGGQSp4PjIp0tck/2rTUbyYkWXY37N0izdu0evcBSwln42U/vPc
         JyryGL9ltT0pyxtkSIneLSIf8HaIHC4lIpIk9XMTvjrojRCj2/0DpLtO+kc07NLxjfjt
         sK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725814142; x=1726418942;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uUb3B4UPoio3Q07YV8jmqHDwHhW040DIwsNZgvkSZk8=;
        b=bDd+cPnFLChv3rqLTdO/zihSLpND18BaMy7rEJpZ+RgpDo5FH7GZed+6CoLqzKFCwB
         m8j1j3UQprVQNt8T43P6Ghme0rXf6BnMNJ4J+QnTR6a0DkHkLsmxWz7olFCC6Fg3ebI8
         5r7g/bY/jkvU5rjLRFu30NGkBzkG/G8P3cPIrdCmuiC+ZiReeON1xYWVI19yjr+Vowm/
         pq3Ih/MrDGD0c+5rJfWxz8yISlpUKeaCal2rMI03B1BN1p/VJW5O0nw/QQZMSwWVGoI0
         8yrq0ScYDWS7BwWOUAopPUfoFGdgjvkpGi112CbiIEPPzWym485z/PPGs+36uTSXxJX2
         Iapg==
X-Forwarded-Encrypted: i=1; AJvYcCVwImbU4BMBF5KQafEhAk/d+5vqRewT26BabZZSTIXjjTlLg+fiu7ATMK7CObux/y37J84CZg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yybx2Q9AV40c7WcIretx6FcrPvbemrQLvQEO6LtGRjx5Lwrg/Gv
	0AshzJ+4Luh+2czFtxNqLE2dMIRC6tMf9vCVlZZvzOBxKT0rFi8w
X-Google-Smtp-Source: AGHT+IEsd7dA9SDKj9j2lprTG+EWGzDrJ5noKJkjhI/1OKJnqHkXq+YVxL7QSEQKiFseqfsJI+nt2w==
X-Received: by 2002:a05:600c:4e46:b0:426:5f02:7b05 with SMTP id 5b1f17b1804b1-42c9f976487mr63430065e9.2.1725814141514;
        Sun, 08 Sep 2024 09:49:01 -0700 (PDT)
Received: from wsadrian16.fritz.box ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42caeb21b1bsm49671395e9.2.2024.09.08.09.49.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 09:49:01 -0700 (PDT)
Message-ID: <67a6de78ca24ef67f18cba5ea26678651aaad44e.camel@gmail.com>
Subject: Re: [yocto] esdk devtool finish workflow
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: radoslav.pesek@microstep-mis.com, yocto@lists.yoctoproject.org, Adrian
 Freihofer <adrian.freihofer@siemens.com>
Date: Sun, 08 Sep 2024 18:49:00 +0200
In-Reply-To: <CANNYZj_LQ0x-EE20V06dD6gaKFj7LC_=bcHpPo254-KkB5HgtQ@mail.gmail.com>
References: 
	<CANNYZj_MOsO3Vu2YRfB3njTS-RZBmnzduCS3QMtcMdnZOoaswg@mail.gmail.com>
	 <2927.1725630876196244404@lists.yoctoproject.org>
	 <CANNYZj-7uC6enmSrjuq24A+UBOSuUJF=puW_RBqN8CcP9BN8fw@mail.gmail.com>
	 <d3de9f84fdb01cfde504eb19489a61ff96736cbc.camel@gmail.com>
	 <CANNYZj_LQ0x-EE20V06dD6gaKFj7LC_=bcHpPo254-KkB5HgtQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40app2) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 08 Sep 2024 16:49:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63801

On Sun, 2024-09-08 at 15:46 +0200, Alexander Kanavin wrote:
> On Sun, 8 Sept 2024 at 15:24, Adrian Freihofer
> <adrian.freihofer@gmail.com> wrote:
> > It is true that we have replaced our eSDK-based setups with Direct
> > SDK-
> > based setups. A year ago, I had the opportunity to talk about this
> > topic at Yocto Sumit: file:///home/adrian/Downloads/yocto-summit-
> > 2023.11-devtool-i_S04eDYy.pdf
> > One year after this presentation, I can summarize that it works
> > much
> > better than what we had with the static eSDK installers.
>=20
> You also need to provide a link that can be opened :)

next try :-)
https://summit.yoctoproject.org/media/yocto-project-summit-2023-11/submissi=
ons/UZ9BN7/resources/yocto-summit-2023.11-devtool-i_S04eDYy.pdf

>=20
> > The second thing you need is a shared sstate-cache. This feature is
> > now
> > available officially in Yocto. We do not use this so far because we
> > do
> > not have a shared hash equivalence server yet. We use a simple, a
> > bit
> > hacky script which downloads all sstate-cache artifacts before we
> > call
> > bitbake.
>=20
> You can switch off hash equivalence in local.conf or distro conf or
> site conf. Then sstate signature calculations will work 'as they used
> to', and you can provide only the sstate, without having to set up a
> hashequiv server as well.
>=20
> The downside is that it needs to be switched off in CI as well, and
> that can lengthen CI builds significantly, if they no longer benefit
> from hashequiv shortcuts.

Yes, that's how it is. Ideally there would be an easy way to get all
these nice new features together.

>=20
> > @Alex: We should discuss this issue in Vienna. I think there has
> > been
> > great progress in many areas. But I don't think there is yet a
> > complete
> > concept for operating a complete infrastructure for distributing
> > layers
> > and ssate-cache, which also provides security and scalability. It's
> > definitely doable with enough knowledge and maybe some helper
> > scripts
> > and compromises as we do it internally or with a CDN without
> > security
> > as the Yocto Project does it.
>=20
> We're working on it. You can find the oe-replicate-build prototype
> here:
> https://git.yoctoproject.org/poky-contrib/log/?h=3Dakanavin/sstate-for-al=
l
> (commits 3 to 5 from the top)
> and bitbake-setup prototype here:
> https://github.com/kanavin/bitbake/commits/akanavin/bitbake-setup/
> https://github.com/kanavin/bitbake-setup-configurations
>=20
> We should certainly discuss in Vienna, but you can also play with
> these beforehands.

I will have a look at it. It's some time ago when I tried it.

Adrian

>=20
> Alex


