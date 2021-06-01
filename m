Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
 by mx.groups.io with SMTP id smtpd.web09.60316.1622564043637780642
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Jun 2021 09:14:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: gmail.com, ip: 209.85.128.45, mailfrom: luca.boccassi@gmail.com)
Received: by mail-wm1-f45.google.com with SMTP id o2-20020a05600c4fc2b029019a0a8f959dso2266639wmq.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Jun 2021 09:14:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version;
        bh=QvQwtDqtRly77IKU4gWpru77t614ZQMKjhvLe66DxsY=;
        b=NKylN5+uY/AjmYy86kvuos9cYHQAvp/TQQqNFbepGeOwWPIa8W3BPgWRr5HTCUC9kK
         HVIiDM275ijIxH8D1OdcmrP1svUpd2/21LKjt2k803G0TK+e0Hp0QC7Hsk8CxhW5a98z
         9qQbI7ZPWZM3ZkGOloQVX1Va5HJ0SvrQu9Zeqv/yw4sVB1xJXClMSmkdxiT9543Vq9BH
         gFTXXt69jG9ryebu7TudyWFcQo9v2kjpXOL9ybnHtJoXtdBqZnECgv/MMdX4zp5chjPt
         XRB5TityGgqaUzO7WgOqtROG89+z+3nYyC7pKISy/9ZeM+LG2GE1+N3EyJa/05kVA1VY
         Xr3w==
X-Gm-Message-State: AOAM532x6YqWPDp967s9E4fx5G92LHa4nYsEndXIuUYD3Ilvj/OiuMVT
	z17qyUKHhVvHHM19W+zIWiU=
X-Google-Smtp-Source: ABdhPJwuG6zhViNLA/zGLMyTXjBV/RD3z+N+2QUlu2MaRfkrZF2pohO2AFNc1I5CkWhBjlx6Pm/KHA==
X-Received: by 2002:a1c:2985:: with SMTP id p127mr27800428wmp.165.1622564042081;
        Tue, 01 Jun 2021 09:14:02 -0700 (PDT)
Return-Path: <luca.boccassi@gmail.com>
Received: from localhost ([2a01:4b00:f41a:3600:360b:9754:2e3a:c344])
        by smtp.gmail.com with ESMTPSA id u18sm18401668wmj.15.2021.06.01.09.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 09:14:00 -0700 (PDT)
Message-ID: <07ed91b66206ee237ce2831e2ac3792decbb3cd1.camel@debian.org>
Subject: Re: [yocto] systemd, ELF binaries and runtime dependency tracking
From: "Luca Bocassi" <luca.boccassi@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, Paul Eggleton
	 <paul.eggleton@linux.microsoft.com>, yocto@lists.yoctoproject.org
Date: Tue, 01 Jun 2021 17:13:59 +0100
In-Reply-To: <71099fe9-7acd-186a-e204-18347a83359b@gmail.com>
References: 
	<20210531224016.GA24592@linuxonhyperv3.guj3yctzbm1etfxqx2vob5hsef.xx.internal.cloudapp.net>
	 <71099fe9-7acd-186a-e204-18347a83359b@gmail.com>
User-Agent: Evolution 3.30.5-1.2 
MIME-Version: 1.0
X-Groupsio-MsgNum: 53732
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-4hQeNHiqS9tbElS5KzX2"

--=-4hQeNHiqS9tbElS5KzX2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2021-06-01 at 07:58 -0700, Khem Raj wrote:
>=20
> On 5/31/21 3:40 PM, Paul Eggleton wrote:
> > Hi folks
> >=20
> > Upstream in the systemd project, a proposal has been made to add a spec=
ial
> > section to output ELF binaries to record soft runtime dependencies, so =
that
> > they could be read and utilised by distribution build systems such as o=
urs
> > (they would be translated into RRECOMMENDS in our case). At the moment =
that
> > doesn't seem to have generated a huge amount of interest in the traditi=
onal
> > distro space, but would it be interesting for us?
> >=20
> >    https://github.com/systemd/systemd/pull/17416
> >=20
> > For clarity, we (Microsoft) will volunteer to do the integration assumi=
ng the
> > above pull request gets reopened and merged, which is more likely if we
> > express our interest.
>=20
> Finding dlopen dependencies is a neat idea, but it has to be accepted=20
> cross distro, and also applications have to manually declare it in code=
=20
> if I understand systemd's patch correctly.  This will be hard to=20
> accomplish as you can see changes are spread across apps from distro=20
> point of view. Perhaps there is a smarter way of detecting adding them=
=20
> in ELF spec itself and then have tools like linker help implement this
> and also possibly collect the information or guide the users to achieve=
=20
> this would be helpful.

Yes ideally ELF shared objects/the linker/the loader would support weak
symbols (like dylib on OSX). Unfortunately they do not, and it seems
there's no interest to add it becasue there's no concrete use case that
shows it's useful. But that cannot happen until there's some support
for it. Chicken and egg...

There have been lots of theoretical discussions about pros and cons,
and my hope was that if at least one distro could find it useful, and
could show that it is in practice useful and the theoretical issues are
not that problematic and could be solved, others would follow suit.

So leaving aside other distros, is this something that would concretely
benefit the Yocto project for handling the systemd recipe? There are
currently 12 dlopen()-based optional dependencies in systemd, and the
number grows with each release.

--=20
Kind regards,
Luca Boccassi

--=-4hQeNHiqS9tbElS5KzX2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEErCSqx93EIPGOymuRKGv37813JB4FAmC2XMcACgkQKGv37813
JB7yBBAAqkkN6CPajmrsfRUMWT/PzoX0H06epdVhEB5gWGVJSeJ4Bugs2sPwoOEn
EWb7bWUY/aGQ5Z+qoyaUbPVgH4EB+zfR4CIRbdtLxWUC/KVhpyrBHM2/jqFI/jAM
tZHAFY71Nf9chhMQPpcCbYM4qFU4VaYe8Zr3BSn9LfaAu/i3d6B3haO2bFfvgqlR
XGmqHlln4U0L91SqzVj7HQtoanjgbMW7voldvan4HhJJMxa0mKsraWYLb9y1xxJV
HxXFvYpvv2YqZn3g5PJ2Awvonbk4qc+XTIzQtMtZaAYIO4LTPfz+5+wqoaD2DbIP
N1zsa1JhMb2b9NzLoYmCPc5hT1JZ/Ng446daQYaaSWFjx/f8U8J5OpealyT6WCMh
kh6lgxgAPO5ITSiN5kbYbzZthfs2BialJfe0eiHkm0uc0ADlQyxQLMetgaYHyHiu
P/WQdD3k2vueZtzjW2jnM0yafbEatWUMqdaOCAjHdzl8/lReC3CBox4t+uGfN0fH
Hv5D51NTteH/Zv2ITi6JfNqb5le61GBLtoBuy6M0928JfAhncSVp6N1T6Vs8RgBp
yUn/0XrNK1jPYEIO8O8yedby1bvuWx+xZhgzMgzv6PwGF61bxo5CJTx+XsxyiLli
leb4SO0WU6erMoviw9pjmdlti13TIbdK76zun8c2Ob3y9QrhgUQ=
=z0Tk
-----END PGP SIGNATURE-----

--=-4hQeNHiqS9tbElS5KzX2--
