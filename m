Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39B33C63682
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 17:21:29 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com
 [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web08.15702.1643217688236685687
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 09:21:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=swESCARp;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.169,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f169.google.com with SMTP id q75so33985pgq.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 09:21:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=m3r8iLek0tg2IYncLoQGTaCtnVJ2sPYUEnM/zFBhsH0=;
        b=swESCARpwbGMudKta2YCF8/oBffNfzMzT88zk/nnku+toPBBD+aq9yRazG4IFfp0+L
         K8f79MZ7HTC2cWZHIst/vt3Guh+r0/+DznFcC5wyH4Q6RjGAp87o/uktyV24CAhlNJ0b
         /vni8SK+u48P2DkrRvW8xmvQUVYqHk28wO2SHDh9j8AWtd2gXFVWEyyKFc4xIpUeLkmg
         ZeDkVicL9710G8lWOFiE2l0VROLed75AvTklEbE0sdccW3yRVSckLpc5Gg9LKYl7OLRR
         US9qwsXvPUG7UL4WS7q8TRQeIU6S7WRsIqVHqFj0aW5WdT1tjQUuNr5UF/PweYqzYxFN
         xC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=m3r8iLek0tg2IYncLoQGTaCtnVJ2sPYUEnM/zFBhsH0=;
        b=ybAmcRr1YQjwX785FUeAGR6dUJ/LvczGxkd47WIbQY3mhmvCmaEs1gCJ9H5oK1YeOF
         rXyELtMVxXpndO0CxjvVzLYQtEHJZ2skdtFZKK27KnqB12V2+5qsfHv2bvvkA1nuta2s
         HbAxqKHZ5EnggubCIVly62M4LOq3LH4iFyuEtDAxu1XuCPPTo5CoCzBoJUTmrWjB5ykM
         K8xY2Emae4+l4LSFnjEZerEFhgQ2K1e+q7aZfcPBadww+0WPOq//XDNgkA2z53i4Lbj6
         r8Xybg5GgwRMaRI7OhVTmJM057YG78JiwnRSvqx+cANJ7ZhMglZyTaQCj9003Nb2HgNh
         Ruzg==
X-Gm-Message-State: AOAM531qHFmwiqNmIZ9x05e3PmC7DDefLVly55dOug5qFIifsvmi/R84
	Ghn7khvQ25g+OU0PLEIvLPBLZMfdBlKqJg==
X-Google-Smtp-Source: 
 ABdhPJxuG5vn1Y56WIA4hODGFYQHzXetULGEMGRbRE9+YdfyZYlU4mvDS7Mtl4EEjKkTJMbsDb2oNQ==
X-Received: by 2002:a63:b00c:: with SMTP id h12mr19469878pgf.80.1643217686841;
        Wed, 26 Jan 2022 09:21:26 -0800 (PST)
Received: from ?IPv6:2600:8801:8d2a:a304:93dc:834e:6555:ccaa?
 ([2600:8801:8d2a:a304:93dc:834e:6555:ccaa])
        by smtp.gmail.com with ESMTPSA id
 y128sm2879629pfb.75.2022.01.26.09.21.16
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jan 2022 09:21:18 -0800 (PST)
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
Subject: linux-firmware_20211216
Message-ID: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
Date: Wed, 26 Jan 2022 09:21:12 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="bWYhrrBrOlufDRHRokD3cWFq0DGnJLIG9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 17:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55982

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--bWYhrrBrOlufDRHRokD3cWFq0DGnJLIG9
Content-Type: multipart/mixed; boundary="HYX85mYPwPjSoAOCc6pGX94m4VLzu2Fu3";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <46c5cd6e-0285-9f19-49b5-6ed76cb61a98@ibeeto.com>
Subject: linux-firmware_20211216

--HYX85mYPwPjSoAOCc6pGX94m4VLzu2Fu3
Content-Type: multipart/mixed;
 boundary="------------5C3442308F729CCF31D35DB0"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------5C3442308F729CCF31D35DB0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I got a question about the linux-firmware-bcm4373 package. The link

/lib/firmware/brcm/brcmfmac4373-sdio.clm_blob ->=20
=2E./cypress/cyfmac4373-sdio.clm_blob

is packaged into linux-firmware and not into linux-firmware-bcm4373.

It's essentially not included in

FILES:${PN}-bcm4373 =3D=20
"${nonarch_base_libdir}/firmware/brcm/brcmfmac4373-sdio.bin \
 =C2=A0 ${nonarch_base_libdir}/firmware/brcm/brcmfmac4373.bin \
 =C2=A0 ${nonarch_base_libdir}/firmware/cypress/cyfmac4373-sdio.bin \
"

which means it is automatically packaged as a "leftover" into=20
linux-firmware.

Is there a reason for that or is it simply an oversight?

Thanks,
Rudi

--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------5C3442308F729CCF31D35DB0
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

--------------5C3442308F729CCF31D35DB0--

--HYX85mYPwPjSoAOCc6pGX94m4VLzu2Fu3--

--bWYhrrBrOlufDRHRokD3cWFq0DGnJLIG9
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmHxgwgFAwAAAAAACgkQjYyoKSczm3UF
GAf/fRjY4OCPhcPY+6oBY6cXeCGpz/PFeajx+pIAmLdtZ700ex2APby6C1vZfxk879ogwMjApY22
At7g+dtfqyN27HlD7hlQCtg9uK8ng3e7YO01nEhiZDs9Z1d2N/eYyILD7WYwmle1ut/uhECdoyE6
ddrL4b62sxdUDmxGRPwh747aCfJIsfoIf63gIf1oHyd+ljU5E+tukRYECoaOd3YLPu5r6ttAUZ93
E/8PuAmnXTPKyoHr3JZ5R8VnrQOm6qcmA8CEhcXQyHFFvwR3OLI4UMeHT6BOaifdJgzfrgH+QOMV
wvtH+1A/f5thMgtW5vApr0T6E+xDRYMia3Ld7CODMQ==
=BfZR
-----END PGP SIGNATURE-----

--bWYhrrBrOlufDRHRokD3cWFq0DGnJLIG9--

