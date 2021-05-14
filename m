Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web11.10172.1621005386028675545
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 May 2021 08:16:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kBYYL0C6;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id a25so10967305edr.12
        for <yocto@lists.yoctoproject.org>; Fri, 14 May 2021 08:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qPZV4PrRBFZTOdD572zR3alaQ+d8Fjt8fTTL7LFzgVw=;
        b=kBYYL0C6DZkL9RaNwSz/DFawenMDfmQw9twTiUb2QjE/wmNRPdtUSh252MqNRA7kUK
         R3+O353Lgs4l9jmDdzlnJxMNGARpuF3c6IgPPQRAMLEFDTOrRa7K5b1YTcKEhG9LYQHz
         WdjG+ATP9NmBI+F/MGj/9gNQtT1KXVVvlsuh6xvvPSCdHqLSmZmAxajIZ+0MQ316ALo/
         Du7jZlkwc729fVptNvWtk1jSObl7Z6ExFkjdD5sUWBWyVJLbGjDhAAvEHYpATLWI/c+p
         w76IHNAPBVMy+eqg2mB6paaTz6yUtYGjGqMKp4UaDGckLQfVuwOrmw42X7wQ0KrdjObL
         thcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qPZV4PrRBFZTOdD572zR3alaQ+d8Fjt8fTTL7LFzgVw=;
        b=HkEnBvo3jMt8nKQp+JvgPu88IHd3YLAJoX41BHSfyYoGQ6B9l9Zx9i8E2qtd3qVs8d
         hCz7g/un3WuUXL450+CtAeQpvJoGCOHukfEiIHuRQqoD/v+SdUSbaEUfhtitV9nbhDpJ
         uSF4M5FMlqfaWQtCTywh7bMuhOqG1aM2ju3fTKJVnhhQdERTv1R2v948kV15E2kRHFDE
         IVJht8vFdSfesMnpBHkgzrWZw+FnJfSa8RmaySCi+ITRKjUVms2ATmLUfmn4JYN4UGIM
         8qLbANdb1WeT2EbcVSsTbDjsvXfY9PwLoYgV9xhDLfBj96HRbEjOBSy+WGRuj1I1Wrol
         vYFg==
X-Gm-Message-State: AOAM5326f0Qj9H+8JMIQknuuOrDhnNmpVqnKYeHh62nOKZm/pNNGDAEm
	XwGUcSZYStuzLMcHglLfjrk=
X-Google-Smtp-Source: ABdhPJwDH9BW3fFJMgyppGzS4VYehrjPKVzuzK3LoLyKBlbVTZa/l3wlENfIO+KjUM6hXJvqYCeGgg==
X-Received: by 2002:a05:6402:46:: with SMTP id f6mr57032686edu.252.1621005384531;
        Fri, 14 May 2021 08:16:24 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id r15sm4488274edp.62.2021.05.14.08.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 May 2021 08:16:22 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 14 May 2021 17:16:22 +0200
To: Oliver Westermann <oliver.westermann@cognex.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Automate updating of SRCREV
Message-ID: <20210514151622.yximv4mecd5psur4@jama>
References: <SU47.1621004282459757257.Ycpa@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <SU47.1621004282459757257.Ycpa@lists.yoctoproject.org>
X-Groupsio-MsgNum: 53519
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gahyez5yx2vxeiag"
Content-Disposition: inline

--gahyez5yx2vxeiag
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 14, 2021 at 07:58:02AM -0700, Oliver Westermann wrote:
> Hey,
>=20
> maybe somebody already has something for this before I reinvent the wheel=
 ;-) We've several internal tools that mostly have their own CI and are ref=
erenced in our yocto layers to be picked up by the nightly build. Usually w=
e manually update the SRCREV and add a `git log --oneline --no-decorate <ol=
d_rev>...<new_rev>` into the update commit. That way you can easily scroll =
over your eg kernel repo to figure out which commit went in when. But by no=
w we have more and more internal tools, all require regular updates so we w=
ould like to add a little CI task to update our SRCREVs.
>=20
> Is there an easy way to tell bitbake / devtool to change a variable like =
SRCREV? I played around with various combinations of devtool modify,=A0upda=
te-recipe and edit-recipe, but I could not get it to work as I expect.
>=20
> My current goal for my script would be to use a flow roughly following th=
is:
>=20
> * Get the repo URL & branch from=A0SRC_URI (eg by a bitbake -e <recipe> a=
nd some grep magic)
> * Do a shallow clone in a temp dir
> * Get new HEAD commit for branch, compare with current
> * create git log for commit message
> * update REV in recipe
> * commit
>=20
> Looking forward to suggestions, Olli

If you really want to update SRCREVs often for CI jobs, then I would
setup separate job with some .inc file which sets SRCREVs of all the
components you want to test to AUTOREV and let it run as often you can
afford (even triggered from every push if your builds are quick or you
have many builders available).

Then whenever you want to "release" you can either dump the last built
revisions from this AUTOREV-build (either directly from
cache/bb_persist_data.sqlite3 or from e.g. buildhistory and dump them in
some release-1.2.3.inc included by your DISTRO (or update SRCREVs in the
individual recipes).

Regards,

--gahyez5yx2vxeiag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCYJ6URAAKCRA3VSO3ZXaA
HH2SAJ0SzzrRgl62/+NhrlC8PlNyz9gRMwCfWsfeAP1yq5+gsIxGzqO1/d05Vmc=
=XYHj
-----END PGP SIGNATURE-----

--gahyez5yx2vxeiag--
