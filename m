Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web12.10571.1621526709848017761
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 May 2021 09:05:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tzXrfKMe;
 spf=pass (domain: gmail.com, ip: 209.85.222.172, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f172.google.com with SMTP id k4so5584724qkd.0
        for <yocto@lists.yoctoproject.org>; Thu, 20 May 2021 09:05:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=i/4kXuQpHbAKGMHCeDr7Swjq7aebD7wod0tERyIHQik=;
        b=tzXrfKMe+juqI6E3kXgDMJisgUqgtPey3LxOrYv88H4hS5R133Hh34dp5QRuqoWv/D
         jDA0j+2wXsCsiJpscbrW+NTtBj70RUZ6UMVECR2QquII8gNa64z453/DotqwsTkNlVQn
         YqN0F1MFs7QMMR4uGHySurfTUPulTEEKSTA5bB4pQmaQiiNtzbs6LrU+dYg45j37bKa8
         Re5iRDQ5DTMYVaHE+X7VTm4GrU6ZE/UuOUQkKf3Ed16A+spnVurAAaDctJzVSIGGGbdI
         f2srpY6+N0emGy3p2Ooy4iU964exdPcgYcj70gCz/ClWJkPlSYceoCsKqWY7BALvn7QY
         1C9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=i/4kXuQpHbAKGMHCeDr7Swjq7aebD7wod0tERyIHQik=;
        b=eDu/4nG07vaKMQKXaihezZCSbs3FO7QenP9ChFSbLI8rnqKTLnELGeJIDb01zj1gDv
         imRTXKRPUd38Z7bs1AB3w6dJv2cjxak54MtNsDv3P1rkVw6hJJnCW3e0TH20TnOiP1Zu
         1KxkQ3o4q0TZSbluTltDbcdeooHXaIfqbwd7U28n9zz4qf86EeSz6XalbewvkHSoCBiz
         1gFMv02FKosSqKU54bcK6/lBxPCjpxBCyPvI8V7vvjwvuV7yEnkzFudivhq6aOs8D/AL
         uBD43nKwlzcqQXsKrBKo33B8YdDlgCNBV8mNH0r2qcdPE3IIuDS9Z7x4KaTqgOYtXsAG
         /rRQ==
X-Gm-Message-State: AOAM5302GjhclUFzXGUS6sN0WlSkijgKXE2iPeyGG6pViTHjPSdCHfrd
	TzMBr+/8cxdJSICjJKHw+qdkCQeXrBNFwDqppOI=
X-Google-Smtp-Source: ABdhPJzFjexpguR4Ro/v/cZSeqJZwSKQvT+nto9rTnEB70K7umumugo9fk6dopz10Uartlbq02a75xhRcKiYf2qgAk4=
X-Received: by 2002:a37:444a:: with SMTP id r71mr5705695qka.381.1621526708832;
 Thu, 20 May 2021 09:05:08 -0700 (PDT)
MIME-Version: 1.0
References: <74a762cf340855aaa9fae5ed7686d123db22923e.camel@iris-sensing.com>
 <7c7aa6ca-05b9-452b-6542-4d5da2248e7e@gmail.com> <c81df5276566472b0e5ab25413b24d1931d19005.camel@iris-sensing.com>
In-Reply-To: <c81df5276566472b0e5ab25413b24d1931d19005.camel@iris-sensing.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 20 May 2021 09:04:42 -0700
Message-ID: <CAMKF1soHDq9PwXipQ8mxYKCAu1eG41iG8cx8w2_Ft7H9NjcaEA@mail.gmail.com>
Subject: Re: [yocto] Statically linked libraries and license manifest
To: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 20, 2021 at 9:00 AM Jasper Orschulko
<Jasper.Orschulko@iris-sensing.com> wrote:
>
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> Hi Khem,
>
> thanks for your reply. As far as I understand, the "proper" way is to
> use dynamic linked libraries whenever possible? I have done some more
> thinking on the matter, and at least in our case the packages in
> question are empty (the base package that is, everything else is in
> ${PN}-src ${PN}-devstatic etc), so I believe the easiest way to include
> these into the license manifest is to also add them to RDEPENDS and set
> ALLOW_EMPTY_${PN} =3D "1". This should not change the output image, but
> include the packages in the build, thus adding them to the license
> manifest. What do you think?
>

I am not sure why you will include empty packages in your manifest

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
> On Mon, 2021-05-17 at 15:56 -0700, Khem Raj wrote:
> >
> >
> > On 5/17/21 10:44 AM, Jasper Orschulko wrote:
> > > Hi,
> > >
> > > my question more or less reiterates the following:
> > > https://www.yoctoproject.org/pipermail/yocto/2018-July/041854.html
> > >
> > > I am trying to find a way to list statically linked libraries in
> > > the
> > > license manifest, but so far I am at a loss. To my understanding
> > > Yocto
> > > does not understand packages included using DEPENDS and not
> > > RDEPENDS as
> > > part of the resulting image, however technically source code from
> > > the
> > > dependee can (and will) end up on the image as part of the
> > > dependent
> > > package. This is a serious issue from a legal point of view, as the
> > > developer ultimately might end up with an incomplete list of
> > > licenses,
> > > when relying on the Yocto license manifest.
> > >
> > > Please, do correct me if I'm wrong :)
> >
> > partly yes. there is a provision to disable static linking using
> > DISABLE_STATIC, so atleast some of packages can be cleared of.
> > depends
> > are effective during build time and its the linking which decides on
> > that but you can perhaps easily write a probe and extract this
> > information from linker cmdline perhaps by dumping linker map and
> > post
> > processing it.
> >
> > >
> >  >
> >  >
> >  >
> >  >=20
> >  >
> -----BEGIN PGP SIGNATURE-----
>
> iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmCmh3EACgkQYgqew07V
> MNWiXAf9GPbvZjlzAW+ref/+RKP/9GbtSBpajVUkn+x4DYdO0DmSq6JwOGeLblW8
> qu2wjw9cLwgDAL4YRLESrgA3XAbflFgf0IZBuEMbT6WONW7fgHeQ7+jPrEQ7dkgx
> POrePcququDSDi2idjjrdTuqHxLl0Il09g8vJz9oktZhIKwCesqWQE8VjSLcjBaj
> u+7nHLY77fV/a1o/Ka7PkH2AjbWsmn/iHC1hLN91yNVG6EyzAneHQYKDo7Y5kRVn
> YWNSgmmab7uiigrN2KqFOblazkBaA5/rIKD1PpeOjqOTtF7+UfWkL5DZZArdh/KG
> +E3VauRz6agqxbb0VUWZZjE6if07Qg=3D=3D
> =3DUCmd
> -----END PGP SIGNATURE-----
