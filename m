Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EEB8C001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 16:09:30 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web11.58478.1697818159923372011
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 09:09:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AUKV8zNw;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-6bd0e1b1890so850618b3a.3
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 09:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697818159; x=1698422959; darn=lists.yoctoproject.org;
        h=in-reply-to:autocrypt:from:references:cc:to:content-language
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UVgxhrtzTzVEezZPax2Bfe5suUShCZkyH/JDRngHT5o=;
        b=AUKV8zNwaBNSH4s4/C4SzjFMp63P+Lz9y+YOTFCm/Q7diNmoTyWMKK3xwedlZ62nvs
         ije+q2NhDySe6bCVnoG2NWOv8LTXbMI/Xke+4rvsHKlISAYnXSUuQzBGwe6lnAKsu7by
         2GlxspStWZc+0i3TJ/uSqs0C0OFHWP/g3jrB/m17bcZJ4l+mztX84Nr9clGfkjTr0rwX
         /U4vm5MTAJAujovE8GyiDSpQULjSExrye/BVAjCktU3W/kBcRyj2KJQ1ydJ0eti0KYhd
         ANJDjEjv0feqEmdVvNEioK7BXyPL3ytvHnqizEQObCqQx3jDtGDJwR99ol8kVvEY/q5K
         xoCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697818159; x=1698422959;
        h=in-reply-to:autocrypt:from:references:cc:to:content-language
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UVgxhrtzTzVEezZPax2Bfe5suUShCZkyH/JDRngHT5o=;
        b=uktVPuHj/yp4RroSHt4sZY0kqqoxtZVvdOePxuTqxQIb8Ik1n+li08aB63s1udD1I8
         l6+uXxvhceEww7VD+TPn+gC3OsnA5evRNUkfJsvTzs9/iq6iQZjF0Hm9rnd2prXs1GOO
         FqmWHBrQUyE2s1GwqtRyGjWocOYdJUtqthgIGt58wDhGj4GvdO/wOwNWE58ISv9HMWtY
         GPklu5BVorq/Pmojo4yGNsIRo/YLXPW87yGOfVvkIlDdh0LB2Ce6b0CE4ork4+CIueLZ
         QHnVSQJeaNyXCrdZlSUea0JwZ5BmUFfQCWFyZI/sULbzSFpkWby8o7avNpFoYPL+2Tci
         buKA==
X-Gm-Message-State: AOJu0YyBF6Djdm1I/RU8ULhTcczzxkjJ/KkkNPJeV2u8Oqza9eHp09Mv
	5YzCgqkrECCt78ps2g3Hnsc=
X-Google-Smtp-Source: AGHT+IEHem6ISCPWIo1pX6EIkHvWVaD9a3Mq+hf5V0VcU1kv/+3xH5eOy4gULyNHgthqv33HPmsLrg==
X-Received: by 2002:aa7:991e:0:b0:6b8:2ef3:331d with SMTP id z30-20020aa7991e000000b006b82ef3331dmr1862833pff.10.1697818159211;
        Fri, 20 Oct 2023 09:09:19 -0700 (PDT)
Received: from ?IPV6:2601:646:9100:2cb0:f423:bfba:96f6:f9d8? ([2601:646:9100:2cb0:f423:bfba:96f6:f9d8])
        by smtp.gmail.com with ESMTPSA id i1-20020aa796e1000000b006bdf4dfbe0dsm1777374pfq.12.2023.10.20.09.09.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Oct 2023 09:09:18 -0700 (PDT)
Message-ID: <efcf2c21-6568-4964-be15-60404b686c2a@gmail.com>
Date: Fri, 20 Oct 2023 09:09:17 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] find: unrecognized: -printf
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>,
 "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>,
 "skandigraun@gmail.com" <skandigraun@gmail.com>
References: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
 <6baca76d-7d79-439a-a444-79a9d59e3b3c@gmail.com>
 <76E2052A-0E36-4C5D-BAF3-775544FB829A@arm.com>
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <76E2052A-0E36-4C5D-BAF3-775544FB829A@arm.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------L1X2hhucOm8KHBF0sCHJnGkw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 16:09:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61440

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------L1X2hhucOm8KHBF0sCHJnGkw
Content-Type: multipart/mixed; boundary="------------ULiMDJ0dnJjMnz9Bh2BbNiAM";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Ross Burton <ross.burton@arm.com>,
 "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>,
 "skandigraun@gmail.com" <skandigraun@gmail.com>
Message-ID: <efcf2c21-6568-4964-be15-60404b686c2a@gmail.com>
Subject: Re: [yocto] find: unrecognized: -printf
References: <L7wx.1697780290550525004.loGj@lists.yoctoproject.org>
 <6baca76d-7d79-439a-a444-79a9d59e3b3c@gmail.com>
 <76E2052A-0E36-4C5D-BAF3-775544FB829A@arm.com>
In-Reply-To: <76E2052A-0E36-4C5D-BAF3-775544FB829A@arm.com>

--------------ULiMDJ0dnJjMnz9Bh2BbNiAM
Content-Type: multipart/mixed; boundary="------------UKolPsopDUyL6drwnG0I04eL"

--------------UKolPsopDUyL6drwnG0I04eL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMjAvMjMgMjo1MSBBTSwgUm9zcyBCdXJ0b24gd3JvdGU6DQo+IE9uIDIwIE9jdCAy
MDIzLCBhdCAwNzowNywgR3lvcmd5IFNhcnZhcmkgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHNrYW5kaWdyYXVuPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90
ZToNCj4+DQo+PiBJbiBjYXNlIGJ1c3lib3gncyAiZmluZCIgdXRpbGl0eSBpcyBub3Qgc3Vm
ZmljaWVudCBmb3IgeW91LCB5b3UgY291bGQgZGlzYWJsZSAiZmluZCIgaW4gYnVzeWJveCdz
IGNvbmZpZywgYW5kIGFkZCB0aGUgZnVsbCB2ZXJzaW9uIG9mIGZpbmQgdG8geW91ciBpbWFn
ZSAocmVjaXBlIGlzIGNhbGxlZCBmaW5kdXRpbHMpLg0KPiANCj4gVGhlcmUgaXMgbm8gbmVl
ZCB0byBkaXNhYmxlIGZpbmQgaW4gYnVzeWJveCwgc2ltcGx5IG1ha2UgdGhlIGV0Y2tlZXBl
ciByZWNpcGUgUkRFUEVORCBvbiBmaW5kdXRpbHMuDQo+IA0KDQpBbHRlcm5hdGl2ZWx5LCBt
YWtlIGV0Y2tlZXBlciBzY3JpcHRzIG5vdCB1c2UgdGhlIGZpbmQgb3B0aW9ucyB0aGF0IA0K
YnVzeWJveCBkb2VzIG5vdCBzdXBwb3J0LCB0aGF0IG1pZ2h0IG1ha2UgaXQgcG9ydGFibGUg
dG9vLg0KDQoNCj4gUm9zcw0KPiANCj4gDQo+IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09
LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91
cC4NCj4gWW91IGF1dG9tYXRpY2FsbHkgZm9sbG93IGFueSB0b3BpY3MgeW91IHN0YXJ0IG9y
IHJlcGx5IHRvLg0KPiBWaWV3L1JlcGx5IE9ubGluZSAoIzYxNDI5KTogaHR0cHM6Ly9saXN0
cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2FnZS82MTQyOQ0KPiBNdXRlIFRoaXMg
VG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC8xMDIwNzYwMDcvMTk5
NzkxNA0KPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9j
dG8vbGVhdmUvNjY5MjE3My8xOTk3OTE0LzE4Mzc5NDg0MDAveHl6enkgW3Jhai5raGVtQGdt
YWlsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gDQo=
--------------UKolPsopDUyL6drwnG0I04eL
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------UKolPsopDUyL6drwnG0I04eL--

--------------ULiMDJ0dnJjMnz9Bh2BbNiAM--

--------------L1X2hhucOm8KHBF0sCHJnGkw
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCZTKmLQUDAAAAAAAKCRC7BTNVkZ0zFIe3
AJ0YWQzHQU6mYuL2Hu07w4uA0g+y1QCdHkfl3EENGymJvbDbotwwk5N+niA=
=0jUc
-----END PGP SIGNATURE-----

--------------L1X2hhucOm8KHBF0sCHJnGkw--

