Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C11C6FD19
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 17:14:36 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web11.26361.1678727667623368331
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 10:14:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LGSO+Hjl;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id h8so13710340plf.10
        for <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 10:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678727667;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ltokAZsz405mhdWKT5WnrK4g3edw3FfXMW8/gIXuuw=;
        b=LGSO+HjlULsyefyCFr4R+mYX0TY3AoMy15meUeAeGjOqZDjVcA2ILgnMTZjEhu8Lbp
         JnHUFQWjDqWj9lQjYVPkIialdMtxkR+VfVRyozp5pYCtcP6ersufGdjj7Yl3+UaHy/Qi
         QvQyqzttB7ltHZ4Ybrahpq3lkMG0cYbV6NXK7iyOwqk/BkwyEta+FsK6psbakPUeImPL
         4911hXjb0vcCkOha7klMP3tqy7e17v/6L/EUkpQ8Y/T4KtfPupby5YMNSg/yt0oOy3DU
         RvKBVv1Isv/bzflKAkqOBdunhghazXETilrT5Q4JZnFTxF/sTosju8warULtwA5r+EVV
         VJqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678727667;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9ltokAZsz405mhdWKT5WnrK4g3edw3FfXMW8/gIXuuw=;
        b=OgIa4VGGW4wDmpdaDf9RopN+HZFrp9rhODXp661HilAdP5OENpYUE8Sf52R5T10Cte
         1pX0sfk2Gra+WpJG4SYi2S5s2mLiIbTnBZcZmeDXxAJrQIWYM631zOYiFlj3EYI7burv
         vGSJ957Jf3txrjpat2ekzcoWMcTnev0EoZhHTaHlsPjhiGrWXifKwhWfbIqn3R5cwOxX
         45qyX/PwYrpJi6Ve309EsnM2Wh53EuQCpL5jkJW3WSRy5gsaXvfw9JVpn+BOKffxkFu1
         FOUiuK9+IA3PQvQEzL/zdfFe8OSEBtucEeIaxptzVEXrIK9xmK7fVBZ8773v8wAlNuKs
         T8ZA==
X-Gm-Message-State: AO0yUKUlUDFmFVe5yT8M+pzw8jtOeAmkwmh3bXc0Zs6BvOPmV6ZiyXoK
	cOL5nxtTWbheQHfzJgmbwkbzKfqM2O4=
X-Google-Smtp-Source: AK7set/nAJFfZJ6llmYAAh5JSeRiDcl677t7OckjMsTUuHEnK2h2TV4TGkB4pAfImYXZ1E53LrLZAg==
X-Received: by 2002:a05:6a20:258c:b0:cd:11e3:4105 with SMTP id k12-20020a056a20258c00b000cd11e34105mr34423449pzd.27.1678727666790;
        Mon, 13 Mar 2023 10:14:26 -0700 (PDT)
Received: from ?IPV6:2601:646:9181:d380:a932:73a4:a930:fc84? ([2601:646:9181:d380:a932:73a4:a930:fc84])
        by smtp.gmail.com with ESMTPSA id f14-20020aa782ce000000b005a852875590sm4677130pfn.113.2023.03.13.10.14.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 10:14:25 -0700 (PDT)
Message-ID: <93f01c48-dd8d-05ed-aa49-a39d804bff33@gmail.com>
Date: Mon, 13 Mar 2023 10:14:24 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.8.0
Subject: Re: [yocto] State of Yocto styleguide and oe-stylize.py script
To: embedded@vivavis.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------8I6j09sJRjrfMH0HX86kkqj0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 17:14:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59418

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------8I6j09sJRjrfMH0HX86kkqj0
Content-Type: multipart/mixed; boundary="------------4yZK0v7hu0AsXAECIWCNt6Wz";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: embedded@vivavis.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <93f01c48-dd8d-05ed-aa49-a39d804bff33@gmail.com>
Subject: Re: [yocto] State of Yocto styleguide and oe-stylize.py script
References: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>
In-Reply-To: <c607b08fa41a4dfeb70aad68f70f961a@vivavis.com>

--------------4yZK0v7hu0AsXAECIWCNt6Wz
Content-Type: multipart/mixed; boundary="------------A0pdNGEXuogIQ0WJDtooNOFj"

--------------A0pdNGEXuogIQ0WJDtooNOFj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMy8xMy8yMyA3OjIwIEFNLCBWSVZBVklTIEFHIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIHdyb3RlOg0KPiBIaSwNCj4gDQo+IEknbSB3b25kZXJpbmcgd2hldGhlciB0aGUgc3R5
bGVndWlkZSB3d3cub3BlbmVtYmVkZGVkLm9yZy93aWtpL1N0eWxlZ3VpZGUsDQo+IG1ldGEt
b3BlbmVtYmVkZGVkL2NvbnRyaWIvb2Utc3R5bGl6ZS5weSBvciBub25lIG9mIHRoZW0gaXMg
dGhlIHNvdXJjZSBvZg0KPiB0cnV0aCBmb3Igd3JpdGluZyBhIGdvb2QgcmVjaXBlLg0KPiAN
Cj4gRS5nLiwgaWYgeW91IHJ1biBvZS1zdHlsaXplLnB5LCB0aGUgU1JDUkVWIHZhcmlhYmxl
IGlzIHBsYWNlZCBhYm92ZSBTUkNfVVJJLA0KPiBvciBSREVQRU5EUyBpcyBwbGFjZWQgYWJv
dmUgRklMRVMsIHdoaWNoIGlzIG5vdCB3aGF0IHRoZSBXaWtpIGRvY3VtZW50cy4NCj4gQW5k
IHRoZXJlIGFyZSBtb3JlIGRpc2NyZXBhbmNpZXMgb2YgdGhpcyB0eXBlLg0KPiANCj4gRnVy
dGhlcm1vcmUsIHRoZSBzY3JpcHQgZG9lc24ndCBrbm93IHRoZSBGSUxFU0VYVFJBUEFUSFMg
dmFyaWFibGUgaW4gYmJhcHBlbmQgZmlsZXMNCj4gYW5kIG1vdmVzIGl0IHRvIHRoZSBlbmQg
b2YgbXkgcmVjaXBlLiBXZWxsLCB0aGlzIGlzIG5vdCBkZWNyaWJlZCBpbiB0aGUgV2lraSwg
YnV0IGEgbG9vaw0KPiBpbnRvIGFwcGVuZCBmaWxlcyBpbiBtZXRhLW9wZW5lbWJlZGRlZCBz
aG93cywgdGhhdCBpdCBpcyBjb21tb24gcGFjdGljZSB0byBwdXQNCj4gRklMRVNFWFRSQVBB
VEhTIGluIHRoZSBmaXJzdCBsaW5lIG9mIHRoZSByZWNpcGUuDQo+IA0KPiBUaGUgV2lraSBo
YXMgYW4gaW50ZXJlc3Rpbmcgbm90ZSBhbmQgdGhlIGVuZDogIllvdSBjYW4gcnVuIGNvbnRy
aWIvb2Utc3R5bGl6ZS5weSBmcm9tDQo+IG1ldGEtb2Ugb24geW91ciByZWNpcGVzIGJlZm9y
ZSBzdWJtaXR0aW5nIHRoZW07IGhvd2V2ZXIgaXQgaXMgbm90IG5lY2Vzc2FyaWx5IHVwLXRv
LWRhdGUNCj4gd2l0aCBhbGwgY3VycmVudCBzdHlsZSBjb252ZW50aW9ucy4gVGhpcyBwYWdl
IHNob3VsZCBiZSBjb25zaWRlcmVkIHRoZSBjYW5vbmljYWwgcmVmZXJlbmNlLiINCj4gDQo+
IEZ1cnRoZXJtb3JlLCB0aGVyZSdzIGdpdGh1Yi5jb20vb3BlbmVtYmVkZGVkL21ldGEtb3Bl
bmVtYmVkZGVkL3B1bGwvNDY1DQo+IHByb3ZpZGluZyBhbm90aGVyIHJ1bGVzZXQgZm9yIHRo
ZSBuZXcgbGludGVyLg0KPiANCj4gU28sIG15IHF1ZXN0aW9uIHRvIHRoZSBZb2N0byBtYWlu
dGFpbmVycyBpcywgd2hhdCBpcyB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGUgc3R5bGVndWlk
ZQ0KPiBhbmQgb2Utc3R5bGl6ZS5weT8gQXJlIHRoZXJlIHBsYW5zIHRvIHN5bmNocm9uaXpl
IHRoZW0/DQoNCm9lLXN0eWxpemUucHkgaXMgc3RpbGwgdGhlIGxpbnRlciBvZiBjaG9pY2Ug
YnV0IGFzIHlvdSBoYXZlIG5vdGVkIGl0IGhhcyANCmJlZW4gbGFja2luZyBvbiBjZXJ0YWlu
IGFyZWFzIGFuZCB3aWtpIHNob3VsZCBiZSB1cGRhdGVkIHRvIG1hdGNoIHdoYXQgDQppdCBw
cm9kdWNlcy4gSXQgZG9lcyBuZWVkIHNvbWUgVExDIGFuZCBwYXRjaGVzIGFyZSB3ZWxjb21l
Lg0KDQo+IA0KPiBUaGFua3MgZm9yIGNsYXJpZmljYXRpb24uDQo+IA0KPiBDYXJzdGVuIFN0
ZWxsaW5nDQo+IA0KPiANCj4gDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtz
OiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBZb3Ug
YXV0b21hdGljYWxseSBmb2xsb3cgYW55IHRvcGljcyB5b3Ugc3RhcnQgb3IgcmVwbHkgdG8u
DQo+IFZpZXcvUmVwbHkgT25saW5lICgjNTk0MDgpOiBodHRwczovL2xpc3RzLnlvY3RvcHJv
amVjdC5vcmcvZy95b2N0by9tZXNzYWdlLzU5NDA4DQo+IE11dGUgVGhpcyBUb3BpYzogaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210Lzk3NTgxMzc0LzE5OTc5MTQNCj4gR3Jv
dXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJz
Y3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViIFty
YWoua2hlbUBnbWFpbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0K
--------------A0pdNGEXuogIQ0WJDtooNOFj
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------A0pdNGEXuogIQ0WJDtooNOFj--

--------------4yZK0v7hu0AsXAECIWCNt6Wz--

--------------8I6j09sJRjrfMH0HX86kkqj0
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCZA9Z8AUDAAAAAAAKCRC7BTNVkZ0zFLzP
AKCICcAyuIe/OOjReJ3ysgL2UYWm0gCghPs7fvee0M50dNWsq9zKie4QER8=
=MPGq
-----END PGP SIGNATURE-----

--------------8I6j09sJRjrfMH0HX86kkqj0--

