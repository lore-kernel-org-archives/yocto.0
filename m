Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14BC64990
	for <webhook@archiver.kernel.org>; Thu, 25 Aug 2022 14:30:29 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.24493.1661437825275129552
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 07:30:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112
 header.b=XehJ64Rb;
 spf=neutral (domain: ibeeto.com, ip: 209.85.216.47,
 mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pj1-f47.google.com with SMTP id
 x63-20020a17090a6c4500b001fabbf8debfso5228018pjj.4
        for <yocto@lists.yoctoproject.org>;
 Thu, 25 Aug 2022 07:30:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:date:message-id:subject:autocrypt:from:to
         :from:to:cc;
        bh=Ir0x5OJrQw7CyL/rHpgETAOQ6ny77VtHAhu9w+fNHGI=;
        b=XehJ64Rb9tAetHpAHREpwHPXQNoX0n+1NFCiZ3KU6065LVeVAZsQRozK2kpWU7Nm6B
         AHFJS/dl8UMSl22LockvcKReeOKY1N2ijlX+gBuqEvZ2RvwRvrPGgpy1c41YmFqeL3J9
         BssZv9Qw9YZZIK40ZEl8MWS33p28S+0puRN8zaXELFw6IcrODqGxsQLk7CSRZrs3ztMD
         RpUbwsze4KWpEEPMYUk2j2jrU+D5UiInmYQ9PpyspjWEbCEUtch+hjNwN2BQGp9XB6A8
         9Dcmz65iqBvWUKx6lIMiObhATzSUs7BT/AG6jslrS87HqSaFOgYmXXTPwZ7E471vgo3l
         xWPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:date:message-id:subject:autocrypt:from:to
         :x-gm-message-state:from:to:cc;
        bh=Ir0x5OJrQw7CyL/rHpgETAOQ6ny77VtHAhu9w+fNHGI=;
        b=Mbn44cjEUhA5W5W8hz7fQQ4ZIFCas293LM48AGTIIrWZynelxUUVKNhVn8XHm6pBCe
         SaORUB6/KqnClxWLNWLFI3tX8V5xkMU5LqqNZI/HX/6TtEsqx3Nvk2lB6QF3Y2j4CU1V
         m85F5kUSGhpaOJyt5LdxDvFT13OLynSDC85/fTtFRYyTW+pxBA11S5cpp6ClimrYZyI3
         rq9UCtTJnPbeWjKHzMseBXYECcrk4CAs4woVEg2zCkypEDYpoO3dIR+JI8WA/C8DHuf5
         6gZhpgyum9ZoVIgkbIFkSRzcaM9I5ognDAkUf1vGcwN2/7Nsm7Ue49mi4vInMBk1vMwG
         smvA==
X-Gm-Message-State: ACgBeo0zn1DiBPVy2QGycLYbbrk99fSG/z57pmXIJqI65BbfhIMINF/S
	WydmBt4adc4h4oIpg7vxfWds9XdQWxqDYg==
X-Google-Smtp-Source: 
 AA6agR5tTd1whGFbN4O2FWyWmztlA8Gwc/xtMHF4QMpSu0dcWpewdMA3+ywnJcwA0lSOT9BupivNfg==
X-Received: by 2002:a17:902:cec7:b0:172:b20d:e666 with SMTP id
 d7-20020a170902cec700b00172b20de666mr3939024plg.154.1661437823867;
        Thu, 25 Aug 2022 07:30:23 -0700 (PDT)
Received: from ?IPv6:2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89?
 ([2600:8801:8d00:2b14:7b2a:31ea:d7be:5c89])
        by smtp.gmail.com with ESMTPSA id
 g4-20020aa79dc4000000b005379dd2deb5sm1316979pfq.137.2022.08.25.07.30.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 07:30:23 -0700 (PDT)
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
Subject: Dependency for binary package
Message-ID: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
Date: Thu, 25 Aug 2022 07:30:22 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="AEMBZK0v2vryGKWd6bBAOuAZoZT7MNdlR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Aug 2022 14:30:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57898

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--AEMBZK0v2vryGKWd6bBAOuAZoZT7MNdlR
Content-Type: multipart/mixed; boundary="EEGMU4SEy7yIOXDEPzsFuOjA9cOoe6l8w";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <0c8260c2-0da1-7566-3f9a-e90d4995b45b@ibeeto.com>
Subject: Dependency for binary package

--EEGMU4SEy7yIOXDEPzsFuOjA9cOoe6l8w
Content-Type: multipart/mixed;
 boundary="------------E94D06C3866260F8AA732608"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------E94D06C3866260F8AA732608
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I am packaging a binary package that has been built with the SDK created =

with the exact same configuration.

During do_package I am getting an error that a dependency on=20
libGLESv2.so()(64bit) cannot be met. Adding mesa to RDEPENDS does not=20
resolve the issue. I can bypass it in the recipe by adding file-rdeps to =

INSANE_SKIP. However, then when the rootfs is created libdnf complains=20
that the dependency on libGLES is not met and aborts.

The application works just fine on the target if I copy it manually to=20
the rootfs but that's not the best thing to do. It should be packaged=20
and installed.

Unfortunately I don't understand well enough how these checks work and=20
why they are complaining about it. Maybe somebody can shed some light on =
it.

Thanks,
Rudi


--------------E94D06C3866260F8AA732608
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

--------------E94D06C3866260F8AA732608--

--EEGMU4SEy7yIOXDEPzsFuOjA9cOoe6l8w--

--AEMBZK0v2vryGKWd6bBAOuAZoZT7MNdlR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmMHh34FAwAAAAAACgkQjYyoKSczm3Wj
iQf+Jdc7leHVDbqz+QIn7WigoY14eDU+6KXKfwy33GoAH/s58mcLgQ69yX4GHp/sSceE1htA+NsD
b0RMTBudEKQ5NQbFU22/iuYNI0JfHNgqQnbKdKiRJxK9FHkTBsWKEZ/dhOU2O0Lk9GRRJIVINKji
Gmx3V/7DQFeDmN46KqjTnZO2XSdk9r8V817ism/4o5/4JoHmqSofjHUr9esMTVT3ITV2dcT1d4+e
gFkIDsQ4wdi7vdAyr4BHqt/bUkU0vmxU2TQdT7mmRcYySzv3/iidMMkquFxFcE5wYVwYFUAojR1a
UXF/Y0WszQdI79jeboiVDZczmj+TpJ0q0c/1Ls6Y8g==
=EAEg
-----END PGP SIGNATURE-----

--AEMBZK0v2vryGKWd6bBAOuAZoZT7MNdlR--

