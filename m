Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667ABECAAA2
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 23:56:12 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com
 [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.31290.1661471766518028820
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:56:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=SRfmaJsb;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.182,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f182.google.com with SMTP id w13so14147457pgq.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:from:to:cc;
        bh=QKc6g7d06vajQGQaq6i+puB2NQfsPvMvQO/iHGHjKGw=;
        b=SRfmaJsbrLsOReIelfDqi1efTgHwuFMSCPZ85q7H25QWpkt001Zam1xeE7cwzetZ3q
         gL7MbdVumW4riN32iVeBlIKcftgdcw3YkxgyLeqcJMSOZcSz5U+q1Mvzwe0J95yDsyf7
         KOc5ABzTwFTen/hN+42JW7L044axJBCjCQQisgsxFN8KzQf1hvqm0su+KgRinT3ECjBb
         ShPXnhC8jfcVVakoVK9cNjTERRmT/yB1zINzm91AJJ7LlZW5VWtuxSk30395knmdUnbx
         wg2DGLbWcnJxmKynXpAhNwurZX+pMUaAMwYpTVYyeI96B35vOxwvE6EfRYhS8NbLRyVw
         lcvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:x-gm-message-state:from:to:cc;
        bh=QKc6g7d06vajQGQaq6i+puB2NQfsPvMvQO/iHGHjKGw=;
        b=6O/7tSV9bZLlgN/Kv7ZpjZ+VqmJR1f3iifTRZykkVU/3VY1mx5NEcB1GOqJNBRPMIB
         zYFQb3x4StuOjwszvq9ZSHCGGa6Dk7/LJj4gFtTYWVgI7JWmdAczXDrCJvE2qAMtkPRc
         Itw+zwyGOhgJ/S8RLb85PCTZOqfuu+/c7SUhDJDpHDWpTjag5Txm0xkHzQ8T4NeS9aiM
         rk7K8pPXgW6MpxgJpC5tEYj/XsqOLVZa64RnktjUj3o+Y5y6NIZjtCo7dNSKAgOvnCUP
         PPntkm1X7gVwnldK639jYCEY6ol6Uob6zkUX8WapsWFve1h8FPbxyTupLygTPV83n0rM
         GOsw==
X-Gm-Message-State: ACgBeo1EBdXLlNEu3XNnIom7PcTeYjmplbySPwItsDSis4pfaHJ5+X35
	2duj1eRn2hrSA/XZsdwZLiK3QBUMSEzWdA==
X-Google-Smtp-Source: 
 AA6agR7hbFhJHJBisV0xMwqti38aAussR/aCKTPWuuKyXyDj6hDFZg4QEQUoi4dA6zWRK17dVcIb0w==
X-Received: by 2002:a05:6a00:b8b:b0:536:71f7:4ce3 with SMTP id
 g11-20020a056a000b8b00b0053671f74ce3mr1328988pfj.74.1661471765475;
        Thu, 25 Aug 2022 16:56:05 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 7-20020a621807000000b0052a297324cbsm226032pfy.41.2022.08.25.16.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 16:56:05 -0700 (PDT)
Subject: Re: [yocto] Dependency for binary package
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
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
Message-ID: <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
Date: Thu, 25 Aug 2022 16:56:03 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="E4izV4pEheQnzoWRyTjXqSo4cHpIJnJ9K"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 23:56:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57905

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--E4izV4pEheQnzoWRyTjXqSo4cHpIJnJ9K
Content-Type: multipart/mixed; boundary="oquyPkPVMuTQj1xxS5jHmjcqfsDFeGlrM";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <50c0d314-faa0-dc7f-903e-614bfb899730@ibeeto.com>
Subject: Re: [yocto] Dependency for binary package
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
 <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
 <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>
In-Reply-To: <CAMKF1sop4ait=pE5CSzbs3Uu7P=6pACdKd=0py_wpbD-4aXCKQ@mail.gmail.com>

--oquyPkPVMuTQj1xxS5jHmjcqfsDFeGlrM
Content-Type: multipart/mixed;
 boundary="------------0189223AD8D37804AC55ABB0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0189223AD8D37804AC55ABB0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 8/25/22 4:49 PM, Khem Raj wrote:
> On Thu, Aug 25, 2022 at 4:44 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>> Thanks, Khem.
>>
>> On 8/25/22 4:27 PM, Khem Raj wrote:
>>> On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
>>> <rudolf.streif@ibeeto.com> wrote:
>>>> I am packaging a binary package that has been built with the SDK cre=
ated
>>>> with the exact same configuration.
>>>>
>>>> During do_package I am getting an error that a dependency on
>>>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does no=
t
>>>> resolve the issue. I can bypass it in the recipe by adding file-rdep=
s to
>>>> INSANE_SKIP. However, then when the rootfs is created libdnf complai=
ns
>>>> that the dependency on libGLES is not met and aborts.
>>>>
>>>> The application works just fine on the target if I copy it manually =
to
>>>> the rootfs but that's not the best thing to do. It should be package=
d
>>>> and installed.
>>>>
>>>> Unfortunately I don't understand well enough how these checks work a=
nd
>>>> why they are complaining about it. Maybe somebody can shed some ligh=
t on it.
>>> some libraries do not set SONAME in them, which can trip the shlibs
>>> code. Can you
>>> check if libgles in question has SONAME encoded in its ELF header
>>>
>>>    readelf -d <lib> | grep SONAME
>>>
>>> might be what you can use to deduce it.
>> libGLESv2 in question on the target was built with YP:
>>
>>    0x000000000000000e (SONAME)             Library soname: [libGLESv2.=
so.2]
>>
>> The SDK that builds the application was built with the same YP setup.
>> That's why I am scratching my head.
> interesting, are you adding RDEPENDS on libgles2-mesa ?

Yes, but that does not satisfy the dependency:

ERROR: virtuoso-0.1-r0 do_package_qa: QA Issue: /opt/virtuoso/virtuoso=20
contained in package virtuoso requires libGLESv2.so()(64bit), but no=20
providers found in RDEPENDS:virtuoso? [file-rdeps]

I can SKIP_INSANE file-rdeps but then I am getting the same issue when=20
creating the rootfs with dnf.

But in all fairness, I don't have control over the entire process. The=20
customer builds the executable with the SDK I gave them. They give me=20
the executable to put in the rootfs.

>
>>>> Thanks,
>>>> Rudi
>>>>
>>>>
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> Links: You receive all messages sent to this group.
>>>> You automatically follow any topics you start or reply to.
>>>> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto/m=
essage/57898
>>>> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@=
gmail.com]
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>
>> --
>> Rudolf J Streif
>> CEO/CTO ibeeto
>> +1.855.442.3386 x700
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------0189223AD8D37804AC55ABB0
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

--------------0189223AD8D37804AC55ABB0--

--oquyPkPVMuTQj1xxS5jHmjcqfsDFeGlrM--

--E4izV4pEheQnzoWRyTjXqSo4cHpIJnJ9K
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmMIDBMFAwAAAAAACgkQjYyoKSczm3X2
Jwf+NBvtcKIeducAQYO8YZ36HwKo5PFq1beDhOd2K2PxqR8JdG40V/h+4LcCmm3mpJqexW6H3KsW
A/bK2Yrz40uMVJJwtWKN0crz8nNF2cha2+h43aLjRTd0PU6ei9jPopOQCPjIZrp3bmPemGIj5LLi
tmjuAaCj06Sb1FuLhYMdXNJxiLDjX6uqXuAlFiV+3lK2du81uF79unBxNLf+l7q+R1pjRSRBm5tr
6+sGdOVQhdA75aq5lP8HKd4j3BWdsXRaLqk6b7wqGBKq3tJWcQdfxOv+uUuklm0Ekea5UyHBKHPz
9phIhxLypjiLptwCtUx1PTyIkY48NGmW7A9zcxULCw==
=YG0r
-----END PGP SIGNATURE-----

--E4izV4pEheQnzoWRyTjXqSo4cHpIJnJ9K--

