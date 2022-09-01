Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA4DECAAD3
	for <webhook@archiver.kernel.org>; Thu,  1 Sep 2022 20:51:59 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web11.17831.1662065514846453214
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Sep 2022 13:51:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gtx3k52u;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id
 i7-20020a17090adc0700b001fd7ccbec3cso6492182pjv.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 01 Sep 2022 13:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:autocrypt:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date;
        bh=IlfDwvYb377f/tb1IdUV7yu1Y+RIOZiO3OwMarTvxDU=;
        b=gtx3k52uW7ocXtgV3XUFAidnwe1MHO5z+0oFcf8eEAIRIDfXEY1OvBbZvlJUHb+ysT
         TqNH97TgF5OeqrgYixv8rLI8LSU2kJMcaWSeiGe8Wu83y9XotC+DDzSfC6XtlS0pU+Q6
         l//Ucb02E3nTUcEEuLgcJhoAQjG5CikEHxbsI//EIJ7eiXHULTHnw/uHB6FoJ4M8cYdc
         G2h2Nkbvyk5mqgHhELmVpFNIfcaoYlOLy7qCUrKphCu/QA/shI3kY1A5TF+W22TpnyiY
         odrtqyuuOHxJtcDwo2ax3Hmey5/EurjXXBMaUfGZZyOdS4IB3PdGCBnXbpMEU+Kz0QAA
         ZMqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:autocrypt:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date;
        bh=IlfDwvYb377f/tb1IdUV7yu1Y+RIOZiO3OwMarTvxDU=;
        b=kKHa0InzVYfPXVLy55Dprx1/1S4XUFGLIIISvKVDOR1iRhw791Ysn+uxKwkY5LER7R
         XnxAoqzocUrVDRzmtxEizKypzxNc6gOHxz+KhdWoPg6LWmSCzSvTRJodtz/0BTJxbCZP
         qKSE8k47In5KqGB/Goqn98/EM3OUxm5qOT6H2+Br7qiTMFLAaQBNwmhQtuZ4QsWEJSst
         xOweSgV468LdTxq07G5BN31qts59nFMIGYg84GSTQWy+YIlp7FydsV3eV3F3Iy4bDfqw
         PoH3vODjTHajSU9O7gQqu+Va0KLJP0wVAstB5Dz8xsUKvm5CCc0a41hMb1V6AZXkZCuH
         c6jQ==
X-Gm-Message-State: ACgBeo0fNtctsq+Y4oOG1Nkg4OIXVglnQ5001CUCf3rcP3FyoUX4ciMW
	uOp18xHuc5VRkJ95BNLCoS4=
X-Google-Smtp-Source: 
 AA6agR46svKREb3YDfWVDXU0PjYEmt+214J0kCB9xxIQXB0v1xyMOfYF/F07KgQwdsQ3eaSq1G466w==
X-Received: by 2002:a17:902:f351:b0:174:9ee1:83df with SMTP id
 q17-20020a170902f35100b001749ee183dfmr23131004ple.15.1662065513455;
        Thu, 01 Sep 2022 13:51:53 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:9d11:a97:40b9:5dab?
 ([2601:646:9200:a0f0:9d11:a97:40b9:5dab])
        by smtp.gmail.com with ESMTPSA id
 o11-20020a62cd0b000000b0052cc561f320sm31342pfg.54.2022.09.01.13.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 13:51:52 -0700 (PDT)
Message-ID: <3751d58b-0306-e10c-6698-1a62e9f670dc@gmail.com>
Date: Thu, 1 Sep 2022 13:51:51 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.2.0
Subject: Re: [yocto] Adding the Firmware file (.bin) to the Yocto recipes
 #dunfell
Content-Language: en-US
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>,
 yocto@lists.yoctoproject.org
References: <5IB8.1662058301609430083.aVmQ@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <5IB8.1662058301609430083.aVmQ@lists.yoctoproject.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------WC3ep6mzN36HAHWeMnsYBKxm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Sep 2022 20:51:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57970

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------WC3ep6mzN36HAHWeMnsYBKxm
Content-Type: multipart/mixed; boundary="------------1mZAuEEzP0pi3R2c8TrjrgYt";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>,
 yocto@lists.yoctoproject.org
Message-ID: <3751d58b-0306-e10c-6698-1a62e9f670dc@gmail.com>
Subject: Re: [yocto] Adding the Firmware file (.bin) to the Yocto recipes
 #dunfell
References: <5IB8.1662058301609430083.aVmQ@lists.yoctoproject.org>
In-Reply-To: <5IB8.1662058301609430083.aVmQ@lists.yoctoproject.org>

--------------1mZAuEEzP0pi3R2c8TrjrgYt
Content-Type: multipart/mixed; boundary="------------Xb2tiAhNxMsPLn0Il3jVIfGf"

--------------Xb2tiAhNxMsPLn0Il3jVIfGf
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOS8xLzIyIDExOjUxIEFNLCBNYWhlbmRyYSBTb25kYWdhciB3cm90ZToNCj4gSGkuLi4g
VGhlcmUNCj4gDQo+IEhvcGUgYWxsIGFyZSBkb2luZyB3ZWxsDQo+IA0KPiBSaWdodCBub3cs
IEknbSBkZWFsaW5nIHdpdGggdGhlICpUUC1MaW5rIEJsdWV0b290aCBkb25nbGUqLg0KPiBN
eSBnb2FsIGlzIHRvIGFkZCB0aGUgQmx1ZXRvb3RoIGZ1bmN0aW9uYWxpdHkgd2l0aCB0aGUg
WW9jdG8gY3VzdG9tIGltYWdlDQo+IEFmdGVyIHNvbWUgcmVzZWFyY2ggaSBnb3QgdG8ga25v
dyB0aGF0IHRoZSBCbHVldG9vdGggZG9uZ2xlLCB0aGF0IEknbSANCj4gdXNpbmcgaXMgdW5z
dXBwb3J0ZWQgYnkgYWN0aXZhdGluZyB0aGUgQmx1ZXRvb3RoIGRyaXZlcnMgb25seSBieSBt
ZW51Y29uZmlnDQo+IEknbGwgaGF2ZSB0byBtYW51YWxseSBhZGQgdGhlICpydGw4NzYxYl9m
dy5iaW4qIGZpbGUgd2l0aCB0aGUgaW1hZ2UNCj4gDQo+IEhlcmUgaXMgdGhlIGdvb2QgcG9z
dCBmb3IgdGhlIHNhbWUNCj4gaHR0cHM6Ly9hc2t1YnVudHUuY29tL3F1ZXN0aW9ucy8xMzcw
NjYzL2JsdWV0b290aC1zY2FuLWRvZXNudC1kZXRlY3QtYW55LWRldmljZS1vbi11YnVudHUt
MjEtMTAgPGh0dHBzOi8vYXNrdWJ1bnR1LmNvbS9xdWVzdGlvbnMvMTM3MDY2My9ibHVldG9v
dGgtc2Nhbi1kb2VzbnQtZGV0ZWN0LWFueS1kZXZpY2Utb24tdWJ1bnR1LTIxLTEwPg0KPiAN
Cj4gTm93LCBteSBwcm9ibGVtIGlzLCBJJ20gZ2V0dGluZyBzb21lIGVycm9ycyBhZnRlciBh
ZGRpbmcgaXQncyBmaXJtd2FyZSBmaWxlDQo+IA0KPiBIZXJlIGlzIHRoZSBzdGVwcywgd2hp
Y2ggaSBoYXZlIGdvbmUgdGhyb3VnaA0KPiANCj4gMS4gQ3JlYXRlZCBsaW51eC1maXJtd2Fy
ZSBmaWxlIHVuZGVyIHJlY3BpZXMta2VybmVsIGRpcmVjdG9yeQ0KDQoNCnRoZXJlIGFscmVh
ZHkgaXMgYSBsaW51eC1maXJtd2FyZSByZWNpcGUgDQptZXRhL3JlY2lwZXMta2VybmVsL2xp
bnV4LWZpcm13YXJlL2xpbnV4LWZpcm13YXJlXzIwMjIwNzA4LmJiDQoNCj4gDQo+IDIuIGFk
ZGVkIHRoZSBydGw4NzYxYl9mdy5iaW4gdG8gL2ZpbGVzIGRpcmVjdG9yeSB1bmRlciBsaW51
eC1maXJtd2FyZSBmaWxlDQoNCk9LDQoNCj4gDQo+IDMuIENyZWF0ZWQgLmJiYXBwZW5kIGZp
bGUgYXMgcGVyIHRoZSBhdmFpbGFibGUga2VybmVsIG5hbWUgY2FsbGVkIA0KPiAqImxpbnV4
LXN0bTMybXBfJS5iYmFwcGVuZCIqDQoNCmJiYXBwZW5kIHNob3VsZCBiZSBmb3IgbGludXgt
ZmlybXdhcmUgcmVjaXBlLg0KDQo+IA0KPiA0LiBpbnN0YWxsZWQgdGhlIC5iaW4gaW1hZ2Ug
d2l0aCB0aGUgY3VzdG9tIHJlY2lwZXMgZmlsZSBjYWxsZWQgDQo+IGN1c3RvbS1pbWFnZS5i
YiBhcyBmb2xsb3dzDQo+ICDCoMKgwqAgIyBEcml2ZXJzIGZvciB0aGUgVFBMLUxpbmsgQmx1
ZXRvb3RoIGRvbmdsZQ0KPiAgwqDCoMKgIElNQUdFX0lOU1RBTEwgKz0gImxpbnV4LWZpcm13
YXJlLXJ0bDg3NjFiX2Z3Ig0KDQpJIHRoaW5rIGl0IHdpbGwgYmUgY2FsbGVkIHNvbWV0aGlu
ZyBlbHNlIHRoZW4gcGVyaGFwcyANCmxpbnV4LWZpcm13YXJlLXJ0bDg3NjFiIG9yIHNvbWUg
c3VjaC4gQXZvaWQgdXNpbmcgJ18nIGluIHRoZSBuYW1lIGFzIGl0cyANCnVzZWQgYSB2ZXJz
aW9uIHNlcGFyYXRvciBhbmQgY2FuIGNvbmZ1c2UgdGhlIHBhY2thZ2luZw0KDQo+IA0KPiA1
LiBiYWtlIHRoZSBpbWFnZSB3aXRoIGJpdGJha2UgY3VzdG9tLWltYWdlDQo+IA0KPiBoZXJl
IGlzIHRoZSB0cmVlIG9mIHRoZSBkaXJlY3Rvcmllcw0KPiANCj4gDQo+IFRoZSBlcnJvciBz
Y3JlZW5zaG90IGlzIG1lbnRpb25lZCBoZXJlDQo+IA0KPiANCj4gDQo+IA0KPiBUaGUgY29u
dGVudCBvZiB0aGUgLmJiYXBwZW5kIGZpbGUgaXMgbGlzdGVkIGhlcmUNCj4gDQo+IA0KPiAN
Cj4gQ2FuIGFueSBvbmUgaGVscCBtZSBoZXJlID8NCj4gQWxsIHN1Z2dlc3Rpb25zIGFuZCBj
b21tZW50cyB3ZWxjb21lIDopDQo+IA0KPiBSZWdhcmRzDQo+IE1haGVuZHJhIFNvbmRhZ2Fy
DQo+IA0KPiANCj4gDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3Ug
cmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBZb3UgYXV0b21h
dGljYWxseSBmb2xsb3cgYW55IHRvcGljcyB5b3Ugc3RhcnQgb3IgcmVwbHkgdG8uDQo+IFZp
ZXcvUmVwbHkgT25saW5lICgjNTc5NjkpOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5v
cmcvZy95b2N0by9tZXNzYWdlLzU3OTY5DQo+IE11dGUgVGhpcyBUb3BpYzogaHR0cHM6Ly9s
aXN0cy55b2N0b3Byb2plY3Qub3JnL210LzkzNDAyOTM4LzE5OTc5MTQNCj4gTXV0ZSAjZHVu
ZmVsbDpodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by9tdXRlaGFzaHRh
Zy9kdW5mZWxsDQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcv
Zy95b2N0by91bnN1YiBbcmFqLmtoZW1AZ21haWwuY29tXQ0KPiAtPS09LT0tPS09LT0tPS09
LT0tPS09LQ0KPiANCg==
--------------Xb2tiAhNxMsPLn0Il3jVIfGf
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------Xb2tiAhNxMsPLn0Il3jVIfGf--

--------------1mZAuEEzP0pi3R2c8TrjrgYt--

--------------WC3ep6mzN36HAHWeMnsYBKxm
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCYxEbZwUDAAAAAAAKCRC7BTNVkZ0zFASX
AJ91TtgrojhlEGXgz0QRKS+5hadmAQCcCw64x5z/9whVy9hGcs/Wydz48CE=
=4BkT
-----END PGP SIGNATURE-----

--------------WC3ep6mzN36HAHWeMnsYBKxm--

