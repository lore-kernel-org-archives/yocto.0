Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.2851.1615405914751920422
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Mar 2021 11:51:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=o0FRbzmI;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.170, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f170.google.com with SMTP id u18so8991177plc.12
        for <yocto@lists.yoctoproject.org>; Wed, 10 Mar 2021 11:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=B+QNvN3qnQyCNJfczOxPd+eM68PMEy2GR4IfskHeC8M=;
        b=o0FRbzmIAdg9N+sFT2ACXHKdIInE5LEOdQPuSW7zCb0GcOiPg34sDDUJriEhx6q9pT
         hv/B68Ew3NSu/jBFlYPfyfstWaC+rWIa/AjeCSFJ45GoWVnJsDqLhXYSyFVbV8F+ijdq
         xYozbl6DCU6vpeQSbL2Rn4RbHG0CcYkAEUN/82cdBER0HTlS7Vr/MeRmrNChe07OPXBp
         st1hWcM9zmeUEA3WdIGYd47LvJZDQXB0g1AQYUtjLyWXfmHGf2VoMaX1veZsVmMQmQAe
         QKJs/86JggF4owl176A5wSAtuoZ4/Dro8c11EMZ36a4hNVlnWUEsaZIZN9wL9Z8LchUJ
         mhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=B+QNvN3qnQyCNJfczOxPd+eM68PMEy2GR4IfskHeC8M=;
        b=fL1NsNLEAv+AenL0W5+HPq2nCRctGHn6z1wCPDZ95UB9N4QpBJsOOuoH6nS3DDXqml
         14ICTKGUm6T5wCR44sMBqQoIcX9NF76vF1Pjr1dL54GWjPDmP+Hz73Mmg1Ny+/RiRHRM
         cEEr0+5b3XdRO3zgGK+8fJtEGtvk5ZhVGlX1P0wBYEd6q/GfiqX5mayjuqNQTaK6eh6d
         py1ExIREbbr1kgoggliP5wvfXNdPkV55RNYdT+RcguhPXqTSVu3emzLXbluW0udMjxD4
         peqAn2oxhqI4yo3W+VSCkVGyjjW38nuTkRqqOXmAClxYDrxQP9slMBsMnWRkzyGgV2Ca
         tKwA==
X-Gm-Message-State: AOAM533euhM441XqSJYf4p5C9f9OqCnb9oC9yyMRMxHLkVC1Log3NHMK
	+caNPr0+9I0e11sGsuswJQCuJjjVZG3rh6zb
X-Google-Smtp-Source: ABdhPJwriGQcfAAZoW8N6C5zDjfSLLbdW2Q7Q/WKN198VeFwi87Ae8J08MtVWvz5qutZjdYTk+Br9Q==
X-Received: by 2002:a17:90b:3909:: with SMTP id ob9mr5261393pjb.181.1615405913543;
        Wed, 10 Mar 2021 11:51:53 -0800 (PST)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id s194sm302367pfs.57.2021.03.10.11.51.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 11:51:52 -0800 (PST)
Subject: Re: [yocto] Assign IP address at boot time
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
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
Message-ID: <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
Date: Wed, 10 Mar 2021 11:51:51 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <7d3df13429d227106286f966cdcbd501@vivaldi.net>
X-Groupsio-MsgNum: 52653
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="vbJ9UMpp7Vt17H1z1vKXLMuwjtK2AyR8b"

--vbJ9UMpp7Vt17H1z1vKXLMuwjtK2AyR8b
Content-Type: multipart/mixed; boundary="CYv8ZyUPu5xYgEzWgOwVcJ801Pg2r8YcI";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <e7f9f7da-b919-1b65-90f1-e8d892acd2ce@ibeeto.com>
Subject: Re: [yocto] Assign IP address at boot time
References: <5f0f65cc3e08a66871af9e3012c4f642@vivaldi.net>
 <5bce46d6-e995-ea21-9162-5d15b95afa29@ibeeto.com>
 <8878b4515215b5d3ed686be6cb8a7122@vivaldi.net>
 <3421258b-6b1e-3dd6-2d75-e66b0bb989c3@ibeeto.com>
 <7d3df13429d227106286f966cdcbd501@vivaldi.net>
In-Reply-To: <7d3df13429d227106286f966cdcbd501@vivaldi.net>

--CYv8ZyUPu5xYgEzWgOwVcJ801Pg2r8YcI
Content-Type: multipart/mixed;
 boundary="------------C1257811B163A572865A2922"
Content-Language: en-US

--------------C1257811B163A572865A2922
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Create the file /etc/systemd/network/eth0.conf:

[Match]
Name=3Deth0
[Network]
Address=3D<ip>
Gateway=3D<ip>
DNS=3D<ip>

Restart systemd-networkd

# systemctl restart systemd-networkd

or reboot.

:rjs

On 3/10/21 11:31 AM, jchludzinski wrote:
>
>> What is your startup manager? systemd or SysVInit?
>
> systemd

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------C1257811B163A572865A2922
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

--------------C1257811B163A572865A2922--

--CYv8ZyUPu5xYgEzWgOwVcJ801Pg2r8YcI--

--vbJ9UMpp7Vt17H1z1vKXLMuwjtK2AyR8b
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmBJI1cFAwAAAAAACgkQjYyoKSczm3Uz
cQf/chjAhazmLIBkNiGOCzqYrvlc28uZqzLDWKgvERcOuhLRJIbIckXH/lDEDE8PfDBz4PZXsRqM
6JRdnx6iun9Cm4HnzKIpwGH9FbfeW9XLx7cAOJGo/jeKkyTWWXfzFjd+1IwwByQceGiA/nqRH2Eq
aiD5ylAyR76B/ycAarrM9Crro3z+LLEtcoJ60mlyADERzCHnuyEALqnD/Yy0+R/H7oWb5BXT0XnV
NpE5L57hZfrr+zoh6XlpcL10q/+TxkZTy+PoDQ/bcej3nldtMUvFcte5v/U8OkLNKZpZ9RKU75Xm
AJdYxaDmVIP+/bWP+fR0ugnAM2JFTF7+fYmpNbPivQ==
=feYO
-----END PGP SIGNATURE-----

--vbJ9UMpp7Vt17H1z1vKXLMuwjtK2AyR8b--
