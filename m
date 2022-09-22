Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51B6C54EE9
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 20:42:28 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web11.332.1663879343636237539
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 13:42:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KMycAc2T;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id t7so17313654wrm.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 13:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date;
        bh=knM6+g7u5kBkH2Hh0t73pgB7Rh2VnOlf9oZVlo/11QM=;
        b=KMycAc2TqB81fnH2DbiTIEd3Nux3jBx3HzUb4hI5/CcOEA7Yh9wOKKyTH0MInBHYOu
         H8TTb8fCm01DSsWtGlKhurWfSJ3FSD2Rg530TSRGnh0WLERsJOZakHyMw413ck3rJBQt
         MJxy47fzYI8CD0czGh8DC+ZG1L5qbYFANLLWs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date;
        bh=knM6+g7u5kBkH2Hh0t73pgB7Rh2VnOlf9oZVlo/11QM=;
        b=1x1uQ1cn/KmjzMtLb51UDsXQ7w6U53ORpvT49aotOo2xG33xfY+d1D29XhbtsekRl3
         cW/o42xLzzVu7lp/YMKm/zothHX888YQmZCrVuQ2w9K53rMaNLi1L6O1irY6ZFdNV5t0
         TcpTYiSLDFsH4p4pJjJWr63ynNe6oAy9XvUA/yKjOoKYCSR2hJi5Gkn730cQlgjiRnJ+
         GG9oMr10S4njLg7BXXMfBTBcb9ekHY2j8mWKH+Xik68Ukne8D7gsf0qKrXiX2zTYRtfT
         B3PnLfDs6ssPWsKe/dmgiq7+3VJHjTy59u2gIQKA6m8L4AN02kSz8RcpuPM2MA8qwSll
         F3ww==
X-Gm-Message-State: ACrzQf3aDFIIjfcw3Zb1kwFeOoWWGrL+qAhEl9z9S3NjXsoJpq/0Xh4e
	FofsE730DFHPYOLgeOxHFLbczg==
X-Google-Smtp-Source: 
 AMsMyM4c2mbxfimOzFkxEI3NoarEtosWNf9HkvUbF44siPUYqKcKem+iXdOz6f60N01M8LhEen68rw==
X-Received: by 2002:a05:6000:1ace:b0:22b:113a:461 with SMTP id
 i14-20020a0560001ace00b0022b113a0461mr3033286wry.545.1663879341802;
        Thu, 22 Sep 2022 13:42:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:7946:c7c6:1ddc:ce8e?
 ([2001:8b0:aba:5f3c:7946:c7c6:1ddc:ce8e])
        by smtp.gmail.com with ESMTPSA id
 i29-20020adfa51d000000b0022a53fe201fsm6041638wrb.68.2022.09.22.13.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Sep 2022 13:42:21 -0700 (PDT)
Message-ID: 
 <92537c2ac48c331c5d2ac73007146a99e69b5a5f.camel@linuxfoundation.org>
Subject: Re: [yocto] [yocto-autobuilder2][PATCH] config.py: default
 repository updates
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Benjamin Esquivel <benjamin.esquivel@gmail.com>
Cc: yocto@lists.yoctoproject.org, tarxf@esquibits.com
Date: Thu, 22 Sep 2022 21:42:20 +0100
In-Reply-To: <0AECD2F7-B229-451C-B328-2DD5D82A2DB2@gmail.com>
References: <20220922023334.386489-1-benjamin.esquivel@gmail.com>
	 <e97d25b8f041f395ed6645b4a1e3f44d16ecb5ce.camel@linuxfoundation.org>
	 <0AECD2F7-B229-451C-B328-2DD5D82A2DB2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 20:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58140

On Thu, 2022-09-22 at 09:36 -0700, Benjamin Esquivel wrote:
>=20
> > On Sep 22, 2022, at 5:42 AM, Richard Purdie <richard.purdie@linuxfounda=
tion.org> wrote:
> >=20
> > On Wed, 2022-09-21 at 19:33 -0700,=C2=A0benjamin.esquivel@gmail.com=C2=
=A0wrote:
> > > From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
> > >=20
> > > the repos that are used as defaults in the build requests are outdate=
d
> > > hence the update.
> > >=20
> > > Signed-off-by: Benjamin Esquivel <benjamin.esquivel@gmail.com>
> > > ---
> > > config.py | 22 +++++++++++-----------
> > > 1 file changed, 11 insertions(+), 11 deletions(-)
> > >=20
> > > diff --git a/config.py b/config.py
> > > index 042a1ec..2249e82 100644
> > > --- a/config.py
> > > +++ b/config.py
> > > @@ -38,23 +38,23 @@ repos =3D {
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0"neon-master"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"eclipse-poky-oxygen": ["ssh://git@push.yocto=
project.org/eclipse-yocto",
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0"oxygen-master"],
> > > - =C2=A0=C2=A0=C2=A0"poky": ["ssh://git@push.yoctoproject.org/poky", =
"master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-intel": ["ssh://git@push.yoctoproject.org/m=
eta-intel", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-arm": ["ssh://git@push.yoctoproject.org/met=
a-arm", "master"],
> > > + =C2=A0=C2=A0=C2=A0"poky": ["git://git.yoctoproject.org/poky", "mast=
er"],
> > > + =C2=A0=C2=A0=C2=A0"meta-intel": ["git://git.yoctoproject.org/meta-i=
ntel", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-arm": ["git://git.yoctoproject.org/meta-arm=
", "master"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"meta-agl": ["https://git.automotivelinux.org=
/AGL/meta-agl", "next"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"meta-aws": ["https://github.com/aws/meta-aws=
.git", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-ti": ["ssh://git@push.yoctoproject.org/meta=
-ti", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-security": ["ssh://git@push.yoctoproject.or=
g/meta-security", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-ti": ["git://git.yoctoproject.org/meta-ti",=
 "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-security": ["git://git.yoctoproject.org/met=
a-security", "master"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"oecore": ["git://git.openembedded.org/openem=
bedded-core",
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0"master"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"bitbake": ["git://git.openembedded.org/bitba=
ke", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-qt4": ["ssh://git@push.yoctoproject.org/met=
a-qt4", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-qt3": ["ssh://git@push.yoctoproject.org/met=
a-qt3", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-mingw": ["ssh://git@push.yoctoproject.org/m=
eta-mingw", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-gplv2": ["ssh://git@push.yoctoproject.org/m=
eta-gplv2", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-qt4": ["git://git.yoctoproject.org/meta-qt4=
", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-qt3": ["git://git.yoctoproject.org/meta-qt3=
", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-mingw": ["git://git.yoctoproject.org/meta-m=
ingw", "master"],
> > > + =C2=A0=C2=A0=C2=A0"meta-gplv2": ["git://git.yoctoproject.org/meta-g=
plv2", "master"],
> > > =C2=A0=C2=A0=C2=A0=C2=A0"meta-openembedded": ["git://git.openembedded=
.org/meta-openembedded", "master"],
> > > - =C2=A0=C2=A0=C2=A0"meta-virtualization": ["ssh://git@push.yoctoproj=
ect.org/meta-virtualization", "master"],
> > > - =C2=A0=C2=A0=C2=A0"yocto-docs": ["ssh://git@push.yoctoproject.org/y=
octo-docs", "master"]
> > > + =C2=A0=C2=A0=C2=A0"meta-virtualization": ["git://git.yoctoproject.o=
rg/meta-virtualization", "master"],
> > > + =C2=A0=C2=A0=C2=A0"yocto-docs": ["git://git.yoctoproject.org/yocto-=
docs", "master"]
> > > }
> >=20
> > Sadly this isn't the case. The push servers are where people with push
> > access push things, which then mirror out to the other mirror servers.
> >=20
> > The autobuilder works off push since other wise, we might trigger a
> > build and it may build the wrong thing if the mirrors hadn't updated
> > yet.
> >=20
> > Whilst I appreciate that is a problem for only certain users, it was a
> > really problematic corner case for the main project AB.
> Ah, I was missing this context. I know that in the build request interfac=
e=C2=A0
> you can override some of these repos but I believe not all of them so you=
=E2=80=99ll
> get an error eventually and need to go tweak the config.py file to make i=
t
> work. I don=E2=80=99t know if there is a way to user override this but I=
=E2=80=99ll check.
>=20
> Thanks for checking my patch.=C2=A0
>=20

Thinking a bit more about this, we could parameterise it so that it is
easier for people to configure and maybe document it too.

Cheers,

Richard


