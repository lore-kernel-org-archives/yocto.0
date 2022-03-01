Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 347EEC433F5
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 04:32:26 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web08.4742.1646109144994836322
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 20:32:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=NNuiVtIc;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.172,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f172.google.com with SMTP id d187so13049488pfa.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 20:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=whOXAHIIpmcnMgDz8C5dfCubrPhjr+ZcwmnzG0iCSfc=;
        b=NNuiVtIcnm0zqneMs4b+48WmGJjxhiFAB3VrH+GL00K/89igeAZhog4zsxCfvpc2Rx
         pHqhltaUH+uaXj4bdqqv5nSTGVSXJwiHqYsmVI7LPUX/P9Kz8BylmXG5ORfsozXMqXG5
         5/B9lEGmZ0yVJNqQ3H56gy26FR7+p1fUUM9fvU4XwGacz4wjQHRU9ZBUZtrjI1y3Jl3/
         SyBggTcnxE4xcgIHq8bs0GCtp4EifGllo8KBq7/dshavCZVkHIRYMDBbCKSh118BHzYs
         6qwb/dq6CnY17QTM5fdnmv2inZEqmUo0J60Ku2l4n+97Ng0cQI1WcpAfcyrrGlDLuD4g
         iBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=whOXAHIIpmcnMgDz8C5dfCubrPhjr+ZcwmnzG0iCSfc=;
        b=j2Zex4PLlTYV8zSxTHGVKQFGstqzvoQXEgcZ79SVBAJdknxzIV0Kuus/oa/fuUbD3X
         8oxPGAGfNtRpdLZMmJafNQAH3DgWfEhbSPpxttaj5TVCAPcYxTGtQ+SR43DlIV6f12BR
         o4mItaozZd4T1VfYR3TAXAVXNKXOAfqQb0bL3oeu18Bv3zGjp3c2DASsNg1nrdpYoFcF
         2MziXIknO8bVvTbNblo1gthx9Ybov2xyheFnA9Z/rdBVkvM2INVCp2ZmDpHfMoUrHPuV
         5nzRw92+R4i0AlcZFiubesGrbwo+1nIZB9zisJZEnGJUd/FP75I8875hZX3DEmBHXxqI
         SisQ==
X-Gm-Message-State: AOAM531FraZn68kWFkAbwYz3nB/Qu8QK2dQtnzBctBPWoEnpmIN1Otjl
	DlOwmWfCj4Xym1e6r7K66fDl7Bm8D1XPA465
X-Google-Smtp-Source: 
 ABdhPJyLlkC5d7b4uI1R4Ef/WJBDQ6pMpVsDr3+p4ALrDPs7OCelCwShhVfKJYGOrpxdE0RZyD9yQA==
X-Received: by 2002:a63:1203:0:b0:374:4ee8:8f20 with SMTP id
 h3-20020a631203000000b003744ee88f20mr19776531pgl.294.1646109143327;
        Mon, 28 Feb 2022 20:32:23 -0800 (PST)
Received: from ?IPv6:2600:8801:8d2a:a304:93dc:834e:6555:ccaa?
 ([2600:8801:8d2a:a304:93dc:834e:6555:ccaa])
        by smtp.gmail.com with ESMTPSA id
 v10-20020a056a00148a00b004e0f420dd90sm15141615pfu.40.2022.02.28.20.32.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Feb 2022 20:32:22 -0800 (PST)
To: Yocto <yocto@lists.yoctoproject.org>
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
Subject: Custom Image Type
Message-ID: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
Date: Mon, 28 Feb 2022 20:32:21 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="B67WBy7hfViVlRHaxf16EneVV2WHSYBCO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 04:32:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56327

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--B67WBy7hfViVlRHaxf16EneVV2WHSYBCO
Content-Type: multipart/mixed; boundary="XH2QEe6QkMuUqywDmFZ3gD28rrLF6beb7";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <8629e40a-21b1-44e4-ebca-2f85c6fc8330@ibeeto.com>
Subject: Custom Image Type

--XH2QEe6QkMuUqywDmFZ3gD28rrLF6beb7
Content-Type: multipart/mixed;
 boundary="------------8484B3C9337B5A505CA10CE7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------8484B3C9337B5A505CA10CE7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I ran into a problem with a custom image type class. I called the class=20
image_types_ota.bbclass.

When I try to use it I am getting these error messages for two=20
predefined image recipes (but only for these two, for any other image=20
recipe it is fine):

ERROR:=20
/develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-rt-=
sdk.bb:=20
No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid=20
type name or missing support class
ERROR:=20
/develop/projects/tcu/build/../meta-openembedded/meta-networking/recipes-=
core/images/meta-networking-image-base.bb:=20
No IMAGE_CMD defined for IMAGE_FSTYPES entry 'ota' - possibly invalid=20
type name or missing support class
ERROR: Failed to parse recipe:=20
/develop/projects/tcu/build/../poky/meta/recipes-rt/images/core-image-rt-=
sdk.bb

I have no idea what in these two image recipes could trigger this error=20
message.

Thanks,
Rudi


--------------8484B3C9337B5A505CA10CE7
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

--------------8484B3C9337B5A505CA10CE7--

--XH2QEe6QkMuUqywDmFZ3gD28rrLF6beb7--

--B67WBy7hfViVlRHaxf16EneVV2WHSYBCO
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmIdodUFAwAAAAAACgkQjYyoKSczm3Xy
Vgf+JqtDkliuPo20tju7cbGUHcnQQ/nHnIDVu3V0rYtCcfw2eJC2inq0ANG7ptW+fwiyTZkH8qbj
j9gS/LMBYXry9B/jVVVO9KcYJb3GXwQkTn9dt3re4BS7ekNXYofgsHpdbHh5VCsWHRaUI19+kgJx
Kfg8gjCdFwoGg5EQsXHqPg9MkRUBgJk+ZRo0Mxr6sdqDpWJKCgVodHtWAqPFVRfmoeUvyStakJC2
PqTlcxGR3CT7ejBHbbMwuVDXAV+qNr1YbfxtQgE+HqB/+AqGXTx5O7aEc9kbkt9u9auHYaGrrycA
jz/JlOIkIQULw72+8NIOYvDDKQ9+0olfaXex5SAYXg==
=aUUy
-----END PGP SIGNATURE-----

--B67WBy7hfViVlRHaxf16EneVV2WHSYBCO--

