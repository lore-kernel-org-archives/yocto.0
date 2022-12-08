Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E73DC4708E
	for <webhook@archiver.kernel.org>; Thu,  8 Dec 2022 02:54:21 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.3973.1670468058476129184
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 18:54:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gbkrZAcA;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id o12so335034pjo.4
        for <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 18:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:autocrypt:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GbUqedrUIaeO2tuQfqqbh3ztUsR91YdH3Yb7lzpjVsQ=;
        b=gbkrZAcAcBltHNahZzzefvZMGYQdfTzUalk/GsJVy5Le+Y3bEwO/LhD5D/brhH3yMT
         k4QxXm5xlzISrCkwKGtTlp30O9DbznAJgUy+uIFOGpPcMmUv870SYpZYZ+HUbtA+Lvek
         WtjGk5GgEedlXD1rYU+Lai9y6BDARKIOtT76R3KhdIDYKXnNbo4aFghh3gCXTgKWLFwM
         3vMmS3OR3vvGWsx8dMKghztjh2ZwBSpVg4Upi2ZN5n8ONuIembHOB412FullhRqTSj/6
         r0JxndOrWIrPb7Q4rep7rTOZ7zGzDEhyPxLfaKYFSGQlhXn/NxAvmvZJ+Z7Ew4qnxQDd
         kM7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:autocrypt:from:references:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GbUqedrUIaeO2tuQfqqbh3ztUsR91YdH3Yb7lzpjVsQ=;
        b=AqaaFXsKd6fM9sW1zd+8twVmsgCmlF0x9FGPEiTxgxvXaFzXO751t6LjSVVXMN5l8J
         OFnIw460te7QHfdFs2LmSfOtBfwHLxb+tYWhM5R3mmHFtVrGqFEnZzWD+GcIXit7+I8z
         cD72lgR7s1QKVbJxpY6lA2dFIba4qkCeFme+Jc7trpvY5zKKkqMe7k1UZJ7wD5iFDA49
         rwW+MDf79eDVW/WHKx/WgiVJdZHDDK9nPwoiJJ+9P9WEq2WW2KwhlNIyJLW5XJ9ZybrX
         Hu2MF7Tc2KFERARQW75AaD9hG+dTP7QqcMdPJXWuYilri3jLlkS2t6BLBrrM1pW/pY2b
         JyMA==
X-Gm-Message-State: ANoB5pm7UTHM9SyDjHsam9kI3Y9d/hLJbZhm8H0RJLk+2CZovxSkE2PQ
	raqgcajzPyNfVoegfo+i/PD7YoxPam8=
X-Google-Smtp-Source: AA0mqf5ZKTcU1V0Rfth3la1i7TovrFqzbw9ZoDIGmdF2krMB7JbkzYjny5SkvxZN78B39xY9KqXX2w==
X-Received: by 2002:a17:902:8215:b0:185:441e:2342 with SMTP id x21-20020a170902821500b00185441e2342mr1293551pln.56.1670468057452;
        Wed, 07 Dec 2022 18:54:17 -0800 (PST)
Received: from ?IPV6:2601:646:9181:1cf0:8c2e:bc6:b045:b9ce? ([2601:646:9181:1cf0:8c2e:bc6:b045:b9ce])
        by smtp.gmail.com with ESMTPSA id ix19-20020a170902f81300b00189c536c72asm9471901plb.148.2022.12.07.18.54.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Dec 2022 18:54:16 -0800 (PST)
Message-ID: <d71b3349-a560-9c0e-550c-d0c93ca2fd6d@gmail.com>
Date: Wed, 7 Dec 2022 18:54:15 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.5.1
Subject: Re: [yocto] Missing stropts.h header file - Dunfell
Content-Language: en-US
To: Sethu Madhav <sethu.m@calixto.co.in>, yocto@lists.yoctoproject.org
References: <CAFjAHzH-Jow3hfTBuBF_B5C+HV+AJoAo85_tmv7AmAKG6_VNjw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <CAFjAHzH-Jow3hfTBuBF_B5C+HV+AJoAo85_tmv7AmAKG6_VNjw@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------OqT0FLrucLtxa6T2uEgMc0o7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Dec 2022 02:54:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58752

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------OqT0FLrucLtxa6T2uEgMc0o7
Content-Type: multipart/mixed; boundary="------------aYStWqVGJK17meu0z740OAJ6";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Sethu Madhav <sethu.m@calixto.co.in>, yocto@lists.yoctoproject.org
Message-ID: <d71b3349-a560-9c0e-550c-d0c93ca2fd6d@gmail.com>
Subject: Re: [yocto] Missing stropts.h header file - Dunfell
References: <CAFjAHzH-Jow3hfTBuBF_B5C+HV+AJoAo85_tmv7AmAKG6_VNjw@mail.gmail.com>
In-Reply-To: <CAFjAHzH-Jow3hfTBuBF_B5C+HV+AJoAo85_tmv7AmAKG6_VNjw@mail.gmail.com>

--------------aYStWqVGJK17meu0z740OAJ6
Content-Type: multipart/mixed; boundary="------------xNKCxfAlK3ovYyrDoSIxagOP"

--------------xNKCxfAlK3ovYyrDoSIxagOP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMTIvNy8yMiA1OjMyIEFNLCBTZXRodSBNYWRoYXYgd3JvdGU6DQo+IEhpICwNCj4gIMKg
Q2FuIGFueW9uZSBoZWxwIHRvIGluY2x1ZGUgdGhlICpzdHJvcHRzLmgqIGhlYWRlciBmaWxl
IHRvIHRoZSBkdW5mZWxsIA0KPiAuIEkgdHJpZWQgYWRkaW5nIHRoZSBnbGliYyB0byB0aGUg
aW1hZ2UgYnV0IG5vIGx1Y2suIEhvdyB0byBpbmNsdWRlIA0KPiBzdHJvcHRzLmggaW4gZHVu
ZmVsbCB2ZXJzaW9uLg0KPiANCg0KaXQgc2hvdWxkIGJlIHBhcnQgb2YgZ2xpYmMtZGV2ZWwg
cGFja2FnZSBidWlsZCBmcm9tIGdsaWJjIHJlY2lwZS4NCmNhbiB5b3UgZGVzY3JpYmUgeW91
ciB1c2VjYXNlIHdoZXJlIHlvdSBuZWVkIGl0ID8NCg0KPiANCj4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRo
aXMgZ3JvdXAuDQo+IFlvdSBhdXRvbWF0aWNhbGx5IGZvbGxvdyBhbnkgdG9waWNzIHlvdSBz
dGFydCBvciByZXBseSB0by4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM1ODc0NSk6IGh0dHBz
Oi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTg3NDUNCj4gTXV0
ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvOTU1MTUx
NTkvMTk5NzkxNA0KPiBHcm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KPiBVbnN1YnNjcmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2cveW9jdG8vdW5zdWIgW3Jhai5raGVtQGdtYWlsLmNvbV0NCj4gLT0tPS09LT0tPS09LT0t
PS09LT0tPS0NCj4gDQo=
--------------xNKCxfAlK3ovYyrDoSIxagOP
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------xNKCxfAlK3ovYyrDoSIxagOP--

--------------aYStWqVGJK17meu0z740OAJ6--

--------------OqT0FLrucLtxa6T2uEgMc0o7
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCY5FR1wUDAAAAAAAKCRC7BTNVkZ0zFBYA
AJsH9MSvk1QT3hw5a0fZ0sYa1CPyZACeOIHtEmtSugfYvkQnhpcJuY9pkCg=
=FuiC
-----END PGP SIGNATURE-----

--------------OqT0FLrucLtxa6T2uEgMc0o7--

