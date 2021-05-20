Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web12.153.1621531069687726993
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 10:17:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eXbpqI/d;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id i67so16940610qkc.4
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 10:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/R/7txDF30mmaux74tqSWtVXeGlR3voEsRvB3oE1TFA=;
        b=eXbpqI/drLTAByS1/CGlBY9JQ9yOEaG8jasqzKrP7zB4N4OkdtHThfop63USvV5pB0
         21RPfj9oarQ6ScPFc4libIDDHtDHb4els/PpGqnOYNv/07LT5IuqVK6L7pHcZelwbetJ
         +EpMNlusTuQrtbMKB8YO2TuZ2Dw+AJyRaxUzYR0oGveMJV6YYXTZZpjnI3QUkwNohnfK
         b6H3yjqd1z1vFa5U45fzfk40ypL7HB/rs+HB86ouY+hZ3sFRxkf9yXum8bNkjLOw+aDg
         7xBpbIwIFXsoqDEp+/ijrKN4yntkZ6sEUz5OTJtKrCdmpF9tMIeUUCTcMfV7ADC/kivP
         R7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/R/7txDF30mmaux74tqSWtVXeGlR3voEsRvB3oE1TFA=;
        b=EHFvpv7jMUhZWY9pItFiQhQO2wRNlAmlA8It1srdqdP+G2f94j0iZ/xfh6YvRbLvlE
         Oe4FCWPFdzP4T2UF4hOm3v/4w7msUbD+tC5RZ78zcHCzkEO/JYcMhRQ+yFrTyd3+5qZH
         k0sMNMXlJkEO/sG5+a0PfKNk51p0kg22hyU6L3XL+MqcuGgUkRzG8J5y+y1aRjruZEcG
         EwrWC7pSu3LjSCNAK1XeH2Kw8DqUr4jyyU07WqO9FclbsdRs6yQW0rozZHY2eQQkFhyA
         IRLpLum4yF0dC9oohYkC0icl/8wyXtK+VyqnBE7gh1Fg1r8m/bY3keeNNF098Uu4rMbs
         Fq0Q==
X-Gm-Message-State: AOAM532rQuVSaGvXuW6bAt/2CCVE6QTOep5zVw9tiFFcQ5j2iBth3vNb
	8LQxCQIGiKgucEl6tzzHv2B2eGgIVK9YmVm8uOfxqs870uo=
X-Google-Smtp-Source: ABdhPJy1j5rxM7qgSwIHHYF1FDfgyg2o1gGfP+dWIvcRsTcV2Txnz1X+tB09yzpbrhiAAb0usLWRLCQH0la9BrRUg+k=
X-Received: by 2002:a05:620a:13a5:: with SMTP id m5mr6444378qki.119.1621531068699;
 Thu, 20 May 2021 10:17:48 -0700 (PDT)
MIME-Version: 1.0
References: <74a762cf340855aaa9fae5ed7686d123db22923e.camel@iris-sensing.com>
 <7c7aa6ca-05b9-452b-6542-4d5da2248e7e@gmail.com> <c81df5276566472b0e5ab25413b24d1931d19005.camel@iris-sensing.com>
 <CAMKF1soHDq9PwXipQ8mxYKCAu1eG41iG8cx8w2_Ft7H9NjcaEA@mail.gmail.com> <f761e9acc1efa573ed5f1509979df99e17581bed.camel@iris-sensing.com>
In-Reply-To: <f761e9acc1efa573ed5f1509979df99e17581bed.camel@iris-sensing.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 20 May 2021 10:17:22 -0700
Message-ID: <CAMKF1sp9S=EFCmB4Kg5aL8PuS=5qF_1-ZoMqc56WsbfqNu+ofg@mail.gmail.com>
Subject: Re: [yocto] Statically linked libraries and license manifest
To: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 20, 2021 at 9:18 AM Jasper Orschulko
<Jasper.Orschulko@iris-sensing.com> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> OK, maybe I did not make the issue clear enough:
>
> I have a package A which statically links package B at compile time
> (using DEPENDS).
> As a result the package A is "tainted" with source code from package B.
> However, as package B is only in the DEPENDS, not in the RDEPENDS, it
> is not included in the license.manifest. As a result, the output image
> violates the license terms of package B.
>
> Now my idea comes into play:
> Add package B to the RDEPENDS (even though the ${PN} package is empty
> after the packages-split), which should result in package B's inclusion
> in the license.manifest. Or am I approaching this completely wrong?
>

I see, this is a workaround that will work in this case but may not
work in case where the PN is not empty
but static linking it happening. So I think in cases of static linking
the parent recipe has to reflect that chage

> - --
> With best regards
>
> Jasper Orschulko
> DevOps Engineer
>
> Tel. +49 30 58 58 14 265
> Fax +49 30 58 58 14 999
> Jasper.Orschulko@iris-sensing.com
>
> =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=
=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=
=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2
>
> iris-GmbH
> infrared & intelligent sensors
> Ostendstra=C3=9Fe 1-14 | 12459 Berlin
>
> https://iris-sensing.com/
>
>
>
>
> On Thu, 2021-05-20 at 09:04 -0700, Khem Raj wrote:
> > On Thu, May 20, 2021 at 9:00 AM Jasper Orschulko
> > <Jasper.Orschulko@iris-sensing.com> wrote:
> > >
> > > -----BEGIN PGP SIGNED MESSAGE-----
> > > Hash: SHA256
> > >
> > > Hi Khem,
> > >
> > > thanks for your reply. As far as I understand, the "proper" way is
> > > to
> > > use dynamic linked libraries whenever possible? I have done some
> > > more
> > > thinking on the matter, and at least in our case the packages in
> > > question are empty (the base package that is, everything else is in
> > > ${PN}-src ${PN}-devstatic etc), so I believe the easiest way to
> > > include
> > > these into the license manifest is to also add them to RDEPENDS and
> > > set
> > > ALLOW_EMPTY_${PN} =3D "1". This should not change the output image,
> > > but
> > > include the packages in the build, thus adding them to the license
> > > manifest. What do you think?
> > >
> >
> > I am not sure why you will include empty packages in your manifest
> >
> > > - --
> > > With best regards
> > >
> > > Jasper Orschulko
> > > DevOps Engineer
> > >
> > > Tel. +49 30 58 58 14 265
> > > Fax +49 30 58 58 14 999
> > > Jasper.Orschulko@iris-sensing.com
> > >
> > > =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=
=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =
=
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=
=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2
> > >
> > > iris-GmbH
> > > infrared & intelligent sensors
> > > Ostendstra=C3=9Fe 1-14 | 12459 Berlin
> > >
> > > https://iris-sensing.com/
> > >
> > >
> > >
> > >
> > > On Mon, 2021-05-17 at 15:56 -0700, Khem Raj wrote:
> > > >
> > > >
> > > > On 5/17/21 10:44 AM, Jasper Orschulko wrote:
> > > > > Hi,
> > > > >
> > > > > my question more or less reiterates the following:
> > > > > https://www.yoctoproject.org/pipermail/yocto/2018-July/041854.ht=
ml
> > > > >
> > > > > I am trying to find a way to list statically linked libraries
> > > > > in
> > > > > the
> > > > > license manifest, but so far I am at a loss. To my
> > > > > understanding
> > > > > Yocto
> > > > > does not understand packages included using DEPENDS and not
> > > > > RDEPENDS as
> > > > > part of the resulting image, however technically source code
> > > > > from
> > > > > the
> > > > > dependee can (and will) end up on the image as part of the
> > > > > dependent
> > > > > package. This is a serious issue from a legal point of view, as
> > > > > the
> > > > > developer ultimately might end up with an incomplete list of
> > > > > licenses,
> > > > > when relying on the Yocto license manifest.
> > > > >
> > > > > Please, do correct me if I'm wrong :)
> > > >
> > > > partly yes. there is a provision to disable static linking using
> > > > DISABLE_STATIC, so atleast some of packages can be cleared of.
> > > > depends
> > > > are effective during build time and its the linking which decides
> > > > on
> > > > that but you can perhaps easily write a probe and extract this
> > > > information from linker cmdline perhaps by dumping linker map and
> > > > post
> > > > processing it.
> > > >
> > > > >
> > > >  >
> > > >  >
> > > >  >
> > > >  >
> > > >  >
> > > -----BEGIN PGP SIGNATURE-----
> > >
> > > iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmCmh3EACgkQYgqew07V
> > > MNWiXAf9GPbvZjlzAW+ref/+RKP/9GbtSBpajVUkn+x4DYdO0DmSq6JwOGeLblW8
> > > qu2wjw9cLwgDAL4YRLESrgA3XAbflFgf0IZBuEMbT6WONW7fgHeQ7+jPrEQ7dkgx
> > > POrePcququDSDi2idjjrdTuqHxLl0Il09g8vJz9oktZhIKwCesqWQE8VjSLcjBaj
> > > u+7nHLY77fV/a1o/Ka7PkH2AjbWsmn/iHC1hLN91yNVG6EyzAneHQYKDo7Y5kRVn
> > > YWNSgmmab7uiigrN2KqFOblazkBaA5/rIKD1PpeOjqOTtF7+UfWkL5DZZArdh/KG
> > > +E3VauRz6agqxbb0VUWZZjE6if07Qg=3D=3D
> > > =3DUCmd
> > > -----END PGP SIGNATURE-----
> -----BEGIN PGP SIGNATURE-----
>
> iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmCmi5gACgkQYgqew07V
> MNURUQf+J7XVwVWvY8fFiOqXyiUFQXzeKpru3v9QNx6RRfXSxUXvs1taKPHEdKOG
> vhBvnEIagC6Hzg0+QRBamk8c7KdgQXlS7FGNzMAbybE0Is/ocY1dpiQABSKTP8Za
> 4/EFNBZ64fzPMfFq3gX3mzko4vf7Ub6R3hmXkZTZnJVUTU9fMCNnxt94mXDvwSB4
> bK54TRs2Zpg9s77XxL/nxvaEpkdYC2GBMxIgjahVLVhbxgmn03Sozt2zawbawGRK
> NpvagP06+6o0gSgwKBJ3bU2H3i9nQGLOETTGvMjnsbqOANusNZ6QR2WTtJrFirZN
> j10vjBt7b+0/GOqU0ONGnVDQYSx74A=3D=3D
> =3DfoGh
> -----END PGP SIGNATURE-----
>
>=20
>
