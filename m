Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.20459.1605843495544080083
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 19:38:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=W1uKs4mL;
 spf=neutral (domain: ibeeto.com, ip: 198.145.29.25, mailfrom: rudolf.streif@ibeeto.com)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9F98B38C0847
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2020 03:38:14 +0000 (UTC)
Received: by mail-pg1-f171.google.com with SMTP id i13so6127056pgm.9
        for <yocto@yoctoproject.org>; Thu, 19 Nov 2020 19:38:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=A0MzFWIBjbR8rcrUOCCBWKWdxcQXr/WWio9OZ7+jLYs=;
        b=W1uKs4mLYsiCLEqr8X6wuyzRZZMZyitJSCifD7KebRbhfNAdM1G2sSGU4xs1vB0z8K
         XBP4YAxx/JkiwO0zjsYoBt0aDKQZUDLnwXGrhieiLJU6jWbm2Ow7j0pejE01sijeszoF
         /nrpsaWtS3Yop8HI1JAEXRGWZSc1tsklkESOMd0DQNwAL7vVP5+5zmgCqA3TClWa6wvt
         D9cIKuAwMIeXqr4VTm9LzuFtTZPc1Ex1Ly3edbHL6rNbSUih8S7VorNivOpe8pCF+Zbz
         cyd6Ra20mjrRcr5R04JlGFDG5DhkccM0ZmOHHjnPinKYFl2ZDWrCUAoxvEnul7kSJqxE
         M4lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=A0MzFWIBjbR8rcrUOCCBWKWdxcQXr/WWio9OZ7+jLYs=;
        b=SHYBobVJDeoDtC3M2wSQlh71AVUws3zlxsJ9/JDAmDEqAdq6lfW3+TJfDdOc5g1QP2
         8R0cNND/gXKHCf/OUFDYqEaPGDDPx6dK4n2wu+laeZApxRsowhtaN8CPga08p3B+SGb0
         zqG3bZG7irvOwZJYlcIEFztsdKDhewmjc64Oh/kOYggffleDEHtFH7ZAl/tSDC1Gmzle
         7ap0Xrk9AbsjU90J9ZO8+ZHSKihMp1BUnJD1zv0+vbriRF57dsvtrZRrZQDoFWXrY93F
         IXUFvDJhbogaMzQwxlRm65ad76C7ezP+QFRsYxHf3KuYKeEphx9fGKDDX8cIXh8o8xtM
         BbUw==
X-Gm-Message-State: AOAM533GobmUETAXG1rib05wHLFHbi+0syC1uCes1Uoql6ncLm0uhCG5
	9ZSPxDlrjD0L83VogZ2X6UAE0cgYKs2gbOye
X-Google-Smtp-Source: ABdhPJxuzo/CuNaXQ9cXUJA36ZTgcxT9ZRj2/BRlhV5s9Dyqta87UukWayfd+mGFZBwAleiX0H1BSg==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr15239802pgp.444.1605843493706;
        Thu, 19 Nov 2020 19:38:13 -0800 (PST)
Received: from [192.168.4.197] (ip68-8-180-115.sd.sd.cox.net. [68.8.180.115])
        by smtp.gmail.com with ESMTPSA id d9sm1451131pjh.9.2020.11.19.19.38.12
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Nov 2020 19:38:12 -0800 (PST)
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
Subject: Hardware video decode on RPi3
Message-ID: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
Date: Thu, 19 Nov 2020 19:38:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
X-Groupsio-MsgNum: 51491
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="LG4aCP8OcUV643s5Zs6BZe60m6pydXllr"

--LG4aCP8OcUV643s5Zs6BZe60m6pydXllr
Content-Type: multipart/mixed; boundary="fXocNYAhiIH5i7aepe7RmoC0cVWOWV9KU";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
Subject: Hardware video decode on RPi3

--fXocNYAhiIH5i7aepe7RmoC0cVWOWV9KU
Content-Type: multipart/mixed;
 boundary="------------989C1DF41A3D1EF0FB4A425D"
Content-Language: en-US

--------------989C1DF41A3D1EF0FB4A425D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I am trying to play back mp4 video (venerable Big Buck Bunny at this=20
time) on RPi3.

I added gstreamer1.0, gstreamer1.0-omx and the plugins to the image.

libgstomx.so is installed in usr/lib/gstreamer-1.0 on target.

However, gst-inspect-1.0 | grep omx does not return any results.

Consequently,

gst-launch-1.0=C2=A0 filesrc=20
location=3D"/home/root/kiosk/kiosk/videos/bunny.mp4" ! qtdemux ! h264pars=
e=20
! omxh264dec ! kmssink
WARNING: erroneous pipeline: no element "omxh264dec"

I guess I am missing something somewhere but I don't know what.

Thanks,
Rudi


--------------989C1DF41A3D1EF0FB4A425D
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

--------------989C1DF41A3D1EF0FB4A425D--

--fXocNYAhiIH5i7aepe7RmoC0cVWOWV9KU--

--LG4aCP8OcUV643s5Zs6BZe60m6pydXllr
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl+3OiMFAwAAAAAACgkQjYyoKSczm3Ug
OAf9F/2yJviCU3yFP8zOx+BhVYe/BEgxIxZUNsdEw0b9Vv+UBMFNtzOPvk3kswQwx6dsPg+dSmrO
O7lJ/xw5QAJYGzz1TiEYNwfXpoe8EwEYHkpQFhlV0paTnJlJnuDY5RaeTU+xjDmKVl22GUi4Y1Ug
aGrZMes6ynrhIow6k3KnAHq6xo8r9KCy3Ic4IPIBFJW+lutcWXucUc2OVXyEAQyG87upoU4DGU54
X2qhfxNFufFnDxDrQEszAfaD/WprJczKjlXvOyM0FwyPYcvzATymYWFQh1IQVW1EtFMT4P+W6vWE
NK4IbwW/HKpDPNCok+lEEWmhIxj0jHZL0c7kfsAFWw==
=CJSt
-----END PGP SIGNATURE-----

--LG4aCP8OcUV643s5Zs6BZe60m6pydXllr--
