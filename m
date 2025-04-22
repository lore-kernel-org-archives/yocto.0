Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC825C369C2
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 21:35:38 +0000 (UTC)
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com [209.85.210.42])
 by mx.groups.io with SMTP id smtpd.web10.2393.1745357735177650366
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Apr 2025 14:35:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cYRHclZR;
 spf=pass (domain: gmail.com, ip: 209.85.210.42, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-72c14138668so1401045a34.2
        for <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 14:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745357734; x=1745962534; darn=lists.yoctoproject.org;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QtU0Cu+fC8eSNM91VyIJqjptDB3PQO955OcL0dpWRws=;
        b=cYRHclZRlKQUGjdil0K2yGMRLdwuICBIh1xLXjz5RQr22z/V5ZsvZ9kBzN7IdkSnZ0
         taBRzx4be6NsrB7oOQX+27+PcrWsB26c7fTzhUfnQHzGP6EDV8uoya7wvgNGmd9nwlGY
         DY25XxD6b/Ceqxf/+LhrZ4iKvyV0VFsjm8PYlAiv6z2t7zdIf1KABcUCwZ7rOAol8DsN
         EOQ+Tu938+8uPO20xq32sx9bFDZmeqA5wbG9ala/h9LfLpZz//ZgxGSOyanHrmY2fDcP
         zUi3e/wrlvA9Z8qIl64DZDa2fTgH0YgoAeVitUiqlX905bb5DhjGNviT9LrQ06+mBImR
         1a3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745357734; x=1745962534;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QtU0Cu+fC8eSNM91VyIJqjptDB3PQO955OcL0dpWRws=;
        b=QwCrxvD6oVHw6OczmluMk0tVRSQHQaOKBy1yI3kJvSXEWud5R1+py1j5LbjO8H35kI
         vokMdsV6UYygeUetQFDZ5lrCuxSQo2KVzb8Ev4JkH89Zyc4DSCl71EZnVlfVOsR5ECCy
         pLuEBhM136WHW5BYkN1lkQaP5vKFoRCZI/G8A/6Ui30ce0v2ls91zZHRo9PFgX3oPiit
         eVNX1OLLvnYWfoTCQCAF9Xy//kYNoLtXqVpbnXI69+6uaYln91y/mrcOHOYR2c0N52pj
         Czfgfq+4vXzZ91jophS+9b6+JT5zejuZYTu4F3t6RQAvLoy1opSpHgVQ6pspBtGsQE1m
         9w5Q==
X-Gm-Message-State: AOJu0YxwoZ6fdZvBkI3xmJKTUNaX6fWZtZAgEd5W8yXWaCWM1tN1xhz9
	qCx8EdhaYNPUL+e5XlJ6CHpG7++ywsOzXxNBTcgOjsJEKUALgG/kcPtCjvS6
X-Gm-Gg: ASbGncuI7FZAA0AiPdx99yryTnDn9+2G17dTWRRz3MUL+Jskng4JJFGJfYdMuCtFWQ/
	C9nYI0iShNt1F32xz9bYUw/p+1VoawYpuxDmXBRG+oZDBL5+UtigMENqqhaJaqb+imypHUyK0vv
	nnd64fR7xVTr92XXXD6AdpjmDfloQDVPGWZ4r1/yqc4THVP5+PXHF2EZc0T4cEn01PG+vluKlAr
	RM4fJfIbhc6vk5qx0QnfeEXRAdLf5VtKPVlprZYTVEjw0j3947hus/eJ+dP9DqWcrQARy8jkvhR
	84zbH0rERKc46xPvPHMFpp3Oh1jjhGGnnGoZcYgvMKybj2OBMhiw8UETjlQQIJ4PblCpDB8x+um
	ZCjidFC5AOBl+DvEOdclMN0v1BHRpUttNEA==
X-Google-Smtp-Source: AGHT+IEV1XEu9ASezhYxgcJhOLB30q77YDj/NvT/F3ugmpxGorZwkGg3sbJtA1Eot8t1aowSxTnLCA==
X-Received: by 2002:a05:6830:6189:b0:72a:4762:d38a with SMTP id 46e09a7af769-730060bd279mr10757743a34.0.1745357734061;
        Tue, 22 Apr 2025 14:35:34 -0700 (PDT)
Received: from ?IPV6:2601:646:8201:fd20:f90a:1834:bcca:2d8b? ([2601:646:8201:fd20:f90a:1834:bcca:2d8b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7300489b02bsm2185279a34.61.2025.04.22.14.35.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Apr 2025 14:35:33 -0700 (PDT)
Message-ID: <e485993c-e38d-4bc7-9fe6-59b7cd95dc76@gmail.com>
Date: Tue, 22 Apr 2025 14:35:32 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com,
 "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
References: <918.1717162801361364915@lists.yoctoproject.org>
 <24438.1745296886216583159@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <24438.1745296886216583159@lists.yoctoproject.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------mm3jTO8vIqKWpQm5djNTVtXR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 21:35:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65231

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------mm3jTO8vIqKWpQm5djNTVtXR
Content-Type: multipart/mixed; boundary="------------0R9T3qifd3wWQcxbcK1r22f2";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@lists.yoctoproject.org, aleksandar.nikolic010@gmail.com,
 "Hanke Fabian (DC/PAR)" <fabian.hanke@bosch.com>
Message-ID: <e485993c-e38d-4bc7-9fe6-59b7cd95dc76@gmail.com>
Subject: Re: [yocto] GPL License Compliance - Automatically detect linking
 against GPL libraries
References: <918.1717162801361364915@lists.yoctoproject.org>
 <24438.1745296886216583159@lists.yoctoproject.org>
In-Reply-To: <24438.1745296886216583159@lists.yoctoproject.org>

--------------0R9T3qifd3wWQcxbcK1r22f2
Content-Type: multipart/mixed; boundary="------------6vVjQsxRhGYzt0pLNz0aZvFt"

--------------6vVjQsxRhGYzt0pLNz0aZvFt
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gNC8yMS8yNSA5OjQxIFBNLCBBbGVrc2FuZGFyIE5pa29saWMgdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgd3JvdGU6DQo+IE9uIEZyaSwgTWF5IDMxLCAyMDI0IGF0IDAzOjQwIFBN
LCBIYW5rZSBGYWJpYW4gKERDL1BBUikgd3JvdGU6DQo+IA0KPiAgICAgSGVsbG8sDQo+IA0K
PiAgICAgdGhhbmsgeW91IGZvciBhbGwgdGhlIHJlc3BvbnNlcyBzbyBmYXIuIEkgZ3Vlc3Mg
d2Ugd2lsbCBoYXZlIGEgbG9vaw0KPiAgICAgYXQgZm9zc29sb2d5IGFuZCBmb3NzYXMsIGJ1
dCB3ZSB3b3VsZCBwcmVmZXIgYSBzb2x1dGlvbiB3aGljaCBkb2VzDQo+ICAgICBub3QgcmVx
dWlyZSBhbiBhZGRpdGlvbmFsIHRoaXJkcGFydHkgc2VydmljZS4gV2Uga25vdyB0aGF0IHRo
ZXJlIGFyZQ0KPiAgICAgZGlmZmVyZW50IHR5cGVzIG9mIEdQTCBsaWNlbnNlcyB3aGljaCBi
cmluZyBkaWZmZXJlbnQgb2JsaWdhdGlvbnMuDQo+IA0KPiAgICAgV2UgYXJlIHNlYXJjaGlu
ZyBmb3IgYW4gYXV0b21hdGljIG1lY2hhbmlzbSB0byBkZXRlY3QgbGlua2luZyB0byBhDQo+
ICAgICBzaGFyZWQgbGlicmFyeSBmcm9tIGEgR1BMIHBhY2thZ2UuIFdlIHRob3VnaHQgdGhl
cmUgbWlnaHQgYmUgYSB3YXkNCj4gICAgIHRvIHV0aWxpemUgdGhlIGJ1aWxkIHN5c3RlbeKA
mXMgc2hhcmVkIGxpYnJhcnkgcmVzb2x2ZXIgd2hpY2ggaXMgdXNlZA0KPiAgICAgZm9yIHRo
ZSBhdXRvbWF0aWMgcnVudGltZSBhZGRlZCBydW50aW1lIGRlcGVuZGVuY2llcyBbMV0uDQoN
CkhhdmluZyBzdWNoIG1lY2hhbmlzbSB3b3VsZCBiZSBhaWRpbmcgaW4gbGljZW5zaW5nIHBv
bGljeSBpbiBzb21lIA0KY2lyY3Vtc3RhbmNlcy4gc2hsaWJzIGRlYWxzIHdpdGggc2hhcmVk
IGxpYnJhcmllcyBzbyB0ZWNobmljYWxseSB0aGVyZQ0KY2FuIGJlIGEgaG9vayB0byBkbyBz
b21lIGFuYWx5c2lzIG9mIHRoaXMgc29ydCwgdGhlcmUgYXJlIHBlcmhhcHMgbW9yZSANCmxp
Y2Vuc2VzIHRoYXQgY2FuIGFsc28gYmUgY29uc2lkZXJlZCBmb3Igc2ltaWxhciBwb2xpY3ku
DQoNCj4gDQo+ICAgICBGb3Igc3RhdGljIGxpYnJhcmllcyB3ZSBmb3VuZCB0aGF0IHRoZXkg
YXJlIGRpc2FibGVkIGJ5IGRlZmF1bHQgWzJdLg0KPiANCj4gQ291bGQgc29tZW9uZSBleHBs
YWluIHdoYXQgaXQgbWVhbnMgdGhhdCBzdGF0aWMgbGlicmFyaWVzIGFyZSBkaXNhYmxlZD8g
DQo+IERvZXMgdGhpcyByZWZlciB0byBzdGF0aWNkZXYtcGtncyBpbiBJTUFHRV9GRUFUVVJF
Uz8NCg0KTm8sIHRoaXMgbWVhbnMgdGhhdCB3ZSBkbyBub3QgZ2VuZXJhdGUgc3RhdGljIGxp
YnJhcmllcyB3aGVuIHRoZSBwYWNrYWdlIA0KYWxsb3dzIGJ1aWxkaW5nIGJvdGggc3RhdGlj
IGFuZCBzaGFyZWQgdmVyc2lvbnMsIHNlZSBESVNBQkxFX1NUQVRJQyANCnZhcmlhYmxlIGFu
ZCBob3cgaXQgaXMgdXNlZC4gV2UgYnVpbGQgYW5kIHVzZSBzaGFyZWQgdmVyc2lvbi4gVGhh
dCBhbHNvIA0KbWVhbnMgdGhhdCB3ZSBhcmUgZGVwZW5kZW50IG9uIGhvdyBwYWNrYWdlJ3Mg
YnVpbGQgc3lzdGVtIGlzIGRlc2lnbmVkLCANCml0IG1heSBub3QgYWxsb3cgb25lIG9yIHRo
ZSBvdGhlciBzbyB3ZSBoYXZlIHRvIGFkanVzdCBhY2NvcmRpbmdseS4NCg0KU2VlIG1ldGEv
Y29uZi9kaXN0cm8vaW5jbHVkZS9uby1zdGF0aWMtbGlicy5pbmMNCg0KZm9yIGV4Y2VwdGlv
bnMgYW5kIHlvdSBuZWVkIHRvIG1hcCB0aGUgbGljZW5zZSB0byB0aGVzZSBwYWNrYWdlcyB0
byBmaW5kIA0KaWYgaXQgaXMgc29tZXRoaW5nIHlvdXIgbGljZW5zaW5nIHBvbGljeSB3b3Vs
ZCBub3QgYWxsb3cuIEFuZCB0aGlzIGZpbGUgDQppcyBvbmx5IGZvciBjb3JlIGxheWVyLCBp
ZiB5b3UgY29uc3VtZSBvdGhlciBsYXllcnMgdGhleSBtaWdodCBvciBtaWdodCANCm5vdCBo
YXZlIHN1Y2ggZ2xvYmFsIGZpbGUgaW4gdGhhdCBjYXNlIHlvdSBoYXZlIHRvIGxvb2sgdGhy
b3VnaCB5b3VyIA0KZGVwZW5kZW5jeSBjaGFpbiBhbmQgYW5hbHlzZSB0aGUgcGFja2FnZXMN
Cg0KPiBDaGVlcnMsDQo+IEFsZWtzYW5kYXINCj4gDQo+IA0KPiAgICAgWzFdIGh0dHBzOi8v
ZG9jcy55b2N0b3Byb2plY3Qub3JnL292ZXJ2aWV3LW1hbnVhbC8NCj4gICAgIGNvbmNlcHRz
Lmh0bWwjYXV0b21hdGljYWxseS1hZGRlZC1ydW50aW1lLWRlcGVuZGVuY2llcyA8aHR0cHM6
Ly8NCj4gICAgIGRvY3MueW9jdG9wcm9qZWN0Lm9yZy9vdmVydmlldy1tYW51YWwvY29uY2Vw
dHMuaHRtbCNhdXRvbWF0aWNhbGx5LQ0KPiAgICAgYWRkZWQtcnVudGltZS1kZXBlbmRlbmNp
ZXM+DQo+ICAgICBbMl0gaHR0cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5vcmcvZGV2L2Rldi1t
YW51YWwvDQo+ICAgICBsaWNlbnNlcy5odG1sI2NvbXBsaWFuY2UtbGltaXRhdGlvbnMtd2l0
aC1leGVjdXRhYmxlcy1idWlsdC1mcm9tLQ0KPiAgICAgc3RhdGljLWxpYnJhcmllcyA8aHR0
cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5vcmcvZGV2L2Rldi1tYW51YWwvDQo+ICAgICBsaWNl
bnNlcy5odG1sI2NvbXBsaWFuY2UtbGltaXRhdGlvbnMtd2l0aC1leGVjdXRhYmxlcy1idWls
dC1mcm9tLQ0KPiAgICAgc3RhdGljLWxpYnJhcmllcz4NCj4gICAgIC0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgICAgQm9zY2ggUmV4cm90aCBBRw0KPiANCj4g
ICAgIFJlZ2lzdGVyZWQgT2ZmaWNlOiBTdHV0dGdhcnQsIFJlZ2lzdHJhdGlvbiBDb3VydDog
QW10c2dlcmljaHQNCj4gICAgIFN0dXR0Z2FydCBIUkIgMjMxOTIgRXhlY3V0aXZlIEJvYXJk
OiBEci4gU3RlZmZlbiBIYWFjayAoUHJlc2lkZW50KSwNCj4gICAgIFJvbGFuZCBCaXR0ZW5h
dWVyLCBUaG9tYXMgRmVjaG5lciwgSG9sZ2VyIHZvbiBIZWJlbCwgUmVpbmhhcmQNCj4gICAg
IFNjaMOkZmVyIENoYWlybWFuIG9mIHRoZSBTdXBlcnZpc29yeSBCb2FyZDogRHIuIE1hcmt1
cyBGb3JzY2huZXINCj4gDQo+IA0KPiANCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4g
TGlua3M6IFlvdSByZWNlaXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+
IFlvdSBhdXRvbWF0aWNhbGx5IGZvbGxvdyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBs
eSB0by4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM2NTIxNyk6IGh0dHBzOi8vbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNjUyMTcNCj4gTXV0ZSBUaGlzIFRvcGlj
OiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvMTA2MzY1NTM3LzE5OTc5MTQN
Cj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4g
VW5zdWJzY3JpYmU6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vu
c3ViIFtyYWoua2hlbUBnbWFpbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+
IA0K
--------------6vVjQsxRhGYzt0pLNz0aZvFt
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------6vVjQsxRhGYzt0pLNz0aZvFt--

--------------0R9T3qifd3wWQcxbcK1r22f2--

--------------mm3jTO8vIqKWpQm5djNTVtXR
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCaAgLpAUDAAAAAAAKCRC7BTNVkZ0zFNHk
AJ9n99Ul1a+NcyXjXec4NOtTIca44gCeMGc3bt5ZUEHq+RlrNwej21hJKS8=
=tiD4
-----END PGP SIGNATURE-----

--------------mm3jTO8vIqKWpQm5djNTVtXR--

