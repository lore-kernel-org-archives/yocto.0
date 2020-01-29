Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
 by mx.groups.io with SMTP id smtpd.web09.7670.1580315315001172831
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 08:28:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=IXRLQaw4;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.195, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f195.google.com with SMTP id s1so8060574pfh.10
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 08:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=jf3tuZbY8bq1RgAgmAxZCqaOneha5yKW9hpJ8AY1kFg=;
        b=IXRLQaw40W9eKhtcHX1NwMBzyBo/NXlmecl196u4BOCORHSNi8LQvupmEMfaez0xwL
         X3kRE+UJVbdYSHBbIAAvuwZxEkwsyB7p52u/JJskCYy6I3BMihUNPR/ksIKR9pCccs8l
         aqZtWAxOaQ4JjV2qufawJR0fMzJIemHpEx9P6bI7t3TbzvBkjJ5DQda+qljgT0bo4d+E
         vPKn24IJoeoG4yhMXuPvMdpGObBhYLay19xoymr3hVspM7AWRtq3AYM4Kbm8a+1fIm3h
         0aechKhSkGDwADwO8Y9hRw2Pt512aA8vmlcu58n8xQXGDEDBd0wc5mWYQV7CpAFG27S6
         u6uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=jf3tuZbY8bq1RgAgmAxZCqaOneha5yKW9hpJ8AY1kFg=;
        b=NYAwYuRqpmplxp0HrPgLns6+9Nn/dou4bSt7z2ryM3nQkgoIN2PG72DloHVRxp3fuh
         q1ND/A2ILo1LU17AkXPAC9XfaqTU2Pv9oyQodyv2O9D2PRonZBrsIovL/e5e7OxFBr1N
         SN6GG83+YpM0u3MmWT+PnPl1vJqOJG0SR/KjwR0ZckQbx+jRXMCdbMaWaVWak7HjVKkX
         SQoY3pA92ge0SIwCY6Gncl3C0IhwZoSsHJgWZ8wVMi8kn0iqkBp8AbTnmNDURfwXKXdO
         ajFUMNKhrAUI2BR75EDQR44Pog12R2OxAzc2G3JWy6uoEhGPB8NwY4RSYcrCMby83F/T
         e2eg==
X-Gm-Message-State: APjAAAWtdywFz03A0T2JTU1nt1XFzSuc4sK6eEhMaHkf29qVwEZqWl6k
	JVNmZaZ9Gxcyppk2+72gOeBquJp8DSAbW0Xd
X-Google-Smtp-Source: APXvYqyAgqawGdHL1zCd9av6D2YlCZQb4eUMPSuh6G/MnRrBDgsmNqtVFCKiNqIR5CuYZkJKfLB/cg==
X-Received: by 2002:a65:6794:: with SMTP id e20mr31056933pgr.152.1580315313684;
        Wed, 29 Jan 2020 08:28:33 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
        by smtp.gmail.com with ESMTPSA id x7sm3293140pfp.93.2020.01.29.08.28.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 08:28:32 -0800 (PST)
Subject: Re: [yocto] permanently supercede kernel config with one of my own creation
To: Kent Dorfman <kent.dorfman766@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CAK4PFCXXZS3ZbU8PWXUX2b_Pw661SVfj8dO0CQ-GjNM3Zo+k=A@mail.gmail.com>
 <6c10cbb5-f8df-4c8a-c8eb-e14d29b75599@ibeeto.com>
 <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Message-ID: <29e8c82a-ec12-422f-ff2d-8a8455ff5068@ibeeto.com>
Date: Wed, 29 Jan 2020 08:28:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAK4PFCXsnem2CnNsHrFJmXDE4LeyU6xt8mBRzV0HiLCqivZPOw@mail.gmail.com>
X-Groupsio-MsgNum: 48200
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="xhHTMT8USlP7JnfvvkhRcsdx7wjvYES1M"

--xhHTMT8USlP7JnfvvkhRcsdx7wjvYES1M
Content-Type: multipart/mixed; boundary="MKm3KdMUWFiEX796gjgrC4nleesCSHkno"

--MKm3KdMUWFiEX796gjgrC4nleesCSHkno
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Kent,

On 1/29/20 4:53 AM, Kent Dorfman wrote:
> I'd prefer to not go that route.    It's a modified "vendor supplied"
> kernel from an internal tarball source, and for IA/QA reasons we're
> NOT going to refer to any external GIT repos.

Well that could be an internal git repository too. You weren't specific
about that. SRC_URI can point anywhere you like which could also be
tarball file:

>>>>>

DESCRIPTION =3D "Linux Kernel from Tarball"
SECTION =3D "kernel"
LICENSE =3D "GPLv2"

inherit kernel

LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd=
7"

LINUX_VERSION ?=3D "${PV}"
LINUX_RC =3D "rc1"

SRC_URI =3D "file://mykernel.tar.gz"
SRC_URI +=3D "file://defconfig"

SRC_URI[md5sum] =3D "3e8331759af56ddd621528b2c7015ae1"
SRC_URI[sha256sum] =3D
"3c524ee0446b4ea8288708fa30acd28647317b9724f2d336052130e164c83f29"

S =3D "${WORKDIR}/linux-${LINUX_VERSION}-${PR}"

COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"

<<<<<

Put this recipe in you own layer into meta-mylayer/recipes-kernel/linux.
It assumes that your tarball extracts into a directory
linux-<version>-<release> which is reflected by setting S. Typically,
upstream tarballs extract as such.

You have to write your own recipe since you are using your vendor
tarball. Which means you have to define SRC_URI as well as the checksum(s)=
.

But maybe you have most of it already as you are apparently building the
kernel. If that is the case and it was provided then you can use a
bbappend to your kernel recipe which provides defconfig:

>>>>>>>
FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files"
SRC_URI +=3D "=C2=A0file://defconfig"
<<<<<<<

You do this in your own layer and put the recipe in
meta-mylayer/recipes-kernel/linux and the defconfig in
meta-mylayer/recipes-kernel/linux/files
> Can someone tell me how to just replace the config in an existing
> recipe and make it permanent without creating/replacing the whole
> package?

Trying. :)


> I'ts a single file that has to be inserted/used at the correct point
> in the build.  I'd say it's not rocket science but that's exactly what
> it is for. LOL

Many ways lead to Rome, as the saying goes. But it looks like the
bbappend might be the best solution for you.

:rjs


> On 1/28/20, Rudolf J Streif <rudolf.streif@ibeeto.com> wrote:
>> Hi Kent,
>>
>> Create your own kernel recipe and provide a defconfig for it:
>>
>> SRC_URI +=3D "file://defconfig"
>>
>> For example to build a bleeding kernel directly from Linus' repo:
>>
>> DESCRIPTION =3D "Linux Kernel from kernel.org Git Repository"
>> SECTION =3D "kernel"
>>
>> LICENSE =3D "GPLv2"
>>
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be=
7cd7"
>>
>> LINUX_VERSION ?=3D "5.5"
>>
>> LINUX_VERSION_EXTENSION ?=3D "-mykernel"
>>
>> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>>
>> SRC_URI =3D
>> =E2=80=9Cgit://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it;protocol=3Dgit;nocheckout=3D1"
>>
>> SRC_URI +=3D "file://defconfig"
>>
>> SRCREV =3D "d5226fa6dbae0569ee43ecfc08bdcd6770fc4755"
>>
>> COMPATIBLE_MACHINE =3D "qemux86|qemux86-64"
>> <<<<<
>>
>> :rjs
>>
>> On 1/28/20 7:15 PM, Kent Dorfman wrote:
>>> I have a yocto generated sdk that includes a customized kernel.  I do
>>> NOT want to play with incremental config files.  What I want is to
>>> insert a .config file of my own choosing (generated outside of yocto)
>>> into the kernel build, have it use only my .config, and then have that
>>> .config remain as the persistent authoritative config as part of the
>>> yocto layer.
>>>
>>> I have tried a variety of different approaches:
>>> * using devtool, then loading my .config into the expanded source, but
>>> "devtool finish" throws out my changes!
>>>
>>> * doing "bitbake menuconfig", can build a kernel using my config, but
>>> it doesn't stay persistent in yocto
>>>
>>> * doing elaborate sort/merges on the yocto .config and my prefered
>>> one...undefined behaviour
>>>
>>> and the build always seems to revert to either the original yocto
>>> config, or a kludge of my options with a bunch of defaults I did not
>>> specify.
>>>
>>> How can I take my existing .config and force yocto to use it, and it
>>> only, forevermore?
>>>
>>>=20
>> --
>> -----
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
>>
--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700



--MKm3KdMUWFiEX796gjgrC4nleesCSHkno--

--xhHTMT8USlP7JnfvvkhRcsdx7wjvYES1M
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl4xsq4ACgkQjYyoKScz
m3VsZwf+P6Oq+B6Sb8Kb0TXSgnsKZzDqWhBThe9pwidTvKyI4w3xFAw2D4GiyxJF
OJvon1GNls74Baacrsr0QXdTn4BSOIPUqRntbjkIombDJ/b7Q6PHxz5/D8ESdWxz
K9+z3mIgMoDbKRtk5+TXHTvVcxwaD2S1cnMP7FnmHthCIy7ZSeIMQcx43RIzdOg9
PdWk9eboAfbcfzkYQKaiXmgL6K0Z17tVsc9qZsRvxZCIbyMQKaZJ+KqervWgDP7m
6xMD2hN57cytOCJqvZX+6Ofaii+b8vqylfIIiM190xhR23Wk7gO+c67Z4BEN10Vq
D3g0V/ZlVZUXO8AEmKDPi+QHtWCGhQ==
=Guy/
-----END PGP SIGNATURE-----

--xhHTMT8USlP7JnfvvkhRcsdx7wjvYES1M--
