Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0DF6C25B47
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 20:34:52 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.28819.1698179685096913247
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 13:34:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=BY6pvpo5;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso16257475e9.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 13:34:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698179683; x=1698784483; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mW94kS4cTHepxxlR+mrCy7TGRIg12sKBf3cJk3qOiBg=;
        b=BY6pvpo573BvJy7Lbf0nQfuAb1N23w1rVKRbCOIRwx8ZhjG/SVZdbLziUM/RMR3eNt
         dgC2UHSRDQ+5OEL1ixUZmZWkwhmU38UVEzSNK+M473EIC8nBoCjpog3PirRf0iSJoh+q
         +xxQlLUlZ3WPV+z5mh3JIZD+lXvkk6t/Jskm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698179683; x=1698784483;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mW94kS4cTHepxxlR+mrCy7TGRIg12sKBf3cJk3qOiBg=;
        b=U2o+ILXme7rLmbyx8uZZkTkj5jXP8iR4Mo65H7tph2LKeVh7WUClG7qGuJVoEoFHov
         DW307YQEI/GiUVDbLxlV+Kw0tbsLlOFxzZNz7E/xGYrHH38ViwCUDe78i1NfGzYHG1fh
         Yi5X63+2BQ2+vteGHtQzBunDGSZEH39Y3ii8LhrXVRk6HmfGNrsSzVSiQbcQhOQKsTz3
         zHbOUt81FT6V/fY7y270770nflHJB4INBUgp16rTckbdKYztpscFGcN9uZ2RSZjyqDuS
         xDp+CJInPiZ56WqOmvOcI7NeDlUD3pQBdoIjAKTLE8ipTwW0KOkn16t7hRo9/Pgj2xDx
         IdyQ==
X-Gm-Message-State: AOJu0YzVqGRWXxTS6ZuJvGeHn8exL/yKTJ5a1161a9iyPPNAkIyr7tVU
	u0I3d1oTIYq1tvNaqEMzGCJckQ==
X-Google-Smtp-Source: AGHT+IEz5fSATx2Zsl8ziTBrGjiaZJwKE/sVjHmuShmyEfSD6XjYMKxYCyRlA8xpUst48jNEeJ/pqw==
X-Received: by 2002:a05:600c:5252:b0:408:389d:c22e with SMTP id fc18-20020a05600c525200b00408389dc22emr10099826wmb.25.1698179683552;
        Tue, 24 Oct 2023 13:34:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:63b1:c4c7:ff33:3a6c? ([2001:8b0:aba:5f3c:63b1:c4c7:ff33:3a6c])
        by smtp.gmail.com with ESMTPSA id m5-20020a5d6a05000000b0031f3ad17b2csm10595263wru.52.2023.10.24.13.34.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 13:34:43 -0700 (PDT)
Message-ID: <846ba8b866803339a953054f729071200864f647.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Make
 meta-oe source mirror config wider coverage
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
Date: Tue, 24 Oct 2023 21:34:41 +0100
In-Reply-To: <0752665c-4f37-4229-967f-916ed250c06a@gmail.com>
References: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
	 <0752665c-4f37-4229-967f-916ed250c06a@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 20:34:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61472

On Tue, 2023-10-24 at 10:15 -0700, Khem Raj wrote:
> On 10/24/23 4:03 AM, Richard Purdie wrote:
> > Some recipes depend on DISTRO_FEATURES, commercial licensing or compile=
r
> > config like fortran. Set these things so that we get wider soruce mirro=
r
> > coverage and fewer warnings.
> >=20
> > 'commercial' license usage is ok here since we're not building and then
> > shipping any binaries or using it, only mirroring the source code.
> >=20
> > Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> > ---
> >   config.json | 6 ++++++
> >   1 file changed, 6 insertions(+)
> >=20
> > diff --git a/config.json b/config.json
> > index 0c35632..61cf374 100644
> > --- a/config.json
> > +++ b/config.json
> > @@ -1451,6 +1451,12 @@
> >                   "${BUILDDIR}/../meta-openembedded/meta-initramfs",
> >                   "${BUILDDIR}/../meta-openembedded/meta-webserver"
> >               ],
> > +            "extravars" : [
> > +                "LICENSE_FLAGS_ACCEPTED =3D 'commercial'",
> > +                "DISTRO_FEATURES:append =3D ' pam systemd usrmerge'",
> > +                "FORTRAN:forcevariable =3D ',fortran'",
> > +                "RUNTIMETARGET:append:pn-gcc-runtime =3D ' libquadmath=
'"
>=20
> I think RUNTIMETARGET should automatically be appended with libquadmath=
=20
> if FORTRAN is set.

Perhaps but that is a change to work on in OE-Core and isn't going to
happen overnight or in previous releases.

Improvements welcome there or perhaps a bug to track it at least.

Cheers,

Richard

