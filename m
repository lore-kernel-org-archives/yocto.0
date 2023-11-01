Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19AC1C4332F
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 17:20:39 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.13591.1698859233567369244
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Nov 2023 10:20:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=HqPEsZfo;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c50fbc218bso95830171fa.3
        for <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 10:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698859232; x=1699464032; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n3apYzcELdhDW7KuHyNF+vVUbj/EO39aV0Wx7rTG1Vk=;
        b=HqPEsZfo89M8jSf917R8ZzVI0PnOk8tRVFsKsQnqQmbaVTG6tyUdCMR56VUovBOR0Y
         47TMwsz0kvJvMpGnapNLnvAmLX5UYuhMIxC9AqdWlJ8NsSVM+yjloEL9Fa8ErzH4ktd9
         sr2nZNRQakHAuYvdnLYOYCb1CWGvkcAOWg8wTw8JgH9QXfT22HhioIP+IwnTfwYiaRg5
         x+P53x9OWw7V+Brm5rGjduIY1pXd/gyWTpHz49tIV28YYhy1TF9Th/1QslQA4YLgEMuy
         Ykyjdee5BZO7O/4uYnzyTYKtb/t9Qtb/2gtAARo5zCpHlijSAe51bRDWoGUslAivq1yO
         0ryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698859232; x=1699464032;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n3apYzcELdhDW7KuHyNF+vVUbj/EO39aV0Wx7rTG1Vk=;
        b=BeK48tvXNBvAtWF6ElQC9F57H8aBbmZr6LvLPzUKv0FEmNpo2cc/qtmC7ZIukxbhPy
         esvHhddh9WMkfN7X/qiulKRLJdGybYId+AdEoz0sXW7R45inwN2FsPntwc7LjZQGsb/2
         jrHa7a5sQsz+oOsfhduIrQzn6+cqfm9V9kRneo2zt93thOKUz0M6wp6IqxCeRuMIZQZc
         6VeORsh61Me3Pe8c+KBmRvJd0i9KT+IIo80T+h8okflR00Xyd/xwtuZQZOV5fYs14+Tc
         6RreJUgfdEvFkr0qGhTmmeJwQ6dnfhvRdThm4sZyj3xC87ODH5BtcHRYpPjO0AQAQY7H
         bqUQ==
X-Gm-Message-State: AOJu0Yxgnz4bYYn4ffHeT6Eht6EvTD5aG52zy783ZQAuvbL0HWIv81/a
	4XMbe/M1Rd7hKMbKpm0b2Tc=
X-Google-Smtp-Source: AGHT+IE3h5nGZ2mxkqcBDDaADJ9UQIezmS6TCAIvjWt1taUmYiGxMNCUpkhh5dRNBMD6yfRzxCY+eA==
X-Received: by 2002:a2e:86c4:0:b0:2b9:f27f:e491 with SMTP id n4-20020a2e86c4000000b002b9f27fe491mr13202563ljj.42.1698859231493;
        Wed, 01 Nov 2023 10:20:31 -0700 (PDT)
Received: from ?IPv6:2a02:169:59a6:0:5488:f785:9061:cf6c? ([2a02:169:59a6:0:5488:f785:9061:cf6c])
        by smtp.gmail.com with ESMTPSA id l26-20020a05600c1d1a00b004063cd8105csm356044wms.22.2023.11.01.10.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 10:20:31 -0700 (PDT)
Message-ID: <2533733992a9f836d224b063e2b4b0ea3700ddb2.camel@gmail.com>
Subject: Re: [Openembedded-architecture] [OE-core] Core workflow: sstate for
 all, bblock/bbunlock, tools for why is sstate not being reused?
From: adrian.freihofer@gmail.com
To: alex.kanavin@gmail.com
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
 openembedded-architecture
 <openembedded-architecture@lists.openembedded.org>, Michael Halstead
 <mhalstead@linuxfoundation.org>,  Yocto-mailing-list
 <yocto@lists.yoctoproject.org>, ",openembedded-core@lists.openembedded.org"
 <openembedded-core@lists.openembedded.org>, Julien STEPHAN
 <jstephan@baylibre.com>, Peter Marko <Peter.Marko@siemens.com>
Date: Wed, 01 Nov 2023 18:20:30 +0100
In-Reply-To: <CANNYZj_Cq+cncw5SCGii=Mhj0KGgo=qr=hCuo+wpdvtR9C=Qyg@mail.gmail.com>
References: 
	<CAK5yBb9gO+WOJrv4TArzXK_1Bxu5AORp2oi=P-v=2nn6PgJE5Q@mail.gmail.com>
	 <CANNYZj9QpstUj_A8Vb2RbiaFGZkHkFjHkUfF=E1HR-nDJ_Vk6w@mail.gmail.com>
	 <81f4c191fe6dead1feec6bfc0d36aa328af1f7d4.camel@linuxfoundation.org>
	 <CANNYZj_uSknujoQUK2yV7U4N+WW_RkUH=sJnFDBfZgV0G5fv7Q@mail.gmail.com>
	 <649b2f000761831cabd1f5737fb5b30a2ffc3654.camel@gmail.com>
	 <CANNYZj_Cq+cncw5SCGii=Mhj0KGgo=qr=hCuo+wpdvtR9C=Qyg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 17:20:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61561

On Wed, 2023-11-01 at 16:19 +0100, Alexander Kanavin via
lists.openembedded.org wrote:
> On Wed, 1 Nov 2023 at 15:18, <adrian.freihofer@gmail.com> wrote:
> > We are currently experimenting with replacing the eSDK installer
> > with
> > the bitbake build environment for our users. Part of this
> > transformation is, of course, the shared sstate-cache, for which
> > this
> > discussion seems quite relevant. The workflow we are aiming for is
> > as
> > follows:
> >=20
> > =C2=A0=C2=A0 1. Setup the layers and build config (out of scope here)
> > =C2=A0=C2=A0 2. Download the sstate for a particular recipe (usually an=
 image
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe).
>=20
> I'm not sure I understand the case for downloading the complete set
> of
> cache objects up front. What's wrong with 'lazy' downloading, e.g.
> only when the objects are actually needed in a build?
>=20
> Even then, does --setscene-only do just that, or am I completely
> confused?

If I remember correctly, when configuring a SSTATE_MIRROR, the server
is queried when a Setcene task is executed. This is not ideal for
several reasons:
 * Bitbake Setcene tasks run in the context of a recipe, which means
   that thousands of connections are opened against the mirror server.
   Many servers treat this behavior as a denial of service attack. With
   a separate download tool, this can be handled with a reasonable
   number of parallel connections. With bitbake's architecture, this is
   a barely solvable issue.
 * Especially with an SDK, setcene tasks can run much more frequently
   than do_fetch tasks. So the same artifact is downloaded multiple
   times, which is not efficient.
 * SDK users may be located in different places in the world. This
   results in poor performance depending on the location.
 * With a separate download, you can download on a fast network and
   then switch to a slower network or even work offline.
 * Of course, supporting downloading in advance does not mean that a
   SSTATE_MIRROR should not be supported.

Adrian

>=20
> Alex
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#1821):
> https://lists.openembedded.org/g/openembedded-architecture/message/1821
> Mute This Topic: https://lists.openembedded.org/mt/102320110/3616858
> Group Owner: openembedded-architecture+owner@lists.openembedded.org
> Unsubscribe:
> https://lists.openembedded.org/g/openembedded-architecture/unsub=C2=A0[
> adrian.freihofer@siemens.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


