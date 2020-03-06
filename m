Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
 by mx.groups.io with SMTP id smtpd.web09.1092.1583517856549158259
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Mar 2020 10:04:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HS54lvW1;
 spf=pass (domain: gmail.com, ip: 209.85.221.68, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f68.google.com with SMTP id v2so3396879wrp.12
        for <yocto@lists.yoctoproject.org>; Fri, 06 Mar 2020 10:04:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XTksptV/xdpvJhoPBEhaaYlvAQ2QVQHS0Qr2KyPhjrc=;
        b=HS54lvW1sSzrGRoSAzKlOrYU9BblsI5wEG/eCTJ8GTgjMbk/Gw620Hgual6npkwsRz
         9DqYnt9yT3e7farODTIktPGlveh2IWb4lMjIHckaTmN9p6SpmPK3h1GZbZJJQWG4P+KM
         prWMWRQwxTTUAIsyQ/X08P4hKSChmS55Jp6MOgVlNnlA9+Aixtk2E3Pa7g1iAH9TncmP
         MUxjKS7a0s3UKYPtQFxS8/lOyMl5ENN31vpNNmEJW0VSd3ha2gNdDoAjmmNZ6zw3+aFE
         Ad33ug1j+iEO750lcWLctiHd2ktjLFR5cpN8h8SV8y8HcXd7gQ2fcppn7M6RBhzcooIq
         jFrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XTksptV/xdpvJhoPBEhaaYlvAQ2QVQHS0Qr2KyPhjrc=;
        b=IsjZn3r/xIx4Rb6N9GqBTr9FnKdoqv1vGPx4CYdzA41aWmN0h+FZcwlJb1lQAFytNF
         1MxzpS37gVpr3e2afUbYbHv/C0Cq5uMX2PuP1/XE1A+0J0ZRqb3SB96Wr6sqWdzSjZql
         r+GY10MbSu1IKuFmJmyemu5FuhUblS4u/Gy/gdmjFl19DX2XxR4ZelzfH/1ZiF/pIdUa
         lbcAsIWKZdM19PdfKFEVGAJX/JyFxlQMOnAU1S6lkRUNSwqtoILU727M8fglYByKXKFa
         NR4en2dxpD5a34QacKYU8JqiXh890SG972R54zksSzyxJWWFncDqDAyTkePu7jyjEqTs
         FYNA==
X-Gm-Message-State: ANhLgQ0CPwjg2VFN2FJUEIxnZUdimJjrQXnzo0pI6ifAqbYDNVbZXc/V
	Z3sGzfYtb2J9czewf/0ADWaAzqyQ
X-Google-Smtp-Source: ADFU+vsAGIjzxEmgHZZszq+BH7DzQZeJgWoerppX0mZCqRDANlCaFH0IkC4DJJnSgfuAw7jclObYSg==
X-Received: by 2002:adf:c449:: with SMTP id a9mr5072347wrg.366.1583517854693;
        Fri, 06 Mar 2020 10:04:14 -0800 (PST)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id i6sm16984419wra.42.2020.03.06.10.04.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2020 10:04:13 -0800 (PST)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 6 Mar 2020 19:04:13 +0100
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: Re: [yocto] [zeus] icu-native-64.2-r0 do_configure: configure failed
Message-ID: <20200306180413.z4e5km64jcm6azbv@jama>
MIME-Version: 1.0
User-Agent: NeoMutt/20180716
X-Groupsio-MsgNum: 48705
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="toqsx5ubbpgwpyqs"
Content-Disposition: inline

--toqsx5ubbpgwpyqs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 30/10/2019 06:25, star at gmx.li wrote:
> > Build of image failed, I got strange and long error messages like:
> >=20
> > | from distutils.sysconfig import parse_makefile
> > | ModuleNotFoundError: No module named 'distutils.sysconfig'
> > | configure: error: Python failed to run; see above error.
>=20
> > a) What goes wrong here and how can this be avoid?
>=20
> distutils.sysconfig is part of the standard Python library.  What=20
> distribution are you using?  It's possible that you've only got a=20
> 'minimal' Python installed instead of the full thing.

I came across this old thread when trying "bitbake world" in really
minimalistic docker container with ubuntu-18.04 where I've installed
only the dependencies explicitly checked by sanity check and HOSTTOOLS.

And indeed python3 package in ubuntu doesn't depend on
python3-distutils, I don't know how "standard Python library" is
defined, but this wasn't explicitly "minimal" python, just the default
what you get with python3 in ubuntu.

Maybe it would be worth adding python3native in icu to catch issues like
this?

Luckily it's needed only in zeus, because icu 65.1 currently in
dunfell/master doesn't depend on python3-distutils anymore since:
https://github.com/unicode-org/icu/commit/b4d41b0561b6e8de38b99850ce0e4be8e=
f536bb1

There is only one more recipe with this issue (at least in the layers i
was testing and that's:
openembedded-core/meta/recipes-core/ovmf/ovmf_git.bb
in zeus as well as master which is explicitly using python3 from host:
export PYTHON_COMMAND =3D "${HOSTTOOLS_DIR}/python3"

and then fails with:
| Python reported: "No module named 'distutils.util"
|=20
| GNUmakefile:11: recipe for target 'test' failed

--toqsx5ubbpgwpyqs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCXmKQnAAKCRA3VSO3ZXaA
HLakAJ4qI18B74Q0bnAnvkBi7CKjYNy2OACbBBbHAvjdhp3Td8IbrqN+BsYxC1M=
=JK9X
-----END PGP SIGNATURE-----

--toqsx5ubbpgwpyqs--
