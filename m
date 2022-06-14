Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4C94C433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Jun 2022 00:09:21 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com
 [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web12.303.1655165354504886525
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 17:09:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=iJe3Y1P8;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.43,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f43.google.com with SMTP id
 k5-20020a17090a404500b001e8875e6242so7532102pjg.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 13 Jun 2022 17:09:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=1Y8fCQEvczO2raVOK+9fLesq4AmXKjKg5vOSTd/ov58=;
        b=iJe3Y1P8H3xaq97X7RkzeY1MJU7nqx7HY3svWA+EjBzwI7MS0JTTlJbPCoMfss/8oF
         +i+UtvXyBpjd1o0DXhfRVeesTj3s4nWkvlos6QJ1Tcjoa2OtXR6opukP4wgJIC6ZtBD0
         pbJf3vgeEF5thpeqbgAQNZDXXBRBkmDaO6CVf2WDFZM2XwPxnlXsZBWraYjBjk0zgZHV
         L3dRUaJdluU4R7Uu96CwPaM/jrbP4lxc+pivg6dUDoodhEddFpdJV78YrQkBtWqGHYN0
         USgmLioPMAlJMTGjhWlyT/zZI3IVBOjgTh0HN/LmkH12TgedqXosQ3lP1OFa8AzPNHqK
         L4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=1Y8fCQEvczO2raVOK+9fLesq4AmXKjKg5vOSTd/ov58=;
        b=dBB2Kl/n+l1axcrYFgdGgcS/3ze4sF9O4MsFY8ccg7YCrtgoblTiGG6Bi9IlJTK+T1
         0CMCkjsLgpWh6Cr5shBU/rLrHtYj2siWSkqqj/HuHR3uwNPODEdEnBso/M2aa0f/FaV3
         3PmfM4y2uGLf9t8a3Qnz9wprboodMX1abc85Cv2lGQtUFHfd7cBIo0vSr0h/J+OL0l5r
         koYUH0iOySkyFaAjlbUlT2BzowjHlnvD46oTUR84rEdLvmWalCfYIlM9KgMgQ/XwX7JI
         lsERjceV2HHX8Kl+r0Z3CH4p7MyC6vJMc3feynQpNP3SolRH5GIIn9FFsL7lXz3kJnqO
         NB4Q==
X-Gm-Message-State: AJIora9d8t22Yy+/i2C+e4TF3PrDCDql2UCXQ4tSMc7pMDxZesLiK3bj
	CBTUljwhTfKr1bjQkSsjgUboTYKurVWTudAZ
X-Google-Smtp-Source: 
 AGRyM1tt6KsUxrGGqyIqtf+zW30DE/C4swMjjrps5TgxPFmL3w10qIzUrBY2lhP+t21tWweHhR/lZQ==
X-Received: by 2002:a17:902:cec5:b0:166:3418:5260 with SMTP id
 d5-20020a170902cec500b0016634185260mr1462529plg.129.1655165353172;
        Mon, 13 Jun 2022 17:09:13 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 t8-20020a1709028c8800b001677d4a9665sm5661085plo.267.2022.06.13.17.09.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 17:09:11 -0700 (PDT)
Subject: Re: [yocto] Force binary package install
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
 <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
 <fd3015f18423379e5dd0c7b16ee9ddc951fb2284.camel@linuxfoundation.org>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
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
Message-ID: <699b10c7-d525-f2fd-6d4a-e4063be774b7@ibeeto.com>
Date: Mon, 13 Jun 2022 17:09:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <fd3015f18423379e5dd0c7b16ee9ddc951fb2284.camel@linuxfoundation.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="S9Jlwl78NLu7u4PI8J36CzTLmCnFKF0vm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jun 2022 00:09:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57329

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--S9Jlwl78NLu7u4PI8J36CzTLmCnFKF0vm
Content-Type: multipart/mixed; boundary="qGMpDlgRY1OUbPN5cL0sWbnXjN2zdbaDt";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Chuck Wolber <chuckwolber@gmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>,
 Yocto <yocto@lists.yoctoproject.org>
Message-ID: <699b10c7-d525-f2fd-6d4a-e4063be774b7@ibeeto.com>
Subject: Re: [yocto] Force binary package install
References: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
 <CANNYZj-DmzVListvGSW8QMzMcyX0xOPBKCw=1V19hWjpjtcy=g@mail.gmail.com>
 <482f4935-572d-1b6b-162c-b0a208af7236@ibeeto.com>
 <CANNYZj8=dJ2Eiabx6FEykafYgSUzokg08sPiLW6X-=uJAeZnvA@mail.gmail.com>
 <9bd2408c-3309-11e6-2bba-37f69d90e4e2@ibeeto.com>
 <CAB=6tBThBW4mZbVWpOZoYC-onO0TX=xDhv6k6zg_2Z2jUuhhzw@mail.gmail.com>
 <14b4af80-e9d0-6c0a-0c66-515595e969d0@ibeeto.com>
 <cebb854db8fcf670da63e81dc2e4554e0b051891.camel@linuxfoundation.org>
 <a253f753-5df7-f3b1-b698-8549c33edd4d@ibeeto.com>
 <fd3015f18423379e5dd0c7b16ee9ddc951fb2284.camel@linuxfoundation.org>
In-Reply-To: <fd3015f18423379e5dd0c7b16ee9ddc951fb2284.camel@linuxfoundation.org>

--qGMpDlgRY1OUbPN5cL0sWbnXjN2zdbaDt
Content-Type: multipart/mixed;
 boundary="------------264DAC2679C5DD002B71283F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------264DAC2679C5DD002B71283F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 6/13/22 2:32 PM, Richard Purdie wrote:
> On Mon, 2022-06-13 at 13:08 -0700, Rudolf J Streif wrote:
>> I don't exactly know how the glibc versioning works. I suppose the
>> API versions are defined by the Version file of the various
>> components.
>>
>> However, when I did more analysis on the libraries whose libc
>> versions did not seem to be met, I found out that they were libraries
>> for a different architecture (x86_64) which were not supposed to be
>> included. Now I wonder if the check validates version compatibility
>> only or also checks architecture compatibility. However, if the
>> latter then the error message does not convey that.
> In glibc different architectures implemented different functionality at=

> different times so the symbol versions don't match cross platform. I
> therefore wondering if it was an architecture mismatch or whether it
> was an older obsolete ABI we didn't show by default somehow.
It was definitely an architecture mismatch. I checked the architecture=20
of the files with objdump.
>
> What puzzles me is that in theory you should have seen a different
> error about the architecture of the binaries not matching the target
> though?

That is what threw me off in the first place. I simply checked the=20
versions. They were off but I could not explain why. The architecture=20
explains it as you say. When scrolling through the objdump output the=20
architecture eventually caught my eye.

Thanks,
Rudi

>
> Cheers,
>
> Richard

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------264DAC2679C5DD002B71283F
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQ=
pe+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy=
+7C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNn=
dnK
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTd=
K7j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKI=
FN0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHA=
gYV
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexC=
H3r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d=
38L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWr=
R84
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq=
4x5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBh=
jVL
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOm=
Tqk
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwR=
IFp
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDsp=
JSH
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/=
mCB
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIA=
AkF
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2=
LYU
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9M=
byE
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzY=
f9m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41ts=
C5d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------264DAC2679C5DD002B71283F--

--qGMpDlgRY1OUbPN5cL0sWbnXjN2zdbaDt--

--S9Jlwl78NLu7u4PI8J36CzTLmCnFKF0vm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKn0aUFAwAAAAAACgkQjYyoKSczm3U4
vQf/f7KgxjT9Rn8bxHbxL5CxRdR8Gr0koQXLTzUbetDHgtlx+fjPE/U8xpaQoesKC4mjfe51kxyx
Px+KXkpHGrH7qaLe0Blwv4npQZYR4yAWW6+lKN5cm7hNgH6C1odq5DR890hNwtwDOZOJuQk3TFkW
z8XqYAI5AKl6NjFwsRVEjirrTYeKH0kUTMMEngiRZK3mZx1lV8bsaoAPyRVN0Mxg8A95pTmYnIKi
hWmvsfUaVqA6mEV5tanjqfeWsq3CLD2C/8Sz2LNeCbXX++nvHiNTUJ1NPm1DWND3AH+sh5h3KJ1I
watxmSs1QHQkcc2oWAbNRyzHRXPqQK6LTGCu170aUQ==
=qObu
-----END PGP SIGNATURE-----

--S9Jlwl78NLu7u4PI8J36CzTLmCnFKF0vm--

