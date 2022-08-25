Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D22DECAAA2
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 23:44:32 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.31344.1661471062397819521
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:44:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=14I33IqC;
 spf=neutral (domain: ibeeto.com, ip: 209.85.214.177,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pl1-f177.google.com with SMTP id d12so159718plr.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 16:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:from:to:cc;
        bh=HVvtk7U+e4W4/yWql3raf/OZedVF1tBGze2JnmqqwuM=;
        b=14I33IqCjEGSMDUbUgM0d1s4eQIEHr/uny/0hyzTU6/oRaiKhhGpRuQB+7YERJNU65
         9QUbkphQ+lhxfOdqEuO1yrTzEvQQszgNIYtvfduGXvjC50t3PEn5d5jLq5jjygH2Lv4R
         9VbEqxtD1bU1jzVH7ty77ErFz5q7KIoP4usPOiR2+xksUEQjdSTenC+iaGNzm+BrIvA6
         Ufk0roi64PDxCbIJhihdKeyPz85oE87ltdaA6C0sjtevR6Z4cvReApJ3JyEiXq0i9Wg1
         J5rsQ5xHQR5rC1ZiXzgEPx9gecWui7PsW5GlHwrPBvyp1rAoeImacSnnmxh6sF4PxLtF
         Hefw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:x-gm-message-state:from:to:cc;
        bh=HVvtk7U+e4W4/yWql3raf/OZedVF1tBGze2JnmqqwuM=;
        b=0SaxwLYqPpperL7lVOtoL5YqqfNef5TTQp/1Gtuu/7ojS2M4wlDbl+DMTRERQQO/mr
         ilWZduSevoUmLtKtVpDuc8t5sW259PO9ax8hNQI3LGdz8qnaQOJjuZDhoAkzj43LF8W8
         BfcMLJ6rWlRcyL2jSJJ+EdUvKNqXNPEwYDWXX6pu3ZxOMb2abMczwwccl01b86bCrWwJ
         8wKJXVLsxhzvkNYlqMDkwOiyH1v2PPbR39ouBmaFWQCX0ZNrG4QlRCx0QQIUFf9Bpibl
         fL91Jfuabc4+c0ECK+nVxsD3H3gSM1xiM3f4x8Y9RwZTEj33Jo+//5CDNgKOX8ncUxlP
         DZow==
X-Gm-Message-State: ACgBeo1eq+KtFL0fSeqVaSjS7QsF8AUqOJ4whbdGrws/ICcILK2o0F3N
	GXGCZnUkWK3CYDiPI4aKsXJcPKq2zCPn+w==
X-Google-Smtp-Source: 
 AA6agR5tursptp+dIjhdJNhloB1STMir8e5gUNpeff6xcYXXusR8wv7VmpRUWw6oFfTsdFeZa/rleQ==
X-Received: by 2002:a17:90b:3842:b0:1f5:32be:8a1a with SMTP id
 nl2-20020a17090b384200b001f532be8a1amr1577505pjb.130.1661471061077;
        Thu, 25 Aug 2022 16:44:21 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 w18-20020a1709027b9200b001728ac8af94sm111394pll.248.2022.08.25.16.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 16:44:20 -0700 (PDT)
Subject: Re: [yocto] Dependency for binary package
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
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
Message-ID: <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
Date: Thu, 25 Aug 2022 16:44:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="TocMszfNxYTfI0SjHBNGpW8LI2i8MvLCk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 23:44:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57903

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--TocMszfNxYTfI0SjHBNGpW8LI2i8MvLCk
Content-Type: multipart/mixed; boundary="VpVdcsWtet6MEIFqTPrKhos0Dy62FS56x";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <6c426aab-6dff-bcfe-1b95-157da402ba44@ibeeto.com>
Subject: Re: [yocto] Dependency for binary package
References: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
 <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>
In-Reply-To: <CAMKF1spJvxxuPOK+KFEX19MjOwumSZ+tGT_u1icvH5z1U8qiAA@mail.gmail.com>

--VpVdcsWtet6MEIFqTPrKhos0Dy62FS56x
Content-Type: multipart/mixed;
 boundary="------------47E839D316B5C8ACB3EE573F"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------47E839D316B5C8ACB3EE573F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, Khem.

On 8/25/22 4:27 PM, Khem Raj wrote:
> On Thu, Aug 25, 2022 at 7:30 AM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>> I am packaging a binary package that has been built with the SDK creat=
ed
>> with the exact same configuration.
>>
>> During do_package I am getting an error that a dependency on
>> libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not
>> resolve the issue. I can bypass it in the recipe by adding file-rdeps =
to
>> INSANE_SKIP. However, then when the rootfs is created libdnf complains=

>> that the dependency on libGLES is not met and aborts.
>>
>> The application works just fine on the target if I copy it manually to=

>> the rootfs but that's not the best thing to do. It should be packaged
>> and installed.
>>
>> Unfortunately I don't understand well enough how these checks work and=

>> why they are complaining about it. Maybe somebody can shed some light =
on it.
> some libraries do not set SONAME in them, which can trip the shlibs
> code. Can you
> check if libgles in question has SONAME encoded in its ELF header
>
>   readelf -d <lib> | grep SONAME
>
> might be what you can use to deduce it.

libGLESv2 in question on the target was built with YP:

 =C2=A00x000000000000000e (SONAME)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Library soname: [libGLESv2.so.2]

The SDK that builds the application was built with the same YP setup.=20
That's why I am scratching my head.

>
>> Thanks,
>> Rudi
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#57898): https://lists.yoctoproject.org/g/yocto/mes=
sage/57898
>> Mute This Topic: https://lists.yoctoproject.org/mt/93249287/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------47E839D316B5C8ACB3EE573F
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

--------------47E839D316B5C8ACB3EE573F--

--VpVdcsWtet6MEIFqTPrKhos0Dy62FS56x--

--TocMszfNxYTfI0SjHBNGpW8LI2i8MvLCk
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmMICVMFAwAAAAAACgkQjYyoKSczm3W9
YAgAg8EHcXTDskMfXrCOA7+p9N3YMu323j588Gahqgk7mccKBxIS3O7n9FPk/3PoZt6/tFazvpfw
jWH7KedXe9MngCt+3AIlmZK/5IyU5NO8qy6sJfY+23eE3bCobuUaW26h7dLkwUxzGGqznN2799Sp
iorOfXH1pYMYtk52hHLNyVKZ7fpkkwlMP2GR9Jod2W6BYfMHaV+nVNOQMhnxqvRKMkR/CNqX79WZ
d3mcecCmupPbKVUIfq14Zv4FVAAqBawxjcusG5G7ks8u/gaJeB7cHCqSarHE3XTASeqva+JHXtXK
JNx9j4kPHkDi6joCDxG3jOwHuNK0kC46xSiU77MM/Q==
=A8Ch
-----END PGP SIGNATURE-----

--TocMszfNxYTfI0SjHBNGpW8LI2i8MvLCk--

