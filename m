Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.15421.1611680452225536922
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jan 2021 09:00:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=diaShZfm;
 spf=neutral (domain: ibeeto.com, ip: 198.145.29.25, mailfrom: rudolf.streif@ibeeto.com)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A8F5038C04C2
	for <yocto@yoctoproject.org>; Tue, 26 Jan 2021 17:00:51 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id b17so3566849plz.6
        for <yocto@yoctoproject.org>; Tue, 26 Jan 2021 09:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=CfasEwA/zwbZMwrzdh0ShioiK6nfybdKOF/2ebf8oL4=;
        b=diaShZfmbF/tdyBIJeG5NvB4yUA7b1ytzJ36HaVhqxz+tO7Dgcfy+rhsOFitgG3e0D
         4mvRXeLvVl12D4Zd9m3Vn7UGqjCiBNZkp5tyw+FVSHd6yNftmizu2icBubUU23Ood0xg
         aznbkTqhlIZ1fwejAWdKJ41ypJTwaYziNSiLBwhM14ZGjt64GqNQO8aBwi7DIqehPKwK
         Wn6Nlk/dFQQniPyuHK8q8CoKbk6i97vYWwVi0YwtCVT9vZXDyfzpi9qXa9fQLvFpIWGB
         Qq+jYXr8BltiEyEfAf2aNMgUuYbrM8HVdVx3Cb4nYtu4ni/WdEpTPaYmCGLZ5LUCSzqq
         d6lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=CfasEwA/zwbZMwrzdh0ShioiK6nfybdKOF/2ebf8oL4=;
        b=mpPd0jKTwlYZPVeKykSremw4dCRvJRhy5RfS4ux3Imi8KAhJAUTj7+S6+GRiobLm9r
         FGKDVwncUnvPL3JraUpXDjQdxWOgIN9lCZFai/0YpPD0f2Dr27DPm30YiiPnHN5J/D6E
         PhxwFcU2RUZGrAJ7plXfEUA3D3mGuMFuGolNHx30fPjmzgmJrbeGaScYpJB+2apvhFWz
         T44SfkH0EpRZWu0sv6CBr72+F+sRbTqCseUNFJ7OgMyzHiuFozNuAPIqtO9M7kDo4HtC
         uQ+YBiG98E3/SIfvqpXs2/xRad3zvt3nCjxhT4eBa7byVzPyxHzCEMTXPkKXOqeaM37/
         y6mw==
X-Gm-Message-State: AOAM531RYGeBFzki+VU4mIG45ia0qKtsw5wNZLT+wGos2NOmsGqoGD51
	1wTonV7MbYm+16Z/Qsj+G8L9V1j4aD/loA==
X-Google-Smtp-Source: ABdhPJxqc9DTd/o1NTozDWPUAm2RKPsz/frYlvDhP5pJsgTKj+UW8AR/lQgCdovQBtparOPwY5ZSkQ==
X-Received: by 2002:a17:90a:a483:: with SMTP id z3mr779021pjp.140.1611680450707;
        Tue, 26 Jan 2021 09:00:50 -0800 (PST)
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id x67sm9687137pfd.106.2021.01.26.09.00.49
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 09:00:49 -0800 (PST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Subject: openjdk-8 multilib
Message-ID: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
Date: Tue, 26 Jan 2021 09:00:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
X-Groupsio-MsgNum: 52101
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="DQx4P9y3LgLt6YpPnm4q6GGc023RVdKky"

--DQx4P9y3LgLt6YpPnm4q6GGc023RVdKky
Content-Type: multipart/mixed; boundary="n8huwZSegmlNDmzJChBTIZIKwSQW02hCr";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
Subject: openjdk-8 multilib

--n8huwZSegmlNDmzJChBTIZIKwSQW02hCr
Content-Type: multipart/mixed;
 boundary="------------49D366F898542D16973922D6"
Content-Language: en-US

--------------49D366F898542D16973922D6
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I have been scratching my head over building openjdk-8 with multilib for =

an aarch64 system. Essentially, I want to use 32-bit OpenJDK on the=20
64-bit system.

Theoretically adding to local.conf

require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"

and then building lib32-openjdk-8 should do the trick. However, it does n=
ot:

$ bitbake lib32-openjdk-8
<omitted>
ERROR: Nothing PROVIDES 'lib32-openjdk-8'
lib32-openjdk-8 was skipped: incompatible with host=20
arm-fslcmllib32-linux-gnueabi (not in COMPATIBLE_HOST)

The openjdk-8 recipe sets architecture dependency by selectively=20
including an include file:

INC_FILE_SUFFIX =3D ""
INC_FILE_SUFFIX_aarch64 =3D "-aarch64"
INC_FILE_SUFFIX_armv7a =3D "-aarch32"
INC_FILE_SUFFIX_armv7ve =3D "-aarch32"
require openjdk-8-release${INC_FILE_SUFFIX}.inc
require openjdk-8-cross.inc

The include file for openjdk-8-release-aarch32.inc sets:

COMPATIBLE_HOST =3D "^$"
COMPATIBLE_HOST_armv7ve =3D "arm"
COMPATIBLE_HOST_armv7a =3D "arm"

So this should theoretically work as it does when the recipe is built=20
for native aarch32. Except that it does not in the multilib case.=20
Although building for multilib the recipe includes=20
openjdk-8-release-aarch64.inc instead of openjdk-8-release-aarch32.inc.=20
If I force the recipe to include openjdk-8-release-aarch32.inc=20
everything works fine, except, of course, that OpenJDK cannot be built=20
for aarch64 anymore.

I am not too familiar with the inner workings of bitbake's multilib=20
code. That's why I am looking here for assistance first before spending=20
a lot of time digging through the code.

Thanks,
Rudi


--------------49D366F898542D16973922D6
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQpe=
+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy+7=
C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNndn=
K
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTdK7=
j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKIFN=
0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHAgY=
V
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexCH3=
r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d38=
L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR8=
4
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x=
5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjV=
L
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTq=
k
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIF=
p
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJS=
H
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mC=
B
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAk=
F
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LY=
U
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9Mby=
E
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzYf9=
m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41tsC5=
d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------49D366F898542D16973922D6--

--n8huwZSegmlNDmzJChBTIZIKwSQW02hCr--

--DQx4P9y3LgLt6YpPnm4q6GGc023RVdKky
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmAQSsAFAwAAAAAACgkQjYyoKSczm3Uh
dwgAiFyqlx2KvBomXOCemg2yUFFSe00w6XZ0oibJM3vqxrMeD66Q23rmklm+CZy2sekFA6J0KMVv
w3x1LyFvb3EWGnciRL3QibP3A6SUFIj1jb194ruoQWVKmsGZT7eekwvqM0M0RAgPFqJCb4RV7N3h
oOqbSb4rBqst1NUEN3av/x3ZXJgak8mQ2B8s68NOry27DP6ncbFmvV+vSUTyYvu901GoTPryJhbQ
o72stY+fykX6IuS2VsYjoyFMJRwczBmmuRtIP2Hi4mA4WgsscseUqS3aSiO6pwsq5X46KfJwTsNO
0FYXk1RGsjKyXTua9azZQkl4fkA0s7T1FP1BDzqVgA==
=XPtr
-----END PGP SIGNATURE-----

--DQx4P9y3LgLt6YpPnm4q6GGc023RVdKky--
