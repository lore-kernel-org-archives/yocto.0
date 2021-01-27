Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1453.1611708619830836537
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jan 2021 16:50:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=hjLZygtj;
 spf=neutral (domain: ibeeto.com, ip: 198.145.29.25, mailfrom: rudolf.streif@ibeeto.com)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6693238C084A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2021 00:50:19 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id w18so77868pfu.9
        for <yocto@yoctoproject.org>; Tue, 26 Jan 2021 16:50:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=to:references:from:autocrypt:subject:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=NfveEml/ivG6JW2qFWINJykQqAAqbBsWRKIg+Ml/lBg=;
        b=hjLZygtjJBgJpotpfP7ku3zrGfAatfoRkDPCLfo2rC+nOdIjh1nnFGXO0woB2b13Av
         E3aVwoDWiVnpCJ5aPSxmJhOjthWQ5EqqSVXVTeAlkS9enxKOOt00lPZ6w1tz1iy6ZfCE
         lIEjJTvajUiCUueCdrJCdIqOYhAF0mw/Zva9RsRo5G/+/RVsYtyVVa/tGvewiwvHGWBZ
         udmoSdyxtPNMGR6eVBshTGH3ow2u9VkzGvIJ0pP+rUt11sW+Ge3VdZgzgg6TWz81XRaF
         g1uUUwLAtOH4UGAHl/Gmfj4loFmt/BoYHAeItSCDshFjeIecEInZ6960T243u6Er+W0Y
         VRpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:references:from:autocrypt:subject:message-id
         :date:user-agent:mime-version:in-reply-to;
        bh=NfveEml/ivG6JW2qFWINJykQqAAqbBsWRKIg+Ml/lBg=;
        b=UnXfvFEWFRHcsgpa+8hKqEAaDSSGAwm0jKpBoOaR2TB6q6c6UW+wfwKKkTJ4x1n5as
         PVUVjaq15mU6pzPGxYXCARN204eF35c3XT2O22K/Hp1dcdEk2NPRNhL/RgBmYxQ9zJAt
         bZBGNvA00gb6wZdy/QNYwM1d8InF+MNcJGCH1S269BiCNSeOyqUbco9cbvfAhnJjTFEL
         XQU0mBXXdDcd2SSqMcbdehtzodNq8Fw3O3mkT7noQYjOwLzlJtG5imuIK3437638MVu+
         8M030K3YUvjeakjUH6KaIdhy4Ai+pe2CNfdiHYlBpHdwLBU831mcLt6NIVcS0EZY9NRT
         ZAag==
X-Gm-Message-State: AOAM533whTeYdzE9N/SeNN+dfKZ1ImkKPlNStdEVGvcEtccxFHr4AjRc
	6aj3Zk61Bs8GvlkJtnTDJuGli0sduTvcXA==
X-Google-Smtp-Source: ABdhPJw1YS2YmE1CkyxAYD0KJGYiD7gAgUsOlCdKq0l2yVIP5lYruTPuA1GB2CJLIokjrr6e6P+MHw==
X-Received: by 2002:a05:6a00:148a:b029:1ae:6d20:fbb3 with SMTP id v10-20020a056a00148ab02901ae6d20fbb3mr7891182pfu.55.1611708618367;
        Tue, 26 Jan 2021 16:50:18 -0800 (PST)
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id md7sm113881pjb.52.2021.01.26.16.50.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 16:50:17 -0800 (PST)
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
 <db88bb8d3e15147b54dd2557eee2ce162e46feb1.camel@linuxfoundation.org>
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
Subject: Re: [yocto] openjdk-8 multilib
Message-ID: <4d0838df-8863-af16-6bba-64007f7b69c9@ibeeto.com>
Date: Tue, 26 Jan 2021 16:50:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <db88bb8d3e15147b54dd2557eee2ce162e46feb1.camel@linuxfoundation.org>
X-Groupsio-MsgNum: 52103
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="dYpfDSKQMpuS6ifD8BO6WS7PAGKt0RbbU"

--dYpfDSKQMpuS6ifD8BO6WS7PAGKt0RbbU
Content-Type: multipart/mixed; boundary="mMPioHTMhSgzCDwzH0XSwmPbOHSRJ1i72";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <4d0838df-8863-af16-6bba-64007f7b69c9@ibeeto.com>
Subject: Re: [yocto] openjdk-8 multilib
References: <7f4740de-0dff-720a-6cb2-8c46f9210a2b@ibeeto.com>
 <db88bb8d3e15147b54dd2557eee2ce162e46feb1.camel@linuxfoundation.org>
In-Reply-To: <db88bb8d3e15147b54dd2557eee2ce162e46feb1.camel@linuxfoundation.org>

--mMPioHTMhSgzCDwzH0XSwmPbOHSRJ1i72
Content-Type: multipart/mixed;
 boundary="------------4338A854C8E270E73D053A50"
Content-Language: en-US

--------------4338A854C8E270E73D053A50
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable


On 1/26/21 11:35 AM, Richard Purdie wrote:
> On Tue, 2021-01-26 at 09:00 -0800, Rudolf J Streif wrote:
>> I have been scratching my head over building openjdk-8 with multilib f=
or
>> an aarch64 system. Essentially, I want to use 32-bit OpenJDK on the
>> 64-bit system.
>>
>> Theoretically adding to local.conf
>>
>> require conf/multilib.conf
>> MULTILIBS =3D "multilib:lib32"
>> DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7a"
>>
>> and then building lib32-openjdk-8 should do the trick. However, it doe=
s not:
>>
>> $ bitbake lib32-openjdk-8
>> <omitted>
>> ERROR: Nothing PROVIDES 'lib32-openjdk-8'
>> lib32-openjdk-8 was skipped: incompatible with host
>> arm-fslcmllib32-linux-gnueabi (not in COMPATIBLE_HOST)
>>
>> The openjdk-8 recipe sets architecture dependency by selectively
>> including an include file:
>>
>> INC_FILE_SUFFIX =3D ""
>> INC_FILE_SUFFIX_aarch64 =3D "-aarch64"
>> INC_FILE_SUFFIX_armv7a =3D "-aarch32"
>> INC_FILE_SUFFIX_armv7ve =3D "-aarch32"
>> require openjdk-8-release${INC_FILE_SUFFIX}.inc
>> require openjdk-8-cross.inc
> I suspect that at this point in the parse, the mulitlib code hasn't
> swizzled the bits around so it still looks like the main lib rather
> than the mutlilib.
>
> Including a variable in a require like that is an immediate expansion
> operation so it can't be "undone" when things get properly setup later.=

>
> Offhand I'm not sure what you'd do to avoid this. The multilibs are all=

> a bit ugly in some ways. It suggests they need to be setting up the
> overrides earlier. The assumption in the code is that people don't use
> immediate expansion for this reason.
>
> Cheers,
>
> Richard
>
Thanks, Richard. That's what I thought it is. Essentially, the includes=20
are, as expected, resolved at parse time of the recipes, which makes=20
entirely sense. The include files themselves conditionally set SRC_URI=20
for patchsets which are evaluated when the recipes eventually is=20
executed. While the conditional include is neat for keeping things=20
separate, a solution might be to combine the two include files into one.

Cheers,
Rudi

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------4338A854C8E270E73D053A50
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

--------------4338A854C8E270E73D053A50--

--mMPioHTMhSgzCDwzH0XSwmPbOHSRJ1i72--

--dYpfDSKQMpuS6ifD8BO6WS7PAGKt0RbbU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmAQuMgFAwAAAAAACgkQjYyoKSczm3Vt
YAgAg4EhklnraBxqY4drkfefeww2HAYmaeuSolhGqj9ev1Pz+cciRaDAB9UYB8zDT5/1CM8qjxgd
52S+OqG8Ze7CJyXmn0Rl5htZ1FGmsUmfpDNGUIQ+qazQWqHXmRy/vkHZ5KzCHcLCi4gpaF5MwpTF
Vui18kayx90lgHFOeGsWgPx6Ramj1nVG1Q7s4bauKQHo5Mpfqv/WYjiWZdjQyYGmWgqvTxSP4dcZ
vzE958eVbHnfpsQ7aoQ7Y7t5nzMCUDYh/TrW7RNO7CuKGUR2IH2yGaH5/kW1LMRHzxlNYpSjbWrB
f4u5Fj/3Qz0Wr6PIr/eK3ZY2a3C40Sd8nj9R5mH5qA==
=+HhB
-----END PGP SIGNATURE-----

--dYpfDSKQMpuS6ifD8BO6WS7PAGKt0RbbU--
