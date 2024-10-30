Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84DDD6B6A4
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 16:02:39 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web11.18643.1730304156566898859
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 09:02:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iqX4ndpF;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539f72c913aso9028552e87.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 09:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730304155; x=1730908955; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=99DYJCbh8klyrq18wanUeqYnTGVMAmQ64hrUi2UycDk=;
        b=iqX4ndpFQZHL5c1LR5HI9VtAfM2pUgpHJrpl6ITrXBNRc358wB4qvJjerW3rquPQHa
         l27WApVCd7/JyjWV2NHkbM945iEF8HUIWtRAWwxT0Nm8ae6pMGPevP3lfetVd4LitJGv
         gqTz1LoeGJe/RfE4PEBcTWBma3QjPBEy9HjCmN4NTQuCTVlOXDYcdYhjV7Pj/U855MOy
         FwQEYdJ/v52ywbSon5b8C2mtca6YL6+0pTU6HnT0dmzQksKGt42+I8M4LEIeSxT97zrK
         MOf8BrcuQR76W5ylc4vl6owZxFUB6HWPF3er2t4+N5yO+h5o8UHb0NNh9llgOmLRTxK4
         USeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730304155; x=1730908955;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=99DYJCbh8klyrq18wanUeqYnTGVMAmQ64hrUi2UycDk=;
        b=cy1Aw7XadkSblBvRDgODf0di1i246f49b1pp947+/RPWuiS9ILumrbnvyRIS0QY7Hj
         R3jq8oRIsVAlM+JTEwynwAGnY18Sv/fRXYshq3zWEq9O6Vi/hUdE1TpOOxDbmGi9kI5E
         Jx3MZqPtwjH9z7PHG0G9yiW+HNKzg5WuTZz1tHzha08KssL+fWjhJb+Ll0iIJq3bWxIv
         u+KJdjzOEf8RYmyeUU2L9NritZjj1wKxiDZbAPQ2guoqgb4JNZMKAY6KWlVJOSgZlewl
         KYVsLnBt9i2HrbtLPJ885Z8q/p87mN0NYyZvvRUcxeCOrdJta6rWJzXzrN81Tgpaeixx
         21OQ==
X-Gm-Message-State: AOJu0Yw/FtSgP4RPnZWvYhe+I78Y6bY7iY1WwDGWnEAKiqxjCcHhSXoN
	Foi6FQAAe6BUoT1TxUEDNr48M2S7NqSCN6QyGadrXRocf2QkYSJVH3j88M1H2i1KdoCEg3NiR1D
	RrA/n92FgsZVLTKq0/qMX6jqhhFE=
X-Google-Smtp-Source: AGHT+IGdTMEsHOqdONjhazJJmPtLOijkL3250WXQs0V2ck1fvkxjVXpt61nMb7VjFJVmZEKUfeM1gqD3Yb0Jzd7ZLD0=
X-Received: by 2002:a05:6512:a92:b0:539:fd10:f07b with SMTP id
 2adb3069b0e04-53b34b39774mr8789383e87.55.1730304154290; Wed, 30 Oct 2024
 09:02:34 -0700 (PDT)
MIME-Version: 1.0
References: <20241002225451.263086-1-JPEWhacker@gmail.com> <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
In-Reply-To: <CAOSpxdZSCzmXMJ-R2Xri8OcQw4Q38b6nkbH-F83sUO9vVgkMJw@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Wed, 30 Oct 2024 10:02:21 -0600
Message-ID: <CAJdd5GZMVzeiuu55cmXXsAHvARvfTs_mOn9iv8UQEe+_kmwbUQ@mail.gmail.com>
Subject: Re: [yocto][meta-mingw][PATCH] oeqa: Set LANG in wine tests
To: Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 16:02:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64187

On Wed, Oct 30, 2024 at 9:18=E2=80=AFAM Steve Sakoman <steve@sakoman.com> w=
rote:
>
> Would it be possible to cherry-pick this commit to the styhead branch?
>  I'm seeing the same issue there.

Yes, that would be a good idea. It's based on the build host, not wine
or Yocto, so I suspect we would see it on any branch using that host.

Pretty sure it will cherry-pick cleanly, do you want me to send a patch?

>
> Steve
>
> On Wed, Oct 2, 2024 at 3:55=E2=80=AFPM Joshua Watt via lists.yoctoproject=
.org
> <JPEWhacker=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Glib likes to try and determine the local name using the Windows
> > GetConsoleOutputCP(), which doesn't work well running under wine in our
> > test cases (it seems to be linked to stdin not being a terminal).
> >
> > This results in the error message:
> >
> > GLib-WARNING (recursed) **: Failed to determine console output code pag=
e: Invalid access.. Falling back to UTF-8
> >
> > and then Glib falls back to the locale "UTF-8", which is invalid and th=
e
> > program will likely crash.
> >
> > In particular, pkg-config seems to be sensitive to this on some hosts
> > (e.g. Ubuntu 24.04)
> >
> > Set the LANG variable to a valid language to make sure that this
> > codepath in Glib is not triggered.
> >
> > Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> > ---
> >  lib/oeqa/sdkmingw/context.py | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/lib/oeqa/sdkmingw/context.py b/lib/oeqa/sdkmingw/context.p=
y
> > index 5319223..5869e57 100644
> > --- a/lib/oeqa/sdkmingw/context.py
> > +++ b/lib/oeqa/sdkmingw/context.py
> > @@ -40,6 +40,12 @@ class OESDKMinGWTestContext(OESDKTestContext):
> >          # Convenience variables to make test cases easier to write
> >          env['SDK_DIR'] =3D getattr(self, 'wine_sdk_dir', '')
> >
> > +        # Set the language. If this is not set to a valid language, th=
en
> > +        # program that use glib will attempt to determine the language=
 from
> > +        # stdin, which results in an error, fallback to "UTF-8" which =
is
> > +        # invalid and crash
> > +        env["LANG"] =3D "C.UTF-8"
> > +
> >          return env
> >
> >      def wine_path(self, p):
> > --
> > 2.46.2
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63932): https://lists.yoctoproject.org/g/yocto/mess=
age/63932
> > Mute This Topic: https://lists.yoctoproject.org/mt/108789984/3620601
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoma=
n.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

