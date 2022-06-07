Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC766C43334
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 18:59:45 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com
 [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web08.1357.1654628382306712962
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 11:59:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=OcNRieYp;
 spf=neutral (domain: ibeeto.com, ip: 209.85.210.178,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pf1-f178.google.com with SMTP id b135so16278269pfb.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 11:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=iJUxvlkmZH1qX2JAy0gP7R0O3gfShASG1iWF7WNpL+Q=;
        b=OcNRieYpw7ALQ56eOXLdu2XrZsOW1TB/ZPBGnAnIXS1ggknIppLmAHub3Nz0NKI7xv
         VUl/9SutT9g1kAC7hENtG7hgNotKCDsB6iwUgXgC1fjNfkKGTFkUbW05wI7xCsSn7skH
         rfjhXOiPd6C83ZVQebKxhUKSM0D4msjw5QYhGAhjufiycVQsfXxDJWZ9oNcnhl6F80WG
         I3Je9lSDF5ehZTAR7Yslnz4bts0Wg+FuQjQ5CvbxpeLxV7nT4+gNIwOoYSft5BRhN0DQ
         AL5YHL3fsDU5xkCH5aOmIp2MrcJQcj/CowVga03IF9vf+1V9UxSrcRv7CoCGUNI3Meii
         yqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=iJUxvlkmZH1qX2JAy0gP7R0O3gfShASG1iWF7WNpL+Q=;
        b=xbklEQCLLwxXDM+iyu9eDLDsbMmOPSL8eXkzBQb/17c7f83gZGc4DR0Y5cj7UMm3nq
         4nCBsowyslACTRsyoEq9ZwTXOy4fIZ5ZFoZ/ZCsAcLkIkhvKsbqNTVvP7Il4Tnm+kn4b
         ItVUK7KfXLWVx0imV4+sfT3zhdNUZTYA3yEVbtahlAusHohE+1SItVsVEicAvIjcWwTp
         hmn7aD6/CaXOZez15WLCZ2vItX+gyhhuybq74Ls8PrvO3zJH6YZWG1L3FfkZ/U+seDOl
         3zxie7gRDO8Fn5QgWPkDaPsSb3lmcu4i3vaUyLQXzv5pGi/ACL/jc17iAL3t3uj7dFwz
         Tymw==
X-Gm-Message-State: AOAM531Q/zrKLQjandOdsrIjKW7zxO+8u9WRMdzfB3maIU/F1awzby3h
	VZqZpeVdM5FxTt4QcICzgfqQ5w80eQsE0JdF
X-Google-Smtp-Source: 
 ABdhPJy9P876nqVBsDaNSpSiuvPXztt+0GBCzmXNYANQlpCFO49aQiC3p5MnaYx060jiHqob14bx9Q==
X-Received: by 2002:a63:e40d:0:b0:3fc:580e:3a04 with SMTP id
 a13-20020a63e40d000000b003fc580e3a04mr27043080pgi.155.1654628380934;
        Tue, 07 Jun 2022 11:59:40 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 cp14-20020a170902e78e00b0015e8d4eb1d3sm12778793plb.29.2022.06.07.11.59.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 11:59:39 -0700 (PDT)
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
Subject: Force binary package install
Message-ID: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
Date: Tue, 7 Jun 2022 11:59:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="s53rNiM8QXcF8OOHqKUqnFF5QYIXVsirw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 18:59:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57296

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--s53rNiM8QXcF8OOHqKUqnFF5QYIXVsirw
Content-Type: multipart/mixed; boundary="qNjRUlNuBwwJMqvEtjkxy1Fg0hiJMWlzv";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <22848052-7e8c-d0c4-1c42-6d71022956bd@ibeeto.com>
Subject: Force binary package install

--qNjRUlNuBwwJMqvEtjkxy1Fg0hiJMWlzv
Content-Type: multipart/mixed;
 boundary="------------0F315E5270FCF591E7FC88DF"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0F315E5270FCF591E7FC88DF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I have been handed a binary package that I am integrating into a Yocto=20
build.

When dnf runs it complains about missing dependencies. These are=20
standard libraries of course but the culprit is the incompatible=20
version. The software runs fine when I install it on the target using=20
the script/tar installation it comes with. Needless to say that YP=20
packaging QA complains about this already when assembling the package.=20
However, there I can silence the complaints with INSANE_SKIP.

Unfortunately I have not found a method doing the same when the package=20
is installed by the image class.

Is there an elegant way around it?


Error:
 =C2=A0Problem: conflicting requests
 =C2=A0 - nothing provides libdl.so.2 needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libdl.so.2(GLIBC_2.0) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libdl.so.2(GLIBC_2.1) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libgcc_s.so.1 needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libgcc_s.so.1(GCC_3.0) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libm.so.6 needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libm.so.6(GLIBC_2.0) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libm.so.6(GLIBC_2.1) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libpthread.so.0 needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libpthread.so.0(GLIBC_2.0) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libpthread.so.0(GLIBC_2.1) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libpthread.so.0(GLIBC_2.2) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides libpthread.so.0(GLIBC_2.3.2) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides librt.so.1 needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
 =C2=A0 - nothing provides librt.so.1(GLIBC_2.2) needed by=20
xxx-single-group-0.1-r0.cortexa53_crypto
(try to add '--skip-broken' to skip uninstallable packages)


--=20
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700


--------------0F315E5270FCF591E7FC88DF
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

--------------0F315E5270FCF591E7FC88DF--

--qNjRUlNuBwwJMqvEtjkxy1Fg0hiJMWlzv--

--s53rNiM8QXcF8OOHqKUqnFF5QYIXVsirw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmKfoBoFAwAAAAAACgkQjYyoKSczm3Vf
aAf/R3755iPKO/HjqBKRjEF1Gg4GZGFPa2dWPyNpgZPiNIHBJKO6bvqlB33U3q0ujpQFIWXbDH5X
jSF1SfP4sSALAkFbm1sMslH3IcobjeVYWJcxCQ34WlX04NrguUqfwu9BXMsraUHljS5SqyAA0eCu
yY4KkhzYEXygmpZU60kuiDOPwD6Ul+9PwmtS/j+L8z4D/x8JggCLpc7/zOpXqIgr/Wk8PS0x8GKb
Fa5PbBO/6XGzA73vQlwGK6LEOqgBzWhNg+7Nq3hZof7yoMsDssRUcex8df6iiWpSq/Nz//1k59ec
zUv1GPTM0jXSFTK3elrnFvvBBWVVr/dd1fyq5wOhlw==
=/ghu
-----END PGP SIGNATURE-----

--s53rNiM8QXcF8OOHqKUqnFF5QYIXVsirw--

