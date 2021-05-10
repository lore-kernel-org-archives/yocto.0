Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
 by mx.groups.io with SMTP id smtpd.web08.29364.1620638757631001259
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 May 2021 02:25:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ecz+eOwd;
 spf=pass (domain: gmail.com, ip: 209.85.208.54, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f54.google.com with SMTP id n25so17883416edr.5
        for <yocto@lists.yoctoproject.org>; Mon, 10 May 2021 02:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LAuObXj13LQ4Trr2wpFOWODgkyr6W9aOlEumcDcm+fo=;
        b=ecz+eOwdS5QvrUCXni6KQ3C+HykADDyBsJy1O6cKeJd6Zmyse6zWY58T2bmSd/7K7k
         6c7CxN2q2SPFxWiRiY3jdv0h53n4yY22pvfGByNgnsQ7nnuSoJLdOxJ4w/4d2X5vW40T
         Z0ulCrisBC5xRrkHoGsIoJ3GQkPAlfmt1hGfAfwNmtGo/oAXBEPKGVLSc6xGEH/m30OR
         aZIoISLD+a3/JkfmQswAywFPCWW8V/3c738CmLC5okCZsKHjP04Pz8idQiusCCtbe6uh
         nxzi4B9VFWMakjNqIHTWNbXsxI95hOte7sXQ3B5A1z5ccf8v8yw0iDhpW38vxfwh0umo
         WXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LAuObXj13LQ4Trr2wpFOWODgkyr6W9aOlEumcDcm+fo=;
        b=GtxInXZlrY+/7zGSE6XqxOwTQn+FUUscsrKBhtIH9DsYoVvCSyHImk2teHu8CBinbk
         p2kZzt8JXVDUklLv5FmHOqFNJ4jjAaf+t6iBuMrbteGywRXGxgs6JTBnPpXWOjOcWnyp
         g0d1ECxi9ACqaJnnLt1RFrMR2SSbglTf+v0U43IXtXyyAjOIRx8O8pL97TjVQjTPprVD
         owPKVfj/RUvUJQz89Coe30b+ChaEbpQ8cafzYLMGuNZHBVURZS0YO9LaSf5i4h80grg2
         KIU5RXlo8FpRWzVKx9WhWM0ll8T3GlKC+0OFQqZqIivilT77Duq4Qq+Aomcr7jjIaiwV
         vG5A==
X-Gm-Message-State: AOAM53062OOctV/2uaBL1U4YWnlpWsXP6CfvCRFJ4W16E8gyw1/i928x
	ffHxKjyZCMU5xxFCUzklZUg=
X-Google-Smtp-Source: ABdhPJxNzlMuzdnOSAn1Wa8SaylF1Lc5BNLoxcyOUf/2zBrgb/Hb3lagem8d3Xf2S1GXp/qYR5QcEg==
X-Received: by 2002:a05:6402:1c0d:: with SMTP id ck13mr28370076edb.170.1620638756049;
        Mon, 10 May 2021 02:25:56 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id w17sm8895253ejk.120.2021.05.10.02.25.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 02:25:55 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 10 May 2021 11:25:54 +0200
To: tom.hill@inbox.lv
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] KeyError: 'getpwuid(): uid not found: 1000' in do_package phase
Message-ID: <20210510092554.jjtyfne3w4qqe2mz@jama>
References: <CA+chaQdQgTp=CxNrj1BOB60ra4PakJoHNNC7euZzt4pH-J_=hA@mail.gmail.com>
 <636.1620291448346580381@lists.yoctoproject.org>
 <CA+chaQde1hy1g1Jbx5kQUFxxR+9XVKxG8dq=5vLdaiNY_kVY9A@mail.gmail.com>
 <1620371410.6094e7d2d5a22@mail.inbox.lv>
 <e41282c010817511161a597a712fbd6b99127ec4.camel@linuxfoundation.org>
 <1620637702.6098f8069bf43@mail.inbox.lv>
MIME-Version: 1.0
In-Reply-To: <1620637702.6098f8069bf43@mail.inbox.lv>
X-Groupsio-MsgNum: 53432
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="nralvcshxylfppey"
Content-Disposition: inline

--nralvcshxylfppey
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 10, 2021 at 12:08:22PM +0300, Thomas Hill via lists.yoctoprojec=
t.org wrote:
> Hi Richard!
>=20
> On Fri, 7 May 2021, 15:28, Richard Purdie <richard.purdie@linuxfoundation=
=2Eorg>
> > On Fri, 2021-05-07 at 10:10 +0300, Thomas Hill via lists.yoctoproject.o=
rg wrote:
> > > On Thu, 6 May 2021, 13:44 Martin Jansa <Martin.Jansa@gmail.com> wrote:
> > > > On Thu, May 6, 2021 at 10:57 AM Thomas Hill via lists.yoctoproject.=
org <tom.hill=3Dinbox.lv@lists.yoctoproject.org> wrote:
> > > > > > On Mon, Nov 16, 2020 at 02:28 PM, Martin Jansa wrote:
> > > > > > https://github.com/webOS-ports/meta-webos-ports/commit/9fd17a67=
cdbed92df13a14b002a189b4c6c2d442
> > > > > > is an example where it triggers this error, but doesn't trigger=
 the more common host-user-contaminated QA error (unless you happened=A0to =
use UID 1001 on host for the user running bitbake).
> > > >=A0> I have here a similar problem with one of my own packages. It h=
appens that my bitbake user uses UID 1001. Do you have more information why=
 this is a problem? Should it be enough to change the UID to 1002 to get ev=
erything running?
> > >
> > > > No, you should chown the files to be owned by the expected user whi=
ch exists in the image (probably root like in my commit). Changing the UID =
of the user on host is very bad work around (as it will fail for the next p=
erson building the same image with host user 1001.
> > >
> > > Ok. Thanks. I can confirm that the change of the bitbake users UID to=
 1111
> > > did not solve the issue.
> > > I will open a new thread because I don't see why this fails. I use oe=
_runmake
> > > in my do_install function and got the impression that oe_runmake shou=
ld take=A0
> > > care of this via fakeroot.
>=20
> > When you install files during do_install, you need to be clear about who
> > you want to own the end result.
>=20
> See my other mail for more details - subject:
> "Path ./package/usr/lib/libcryptopp.so.8 is owned by uid 1111, gid 1111, =
which doesn't match any ..."
>=20
> > If you do something like "touch ${D}/x", the it will be owned by the de=
fault
> > user which in a fakeroot context under pseudo is root.
> >=20
> > If however you cp a file to ${D}/x, it would depend what you told cp
> > to do about ownership. If the original file was owned by user 1001, it
> > may try and preserve that.
>=20
> I do not touch any files myself. The do_install function uses only
> "oe_runmake install-lib". No "touch", no "cp", nothing.
> The GNUmakefile uses "mkdir", "cp", "chmod" but I patched it so it
> uses "install" instead of "cp" in my recipe.
>=20
> > We don't know what your code is doing in do_install but its almost cert=
ainly
> > not setting the file ownership correctly.
>=20
> My other mail has more details. I did not append the GNUmakefile. It is
> quite large. I think it ist easier to get it directly from the original g=
it-repository.
> <https://github.com/weidai11/cryptopp/blob/9dcc26c58213abb8351fbb1b2a7a1d=
2c667366e4/GNUmakefile>

0002_libcryptopp_8.2.0_use-install-instead-of-cp.patch from your recipe
might be interesting as well to guess what went wrong in your case.

--nralvcshxylfppey
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCYJj8IAAKCRA3VSO3ZXaA
HHkSAJ4mrEK8Tm0DlPmbFZef87488FxxpACgjYlW3L8DoAxCjp8JBVHPfww7SaE=
=2Brz
-----END PGP SIGNATURE-----

--nralvcshxylfppey--
