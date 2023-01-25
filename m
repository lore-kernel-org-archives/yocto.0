Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EDFDC27C76
	for <webhook@archiver.kernel.org>; Wed, 25 Jan 2023 17:21:48 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.51438.1674667307562994375
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Jan 2023 09:21:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PD5e7Jp3;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id b24-20020a17090a551800b0022beefa7a23so2725876pji.5
        for <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 09:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVooFDU5GagKiqO6STP7fhL0zizTxqgrWLf8Kb/784E=;
        b=PD5e7Jp3gjka6bVmCK+iJy0hBj4e83BcfJ/OjmHOwKGQ+THv0X3giCC0dqzYfXrilN
         Jp6paCI/vQuk+Hc4NwCtaqXnWS7zbUDsNEjA4G8QELlYG4oUp7wd5tUgbY2I/xoARhCh
         88272NcXGAP0kwOnfiPkhMvqcv3eKX27p4i76ntHA707QKqHWbW8t2GA57S6PmQnH+7x
         +n89QGwLMxqWFdJPy1wrFFB/eHR9WWKHRwVK1PWpq2v/13/M46KzD1UhiZINCCpU6/fB
         uJyhz0DjBlvxzCPSXOPZLDW+30xklfeiL08Ms4/yHTO/I8OBArDEBLwEZ9JYMwT5ZGGq
         A2ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sVooFDU5GagKiqO6STP7fhL0zizTxqgrWLf8Kb/784E=;
        b=ufI1TR6wkXwCJIp3zLfxENUzfRRyYvVWn7LbBczyWiWOMVzN0Fh2aUT6Pnob3oEFUH
         zYGNvAFPoAAo6mbDjRsAxUkU5qUOkhTak+NLKy5CfSkS1vSG4Mw/k08ixBvvhQDGh+rg
         dd9unggwTqEZYUhFRkTqsF5dKRajYJesIrDtd0BiY2nI41HdvqQVPcMlLc4OmIVC1UHg
         lEDWtLZEXPO3M0hBinzwOYksEdtv3DQSJJMtdmUEmZCCHNqCLm+gS9a+M8MuC/Q3FTK9
         8XzVv3hRx9YK4iLSVPtCnql+wiGG8CJgP9qtLPAa1xkNrfmMVb4MlqjVhGDVEqBsiXLa
         FLcQ==
X-Gm-Message-State: AFqh2kqvRqGxHanqRVuMyiHY7gzQw8Dz2fnL/TbFS0zxEzjMJZyy0xBA
	CJrEy8MfgRzTZkBqNpkPfBo=
X-Google-Smtp-Source: AMrXdXtk/5q52Yo4MHqceYEIoQQRhcB/bmcuymA3WnHyVsML9uzPjBEWow/t21cq2yj8HXZ1C+H+LQ==
X-Received: by 2002:a17:902:f708:b0:189:c4a9:c5e8 with SMTP id h8-20020a170902f70800b00189c4a9c5e8mr35543887plo.45.1674667306673;
        Wed, 25 Jan 2023 09:21:46 -0800 (PST)
Received: from ?IPV6:2601:646:9181:1cf0:6d2b:c3c7:c498:d136? ([2601:646:9181:1cf0:6d2b:c3c7:c498:d136])
        by smtp.gmail.com with ESMTPSA id c18-20020a170902849200b001754fa42065sm3889417plo.143.2023.01.25.09.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Jan 2023 09:21:46 -0800 (PST)
Message-ID: <a189ac7d-e8bd-5a11-7a61-26428ca043ef@gmail.com>
Date: Wed, 25 Jan 2023 09:21:44 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.7.0
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
To: Nikita Gupta <nikitagupta2509@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------M9Q5Kx4SeVbx0vZPfyhRznqn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Jan 2023 17:21:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59061

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------M9Q5Kx4SeVbx0vZPfyhRznqn
Content-Type: multipart/mixed; boundary="------------OgxlvchlGCk786HLH5PWDqGh";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Nikita Gupta <nikitagupta2509@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Message-ID: <a189ac7d-e8bd-5a11-7a61-26428ca043ef@gmail.com>
Subject: Re: [yocto] Error while adding " libimxvpuapi2" and "gstreamer" pkgs
 in my local.conf for imx8mplus
References: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>
In-Reply-To: <CAGQ3h144Hp00zHw+F2Px2+dFYtXti6aoBDYs7qe9j0tEZFbiyg@mail.gmail.com>

--------------OgxlvchlGCk786HLH5PWDqGh
Content-Type: multipart/mixed; boundary="------------lGJ8ENzlH2q6bST0PdeyRRiX"

--------------lGJ8ENzlH2q6bST0PdeyRRiX
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gMS8yNS8yMyA0OjQ3IEFNLCBOaWtpdGEgR3VwdGEgd3JvdGU6DQo+IEhlbGxvIGxpc3Qs
DQo+IA0KPiBJIHdhcyBqdXN0IG1ha2luZyBpbWFnZSBmb3IgaW14OG1wbHVzIGJ5IGFkZGlu
ZyBmZXcgcGtncyBpbiBteSANCj4gbG9jYWwuY29uZiBidXQgZW5jb3VudGVyZWQgZmV3IGVy
cm9ycyBzbyBpIGFtIGhlcmUgZm9yIHlvdXIgaGVscC4NCj4gSSBhZGRlZCBiZWxvdyBwa2dz
IGluIG15IGxvY2FsLmNvbmYgZmlsZQ0KPiANCj4gSU1BR0VfSU5TVEFMTDphcHBlbmQgPSAi
Z3N0cmVhbWVyMS4wIGdzdHJlYW1lcjEuMC1wbHVnaW5zLWJhc2UgDQo+IGdzdHJlYW1lcjEu
MC1wbHVnaW5zLWdvb2QgZ3N0cmVhbWVyMS4wLXBsdWdpbnMtYmFkIA0KPiBnc3RyZWFtZXIx
LjAtcGx1Z2lucy11Z2x5wqAgZ3N0cmVhbWVyMS4wLWxpYmF2IGlteC12cHV3cmFwIGlteC1n
cHUtZzJkIA0KPiBpbXgtZ3B1LXZpdiBnc3RyZWFtZXIxLjAtcGx1Z2lucy1pbXggaW14LWdz
dDEuMC1wbHVnaW4iDQo+IExJQ0VOU0VfRkxBR1NfV0hJVEVMSVNUID0gImNvbW1lcmNpYWwi
DQo+IElNQUdFX0lOU1RBTEw6YXBwZW5kID0gImtlcm5lbC1kZXZzcmMiDQo+IElNQUdFX0lO
U1RBTExfYXBwZW5kICs9ICJnc3RyZWFtZXIxLjAtcnRzcC1zZXJ2ZXIgZ3N0LXZhcmlhYmxl
LXJ0c3Atc2VydmVyIg0KPiBJTUFHRV9JTlNUQUxMOmFwcGVuZCA9ICIgZ3RrKzMiDQo+IENP
UkVfSU1BR0VfRVhUUkFfSU5TVEFMTCArPSAiIG9wZW5jdiBsaWJvcGVuY3YtY29yZS1kZXYg
DQo+IGxpYm9wZW5jdi1oaWdoZ3VpLWRldiBsaWJvcGVuY3YtaW1ncHJvYy1kZXYgbGlib3Bl
bmN2LW9iamRldGVjdC1kZXYgDQo+IGxpYm9wZW5jdi1tbC1kZXYiDQo+IElNQUdFX1JPT1RG
U19FWFRSQV9TUEFDRSA9ICIxMDQ4NTc2ICINCj4gDQo+IFNvIG15IGxvY2FsLmNvbmYgZmls
ZSBub3cgbG9va3MgbGlrZSB0aGlzDQo+IFNvIGkgYW0gZ2V0dGluZyBiZWxvdyBlcnJvciBh
ZnRlciBiYWtpbmcgbXkgcmVjaXBlICggQXR0YWNoZWQgaW1hZ2UpLg0KPiANCj4gUGxlYXNl
IHRlbGwgd2hhdCBzaG91bGQgSSBuZWVkIHRvIGRvIHRvIHJlc29sdmUgdGhpcy4NCj4gDQoN
CkRvIHlvdSBoYXZlIEFDQ0VQVF9GU0xfRVVMQSA9ICIxIiBzZXQgaW4gY29uZmlnIG1ldGFk
YXRhIGUuZy4gbG9jYWwuY29uZiANCm9yIHNpdGUuY29uZiA/DQoNCj4gVGhhbmtzIGluIGFk
dmFuY2UNCj4gDQo+IA0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91
IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8gdGhpcyBncm91cC4NCj4gWW91IGF1dG9t
YXRpY2FsbHkgZm9sbG93IGFueSB0b3BpY3MgeW91IHN0YXJ0IG9yIHJlcGx5IHRvLg0KPiBW
aWV3L1JlcGx5IE9ubGluZSAoIzU5MDU2KTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qu
b3JnL2cveW9jdG8vbWVzc2FnZS81OTA1Ng0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9tdC85NjUxOTMxMC8xOTk3OTE0DQo+IEdyb3VwIE93
bmVyOiB5b2N0bytvd25lckBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFVuc3Vic2NyaWJl
OiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiBbcmFqLmto
ZW1AZ21haWwuY29tXQ0KPiAtPS09LT0tPS09LT0tPS09LT0tPS09LQ0KPiANCg==
--------------lGJ8ENzlH2q6bST0PdeyRRiX
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------lGJ8ENzlH2q6bST0PdeyRRiX--

--------------OgxlvchlGCk786HLH5PWDqGh--

--------------M9Q5Kx4SeVbx0vZPfyhRznqn
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCY9FlKAUDAAAAAAAKCRC7BTNVkZ0zFCod
AJ4k84BeOkYmKKhirp2ugy4bleh5PgCdEkf22AJbDZob3GNcUwst3fBveis=
=1aNR
-----END PGP SIGNATURE-----

--------------M9Q5Kx4SeVbx0vZPfyhRznqn--

