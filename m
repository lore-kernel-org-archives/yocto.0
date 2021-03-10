Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.11070.1615392138919797008
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 08:02:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=AjKECsxN;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.177, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f177.google.com with SMTP id w7so5201603pll.8
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 08:02:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=vlG2++ZQpWULR/+rWOU3DOKT+LQFgJgx3NMUbN49m7k=;
        b=AjKECsxNJU43Y9q3atclKoQUZWE/uINzDYoMyhEDHdvpkM//m2MpJTCko/oLjy53/o
         VC43x8qECRcJzuDtT/Ps7CSX4U+8Cfv07cKkFEaB6TaYocAt6q5NS2mxGlh0DgAIw50H
         nL4q7AaVyfvBy2agphtewgJBzVyHUT7lk4bfxovC8PZadxAeIBa6t8QDLUjBk/2lgOqu
         Y5gThu/MPEq9TJrOlg5GWnQ9hPe8KvjxBbKSPrLIwhQW1bT/cXHf9HOQ2Ev2uAvXWfro
         DR9vz6R/P8xRUmPoGUnXSSHZ/qe2IuA+A88XVdnXYHEIRLKZaaEfJn7QyvjA+Crh8Wdg
         aoOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=vlG2++ZQpWULR/+rWOU3DOKT+LQFgJgx3NMUbN49m7k=;
        b=mkVptiKiMVxhMYdPvjZxu42wEnYEMUR6OgN4JECaMY5+yU/ruTnS/vvtofwh5HT+kU
         Y2DCWp22Gfzj3Pey/SrsDoPfrB7TJtL6wEcVR6Pm87JGEnnoUNKaBtAIpIcmOu7ptMoY
         yjb27ryF5yfckeQKChBHzgi4gCR1Lxq7QOIyniPoPursGdaeWmHc7gvdu05kV+J5F2+f
         Xfx2WpiycSkSRNwKcHHfLNunlwO+KiBRUP5s3Han7z4efM8vYfgEZbSpl2M3oiJXpSYV
         qfyYI5cH4MmbutawPs2XqSw+H+TxEEhRMiLaN3RiX1xEoTUQDb+KWfQCm/deVNZOfuFp
         Z9Bw==
X-Gm-Message-State: AOAM533BUoIojRacQGy77ZWLPjEjvCbBXG2NfBUNc2Yo87LtwJi1Yny3
	SCW/HkeDbB+V4p7rEfci2eaCV8MgogGfmeFo
X-Google-Smtp-Source: ABdhPJx3O+lHpadxxkXAI4P1g2BtxbIsB1/xtFxH1d4AWdGgujzkizbpdjKyAf9CgprDAndDaYHMnQ==
X-Received: by 2002:a17:90a:eb0b:: with SMTP id j11mr4172543pjz.62.1615392137895;
        Wed, 10 Mar 2021 08:02:17 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id n9sm3354815pjq.38.2021.03.10.08.02.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 08:02:17 -0800 (PST)
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
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
Message-ID: <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
Date: Wed, 10 Mar 2021 08:02:15 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
X-Groupsio-MsgNum: 52649
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="9gLEhL3YWDXbtpiRBvb3v1rycG5NDyvp0"

--9gLEhL3YWDXbtpiRBvb3v1rycG5NDyvp0
Content-Type: multipart/mixed; boundary="8DMfVQQaaKQVLtqkfb94RUTTD0jZQIK0c";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
Subject: Re: [yocto] Assign IP address at boot time
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
In-Reply-To: <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>

--8DMfVQQaaKQVLtqkfb94RUTTD0jZQIK0c
Content-Type: multipart/mixed;
 boundary="------------9BB6F8AD3D5537957E36C30A"
Content-Language: en-US

--------------9BB6F8AD3D5537957E36C30A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 3/9/21 11:34 PM, jchludzinski wrote:
>> To start, do you have the driver required for your network interface?
>
> Yes, the network/Ethernet device is recognized by Linux and the=20
> appropriate driver is loaded. If I use:
>
> $ ip add add 192.168.9.101/24 dev eth0
>
> I=E2=80=99m up and running. But I want the IP assignment to happen duri=
ng boot=20
> time.
What is your startup manager? systemd or SysVInit?

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------9BB6F8AD3D5537957E36C30A
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

--------------9BB6F8AD3D5537957E36C30A--

--8DMfVQQaaKQVLtqkfb94RUTTD0jZQIK0c--

--9gLEhL3YWDXbtpiRBvb3v1rycG5NDyvp0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmBI7YcFAwAAAAAACgkQjYyoKSczm3X8
lgf7B7VkJhUYunEHNRsVwtKNPFSyLTYV5kKQ6rrWuvJy3rgeBTP/CbMx/V5AmqGuVAI7CwvpFCEd
OciavOKOcj8wLer66ZohiIPo6vt0lrk0d2IFMwshvQS8UVvgDUh5RFeLDm4hd1UqfCdkq09+Qgsr
jmhOZXVx/097w9nshtnKTlnC7uRME/f7hQt3mMy6qpDm+D7czyzMBBDt1sCpXlys+zbsKV37r8te
Tyjubc+XmGRILcL71Bs2DyPwcTWVTQNqKZ/Dm4nA413dX31y6kVG1RAFrFFH9i/JMf5k/pKP7cEB
p1BKFps6mmqnGLYQTlfVdAUl+4ku1tZqE7TJz2YcPw==
=1JHS
-----END PGP SIGNATURE-----

--9gLEhL3YWDXbtpiRBvb3v1rycG5NDyvp0--
