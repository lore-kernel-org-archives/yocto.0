Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34BBFC433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 05:45:10 +0000 (UTC)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
 [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.5184.1646113509242232788
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 21:45:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=YEBdUPKU;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.172,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f172.google.com with SMTP id 132so13539752pga.5
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 21:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
         :mime-version:in-reply-to;
        bh=CaqYAigrR2VASdAApA0VFmrk63Q+edV8gxsMkDNC9NM=;
        b=YEBdUPKUjGalXUvQMTK7eXztZrHzSjhHn0NCyd2kxOYJTfHF+WgrICuR+XMwHjfiCE
         yMn4+wbqsSPMQcthKGqTooH8TAITtCf32frkHZ/Fd9PE3XpSeW+A2u7QabMKV5S5m/85
         a6zUwy3DG9U9xW/r1XjQ6bBW2CB90cYEpTM6Wrrgv/8iDqi/0jyqpJZxpoWwK4XQzK/8
         5dQuV3grcqwgnCIu6T9Kw/QDMFYpvGJFhtjIMJutYYlQIhlsEn71DeErKYsfbeqMS5Sg
         HZ/jRlrznE5c/VCD9smcNgEkNGsbMJX/1+ahqA9mjequPh7lHAXOhjlhllcs5WhYq2lx
         Q/EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to;
        bh=CaqYAigrR2VASdAApA0VFmrk63Q+edV8gxsMkDNC9NM=;
        b=oqwLOqg2r2bj1m9XoFGFOcJnrxg+WKVODa5sEKYnGkiE1oe9bDQzFrRESEPY6pFxDm
         Dbn7vZn6690ZO0TNICui4IW32QiF53nx/p6fHYgiBgcFR1awnjFTHUlpPfQqHxrW4sdL
         w2ldgBw3pZAnB5IBSaQjIp1q+6jV3/a8rLHfaq6574kNQbZ7bGl4rAsLiCw4j7vjZHG3
         E7EYTQ8/V4qfnvr45Vs1twdqzMp1nH2W+JT/azWtPnUOPWNqEHwjOvwnhQSi+v8haue7
         5+HBrB/k03x+im7hJHULpU6rSanERVuu9ixyL0mAz+vlVGtdXRd+PCESIsxz3N9U+ZN0
         g8aQ==
X-Gm-Message-State: AOAM531ee9uPSMyWUI8zlZBjhd82y3XTDE5Mn2aduvcUAT/THL8mREie
	/lBtMyVMOnbQdmW6YfUgHUqJVpoOBE43zuUV
X-Google-Smtp-Source: 
 ABdhPJw/xA1vIyCVVyybwXpxxDdwNumX2LYAIkrgmJKbwBylo6+bhq169YalXybz/HeforE6yN2nxw==
X-Received: by 2002:a62:ddcc:0:b0:4e1:c248:d4a7 with SMTP id
 w195-20020a62ddcc000000b004e1c248d4a7mr25476232pff.63.1646113507948;
        Mon, 28 Feb 2022 21:45:07 -0800 (PST)
Received: from ?IPv6:2600:8801:8d2a:a304:93dc:834e:6555:ccaa?
 ([2600:8801:8d2a:a304:93dc:834e:6555:ccaa])
        by smtp.gmail.com with ESMTPSA id
 t11-20020a056a00138b00b004f1343f915dsm16075272pfg.33.2022.02.28.21.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 21:45:06 -0800 (PST)
Subject: Re: [yocto] Custom Image Type
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
References: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
 <CAMKF1sqBipusfmSY1-xuU5SOqowbrhyvsE08gtjD2qQ8S=O=FQ@mail.gmail.com>
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
Message-ID: <d8e74efc-e499-2b4d-046d-9e6139063ea4@ibeeto.com>
Date: Mon, 28 Feb 2022 21:45:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: 
 <CAMKF1sqBipusfmSY1-xuU5SOqowbrhyvsE08gtjD2qQ8S=O=FQ@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="F7HysZfLhovfyE8yxtvn0KaD6RjWzQeJG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 05:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56330

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--F7HysZfLhovfyE8yxtvn0KaD6RjWzQeJG
Content-Type: multipart/mixed; boundary="7spiYK84WjlO4wiVqGrRAfm4IlUJ3wJRB";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <d8e74efc-e499-2b4d-046d-9e6139063ea4@ibeeto.com>
Subject: Re: [yocto] Custom Image Type
References: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
 <CAMKF1sqBipusfmSY1-xuU5SOqowbrhyvsE08gtjD2qQ8S=O=FQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqBipusfmSY1-xuU5SOqowbrhyvsE08gtjD2qQ8S=O=FQ@mail.gmail.com>

--7spiYK84WjlO4wiVqGrRAfm4IlUJ3wJRB
Content-Type: multipart/mixed;
 boundary="------------C4405C09C58B6406CF1C68A7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C4405C09C58B6406CF1C68A7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, Khem.

On 2/28/22 8:54 PM, Khem Raj wrote:
> On Mon, Feb 28, 2022 at 8:32 PM Rudolf J Streif
> <rudolf.streif@ibeeto.com> wrote:
>> I ran into a problem with a custom image type class. I called the clas=
s
>> image_types_ota.bbclass.
>>
>> When I try to use it I am getting these error messages for two
>> predefined image recipes (but only for these two, for any other image
>> recipe it is fine):
>>
>> ERROR:
>> /develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-=
rt-sdk.bb:
>> No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid
>> type name or missing support class
>> ERROR:
>> /develop/projects/tcu/build/../meta-openembedded/meta-networking/recip=
es-core/images/meta-networking-image-base.bb:
>> No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid
>> type name or missing support class
>> ERROR: Failed to parse recipe:
>> /develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-=
rt-sdk.bb
>>
>> I have no idea what in these two image recipes could trigger this erro=
r
>> message.
>>
> hard to tell without knowing how ota class is being plugged in or what
> its content is.
> Do you define IMAGE_FSTYPES:ota ... somewhere ?

The image class defines IMAGE_CMD. There is not much to it for now:

OTA_ROOTFS_MD5 ?=3D "rootfs.md5"

IMAGE_CMD:ota () {
 =C2=A0=C2=A0=C2=A0 build_ota=3D"${WORKDIR}/build-ota"

 =C2=A0=C2=A0=C2=A0 # rootfs
 =C2=A0=C2=A0=C2=A0 md5sum ${IMAGE_ROOTFS} > ${build_ota}/OTA_ROOTFS_MD5
}

What I don't see is why these two are the only image recipes this is=20
occurring with. All the other image recipes do not throw a parser error.

>> Thanks,
>> Rudi
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#56327): https://lists.yoctoproject.org/g/yocto/mes=
sage/56327
>> Mute This Topic: https://lists.yoctoproject.org/mt/89469318/1997914
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gm=
ail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------C4405C09C58B6406CF1C68A7
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

--------------C4405C09C58B6406CF1C68A7--

--7spiYK84WjlO4wiVqGrRAfm4IlUJ3wJRB--

--F7HysZfLhovfyE8yxtvn0KaD6RjWzQeJG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmIdsuEFAwAAAAAACgkQjYyoKSczm3VJ
rAgAk93Es1IKfrpYNyjPxHb1+8mtizeWZvdz/MVG9udNyhpbEAx9MjdC1mkeotGydVgnQA+5CX7T
fNnzC4RdhDcWjiswN/Iulp6aYFjENN+9v93HkkjRqtS6Q7N1zgotlOOGZoNzpRf7zHkj4TO+bAr8
XWw11WxDoY/HGDhA15AEtpJvgitS/i2MGlpbX+IAg21LsihJmEYa7/nYz9W0S9z/yMzUiteKx2RK
oNhXn6DwRJH8kB0G6kfFbL81/U5aoHOku5khdNR9HtAC3SBYZ5+Br0wKjElz3TNNLJlmwzLqdra8
Qp5ASGF1Y+qbU4EHLNR1fAaUGwdK2SfPyMYvvg/mpg==
=Ycmt
-----END PGP SIGNATURE-----

--F7HysZfLhovfyE8yxtvn0KaD6RjWzQeJG--

