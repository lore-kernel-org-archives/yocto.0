Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E41C4C00A8F
	for <webhook@archiver.kernel.org>; Tue, 24 Oct 2023 17:16:01 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web11.23973.1698167755524169204
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Oct 2023 10:15:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TIUYMklK;
 spf=pass (domain: gmail.com, ip: 209.85.210.177, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-6b709048f32so3824214b3a.0
        for <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 10:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698167755; x=1698772555; darn=lists.yoctoproject.org;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aaKx/qei/uCzyvbUGjadWGs+tT1kczg2RyucMJXy/u4=;
        b=TIUYMklKQALeAqVCv12QD8xAu/u9DRhr0ISUWsdySd68AEI8ILppdU+EMIoG+Lk4Ei
         NjlEml2pbQQYMwfsJRZj+rBT6GgUOla2rTODfTkJpWf9aaZptSjUQvlOYWimEg6JVhYE
         bXfWddc+hjziWEwLMfJpOk1TdZJdWV1K4+f6CB7qUTvCPKeDwvhVb3neSrYawkQ7kOlJ
         6Il3NDUlJ+bKMa8eukqHtWSZoJFXx4RLaTKc/vhsNgMFFpByIwmT/6STh5AXx20NYYKn
         pWDu+9//c9TxbWMZxfP0WZxYw+57rACZHLxb4ctHUTCNBQD6N0o94lnWjmuOFfzgWR0l
         8S/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698167755; x=1698772555;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aaKx/qei/uCzyvbUGjadWGs+tT1kczg2RyucMJXy/u4=;
        b=FtlAOEkyve/kRPyEfQ+XEC3frl5KKBrDcktPa5ajqgnpZmSfsKF6KmnbmewVMVFRJb
         j/zCUeRjB0gevlI9xVd/3DSmvqf/DA5+jXBnhaspu9BO6gW9XYDrITzKF0bRWPT9Fted
         uC9u60+xdX1JiV16wH9xiH+b1YbuQc4m+wBkbD6efoVCu41wXoyNTuuQQ1EkoZq6ukeC
         XU1QHDPNb6fChWWuVAlzQTlb8Jciv05HCDjIJtLl31nTNaEXMjkaB5FahVzrXtdWi+iJ
         8ui0/JiFv2PI4EecJmLmJ+WVw7qRPOIvfG0zo/pQQmPV3WxbrToSDMnhZpVOavUvJJ1E
         /0sw==
X-Gm-Message-State: AOJu0YyDoDvSq5uWiDPS5mAcwBI0dUtqI3y7bBbfVKiQbLyrE3LiII7x
	m/9+adsNZBXpxqMq6/hsj4E=
X-Google-Smtp-Source: AGHT+IGMRcAlu+gBOdZpFVjv4rtm7FNkrRHAmHq509u6l02/qjX5jwnkOlntBzM11QtIWNOLmxUCRw==
X-Received: by 2002:a05:6a20:72a3:b0:13a:e955:d958 with SMTP id o35-20020a056a2072a300b0013ae955d958mr3531914pzk.7.1698167754601;
        Tue, 24 Oct 2023 10:15:54 -0700 (PDT)
Received: from ?IPV6:2601:646:9100:2cb0:c1f:5849:a4c4:8941? ([2601:646:9100:2cb0:c1f:5849:a4c4:8941])
        by smtp.gmail.com with ESMTPSA id s23-20020aa78bd7000000b0068c006dd5c1sm7822460pfd.115.2023.10.24.10.15.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 10:15:49 -0700 (PDT)
Message-ID: <0752665c-4f37-4229-967f-916ed250c06a@gmail.com>
Date: Tue, 24 Oct 2023 10:15:44 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Make
 meta-oe source mirror config wider coverage
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
References: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------dtw1q1Ryfq00kwjp5UAecmWs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Oct 2023 17:16:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61471

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------dtw1q1Ryfq00kwjp5UAecmWs
Content-Type: multipart/mixed; boundary="------------QSOklgNQjHCmvYVsa0hSdqRt";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Cc: David Pierret <david.pierret@smile.fr>
Message-ID: <0752665c-4f37-4229-967f-916ed250c06a@gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper] [PATCH] config.json: Make
 meta-oe source mirror config wider coverage
References: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20231024110322.1239362-1-richard.purdie@linuxfoundation.org>

--------------QSOklgNQjHCmvYVsa0hSdqRt
Content-Type: multipart/mixed; boundary="------------ywN0G0ghScgc0YDe90BL4npS"

--------------ywN0G0ghScgc0YDe90BL4npS
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTAvMjQvMjMgNDowMyBBTSwgUmljaGFyZCBQdXJkaWUgd3JvdGU6DQo+IFNvbWUgcmVj
aXBlcyBkZXBlbmQgb24gRElTVFJPX0ZFQVRVUkVTLCBjb21tZXJjaWFsIGxpY2Vuc2luZyBv
ciBjb21waWxlcg0KPiBjb25maWcgbGlrZSBmb3J0cmFuLiBTZXQgdGhlc2UgdGhpbmdzIHNv
IHRoYXQgd2UgZ2V0IHdpZGVyIHNvcnVjZSBtaXJyb3INCj4gY292ZXJhZ2UgYW5kIGZld2Vy
IHdhcm5pbmdzLg0KPiANCj4gJ2NvbW1lcmNpYWwnIGxpY2Vuc2UgdXNhZ2UgaXMgb2sgaGVy
ZSBzaW5jZSB3ZSdyZSBub3QgYnVpbGRpbmcgYW5kIHRoZW4NCj4gc2hpcHBpbmcgYW55IGJp
bmFyaWVzIG9yIHVzaW5nIGl0LCBvbmx5IG1pcnJvcmluZyB0aGUgc291cmNlIGNvZGUuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBSaWNoYXJkIFB1cmRpZSA8cmljaGFyZC5wdXJkaWVAbGlu
dXhmb3VuZGF0aW9uLm9yZz4NCj4gLS0tDQo+ICAgY29uZmlnLmpzb24gfCA2ICsrKysrKw0K
PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1naXQg
YS9jb25maWcuanNvbiBiL2NvbmZpZy5qc29uDQo+IGluZGV4IDBjMzU2MzIuLjYxY2YzNzQg
MTAwNjQ0DQo+IC0tLSBhL2NvbmZpZy5qc29uDQo+ICsrKyBiL2NvbmZpZy5qc29uDQo+IEBA
IC0xNDUxLDYgKzE0NTEsMTIgQEANCj4gICAgICAgICAgICAgICAgICAgIiR7QlVJTERESVJ9
Ly4uL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtaW5pdHJhbWZzIiwNCj4gICAgICAgICAgICAg
ICAgICAgIiR7QlVJTERESVJ9Ly4uL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtd2Vic2VydmVy
Ig0KPiAgICAgICAgICAgICAgIF0sDQo+ICsgICAgICAgICAgICAiZXh0cmF2YXJzIiA6IFsN
Cj4gKyAgICAgICAgICAgICAgICAiTElDRU5TRV9GTEFHU19BQ0NFUFRFRCA9ICdjb21tZXJj
aWFsJyIsDQo+ICsgICAgICAgICAgICAgICAgIkRJU1RST19GRUFUVVJFUzphcHBlbmQgPSAn
IHBhbSBzeXN0ZW1kIHVzcm1lcmdlJyIsDQo+ICsgICAgICAgICAgICAgICAgIkZPUlRSQU46
Zm9yY2V2YXJpYWJsZSA9ICcsZm9ydHJhbiciLA0KPiArICAgICAgICAgICAgICAgICJSVU5U
SU1FVEFSR0VUOmFwcGVuZDpwbi1nY2MtcnVudGltZSA9ICcgbGlicXVhZG1hdGgnIg0KDQpJ
IHRoaW5rIFJVTlRJTUVUQVJHRVQgc2hvdWxkIGF1dG9tYXRpY2FsbHkgYmUgYXBwZW5kZWQg
d2l0aCBsaWJxdWFkbWF0aCANCmlmIEZPUlRSQU4gaXMgc2V0Lg0KDQo+ICsgICAgICAgICAg
ICBdLA0KPiAgICAgICAgICAgICAgICJzdGVwMSIgOiB7DQo+ICAgICAgICAgICAgICAgICAg
ICJzaG9ydG5hbWUiIDogIlNvdXJjZXMgcHJlLWZldGNoaW5nIiwNCj4gICAgICAgICAgICAg
ICAgICAgIkJCVEFSR0VUUyIgOiAidW5pdmVyc2UgLWMgZmV0Y2ggLWsiLA0KPiANCj4gDQo+
IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxs
IG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gWW91IGF1dG9tYXRpY2FsbHkgZm9s
bG93IGFueSB0b3BpY3MgeW91IHN0YXJ0IG9yIHJlcGx5IHRvLg0KPiBWaWV3L1JlcGx5IE9u
bGluZSAoIzYxNDY0KTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8v
bWVzc2FnZS82MTQ2NA0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZy9tdC8xMDIxNTU0NjgvMTk5NzkxNA0KPiBHcm91cCBPd25lcjogeW9jdG8r
b3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbGVhdmUvNjY5MjE3My8xOTk3OTE0LzE4
Mzc5NDg0MDAveHl6enkgW3Jhai5raGVtQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gDQo=
--------------ywN0G0ghScgc0YDe90BL4npS
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------ywN0G0ghScgc0YDe90BL4npS--

--------------QSOklgNQjHCmvYVsa0hSdqRt--

--------------dtw1q1Ryfq00kwjp5UAecmWs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCZTf7wQUDAAAAAAAKCRC7BTNVkZ0zFHzC
AJ0R9ldg6fPggyCegOIlNuu1Og26MwCfdXy5EgOYeQuYjFi/IkXmkHWMgyo=
=w2Uu
-----END PGP SIGNATURE-----

--------------dtw1q1Ryfq00kwjp5UAecmWs--

