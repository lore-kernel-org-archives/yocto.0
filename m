Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.5373.1605961118274024605
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:18:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=mEhs1cZv;
 spf=softfail (domain: lists.yoctoproject.org, ip: 198.145.29.25, mailfrom: yocto@lists.yoctoproject.org)
Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1B72A38C069E
	for <yocto@yoctoproject.org>; Sat, 21 Nov 2020 12:18:37 +0000 (UTC)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 04:05:12 +0000
X-Sender: bounce+53643+51491+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 10866
X-Received: by 127.0.0.2 with SMTP id GYmYYY3619394xFjqK0YbSAP; Thu, 19 Nov 2020 20:04:57 -0800
X-Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.20459.1605843495544080083
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 19:38:15 -0800
X-Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9F98B38C0847
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2020 03:38:14 +0000 (UTC)
X-Received: by mail-pg1-f171.google.com with SMTP id i13so6127056pgm.9
        for <yocto@yoctoproject.org>; Thu, 19 Nov 2020 19:38:14 -0800 (PST)
X-Gm-Message-State: LYrsLSHDbJvwRcJVlAE5lObex3618059AA=
X-Google-Smtp-Source: ABdhPJxuzo/CuNaXQ9cXUJA36ZTgcxT9ZRj2/BRlhV5s9Dyqta87UukWayfd+mGFZBwAleiX0H1BSg==
X-Received: by 2002:a65:42cd:: with SMTP id l13mr15239802pgp.444.1605843493706;
        Thu, 19 Nov 2020 19:38:13 -0800 (PST)
X-Received: from [192.168.4.197] (ip68-8-180-115.sd.sd.cox.net. [68.8.180.115])
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
Subject: [yocto] Hardware video decode on RPi3
X-OldMsgId: <0fefb48d-4531-5424-796f-ffd02c40dd0d@ibeeto.com>
Date: Thu, 19 Nov 2020 19:38:11 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605845097;
 bh=7GaivI++FI6D4OYsv/giO168nmr7nsaoSJv0gQW1Pew=;
 h=Content-Type:Date:From:Subject:To;
 b=mEhs1cZvbzTg67BumoAH4kgwUe79F/ma2SSCLEDxpxoB/lGVpd3LpWBMZvAQkXZW288
 Jmnsj6RgOoC6jgWcCi/2i5OVoNaXyp+K30Fnq54/r37Z4ws4Ya62i/YXW0GmSWUeZg7l4
 OOggNHS9jE9VqPOHMOWawxdu+e6pkQT8ErA=
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <be2eac43bcbc4058a9ec87749cec1d77@Exchange.sewerin.de>
X-Groupsio-MsgNum: 51506
Content-Type: multipart/mixed; boundary="gf6i3r7S48Tcl0d4ONry"

--gf6i3r7S48Tcl0d4ONry
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
location=3D"/home/root/kiosk/kiosk/videos/bunny.mp4" ! qtdemux ! h264parse=
=
=20
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

--gf6i3r7S48Tcl0d4ONry--
