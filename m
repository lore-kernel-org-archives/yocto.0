Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web12.1140.1587778353811016732
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2020 18:32:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uecUJgBr;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id 18so5671196pfx.6
        for <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2020 18:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=to:references:from:autocrypt:organization:subject:message-id:date
         :user-agent:mime-version:in-reply-to;
        bh=YgZw9mo0iJcfWjRldVrjuMnAxOhIufx8XD4uRhtsolc=;
        b=uecUJgBriS+Vjz9Hex+PsDle0AyZDMp9omqcrem9gH2/yrN9P9mrAVwlJZkqfCd3KI
         pf08JKFYgF/b9S+xy8GbzqPow/9Beh20PozqqCw+c/qkxKiFYiWCpFlwGGSEpWTXcjYb
         /6S7m0zO3mxv5k86n0+d+uRW7Ugk13VSElXcftmVr/8knzQOP2sSiF2kGjBekjxpotdp
         DSoBMELlxSiu7YLgZ08gr9vNStyXQvGpM37/B1DGjA6YqajCiixCMWCCHi/NMDmzJUrE
         jqyoTJWig0d9eu7YaS2aWuekg7EUF0aek8ao2H0t9BFhbf9oz2DCz1ST4WWJnZ/Fm+PS
         TgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:autocrypt:organization
         :subject:message-id:date:user-agent:mime-version:in-reply-to;
        bh=YgZw9mo0iJcfWjRldVrjuMnAxOhIufx8XD4uRhtsolc=;
        b=adPPFmyTu4I9BLlN5DWPLi2Yv/nniegP0Qx6u7VmeX0dB2fOtbv1FzafoMytzH/usQ
         ohzAaur+CKqHcOyfQgWk4jQXuFTJ12sDjTMeUSa0jHgiG58x453j5uE4Tl8TONKUm60g
         w+jwrmw5NGBf1aw7fdhEz6XrBDxrCtYZkWCFIrBU0EMW6eg/wT+31eBNGxN0/nfiNKRi
         QZuaER2ycEbPxwVut2veYe9PlqQ02vmk0Fm6jiZUCXljgnPnmM0uShGadWiBiQt4jOFP
         zSPYhCbEI2dl7Op+IltILo0xes3GZ6lqwKGtiC6eIUSnJRzDO1qkTx4H4aXs0qs2laOY
         B5tA==
X-Gm-Message-State: AGi0PubdnGd7iuBamRnMgCvikfQHeiBnZOZe50hxrV0azsqxPxPmEUEs
	L9ClZ5FzBwT+6w4tsrHAVcuiNDOhhoM=
X-Google-Smtp-Source: APiQypIkKX8ydxLmdPQx0WDXkiHxRmACM3dG+DKuApcXWEArKD17+WC1tbCkzV8sOogXG659pbe+vg==
X-Received: by 2002:a63:4c08:: with SMTP id z8mr11809472pga.175.1587778352566;
        Fri, 24 Apr 2020 18:32:32 -0700 (PDT)
Return-Path: <raj.khem@gmail.com>
Received: from ?IPv6:2601:646:9200:4e0::ac76? ([2601:646:9200:4e0::ac76])
        by smtp.gmail.com with ESMTPSA id 138sm6838368pfz.31.2020.04.24.18.32.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:32:31 -0700 (PDT)
To: Cguerin@middleby.com, yocto@lists.yoctoproject.org
References: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>
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
Subject: Re: [yocto] Enabling SELinux in an application #SELINUX
Message-ID: <972da3ad-4b00-db4a-ccd1-cda84cde96d9@gmail.com>
Date: Fri, 24 Apr 2020 18:32:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>
X-Groupsio-MsgNum: 49230
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="eR6yUS6cgCXnkpUBIbv1GCgPoirw9B1kR"

--eR6yUS6cgCXnkpUBIbv1GCgPoirw9B1kR
Content-Type: multipart/mixed; boundary="s2JYeKrjmyeTI4I0y5ARqV2RueReewA6M";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Cguerin@middleby.com, yocto@lists.yoctoproject.org
Message-ID: <972da3ad-4b00-db4a-ccd1-cda84cde96d9@gmail.com>
Subject: Re: [yocto] Enabling SELinux in an application #SELINUX
References: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>
In-Reply-To: <zCQm.1587495013762613098.vhAI@lists.yoctoproject.org>

--s2JYeKrjmyeTI4I0y5ARqV2RueReewA6M
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 4/21/20 11:50 AM, Cguerin@middleby.com wrote:
> I am with The Middleby Corporation.=C2=A0 We manufacture a wide variety =
of
> commercial ovens, ice machines, coffee brewers, microwaves, soft-serve
> machines and virtually anything you=E2=80=99d find in a commercial resta=
urant
> kitchen.=C2=A0 Much of our equipment has a touch-screen display on it =
=E2=80=93 often
> 4.3=E2=80=9D to 10.1=E2=80=9D in size.=C2=A0 This is part of an embedded=
 control system that
> includes a separate I/O board to talk to motors, heating elements, etc.=
=C2=A0
> The touch-screen control are most often running Yocto Linux with a QT or
> similar application running on top of Linux.=C2=A0 Recently, we have bee=
n
> asked to explore enabling SELinux security provisions in our
> applications.=C2=A0 In speaking with several of our vendors, they all
> indicated they don=E2=80=99t generally need to enable SELinux and have n=
ever
> done so in the past. =C2=A0
>=20
> I now know what SELinux is, but I can=E2=80=99t get a good answer if it =
even is
> needed to be enabled on a touch-screen application on equipment that a
> 16 year old kid generally operates.=C2=A0 We often do have USB ports on =
our
> equipment for software updates and some is connected to the internet as
> well, but I still don=E2=80=99t see how the security access provisions i=
n
> SELinux are needed for our application.=C2=A0
>=20

Generally devices having ports, or being connected to Internet can
become a door to your network and cause some serious damage, so you
sould assess the security needs for your devices, I would think. As far
as technologies needed to achieve security needs SELinux is one of many
options, you have apparmor, tomoyo, and other MAC technologies, and I
would think you should do some experiments to see which of these will
fit your needs to manage MAC. Then there are other methods to address
security concerns.

> Lastly, I'm not a programmer. I manage the business end of all of
> Middleby's electronic controls, so the aim of this message is to ask for
> general guidance regarding the need for SELinux or not.

I would think you need security, SELinux is one cog in the wheel and
there are other options, I would think doing some proof of concept
within your setups after you have done some security analysis, would be
the steps to take.

>=20
>=20
>=20
>=20


--s2JYeKrjmyeTI4I0y5ARqV2RueReewA6M--

--eR6yUS6cgCXnkpUBIbv1GCgPoirw9B1kR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCXqOTKQAKCRC7BTNVkZ0z
FO+OAJ0bIGRBuz5Jskd2PmnS0siykVdJCQCcDtcxU8cvl3RoB5ppJTLDNML6h5Y=
=fuIJ
-----END PGP SIGNATURE-----

--eR6yUS6cgCXnkpUBIbv1GCgPoirw9B1kR--
