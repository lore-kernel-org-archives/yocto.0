Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AAD7EB64DD
	for <webhook@archiver.kernel.org>; Fri, 11 Aug 2023 15:36:04 +0000 (UTC)
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
 by mx.groups.io with SMTP id smtpd.web11.45845.1691768159708630891
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Aug 2023 08:35:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=fddS00pI;
 spf=pass (domain: gmail.com, ip: 209.85.210.182, mailfrom: raj.khem@gmail.com)
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-687087d8ddaso2011040b3a.1
        for <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 08:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691768159; x=1692372959;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYZs4zAGNznW+iL2bz6esT7JCljWbG0gPhm6kBJZSSk=;
        b=fddS00pI75yjEIW6AIsZWn2aJ8E5stzp9964ADGqeHt8T38xeJTfIChwKUJAHQYp9W
         E3uVnRD+WfebbFsfJcZIaGVAp6uuKJrUiRdJPswn+1IfA+onsJ8O4FrWFECqAinBBwGo
         Ob98Zi+kQDuJVRA537HmGKiCCy7Fjoex4HSD22oVv+cRk1fBPnAT2lM96aM/ITtBYIsD
         QvxU6WrBzGowI4M87nMMA/GEhFsRU8G42LGmjt6tjSVC+rKOCCtA3XM+Muhkc6Mhaitq
         5OOn0cVwnmU2kEI5jfjiYcQXnKJcKtA8XuIlAvWTYsJKxvx61VZor6qYGTTAOhT1v607
         5xNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691768159; x=1692372959;
        h=in-reply-to:autocrypt:from:content-language:references:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xYZs4zAGNznW+iL2bz6esT7JCljWbG0gPhm6kBJZSSk=;
        b=H/hWnVoQnoXqbGC6lILwBAS3b6JTKnS8DW/tFjIyEi/RGt8nBHoKuVmgDR7l3CnfjX
         5Ht5M8dKjMyZuucWB2RhKo7uK93MylWMb9JKplx3Pch1mJPbbx6gyab4Mg6Z/smUt9f8
         VMXWPf/dgr1YygH3b5ucdGmEyEEYB7QR9dFWEMjk3N1nO0xgxitnAMObM677PwTaABK4
         CscVdRTdxn4qjvxc9SvD73iV2zbNISeFqeLdOBzaO38zzlsdS4i8RX7B6MxIM+lLCjjQ
         AAjho2ssEYbqhQu8XUWO8Mz8oYC7RUXSpJOF8YWg2w+6L39R34Gq0h2Zta2dAWL+cZ+U
         z84g==
X-Gm-Message-State: AOJu0Yxtk4UGpGla9Q69BbEWrzk0M6MMfRxMSPGQ+s9yyXJVFSzW+efP
	EMN59NNE4OHtH85FhG4d+GA1Riy76JwZGQ==
X-Google-Smtp-Source: AGHT+IG1FMvwClL0H+1F8VTJ949k0kXD2tFbwzE7Bko9i61FNWq11UUR27MmTFMXPIx32MCOnGWUAA==
X-Received: by 2002:a05:6a21:9985:b0:140:54ab:7f3f with SMTP id ve5-20020a056a21998500b0014054ab7f3fmr3523902pzb.50.1691768158795;
        Fri, 11 Aug 2023 08:35:58 -0700 (PDT)
Received: from ?IPV6:2601:646:9100:2cb0:3029:f508:5156:dd5e? ([2601:646:9100:2cb0:3029:f508:5156:dd5e])
        by smtp.gmail.com with ESMTPSA id r30-20020a63441e000000b0056001f43726sm3472286pga.92.2023.08.11.08.35.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Aug 2023 08:35:58 -0700 (PDT)
Message-ID: <9da1a5a3-54a0-4e53-9fc2-3e59e6290dba@gmail.com>
Date: Fri, 11 Aug 2023 08:35:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Qt6.2 with eglfs build failing on kirkstone
To: bjorn.gurnett@thermia.com, yocto@lists.yoctoproject.org
References: <uxPZ.1691745871291658410.lPeB@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <uxPZ.1691745871291658410.lPeB@lists.yoctoproject.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------SOjQU2GRZbwQKIIe8VAdYkjU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Aug 2023 15:36:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60783

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------SOjQU2GRZbwQKIIe8VAdYkjU
Content-Type: multipart/mixed; boundary="------------nl1EOtH6SvU0gznhmjFbv1Io";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: bjorn.gurnett@thermia.com, yocto@lists.yoctoproject.org
Message-ID: <9da1a5a3-54a0-4e53-9fc2-3e59e6290dba@gmail.com>
Subject: Re: [yocto] Qt6.2 with eglfs build failing on kirkstone
References: <uxPZ.1691745871291658410.lPeB@lists.yoctoproject.org>
In-Reply-To: <uxPZ.1691745871291658410.lPeB@lists.yoctoproject.org>

--------------nl1EOtH6SvU0gznhmjFbv1Io
Content-Type: multipart/mixed; boundary="------------pdFv7lZTKuQKs90YKuQFCO9P"

--------------pdFv7lZTKuQKs90YKuQFCO9P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8xMS8yMyAyOjI0IEFNLCBHdXJuZXR0LCBCam9ybiB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyB3cm90ZToNCj4gVHJ5aW5nIHRvIGJ1aWxkIGFuIGN1c3RvbSBpbWFnZSBiYXNl
ZCBvbiBjb3JlLWltYWdlIHdpdGgga2lya3N0b25lIGFuZCANCj4gcXQgbHRzLTYuMiB0aGF0
IHNob3VsZCB1c2UgdGhlIGVnbGZzIGJhY2tlbmQgZm9yIGEgYW02MjUuDQo+IA0KPiB3aGVu
IGJ1aWxkaW5nIEkga2VlcCBnZXR0aW5nIHRoZSBmb2xsb3dpbmcgZXJyb3INCj4gDQo+IGds
ZnNrbXNlZ2xkZXZpY2VpbnRlZ3JhdGlvbi5jcHANCj4gfCBJbiBmaWxlIGluY2x1ZGVkIGZy
b20gDQo+IC9ob21lL2plbmtpbnMvWW9jdG8va2lya3N0b25lL3Bva3kvYnVpbGQvdG1wL3dv
cmsveDg2XzY0LWxpbnV4L3F0YmFzZS1uYXRpdmUvNi4yLjEwLXIwL2J1aWxkL2luY2x1ZGUv
UXRFZ2xGU0RldmljZUludGVncmF0aW9uLzYuMi4xMC9RdEVnbEZTRGV2aWNlSW50ZWdyYXRp
b24vcHJpdmF0ZS9xZWdsZnNjdXJzb3JfcC5oOjEsDQo+IHzCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCBmcm9tIA0KPiAvaG9tZS9qZW5raW5zL1lvY3RvL2tpcmtzdG9uZS9wb2t5L2J1
aWxkL3RtcC93b3JrL3g4Nl82NC1saW51eC9xdGJhc2UtbmF0aXZlLzYuMi4xMC1yMC9naXQv
c3JjL3BsdWdpbnMvcGxhdGZvcm1zL2VnbGZzL2RldmljZWludGVncmF0aW9uL2VnbGZzX2tt
c19lZ2xkZXZpY2UvcWVnbGZza21zZWdsZGV2aWNlaW50ZWdyYXRpb24uY3BwOjQ2Og0KPiB8
IA0KPiAvaG9tZS9qZW5raW5zL1lvY3RvL2tpcmtzdG9uZS9wb2t5L2J1aWxkL3RtcC93b3Jr
L3g4Nl82NC1saW51eC9xdGJhc2UtbmF0aXZlLzYuMi4xMC1yMC9idWlsZC9pbmNsdWRlL1F0
RWdsRlNEZXZpY2VJbnRlZ3JhdGlvbi82LjIuMTAvUXRFZ2xGU0RldmljZUludGVncmF0aW9u
L3ByaXZhdGUvLi4vLi4vLi4vLi4vLi4vLi4vZ2l0L3NyYy9wbHVnaW5zL3BsYXRmb3Jtcy9l
Z2xmcy9hcGkvcWVnbGZzY3Vyc29yX3AuaDo1NzoxMDogZmF0YWwgZXJyb3I6IFF0T3BlbkdM
L1FPcGVuR0xTaGFkZXJQcm9ncmFtOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+IHzC
oCDCoCA1NyB8ICNpbmNsdWRlIDxRdE9wZW5HTC9RT3BlbkdMU2hhZGVyUHJvZ3JhbT4NCj4g
fMKgIMKgIMKgIMKgfMKgIMKgIMKgIMKgIMKgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn4NCj4gDQo+IHdvdWxkIGFwcHJlY2lhdGUgYW55IHN1Z2dlc3Rpb25zDQoNClRoaXMg
aXMgIG5hdGl2ZSByZWNpcGUgc28gaXQgZG9lcyBub3QgcmVhbGx5IGhhdmUgc2FtZSBwYWNr
YWdlY29uZmlncyBhcyANCnRhcmdldCBJIHdvdWxkIHN1Z2dlc3QgdG8gaGF2ZSBlZ2xmcyBz
cGVjaWZpYyBvcHRpb25zIG9ubHkgZm9yIHRhcmdldCANCnZlcnNpb24gb2YgcmVjaXBlLg0K
DQo+IA0KPiANCj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4gTGlua3M6IFlvdSByZWNl
aXZlIGFsbCBtZXNzYWdlcyBzZW50IHRvIHRoaXMgZ3JvdXAuDQo+IFlvdSBhdXRvbWF0aWNh
bGx5IGZvbGxvdyBhbnkgdG9waWNzIHlvdSBzdGFydCBvciByZXBseSB0by4NCj4gVmlldy9S
ZXBseSBPbmxpbmUgKCM2MDc4MCk6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9n
L3lvY3RvL21lc3NhZ2UvNjA3ODANCj4gTXV0ZSBUaGlzIFRvcGljOiBodHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmcvbXQvMTAwNjgwMjkwLzE5OTc5MTQNCj4gR3JvdXAgT3duZXI6
IHlvY3RvK293bmVyQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gVW5zdWJzY3JpYmU6IGh0
dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL3Vuc3ViIFtyYWoua2hlbUBn
bWFpbC5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IA0K
--------------pdFv7lZTKuQKs90YKuQFCO9P
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsDiBEqXaJERBACUvFofpD3FsxD9675wcPv+rzguIfsRWilrrpSZ61JHjLHwkUnm
DLpLSdfvZw2ZDXeaQbGU2thctxXTyYf6N1fY6P5Tww6mWKInuGU3yAv8Mg5p+Xd8
itwOoVR41DOBkftVmiO2G7FtXsnqonB6F43a2yvc+h9OwPRVxAFss5mSmwCglSXP
WndN1Ka4M/hzt7g+FmeyEssD/1V/G8lLeAS9gQCNjS7jch+uHMFJuWgHzMXdw99e
1ywlIkvXN77NPkW+FLVxKxNAHyWZZ3wO4BQ9/GVR2y0s/rrF1lQSIcfnUmzZrh/B
h0b1wVOSLhl0Vx4MI0/MbdL3xx17JAWy+s67evuKER4Y8ycTq3gbIGJtVrIJjWPC
zWF8BACAA2u52uDmJ2pS8SIhEW0jMK/zYQ5Od9l9fM6BmS6QjnIlzzcuMvRdZn2I
rnuE/YoC8yyzBK3mN+MVc2jWN9rfSg6ml7r14Zjem9Ee0O5Ca7Jg3ZvN6g3vSlrR
JqKgsnq3vdatDF+5rd0NJ7ZKUy6x2i1Pavgtv3qaAgPGa1qQdM0dS2hlbSBSYWog
PHJhai5raGVtQGdtYWlsLmNvbT7CYAQTEQIAIAUCSpdokQIbAwYLCQgHAwIEFQII
AwQWAgMBAh4BAheAAAoJELsFM1WRnTMUhOMAoJJleT2hdT7uw9Fyn26+w+/K4i0g
AJ9wRt36PqfjNe904evWolFf5cMmp8JgBBMRCgAgAhsDBgsJCAcDAgQVAggDBBYC
AwECHgECF4AFAlMELRoACgkQuwUzVZGdMxS6XgCfbzYVo3uhhczYDwnNC3VlZ5RO
UlkAnR46C6nYSrHHqBkU5ATsSRGY5vqIzsNNBEqXaJEQEACONtVDnlECi4B7SXSc
+wqRZ20y5QfAF0sGSkXesYz9/S4OU9pDNgYuMpPvEOjJGHzHa0XBa85+KqtkUCvF
fx7h+wAKYl0vSRqFNvEL/xKZJZUdeLXQlRfZ+Znm5/OVcCeXSK9eRaetR8tf0N03
AvoNHgN4Ur2oEWq0eYrlNBcy7zsb4wnCA0kjAIpBfiIj1gkgsy6oidXBrGDn8At0
p8TdA+a1p2cpv9y5SbiAgJ1ol7JB8jqp1gtxK7IFYJsAQwzXCaFECHDlGDMxFEiq
5mXE+3uVmRdeNqWzszqO6HztUZGggnBihCL3tDVkfM8GjcCUw97eFo2KGR3oPeXC
90HimaNgbgjpscKC0SESyzeEe+wFqpX2NXV0xRKz3lnFC1P2q2Q7HJ0eA6XBFfcI
b6vnzgn+zi9ab6I9C0u8NjW7hQXA4uMI4V7vT0Fwsl09HYZCI4+jJkXuVVjye792
1OsAS6JkWTgcPtp9SVyv8grA9YgPVX2REugOXN1s26hTL9d9USsrzByiIajB6sQx
53hqM2grELEHB4iSPGooy3wIqCnfSf1TGWOCURyB/79S6bBIfGplwI9VtZe12HL+
HAyTbuyE51S9qLKd6nw6xUaoDNKx4vipkgnlfMJzJXgokKbCZ1DO3n5nKVxWZ6rp
Hihv53wkgNTQQup3DHAgOJOPRwADBQ/+Kc3f+vwgUOaziDnFp8+sLDfWjaMhhqGQ
h83RZU9Yjkr+EUKjY9zM9K3MNxOxnHuY3arCkY57cvP3/SStl6SyvPVkgc2LktNq
y7NfIUls7Tlj56IeBXWtXtVUSKk6ulXXj3rDXXZj/RJn8WE58SYQDVN4N6PLaxmJ
M5RbiDLN7BscykTTt3bsXaozY18wyEpAJy/Ov43RUmYA54BMSK/E9Qef4Olf82eI
FY5xa/77AeXG/RevreCxEpK3rZ4UoaOAXnSEcPmUzfXOKrJxzjaxuByoBn6tgWVv
2TTclwrKrVd1VRKb7FwLYMxKy1MjqKoUwajoWcQ76DITlV1x5qNu5nUY6YlclQLJ
gh0a68LIigqNMT2VwhhIQQNlB6PnF2IaT15TPQw+ZkRTBJH+cuabCMcMmLSmtW+z
3Gp7lu9Ld108Cp6m9nlSuKyC1YP5MMjyS2S3lUuHdewb0W5dRUBpqE68UwaJm2yK
gNdOisvgB8x64D1/7IvCsJVA7fGYf9YDROB//mBgHe30qgc+MsE2u5U65BsCO5uL
Sm9EA5Rwx0F+Y+h+Swri5ZLXMa09ZLtS7Vyy6rsedvu+zOUVh1vN6qNjzUtLLEDS
RymAnF0u/2jtS4ISccNks9sd1Dzc+bLIEpIjfUAp7tFeVA2UHmCvAf2jq4209tXu
r+5GqYqrkSLCSQQYEQIACQUCSpdokQIbDAAKCRC7BTNVkZ0zFHVUAJ9IDpNFYVZL
U2T1aHmEmAcFBe5D5wCbBVUufOp45pebD9wGNMgoKf5XVr/CSQQYEQIACQUCSpdo
kQIbDAAKCRC7BTNVkZ0zFHVUAJwKR1o7etvz+BGmuV2YAfp5Hj16jgCeMPeHdpPC
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------pdFv7lZTKuQKs90YKuQFCO9P--

--------------nl1EOtH6SvU0gznhmjFbv1Io--

--------------SOjQU2GRZbwQKIIe8VAdYkjU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCZNZVXQUDAAAAAAAKCRC7BTNVkZ0zFKeP
AJ49WvfWImL4vM0rjN1nXjOAlI3jnQCfcAVSkhyr3ChzQVEejkrHAxWWU9I=
=uUzR
-----END PGP SIGNATURE-----

--------------SOjQU2GRZbwQKIIe8VAdYkjU--

