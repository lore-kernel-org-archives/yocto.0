Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web10.812.1587777015898508723
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 18:10:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eRwsh16q;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id n16so5458986pgb.7
        for <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2020 18:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:autocrypt:organization:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=vtGXcFBE/Tv+tiQ8iGHtisTfJ/cUczygt/ysNT7hPGY=;
        b=eRwsh16qzhzl3Al/vAbdm/dcU98nY3aKj+D4GNqRK7Mm/Vn+Ti41p924XUYNzAq2zS
         uNQa4A9hvrAZRrD5uMUD4VGdZgkkShK83yTuxVN1M9Wa07DyCqt8YLkpUfO6SemIAQE9
         Z+IaWUrFgtz3tNRqnmAssCF+2v1HnFbhsh5LcZ80+fvj8njjhT7ubhFZeyUhJgj89NI+
         YT84MOY83T9Xy7LifvPBCZzozMfFGoIOs9auG04Qb4ADChG/XaZp8YWA6bnMJ0Dd6uux
         Bx/3rXKfpO2erbhxXEFjQ2hGSNRthXJCMSxFbpRBbT5lPldrX/ElHa4IIm2GoiG4cmtO
         HPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to;
        bh=vtGXcFBE/Tv+tiQ8iGHtisTfJ/cUczygt/ysNT7hPGY=;
        b=ebJ3M1NvGAozemnkRAgwLCyLhxUXmGpdFAB50c1fmuz2wREnNZKE59LMCqePQCSoMa
         XdYWCK67h1j7E128lrjwud896p1rARAkR0T5V1yZu2RA9u97Kns+ltmj8lNDVAJfWryF
         yRwarv6Uh6t3HRaU0Q9A2eXXABY44u7YS99WgVs4hklC4GJ9PO8Q69YYSA0QXOdZPWGw
         Jw9Jg/6tl7feRP0XlyJqmqvLyxHyZyywaFbDuSHAkeKVEwa378ZnbDvpgpQvjG3EeoD/
         XYb8QTMFbAPxpVPd6v756wQzZkVQWajVq7jnbZgIkHHOD5QRxD/xlG57vZqsSBiO5Z8d
         pMrg==
X-Gm-Message-State: AGi0PuYWc/vXAhm+45c9fnHKThaPX8/XyaHHEUv0OcrfmHZPTwzZDj/+
	v//ed4Pvh7noNdYTGDRduNEvfnvu5r0=
X-Google-Smtp-Source: APiQypJwJUbhGXw6lxmWxiNuhB3YD0ubz2kh7xPuQfYBTOa1mMYVzFPvrbLyEyx7/vMEYwPgRoshdg==
X-Received: by 2002:a63:4c1:: with SMTP id 184mr11728122pge.156.1587777015026;
        Fri, 24 Apr 2020 18:10:15 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ac76? ([2601:646:9200:4e0::ac76])
        by smtp.gmail.com with ESMTPSA id y26sm6539713pfn.185.2020.04.24.18.10.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:10:14 -0700 (PDT)
Subject: Re: [yocto] meta-javascripts
To: Per Hallsmark <per@hallsmark.se>, Nicholas Krause <xerofoify@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <lz1S.1587619716614083620.LFsb@lists.yoctoproject.org>
 <a1d40a2e-aa70-d56f-4761-9eb2d4726dac@gmail.com>
 <CAPaVuL8QziP+S9oJAmUNAQmFh5HSjwSDaSxpABLot0Cmpucf7w@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 mQGiBEqXaJERBACUvFofpD3FsxD9675wcPv+rzguIfsRWilrrpSZ61JHjLHwkUnmDLpLSdfv
 Zw2ZDXeaQbGU2thctxXTyYf6N1fY6P5Tww6mWKInuGU3yAv8Mg5p+Xd8itwOoVR41DOBkftV
 miO2G7FtXsnqonB6F43a2yvc+h9OwPRVxAFss5mSmwCglSXPWndN1Ka4M/hzt7g+FmeyEssD
 /1V/G8lLeAS9gQCNjS7jch+uHMFJuWgHzMXdw99e1ywlIkvXN77NPkW+FLVxKxNAHyWZZ3wO
 4BQ9/GVR2y0s/rrF1lQSIcfnUmzZrh/Bh0b1wVOSLhl0Vx4MI0/MbdL3xx17JAWy+s67evuK
 ER4Y8ycTq3gbIGJtVrIJjWPCzWF8BACAA2u52uDmJ2pS8SIhEW0jMK/zYQ5Od9l9fM6BmS6Q
 jnIlzzcuMvRdZn2IrnuE/YoC8yyzBK3mN+MVc2jWN9rfSg6ml7r14Zjem9Ee0O5Ca7Jg3ZvN
 6g3vSlrRJqKgsnq3vdatDF+5rd0NJ7ZKUy6x2i1Pavgtv3qaAgPGa1qQdLQdS2hlbSBSYWog
 PHJhai5raGVtQGdtYWlsLmNvbT6IYAQTEQIAIAUCSpdokQIbAwYLCQgHAwIEFQIIAwQWAgMB
 Ah4BAheAAAoJELsFM1WRnTMUhOMAoJJleT2hdT7uw9Fyn26+w+/K4i0gAJ9wRt36PqfjNe90
 4evWolFf5cMmp7kEDQRKl2iREBAAjjbVQ55RAouAe0l0nPsKkWdtMuUHwBdLBkpF3rGM/f0u
 DlPaQzYGLjKT7xDoyRh8x2tFwWvOfiqrZFArxX8e4fsACmJdL0kahTbxC/8SmSWVHXi10JUX
 2fmZ5ufzlXAnl0ivXkWnrUfLX9DdNwL6DR4DeFK9qBFqtHmK5TQXMu87G+MJwgNJIwCKQX4i
 I9YJILMuqInVwaxg5/ALdKfE3QPmtadnKb/cuUm4gICdaJeyQfI6qdYLcSuyBWCbAEMM1wmh
 RAhw5RgzMRRIquZlxPt7lZkXXjals7M6juh87VGRoIJwYoQi97Q1ZHzPBo3AlMPe3haNihkd
 6D3lwvdB4pmjYG4I6bHCgtEhEss3hHvsBaqV9jV1dMUSs95ZxQtT9qtkOxydHgOlwRX3CG+r
 584J/s4vWm+iPQtLvDY1u4UFwOLjCOFe709BcLJdPR2GQiOPoyZF7lVY8nu/dtTrAEuiZFk4
 HD7afUlcr/IKwPWID1V9kRLoDlzdbNuoUy/XfVErK8wcoiGowerEMed4ajNoKxCxBweIkjxq
 KMt8CKgp30n9UxljglEcgf+/UumwSHxqZcCPVbWXtdhy/hwMk27shOdUvaiynep8OsVGqAzS
 seL4qZIJ5XzCcyV4KJCmwmdQzt5+ZylcVmeq6R4ob+d8JIDU0ELqdwxwIDiTj0cAAwUP/inN
 3/r8IFDms4g5xafPrCw31o2jIYahkIfN0WVPWI5K/hFCo2PczPStzDcTsZx7mN2qwpGOe3Lz
 9/0krZeksrz1ZIHNi5LTasuzXyFJbO05Y+eiHgV1rV7VVEipOrpV1496w112Y/0SZ/FhOfEm
 EA1TeDejy2sZiTOUW4gyzewbHMpE07d27F2qM2NfMMhKQCcvzr+N0VJmAOeATEivxPUHn+Dp
 X/NniBWOcWv++wHlxv0Xr63gsRKSt62eFKGjgF50hHD5lM31ziqycc42sbgcqAZ+rYFlb9k0
 3JcKyq1XdVUSm+xcC2DMSstTI6iqFMGo6FnEO+gyE5VdceajbuZ1GOmJXJUCyYIdGuvCyIoK
 jTE9lcIYSEEDZQej5xdiGk9eUz0MPmZEUwSR/nLmmwjHDJi0prVvs9xqe5bvS3ddPAqepvZ5
 UrisgtWD+TDI8ktkt5VLh3XsG9FuXUVAaahOvFMGiZtsioDXTorL4AfMeuA9f+yLwrCVQO3x
 mH/WA0Tgf/5gYB3t9KoHPjLBNruVOuQbAjubi0pvRAOUcMdBfmPofksK4uWS1zGtPWS7Uu1c
 suq7Hnb7vszlFYdbzeqjY81LSyxA0kcpgJxdLv9o7UuCEnHDZLPbHdQ83PmyyBKSI31AKe7R
 XlQNlB5grwH9o6uNtPbV7q/uRqmKq5EiiEkEGBECAAkFAkqXaJECGwwACgkQuwUzVZGdMxR1
 VACcCkdaO3rb8/gRprldmAH6eR49eo4AnjD3h3aTwv/1bl+BAz1twmZmz8ul
Organization: HIMVIS LLC
Message-ID: <dffc6247-a4e9-bd05-af53-5e502416aab8@gmail.com>
Date: Fri, 24 Apr 2020 18:10:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAPaVuL8QziP+S9oJAmUNAQmFh5HSjwSDaSxpABLot0Cmpucf7w@mail.gmail.com>
X-Groupsio-MsgNum: 49227
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="ylEIKBdJeRuQcHZ4jSDayBvjt2GOMVT3V"

--ylEIKBdJeRuQcHZ4jSDayBvjt2GOMVT3V
Content-Type: multipart/mixed; boundary="ITa4CXGToajyOaOfS1IhfLASfDN4ZxQPW";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Per Hallsmark <per@hallsmark.se>, Nicholas Krause <xerofoify@gmail.com>
Cc: yocto@lists.yoctoproject.org
Message-ID: <dffc6247-a4e9-bd05-af53-5e502416aab8@gmail.com>
Subject: Re: [yocto] meta-javascripts
References: <lz1S.1587619716614083620.LFsb@lists.yoctoproject.org>
 <a1d40a2e-aa70-d56f-4761-9eb2d4726dac@gmail.com>
 <CAPaVuL8QziP+S9oJAmUNAQmFh5HSjwSDaSxpABLot0Cmpucf7w@mail.gmail.com>
In-Reply-To: <CAPaVuL8QziP+S9oJAmUNAQmFh5HSjwSDaSxpABLot0Cmpucf7w@mail.gmail.com>

--ITa4CXGToajyOaOfS1IhfLASfDN4ZxQPW
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/23/20 12:01 AM, Per Hallsmark wrote:
> Hi Nicholas,
>=20
> Thanks, I was thinking as providing it to Yocto but not maintaining it
> myself. Too much other stuff going on
> so it would be a slowly updated layer then.
>=20

Give it some time and see if someone steps up to maintain it, if not you
can also put these recipes in other layers

> BR,
> Per
>=20
> On Thu, 23 Apr 2020 at 07:59, Nicholas Krause <xerofoify@gmail.com
> <mailto:xerofoify@gmail.com>> wrote:
>=20
>=20
>=20
>     On 4/23/20 1:28 AM, per@hallsmark.se <mailto:per@hallsmark.se> wrote=
:
>>     Hello fellow Yocto developers,
>>
>>     To be able todo efficient HTML5 programming we of course needs
>>     some javascript libraries.
>>     I've not seen Yocto have them packaged so I made up this idea of
>>     putting them into their own /usr/lib/js path
>>     with a subdir for each javascript library. It is published here :
>>
>>     https://gitlab.com/saxofon/meta-javascripts
>>
>>     With an example usage here :
>>
>>     https://github.com/Wind-River/device-remote-gui
>>
>>     Would this be something yoctoproject is interested of perhaps?
>>
>>     BR,
>>     Per
>=20
>     Hi,
>=20
>     I'm not a maintainer but you may want to see if you or other=C2=A0 p=
eople
>     are able to maintain
>     then as a open embedded layer as part of the index. Not sure if
>     someone else can
>     chip in if this is a useful recipe set to add to the open embedded
>     index.
>=20
>     That would ideally be where you would want this to go if this is
>     useful and maintained,
>=20
>     Nick
>>
>=20
>=20
>=20
>=20


--ITa4CXGToajyOaOfS1IhfLASfDN4ZxQPW--

--ylEIKBdJeRuQcHZ4jSDayBvjt2GOMVT3V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXqON6wAKCRC7BTNVkZ0z
FFJFAJ0ZxDurQceIxsLMUs1MfLa1cFz48wCfXKQnebATWqc7IeXsNK4jVS0DBz0=
=Y/jp
-----END PGP SIGNATURE-----

--ylEIKBdJeRuQcHZ4jSDayBvjt2GOMVT3V--
