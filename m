Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.6882.1595486639094793397
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jul 2020 23:43:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GSXZF3PF;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id m22so2575937pgv.9
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jul 2020 23:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:autocrypt:organization:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=iOxdHnqTYGMUgVyqBh/YvhWmuzD2UPuG7uIxUlZpa4M=;
        b=GSXZF3PF0/8eErnVeKeUvZRlf4dwi34WFwiBPojA6D0xodxSoJwl5UfZAS7EM5p9a3
         4RLpJ3mWqE53MhBwXAS5IVKdReFd3QsOC9mJRtuEsTvf9JyFXjMrY445tDN9M6Nyi4uO
         xS9jP/ulZQfp5VEV39KVxtkIAKrRD9VejdEHhKeUGSza3W8t0usq20bbVj2lMLyMgsKY
         HPGokAPzW+gZhr1B6fpNAQFijEijJyxFBvGqoYtHuKooN7KVlpJ658iXqH9lK1TtpEgX
         90kEuF5XWhdMhVmDy+/td2hbYKcKNNggDdNFoaKmUdyT1BwhuYolT4FVNIttpO2/eFGW
         Hhxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=iOxdHnqTYGMUgVyqBh/YvhWmuzD2UPuG7uIxUlZpa4M=;
        b=qzK53Wah/IknyBXUtADy0GbtP7gm3w7zUeunhjxlLpWDns6Le+2CQiUenRVBMbPO8q
         5iX+TwwNiD3geqF1SIGJdFTjgAY4p12q4/FKZVxcCQCjZr3xeuTqJ2gv966HTX/swVTR
         MrVz+uLVdWhBOd/34GUv+UMkl7q76UGbiTnVCQBuoo+ofOiffRoZkH8FLXPAz/UR2Xh5
         lhuGYvz+bYydWKbMO0sdrdEaeR4+xPMmvase9Ei+MJydtRDIREjl9f+NW6APjbJiWKuP
         mZY99WhxSevyrHS0f/PsdVqoAAO7Qht05ce/UFWqp+26JjwOxsPOdNRVeIbbrUuLtsre
         UExw==
X-Gm-Message-State: AOAM530uQGoC/ITJym8j9+cQZRk/LTUzXcLsjmSo4tv0cvTLd7jpsiv1
	cCKVWqXzRmBU1gqQLeFbgyMbzrR9GhE=
X-Google-Smtp-Source: ABdhPJzLEWW3JAD/8tIKak/zobnFMz0jasmtttnHK8dpjoBWqGP5oSybdRvDoshumQxYU0Mp03N7Zg==
X-Received: by 2002:a62:808c:: with SMTP id j134mr3040101pfd.7.1595486638157;
        Wed, 22 Jul 2020 23:43:58 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::fba5? ([2601:646:9200:4e0::fba5])
        by smtp.gmail.com with ESMTPSA id a13sm1715483pfn.171.2020.07.22.23.43.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 23:43:57 -0700 (PDT)
Subject: Re: [yocto] Yocto support
To: yocto@lists.yoctoproject.org
References: <CAA=hcWRj73c45fw3oAjr5mCHAF64jifPgsDODKQnBokgan0aCg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
Organization: HIMVIS LLC
Message-ID: <f79dcbb0-d328-f435-bdde-10874637c440@gmail.com>
Date: Wed, 22 Jul 2020 23:43:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAA=hcWRj73c45fw3oAjr5mCHAF64jifPgsDODKQnBokgan0aCg@mail.gmail.com>
X-Groupsio-MsgNum: 50062
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="KP5dfeUUyjGKDOVfXuzyt41HcDbJowGru"

--KP5dfeUUyjGKDOVfXuzyt41HcDbJowGru
Content-Type: multipart/mixed; boundary="NF7wriIU74iHqeB0DFzV3IQvdQp0jvHlz";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org
Message-ID: <f79dcbb0-d328-f435-bdde-10874637c440@gmail.com>
Subject: Re: [yocto] Yocto support
References: <CAA=hcWRj73c45fw3oAjr5mCHAF64jifPgsDODKQnBokgan0aCg@mail.gmail.com>
In-Reply-To: <CAA=hcWRj73c45fw3oAjr5mCHAF64jifPgsDODKQnBokgan0aCg@mail.gmail.com>

--NF7wriIU74iHqeB0DFzV3IQvdQp0jvHlz
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 7/21/20 7:10 PM, JH wrote:
> Hi,
>=20
> Does Flextronics https://flex.com support Yocto or not?
>=20

perhaps best is to ask flextronics support team

> Thank you.
>=20
> Kind regards.
>=20
>=20
>=20
>=20


--NF7wriIU74iHqeB0DFzV3IQvdQp0jvHlz--

--KP5dfeUUyjGKDOVfXuzyt41HcDbJowGru
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXxkxqAAKCRC7BTNVkZ0z
FJ1rAJ9t7IYGak0rPDm5MSmDIUiOMY2oSACbBjntPHkmcJs2IGxtBN2nqZTFON8=
=DH0T
-----END PGP SIGNATURE-----

--KP5dfeUUyjGKDOVfXuzyt41HcDbJowGru--
