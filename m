Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25E4C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 16:08:27 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.361.1718208501574675207
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 09:08:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=avFKe8+r;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.180, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-62a145e0bb2so351357b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 09:08:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1718208501; x=1718813301; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tug5LKfYYL1IosN0JPr8VUP95egV9LDzTUsw5dv0590=;
        b=avFKe8+rz2HTrFThIzFol+/fTe8BNfOLq4BwZM9qLaVze7CMtskmqupuqp4u9aY0Mf
         5BVP0NIkNUwbrVrCmnIOSIY6hNHC1hc8sADZr5mvrWjldE5yKYxc3+NiHMOu4xJRT4M9
         EUMapkytue4+bsET0fKDMXvCu81ri921HVfRSj5B2DpYLx+5OYWEQ4aRiiWUj204yoMm
         mlpYfMJz/Te3RBuVK3hPqNICa/v629Uo8dInlGySKzUAWKEY1juYKvX70+iKKcu6z5Ie
         VoikQcBCx7vJLu1PtUtxUyG4c26l0Ql+JImiIBbmGP8NqB3H8ulz6O9muWMN4yZO59fa
         4/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718208501; x=1718813301;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tug5LKfYYL1IosN0JPr8VUP95egV9LDzTUsw5dv0590=;
        b=ZozngQ7Uve42jhJ7pqnyZ7gDmk79gNSwvzmN8LW4Ig/si1OO5jE4kuigGPA8e563Yt
         oVqWYjV+3hx5MDjP8E6biD8nvJKp2H50b3nfhuocDdFgc4W2S0eA+qAe2egUGDwgn1vK
         4zyJ54FGaO7VNh+weHexZZRXdj2Fgl1mlratWIqRJ/K1xoivjT1wadbblnZRxdicehvC
         TcV/DHgawS5LUf6hTAboT1n3Zik55NICMxg4xYy05CsnLAXDaTD4uTFd+mCC1fRtXcP/
         ES++pAW3yjMLrcm3QU/zOwKHGJaKt3AhOcrD7ujr9RYl5e7vb0btq+1CUs1NJP+5Q2me
         RTsQ==
X-Gm-Message-State: AOJu0YyhEwAa+VrQHHGNUrckbmAgQZgYrB3odMWNb/uw0pqXDVZ5htQe
	aBS/PPTSwJ3zVtICeaZOqL8KyqQsVp4Hj+sZdBf+JS7g/dKDXE2cj+2hWncvC3gRdP6h9/y7aW+
	tTlk2EoW5em77TfVJCnsk/slBew/iHFz/35hJLA==
X-Google-Smtp-Source: AGHT+IGanKm5KFyGYMnnQlHTz2OUi28mlKEmqEJvGG7hzL0APRrMA41Cl5y2JROLPQMx199R7FL4R7QdsdD7t9xe57g=
X-Received: by 2002:a81:7242:0:b0:615:3996:5c86 with SMTP id
 00721157ae682-62fbbdede5dmr22385887b3.21.1718208500635; Wed, 12 Jun 2024
 09:08:20 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1718202342.git.steve@sakoman.com> <e9bb457701c3b1878bf236e2b13cf4d17fd5c9c8.1718202342.git.steve@sakoman.com>
 <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com>
In-Reply-To: <c304afdf-e085-d81d-c317-4d89d5823571@konsulko.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 12 Jun 2024 09:08:08 -0700
Message-ID: <CAOSpxdYUbOAh+gAu3cUN+U0TxoO87iDot+i7DrUw0TfoiGCPTQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] config-json: use master branch
 for meta-agl
To: Scott Murray <scott.murray@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 16:08:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63335

On Wed, Jun 12, 2024 at 8:30=E2=80=AFAM Scott Murray <scott.murray@konsulko=
.com> wrote:
>
> On Wed, 12 Jun 2024, Steve Sakoman via lists.yoctoproject.org wrote:
>
> > scarthgap is no longer supported on next branch
> >
> > Signed-off-by: Steve Sakoman <steve@sakoman.com>
> > ---
> >  config.json | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/config.json b/config.json
> > index fbf2e6c..2089fa9 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1853,7 +1853,7 @@
> >          },
> >          "meta-agl": {
> >              "url" : "https://git.automotivelinux.org/AGL/meta-agl",
> > -            "branch" : "next",
> > +            "branch" : "master",
> >              "revision" : "HEAD",
> >              "no-layer-add" : true
> >          },
>
> Is this patch missing a "[scarthgap]"?  I ask because it makes sense for
> the yocto-autobuilder-helper scarthgap branch, but master AB will need to
> keep using meta-agl's next branch.

Yes, indeed, I did forget the [scarthgap] tag.  Sorry about that!

Steve

