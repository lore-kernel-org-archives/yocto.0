Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web08.11558.1622631750853209952
 for <yocto@lists.yoctoproject.org>;
 Wed, 02 Jun 2021 04:02:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: luca.boccassi@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id h3so995264wmq.3
        for <yocto@lists.yoctoproject.org>; Wed, 02 Jun 2021 04:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version;
        bh=lTbAg+vFqZNxp9HK8yvWVGLhkdiPNqNnKvsESXvGm2g=;
        b=L6Z4dbWwLNZ7TTUbVlXCu+BZ+6tadbFE6ujNCFKt9Zsn7jdX5qT37eQ7j/R67eQDiR
         izAwGimB0MlEZSMG+NlRhDzikbBqIVpZqeIY0KYpPjLOYdHhqJwcOmsKgNJjMIFc70cF
         o8/aeCfA2cOXtWpYZeYhXloLJl7ZtzBK+HzGR+gAxZxJ3YygY5gIDErEZeT8mnC5x8rE
         pER710rB24Sngc+Sx6VRjCM8dEWV0GzGxkcx5G5NLH+/2cVHKllHDsATTBhg09dbsVd0
         My+pIaBBzzV5+awLacrOYmNhqH1y7+6vv01Sq+T+FKhRRwxVXWC+UJlTVZQShyPiqeus
         idBw==
X-Gm-Message-State: AOAM533G7wfVrA75expSCDK05qvxpTqeC7ngwo/rjpZ/WXP54jKZaV5e
	echj1PhDFZ6eoV8OWzY5t2E=
X-Google-Smtp-Source: ABdhPJypq2qB7WQvhf5MYZO2o0H9bgugTE8vXvE7ZjC8JF2ZB/Bn/LbucS7AaeA0rmRDHjgCujKCkg==
X-Received: by 2002:a1c:7d15:: with SMTP id y21mr4549539wmc.120.1622631749052;
        Wed, 02 Jun 2021 04:02:29 -0700 (PDT)
Return-Path: <luca.boccassi@gmail.com>
Received: from localhost ([137.220.125.106])
        by smtp.gmail.com with ESMTPSA id m23sm2408460wmc.29.2021.06.02.04.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 04:02:27 -0700 (PDT)
Message-ID: <786af07667adc3b446684af167a2dba487d15c43.camel@debian.org>
Subject: Re: [yocto] systemd, ELF binaries and runtime dependency tracking
From: "Luca Bocassi" <luca.boccassi@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, Paul Eggleton
	 <paul.eggleton@linux.microsoft.com>, yocto@lists.yoctoproject.org
Date: Wed, 02 Jun 2021 12:02:26 +0100
In-Reply-To: <d54534bb-cc7e-498d-20a6-00c46a1662f0@gmail.com>
References: 
	<20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
	 <71099fe9-7acd-186a-e204-18347a83359b@gmail.com>
	 <07ed91b66206ee237ce2831e2ac3792decbb3cd1.camel@debian.org>
	 <d54534bb-cc7e-498d-20a6-00c46a1662f0@gmail.com>
User-Agent: Evolution 3.30.5-1.2 
MIME-Version: 1.0
X-Groupsio-MsgNum: 53735
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-8+WCQwoBYtRsvKe0qNs0"

--=-8+WCQwoBYtRsvKe0qNs0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2021-06-01 at 09:23 -0700, Khem Raj wrote:
>=20
> On 6/1/21 9:13 AM, Luca Boccassi wrote:
> > On Tue, 2021-06-01 at 07:58 -0700, Khem Raj wrote:
> > > On 5/31/21 3:40 PM, Paul Eggleton wrote:
> > > > Hi folks
> > > >=20
> > > > Upstream in the systemd project, a proposal has been made to add a =
special
> > > > section to output ELF binaries to record soft runtime dependencies,=
 so that
> > > > they could be read and utilised by distribution build systems such =
as ours
> > > > (they would be translated into RRECOMMENDS in our case). At the mom=
ent that
> > > > doesn't seem to have generated a huge amount of interest in the tra=
ditional
> > > > distro space, but would it be interesting for us?
> > > >=20
> > > >     https://github.com/systemd/systemd/pull/17416
> > > >=20
> > > > For clarity, we (Microsoft) will volunteer to do the integration as=
suming the
> > > > above pull request gets reopened and merged, which is more likely i=
f we
> > > > express our interest.
> > >=20
> > > Finding dlopen dependencies is a neat idea, but it has to be accepted
> > > cross distro, and also applications have to manually declare it in co=
de
> > > if I understand systemd's patch correctly.  This will be hard to
> > > accomplish as you can see changes are spread across apps from distro
> > > point of view. Perhaps there is a smarter way of detecting adding the=
m
> > > in ELF spec itself and then have tools like linker help implement thi=
s
> > > and also possibly collect the information or guide the users to achie=
ve
> > > this would be helpful.
> >=20
> > Yes ideally ELF shared objects/the linker/the loader would support weak
> > symbols (like dylib on OSX). Unfortunately they do not, and it seems
> > there's no interest to add it becasue there's no concrete use case that
> > shows it's useful. But that cannot happen until there's some support
> > for it. Chicken and egg...
>=20
> right and thats why I will be reluctant to go too far at distro level=20
> unless there is general interest in wider communities as it can make us=
=20
> an island.
>=20
> > There have been lots of theoretical discussions about pros and cons,
> > and my hope was that if at least one distro could find it useful, and
> > could show that it is in practice useful and the theoretical issues are
> > not that problematic and could be solved, others would follow suit.
>=20
> you could tool it as a packageconfig for systemd alone and run with it=
=20
> and see how it pans out.
>=20
> > So leaving aside other distros, is this something that would concretely
> > benefit the Yocto project for handling the systemd recipe? There are
> > currently 12 dlopen()-based optional dependencies in systemd, and the
> > number grows with each release.
>=20
> we could certainly try that, provided systemd upstream is supportive of i=
t.

Yeah, I was thinking of starting from the systemd recipe only. Given
the project has to add support for it, a distro-wide rollout wouldn't
make much sense anyway.

--=20
Kind regards,
Luca Boccassi

--=-8+WCQwoBYtRsvKe0qNs0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCSqx93EIPGOymuRKGv37813JB4FAmC3ZUIACgkQKGv37813
JB5+rQ//evNuZ14QpVyreDUTj9yM3DeQTU0ZzxIG9L7rjj7sz1ACorpVHBCDJfHP
nobeMukIwO02HoWX+CoSRQehoyKKjTgL/39mtPfXD0gyqhyVSez7lRziAkSU83Z0
KAcVuxN0Qj9HWwoV0dvnXgPipINexso/WD377+821syJBcb7vmlEhVv5fpQ5XTni
LhnGOA412z5oy1BFlSFNBkCIRn19IzKR8GFJqBvfqGqRLiQ8xQlAwnaI/KdwU/Fi
aXlFifz5LhbN62juT7TNAd1G0nylS8MIlTZEqRVRsEWz2TGnOXv8zt1qiYN75qzf
KSAWDviIwbqACn4DI2h7euhxVqzeGrqi4pAMvymxFDaY24NgJBvd2tdmPaWmIX0G
xNTKZO3B4SoHJq7Iz49jQDeJq7VxGeeE8wYAmwSMKutUewzG5uDhtG7XMJsnWSay
cuI1tGNxkHgmsihJzE8TYOVQukyPQd4J4loNZFqZmCAvmDQ2A/8jDIh/mZb8lxp/
I4tXIV6JnU1znITsh1Mk8QsOVkbThReD2SQJQt7ZieEtBoAfsAP4fyrqR5e0sMuA
isKD4xYpx5qwYrCOxxzSj83uWdXpPiIzDIbLSfoRpuYPVskzqUSJoiqNVuheemW7
te3ZydnQ0pNB4Dprm/t6VYzbq+mu6ixWq7KSSVpKyPHKp+d/QTs=
=+GhA
-----END PGP SIGNATURE-----

--=-8+WCQwoBYtRsvKe0qNs0--
