Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 054E9C36014
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 15:21:18 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web11.22007.1743520871475389613
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 08:21:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JUHt+D2+;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-30185d00446so7956998a91.0
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 08:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743520871; x=1744125671; darn=lists.yoctoproject.org;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oBEOc0BO7HofkiMyGlkaA4sU/xcdmcsQ7rs5qe+h9UM=;
        b=JUHt+D2+mwsBfXyd+NPssdStCBPOxiJjLPwLLALvv46XQv2llhbN9+DmGwZvej2Y0O
         Opr9S2eDLYtKdX6DcGftqcabV0fC6vhl+OwYNQSIKPw3m3FLRuunNLaZo2WLIOaJdlT7
         KcG8jyzf33Wnq2uPQIFFzBydbP7+hRzar9LEuZKOIWjTsnNH3L0sYPtvSt4NbJ5Sk/Pv
         qlP0KK6lC0sIfOzf5VU3ToSA3/QgSjlb8XiBiF5MXCD5rh0OxxMf85J9Q3sxn4gavq6d
         F+lDKDMosSJb1qWua5uu35lcmkdCczJT2CQYzxWwA6lYO8cThy83iaUwMXzo5hFhHtjT
         WkpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743520871; x=1744125671;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oBEOc0BO7HofkiMyGlkaA4sU/xcdmcsQ7rs5qe+h9UM=;
        b=AD9nO0CaU3la1HxrEBplz/HhjCmwTMikWy+7EG+vbyZATsQ9YSFPMmbH2MFbY0eVyG
         8No8c/rMi2Ji+yaqPnfQ3Wg1zETwHQSGvGZZocfNB+5H6IP162R/SpcYei9pRGRJBwgs
         2ZhtnHOrrI94mebtq/Pwt1TivUagSLRGRWUoy93bKhhvjkUW66uQJAV8TQDqnReWHEJq
         d82ALnWk0N7zPaNs5XJAdMtaWN881z7F38A8DfL1crfjCEwTfCsoaJqsnduD9DBTu7SZ
         fQNnfMh5PgzzkmJnJjhbivTzkalqyieZTV3G0HeniNkncZEMyk3xUoGx4sqS1Sy67Vm5
         R/Dg==
X-Gm-Message-State: AOJu0YyKABG0Ei4j7HyZkNE2fSR58IACAAjTjCdE9Tbq/OCYX/bV6yWH
	oVcvFrcGefZdPNmvpGX601scyfGLC/AxOv4AIKEILK5SQCjmXNIi90EQSEev
X-Gm-Gg: ASbGncuwHDPuKUIDpM3qubt8j9AT81lByAad1MYPbGN7KRo9rOqkpGsA6XPHFKWxL1f
	hQuo19gbGO0yYTHRix8bI8v4oOiTkqymDzl7arJhgys8gHyQSU10fquX/wiQZZwmfoFL6UO+4lw
	1bSGNJGQPXTUY1RMq8d0WiC823rLgl13aZFjkSolM3bw/cID42eMLCq/WyUxCyvzjcH8ZK4aNOu
	2JJRr83EuzpOw+aaQTxuWNVQDQYoS2sRzkweWqrtFL/sjCGfEKq8eh0X+r6ZJbQE3oYL6d0YbIB
	/Ujswz1Gb8x9IIL4pvvqNBQKz3EfxuhVwg4ewLYigAWWfxIKAZFkbRrVFcMq9xZ0enrJo2+4P6X
	8cqHjrhzr1KUs3zr5VqrgqqfgO31/bDE5
X-Google-Smtp-Source: AGHT+IE66p6KFdoVWYvb755CKYlm+eIHXB/ILA+oPQrjjGUL9JzaMgUM0BxpZlT9yMqgbgo36xkmCA==
X-Received: by 2002:a17:90b:5443:b0:2ff:71d2:ee8f with SMTP id 98e67ed59e1d1-3056b79c0f4mr572924a91.13.1743520870493;
        Tue, 01 Apr 2025 08:21:10 -0700 (PDT)
Received: from ?IPV6:2601:646:8201:fd20:bc1d:fd52:af89:f82f? ([2601:646:8201:fd20:bc1d:fd52:af89:f82f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1df3a8sm89512285ad.195.2025.04.01.08.21.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:21:09 -0700 (PDT)
Message-ID: <24e2c174-fed3-4f40-a14e-8e5f742c1ec6@gmail.com>
Date: Tue, 1 Apr 2025 08:21:08 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
References: <CANNYZj9axQ4GmTvrUFPrRbQZzf5Fe6E+nZNAyeEQ6=B=dj5wKQ@mail.gmail.com>
 <16009.1743485014434686282@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <16009.1743485014434686282@lists.yoctoproject.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------YXDisbbm6RtLykkJtqJZfFe7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 15:21:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65049

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------YXDisbbm6RtLykkJtqJZfFe7
Content-Type: multipart/mixed; boundary="------------MBzxBc79EVkgurR0tUHy6nGj";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org, rajesh.d@mindteck.com,
 Alexander Kanavin <alex.kanavin@gmail.com>
Message-ID: <24e2c174-fed3-4f40-a14e-8e5f742c1ec6@gmail.com>
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
References: <CANNYZj9axQ4GmTvrUFPrRbQZzf5Fe6E+nZNAyeEQ6=B=dj5wKQ@mail.gmail.com>
 <16009.1743485014434686282@lists.yoctoproject.org>
In-Reply-To: <16009.1743485014434686282@lists.yoctoproject.org>

--------------MBzxBc79EVkgurR0tUHy6nGj
Content-Type: multipart/mixed; boundary="------------0AS8909qfTLl8Tsq0gKEOOaP"

--------------0AS8909qfTLl8Tsq0gKEOOaP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMy8zMS8yNSAxMDoyMyBQTSwgUmFqZXNoIEQgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgd3JvdGU6DQo+ICJUaGUgY29yZS1pbWFnZS1taW5pbWFsIGFuZCBjb3JlLWltYWdlLXdl
c3RvbsKgIGltYWdlIGJvb3QgcHJvY2VzcyBpcyANCj4gc2hvd24gaW4gdGhlIHZpZGVvcyBi
ZWxvdy4gSSB0cmllZCBzd2l0Y2hpbmcgdG8gZGlmZmVyZW50IHZpcnR1YWwgDQo+IHRlcm1p
bmFscyB1c2luZyBrZXlib2FyZCBzaG9ydGN1dCBrZXlzIChDdHJsICsgQWx0ICsgRjHigJNG
NiksIGJ1dCBuZWl0aGVyIA0KPiBhIGNvbnNvbGUgd2luZG93IG5vciBhIEdVSSBhcHBlYXJl
ZC4iDQo+IA0KDQpJdCBtaWdodCBiZSB0aGF0IG11bHRpcGxlIHZ0cyBhcmUgbm90IGVuYWJs
ZWQuDQp0cnkgc2V0dGluZw0KU1lTVklOSVRfRU5BQkxFRF9HRVRUWVMgPSAiMSAyIDMgNCA1
IDYiDQppbiBsb2NhbC5jb25mDQoNCk90aGVyIG9wdGlvbiB0byB0cnkgd291bGQgYmUgdG8g
dXNlIHN5c3RlbWQgZm9yIHRoYXQgdXNlIERJU1RSTyA9IA0KInBva3ktYWx0Y2ZnIg0KDQo+
IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxs
IG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gWW91IGF1dG9tYXRpY2FsbHkgZm9s
bG93IGFueSB0b3BpY3MgeW91IHN0YXJ0IG9yIHJlcGx5IHRvLg0KPiBWaWV3L1JlcGx5IE9u
bGluZSAoIzY1MDQyKTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8v
bWVzc2FnZS82NTA0Mg0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9tdC8xMTE5MzM3MDIvMTk5NzkxNA0KPiBNdXRlICNraXJrc3RvbmU6aHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbXV0ZWhhc2h0YWcva2lya3N0
b25lDQo+IE11dGUgI3NjYXJ0aGdhcDpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
Zy95b2N0by9tdXRlaGFzaHRhZy9zY2FydGhnYXANCj4gTXV0ZSAjeW9jdG86aHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbXV0ZWhhc2h0YWcveW9jdG8NCj4gR3Jv
dXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJz
Y3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViIFty
YWoua2hlbUBnbWFpbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0K
--------------0AS8909qfTLl8Tsq0gKEOOaP
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------0AS8909qfTLl8Tsq0gKEOOaP--

--------------MBzxBc79EVkgurR0tUHy6nGj--

--------------YXDisbbm6RtLykkJtqJZfFe7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCZ+wEZQUDAAAAAAAKCRC7BTNVkZ0zFIxT
AJ9a2OOvyXfPA7VY/t5zGBm2mkU22ACdHXse/ovmSSapuioz2cZTXvDcLkw=
=TcCQ
-----END PGP SIGNATURE-----

--------------YXDisbbm6RtLykkJtqJZfFe7--

