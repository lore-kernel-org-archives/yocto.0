Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4A7C27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 17:03:02 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.25043.1718038980069479005
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 10:03:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bTuEuXz+;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: martin.jansa@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ebd95f136bso1740831fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 10:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718038978; x=1718643778; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H0lrH7een9DAKMCEX/uxLDGn6qIXCQCiBl4ijyO5a6I=;
        b=bTuEuXz+rgIwDDeIfibQd7gE1994bKopYyCtULJROQNTzuU8hhx1Hqpf64yOlcahLv
         tw0TD6IxpJy7/4fWb5CJjg3ncH9vPeNR65+CcXpS6f6vsPTrsLJCjfMP7AsblsvT3AJT
         oSaVQOqWpkgWy/b2V3DDYgC2Ho+DH0CeAwLF9BxRZsFMA/I9XfCBQYolm7qpXstpbx6N
         I30TRjoILsKYyRCS2oXoA1PcRs7T+NJPPRYuUYiiBnFXhZ/3n2rwChtAgOrYjyO7V09h
         cnGyDPFCQ6ZIoV4Nb/rYzXzcSsZFEb8x5eixztimmlHQdaSUyasxdyX5Sn9+BU11/+vd
         m5SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718038978; x=1718643778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H0lrH7een9DAKMCEX/uxLDGn6qIXCQCiBl4ijyO5a6I=;
        b=HEKL9PUqPZrhytKsnvRGPrSe7LcruarPwhfEcaObN9BtFCVR8Q0gxSJvDNKRAPitvp
         eddMpqYrgkCcsYVsg7pyOK0sgPe14hChm0q3OMWQfR6rO4KhG6Yq9WsXYE7NWaHN/0Mx
         1/Qce1lR3pdoCcLjHD2Qwb8cebZlzHlW39yGRPM6iWl26H3cAN6uJa/pR7PRVZD5wcAE
         KsbZbEk6pDlqqOrzF/K3fgRrkMcW3lkUqFZvWGmo54nZ9QajRTPyj/iGDA8uR3TQ1MaZ
         pEtbj5DOXFUnGh7f3/EmBsxIoybd3XhZsyJNEhgt6JR7IlMpRef1jNYcRUlUTNflG19D
         qeEA==
X-Gm-Message-State: AOJu0YyqSLLubJwb2Nckd5L894sSDppFyiLKhQjhIeMVdVlgk4bJ7ByT
	a8g+akAPUH4y35p3xnqEHgKPAnNrhvWZ1VUMpXGU1nBg4XGpMBS4vgpwcef2yqV8SL7W4f/FzeA
	FyjOSk2hLXJf2LlyRIqeWff7C2V8z9w==
X-Google-Smtp-Source: AGHT+IGtGbhUz5j49rcN1D+LhUXC1weIfJxUe/t1jDytlLVJZ5ICOPvh6XAaS+PhtSFakUQlj1VvG1E/+kPEorgrApE=
X-Received: by 2002:a2e:a99f:0:b0:2eb:e4b3:2782 with SMTP id
 38308e7fff4ca-2ebe4b327bbmr28516161fa.52.1718038978083; Mon, 10 Jun 2024
 10:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxDDNaS6OXvDcYfs1A9mH8iAjH6kZ=PhfU2qT+wNZ8xaw@mail.gmail.com>
 <CA+chaQf8e2yH_WVg+yYh=1=o_xV-Hf6pRH=33UQtDEMdnbNb=Q@mail.gmail.com> <CAGAf8Lw96ig=hzC9TGOU9x+1oXnAwrK_SioRwvB_qrXEVL+LHw@mail.gmail.com>
In-Reply-To: <CAGAf8Lw96ig=hzC9TGOU9x+1oXnAwrK_SioRwvB_qrXEVL+LHw@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 10 Jun 2024 19:02:46 +0200
Message-ID: <CA+chaQfrTfwrp2dQedqbTe0fupDZL_cvDmqznzs1AL4NW2g9tQ@mail.gmail.com>
Subject: Re: [yocto] Kernel mainline recipe does produce lot of warnings
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jun 2024 17:03:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63309

I wouldn't call it convention, it's what you set in your local.conf,
fixing the PREFERRED_VERSION to match would work as well.

On Mon, Jun 10, 2024 at 6:52=E2=80=AFPM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Interesting convention!
>
> Thank you,
> Zee
> _______
>
> On Mon, Jun 10, 2024 at 6:35=E2=80=AFPM Martin Jansa <martin.jansa@gmail.=
com> wrote:
> >
> > > What am I missing here???
> >
> > dot after 6.10 in the PV to match your PREFERRED_VERSION.
> >
> > On Mon, Jun 10, 2024 at 6:32=E2=80=AFPM Zoran via lists.yoctoproject.or=
g
> > <zoran.stojsavljevic=3Dgmail.com@lists.yoctoproject.org> wrote:
> > >
> > > Hello Yocto Community,
> > >
> > > I decided to expand a bit my knowledge about mainline kernels. So for
> > > the last few days I have been trying to make a 6.10-rc2 kernel to wor=
k
> > > with YOCTO.
> > >
> > > Somehow I did it, but I got tons of warnings, which I could not figur=
e
> > > out why this really happens.
> > >
> > > Here is how ny kernel recipe looks alike:
> > > https://github.com/ZoranStojsavljevic/meta-bbb/blob/scarthgap/recipes=
-kernel/linux/linux-mainline_6.10.bb
> > >
> > > The local.conf is:
> > > https://github.com/ZoranStojsavljevic/bbb-yocto/blob/scarthgap/bbb-re=
leases/bbb-scarthgap/local.conf
> > >
> > > And the whole .log is attached to this @: kernel-mainline.log
> > >
> > > WARNING: preferred version 6.10.% of linux-mainline not available (fo=
r
> > > item virtual/kernel)
> > > WARNING: versions of linux-mainline available: 6.10-rc2
> > > WARNING: preferred version 6.10.% of linux-mainline not available (fo=
r
> > > item kernel-modules)
> > > WARNING: versions of linux-mainline available: 6.10-rc2
> > > WARNING: preferred version 6.10.% of linux-mainline not available (fo=
r
> > > item kernel-base)
> > > WARNING: versions of linux-mainline available: 6.10-rc2
> > > WARNING: preferred version 6.10.% of linux-mainline not available (fo=
r
> > > item kernel-image-zimage)
> > > WARNING: versions of linux-mainline available: 6.10-rc2
> > > ...
> > >
> > > Any reason/bug why this is happening?
> > >
> > > What am I missing here???
> > >
> > > Thank you,
> > > Zee
> > > _______
> > >
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > Links: You receive all messages sent to this group.
> > > View/Reply Online (#63306): https://lists.yoctoproject.org/g/yocto/me=
ssage/63306
> > > Mute This Topic: https://lists.yoctoproject.org/mt/106596446/3617156
> > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jan=
sa@gmail.com]
> > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > >

