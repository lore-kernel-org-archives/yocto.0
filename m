Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8223AECAAD4
	for <webhook@archiver.kernel.org>; Wed, 31 Aug 2022 16:38:07 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.1136.1661963881599157169
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 09:38:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=SQtRj8Su;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: raj.khem@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id t5so14697526pjs.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 31 Aug 2022 09:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:from:to:cc;
        bh=d6BnGTRystVFRzMi25kwT8BaX2VXJUBw+SQ3y02WSW4=;
        b=SQtRj8Suh7QO8KRy5GdReIXcVNSuAsHsmu5NMeeWYqvk2NHj+RNPhlUIfmuJ7Sphos
         FimhkVzWPlrSaNVlpL3+z4F59zDa4l5kTfTHDV1Fuq+g0JrvSFMUDMArARmZCDXMRlhF
         bt1cn9FSjRzdFpJfP4uujKx/Yp6TH8Gdiqw4LgJ/tzd/5I21H6MDjuYTkluSRrftEe6M
         Ui/Kh7i+BZLX2so2kwQwHIyIINyrCasoNMVsyESsd6QuTWyYNGo3CQfE4D1QBjFi/YqU
         ShXyIWPZlQwVWjbQN0Mm7XKCt4HEQH4EATHvE785LMSS0OslapnIGl6BcZkhz2zdsLbS
         S3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:autocrypt:from:content-language:references:cc:to
         :subject:user-agent:mime-version:date:message-id:x-gm-message-state
         :from:to:cc;
        bh=d6BnGTRystVFRzMi25kwT8BaX2VXJUBw+SQ3y02WSW4=;
        b=KVQoq3qRTO3YjevbWVXaN25XnK7zkHKTqli7nSVGkNyMSgPa8fxTVLXpDJiYkna6bx
         z9QoeoXw/+EU2XQoD+L44aDX5dzUNCUvEgt+swIaZMMWSNUwvFF83gmZ1WlXwfPa+SJ5
         zjhaGmPcvfTGVHeF6O006lfgTm48Qkn16o0VHhcgJE5bGHk7da/jja1hTBArq0eVbglg
         gCZxh4kK0sY8PnQDzeTZdH/uUR9LboplTXZSqmdlifXp75BshRLQ9MRxhdLUFCiMdUGo
         ttVGyLYdvtlFimu4j8CaAY48DxTkRrCUbvxOA+CKlamnTBdQiObzcJ6oRXJEno5XypUd
         BAuw==
X-Gm-Message-State: ACgBeo0YTALdg6cIwnRmgLoNbqzR0Dn6MMVUpt91T9C85F4Vgrk+JMwM
	slSdXyYNHt9NcRR6QJldH+U=
X-Google-Smtp-Source: 
 AA6agR7lrCExRxzgv/1NR7ecGbMe1RtBCMnQzAkYpFrTE41LX2dCSypPkQY00PYQYQycC5oMsRMPng==
X-Received: by 2002:a17:902:7297:b0:16f:975e:7c72 with SMTP id
 d23-20020a170902729700b0016f975e7c72mr25815795pll.45.1661963880856;
        Wed, 31 Aug 2022 09:38:00 -0700 (PDT)
Received: from ?IPV6:2601:646:9200:a0f0:1163:751d:bea0:2d81?
 ([2601:646:9200:a0f0:1163:751d:bea0:2d81])
        by smtp.gmail.com with ESMTPSA id
 c197-20020a624ece000000b005363abb6d0bsm11780949pfb.15.2022.08.31.09.37.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Aug 2022 09:38:00 -0700 (PDT)
Message-ID: <2f55d594-8d68-6011-1159-7be428fac0b7@gmail.com>
Date: Wed, 31 Aug 2022 09:37:58 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.2.0
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
To: steven.monsees@baesystems.com, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>
Content-Language: en-US
From: Khem Raj <raj.khem@gmail.com>
Autocrypt: addr=raj.khem@gmail.com; keydata=
 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
In-Reply-To: <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------e0bcn0QZ601ctnoaG8sEE9UU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Aug 2022 16:38:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57964

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------------e0bcn0QZ601ctnoaG8sEE9UU
Content-Type: multipart/mixed; boundary="------------NsIcskDmhX0X0mX06awgtiJd";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: steven.monsees@baesystems.com, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Message-ID: <2f55d594-8d68-6011-1159-7be428fac0b7@gmail.com>
Subject: Re: [yocto] #yocto #dunfell #qemux86-64
References: <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>
In-Reply-To: <MADEUP.17106AEC120529B5.1777@lists.yoctoproject.org>

--------------NsIcskDmhX0X0mX06awgtiJd
Content-Type: multipart/mixed; boundary="------------llBW6cfBnmDTGwCCAzFYhUix"

--------------llBW6cfBnmDTGwCCAzFYhUix
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: base64

T24gOC8zMS8yMiA0OjM2IEFNLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KPiANCj4gVGhhbmsgeW91IGZvciB0aGUgcXVpY2sg
cmVwbGF5Li4uDQo+IA0KPiBUaGUgbm8gZ3JhcGhpYyBvcHRpb24gZG9lcyB3b3JrIGJ1dCB0
aGUga2VybmVsIGNvbWVzIHVwIHdpdGggZXJyb3JzLi4uDQo+IA0KPiBXaWxsIGZ1bGwgd2F5
bGFuZCBzdXBwb3J0IGJlIGFkZGVkIHRvIHRoZSBkdW5mZWxsIHJlbGVhc2UgPw0KPiANCg0K
eW91IGNhbiB1c2Ugdm5jIGJhY2tlbmQgd2hpY2ggaXMgZW5hYmxlZCBieSBkZWZhdWx0LiBi
eSB1c2luZw0KcnVucWVtdSBwdWJsaWN2bmMNCg0KSSB3aXNoIHJ1bnFlbXUgd2FzIHNtYXJ0
IGVub3VnaCB0byBwcmlvcml0aXplLCBpbnRlcmFjdGl2ZSBVSSBlLmcuIA0Kc2RsL2d0ayBp
ZiBub3QgYXZhaWxhYmxlIHRoZW4gZmFsbCBiYWNrIHRvIHZuYywgYW5kIHRoZW4gdXNlIG5v
Z3JhcGhpYw0KaW4gb3JkZXIuDQoNCmFuZCBwbGVhc2UgbG9vayBhdCBraXJrc3RvbmUgaWYg
eW91IGFyZSBldmFsdWF0aW5nIG5leHQgTFRTLCBkdW5mZWxsIGlzIA0Kc3RpbGwgc3VwcG9y
dGVkIGJ1dCBpcyBhbHJlYWR5IGluY2hpbmcgdG93YXJkcyBpdHMgZW5kIGNvbXBhcmF0aXZl
bHkgeW91IA0KZ2V0IG1vcmUgbW9kZXJuIHBhY2thZ2UgdmVyc2lvbnMgd2l0aCBraXJrc3Rv
bmUuDQoNCj4gU3RldmUNCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZy
b206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc+IE9uIEJlaGFsZiBPZiBBbGV4YW5kZXIgS2FuYXZpbg0KPiBTZW50OiBXZWRu
ZXNkYXksIEF1Z3VzdCAzMSwgMjAyMiA3OjIzIEFNDQo+IFRvOiBNb25zZWVzLCBTdGV2ZW4g
QyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT4NCj4gQ2M6IHlvY3RvQGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNk
dW5mZWxsICNxZW11eDg2LTY0DQo+IA0KPiBFeHRlcm5hbCBFbWFpbCBBbGVydA0KPiANCj4g
VGhpcyBlbWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRo
ZSBCQUUgU3lzdGVtcyBuZXR3b3JrLg0KPiANCj4gUGxlYXNlIHRyZWF0IHRoZSBlbWFpbCB3
aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8gY2xpY2sg
b24gYSBsaW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1hY3Jv
cy4gIEZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0byBzcG90IHBoaXNoaW5nLCBh
Y2Nlc3Mg4oCcQ3liZXJzZWN1cml0eSBPbmVTcGFjZSBQYWdl4oCdIGFuZCByZXBvcnQgcGhp
c2hpbmcgYnkgY2xpY2tpbmcgdGhlIGJ1dHRvbiDigJxSZXBvcnQgUGhpc2hpbmfigJ0gb24g
dGhlIE91dGxvb2sgdG9vbGJhci4NCj4gDQo+IA0KPiBZb3UgbmVlZCB0byBydW4gdGhpcyBp
biBhIFgxMSBzZXNzaW9uLCBvciB1c2UgJ25vZ3JhcGhpYycgcGFyYW1ldGVyLg0KPiANCj4g
QWxleA0KPiANCj4gT24gV2VkLCAzMSBBdWcgMjAyMiBhdCAxMzoxNywgTW9uc2VlcywgU3Rl
dmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8c3RldmVuLm1vbnNlZXM9
YmFlc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6DQo+Pg0KPj4N
Cj4+DQo+PiBIZWxsbzoNCj4+DQo+Pg0KPj4NCj4+IEkgYW0gYXR0ZW1wdGluZyB0byBldmFs
dWF0ZSBkdW5mZWxsIC0yMy4wLjE3LCBvbiBhIGNldG9zNyBsaW51eCBib3guDQo+Pg0KPj4N
Cj4+DQo+PiBXaGVuIGJ1aWxkaW5nIHRoZSBkZWZhdWx0IDogY29yZS1pbWFnZS1taW5pbWFs
IG9yIGNvcmUtaW1hZ2Utc2F0bywNCj4+IGNsZWFuIHdpdGggbm8gZXJyb3JzL3dhcm5pbmdz
LCBvbiBleGVjdXRpb24NCj4+DQo+PiBJIGdldCB0aGUgZm9sbG93aW5nIGVycm9yIGZvciBi
b3RoIChzZWUgYmVsb3cp4oCmDQo+Pg0KPj4NCj4+DQo+PiAoMSkgICAgSXMgdGhpcyBhbiBp
c3N1ZSB3aXRoIHRoZSByZWxlYXNlID8sICBhbmQgaXMgdGhlcmUgYW5vdGhlciByZWxlYXNl
IEkgc2hvdWxkIGJlIHVzaW5nID8NCj4+DQo+PiAoMikgICAgSXMgdGhlcmUgc29tZXRoaW5n
IEkgbmVlZCB0byBwcmUtY29uZmlndXJlIGZvciB0aGVzZSBidWlsZHMgdG8gcnVuIHByb3Bl
cmx5ID8NCj4+DQo+PiAoMykgICAgSG93IG1pZ2h0IEkgcmVzb2x2ZSB0aGlzIGlzc3VlID8N
Cj4+DQo+Pg0KPj4NCj4+IDA2OjU3IHNtb25zZWVzQHlpeDQ5MDAxNg0KPj4gL2Rpc2swL3Nj
cmF0Y2gvc21vbnNlZXMveW9jdG8veW9jdG8tZHVuZmVsbC9wb2t5LWR1bmZlbGwtMjMuMC4x
Ny9kdW5mZQ0KPj4gbGxfTWluPnJ1bnFlbXUgcWVtdXg4Ni02NA0KPj4NCj4+IHJ1bnFlbXUg
LSBJTkZPIC0gUnVubmluZyBNQUNISU5FPXFlbXV4ODYtNjQgYml0YmFrZSAtZSAuLi4NCj4+
DQo+PiBydW5xZW11IC0gSU5GTyAtIENvbnRpbnVpbmcgd2l0aCB0aGUgZm9sbG93aW5nIHBh
cmFtZXRlcnM6DQo+Pg0KPj4gS0VSTkVMOg0KPj4gWy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVz
L3lvY3RvL3lvY3RvLWR1bmZlbGwvcG9reS1kdW5mZWxsLTIzLjAuMTcvZHVuZg0KPj4gZWxs
X01pbi90bXAvZGVwbG95L2ltYWdlcy9xZW11eDg2LTY0L2J6SW1hZ2UtLTUuNC4xOTIrZ2l0
QVVUT0lOQyszZmVjYg0KPj4gMDg1MDdfODVmMDY2OGZlYS1yMC1xZW11eDg2LTY0LTIwMjIw
ODMwMTUxODE3LmJpbl0NCj4+DQo+PiBNQUNISU5FOiBbcWVtdXg4Ni02NF0NCj4+DQo+PiBG
U1RZUEU6IFtleHQ0XQ0KPj4NCj4+IFJPT1RGUzoNCj4+IFsvZGlzazAvc2NyYXRjaC9zbW9u
c2Vlcy95b2N0by95b2N0by1kdW5mZWxsL3Bva3ktZHVuZmVsbC0yMy4wLjE3L2R1bmYNCj4+
IGVsbF9NaW4vdG1wL2RlcGxveS9pbWFnZXMvcWVtdXg4Ni02NC9jb3JlLWltYWdlLW1pbmlt
YWwtcWVtdXg4Ni02NC0yMDINCj4+IDIwODMwMTUxODE3LnJvb3Rmcy5leHQ0XQ0KPj4NCj4+
IENPTkZGSUxFOg0KPj4gWy9kaXNrMC9zY3JhdGNoL3Ntb25zZWVzL3lvY3RvL3lvY3RvLWR1
bmZlbGwvcG9reS1kdW5mZWxsLTIzLjAuMTcvZHVuZg0KPj4gZWxsX01pbi90bXAvZGVwbG95
L2ltYWdlcy9xZW11eDg2LTY0L2NvcmUtaW1hZ2UtbWluaW1hbC1xZW11eDg2LTY0LTIwMg0K
Pj4gMjA4MzAxNTE4MTcucWVtdWJvb3QuY29uZl0NCj4+DQo+Pg0KPj4NCj4+IHJ1bnFlbXUg
LSBJTkZPIC0gU2V0dGluZyB1cCB0YXAgaW50ZXJmYWNlIHVuZGVyIHN1ZG8NCj4+DQo+PiBb
c3Vkb10gcGFzc3dvcmQgZm9yIHNtb25zZWVzOg0KPj4NCj4+IHJ1bnFlbXUgLSBJTkZPIC0g
TmV0d29yayBjb25maWd1cmF0aW9uOg0KPj4gaXA9MTkyLjE2OC43LjI6OjE5Mi4xNjguNy4x
OjI1NS4yNTUuMjU1LjANCj4+DQo+PiBydW5xZW11IC0gSU5GTyAtIFJ1bm5pbmcgL2Rpc2sw
L3NjcmF0Y2gvc21vbnNlZXMveW9jdG8veW9jdG8tZHVuZmVsbC9wb2t5LWR1bmZlbGwtMjMu
MC4xNy9kdW5mZWxsX01pbi90bXAvd29yay94ODZfNjQtbGludXgvcWVtdS1oZWxwZXItbmF0
aXZlLzEuMC1yMS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2Jpbi9xZW11LXN5c3RlbS14
ODZfNjQgLWRldmljZSB2aXJ0aW8tbmV0LXBjaSxuZXRkZXY9bmV0MCxtYWM9NTI6NTQ6MDA6
MTI6MzQ6MDIgLW5ldGRldiB0YXAsaWQ9bmV0MCxpZm5hbWU9dGFwMCxzY3JpcHQ9bm8sZG93
bnNjcmlwdD1ubyAtZHJpdmUgZmlsZT0vZGlzazAvc2NyYXRjaC9zbW9uc2Vlcy95b2N0by95
b2N0by1kdW5mZWxsL3Bva3ktZHVuZmVsbC0yMy4wLjE3L2R1bmZlbGxfTWluL3RtcC9kZXBs
b3kvaW1hZ2VzL3FlbXV4ODYtNjQvY29yZS1pbWFnZS1taW5pbWFsLXFlbXV4ODYtNjQtMjAy
MjA4MzAxNTE4MTcucm9vdGZzLmV4dDQsaWY9dmlydGlvLGZvcm1hdD1yYXcgLXNob3ctY3Vy
c29yIC11c2IgLWRldmljZSB1c2ItdGFibGV0IC1vYmplY3Qgcm5nLXJhbmRvbSxmaWxlbmFt
ZT0vZGV2L3VyYW5kb20saWQ9cm5nMCAtZGV2aWNlIHZpcnRpby1ybmctcGNpLHJuZz1ybmcw
ICAgLWNwdSBjb3JlMmR1byAtbSAyNTYgLXNlcmlhbCBtb246dmMgLXNlcmlhbCBudWxsIC1r
ZXJuZWwgL2Rpc2swL3NjcmF0Y2gvc21vbnNlZXMveW9jdG8veW9jdG8tZHVuZmVsbC9wb2t5
LWR1bmZlbGwtMjMuMC4xNy9kdW5mZWxsX01pbi90bXAvZGVwbG95L2ltYWdlcy9xZW11eDg2
LTY0L2J6SW1hZ2UtLTUuNC4xOTIrZ2l0QVVUT0lOQyszZmVjYjA4NTA3Xzg1ZjA2NjhmZWEt
cjAtcWVtdXg4Ni02NC0yMDIyMDgzMDE1MTgxNy5iaW4gLWFwcGVuZCAncm9vdD0vZGV2L3Zk
YSBydyAgbWVtPTI1Nk0gaXA9MTkyLjE2OC43LjI6OjE5Mi4xNjguNy4xOjI1NS4yNTUuMjU1
LjAgb3Byb2ZpbGUudGltZXI9MSAnDQo+Pg0KPj4NCj4+DQo+PiBydW5xZW11IC0gRVJST1Ig
LSBGYWlsZWQgdG8gcnVuIHFlbXU6IENvdWxkIG5vdCBpbml0aWFsaXplIFNETCh4MTEgbm90
DQo+PiBhdmFpbGFibGUpIC0gZXhpdGluZw0KPj4NCj4+DQo+Pg0KPj4gcnVucWVtdSAtIElO
Rk8gLSBDbGVhbmluZyB1cA0KPj4NCj4+IFNldCAndGFwMCcgbm9ucGVyc2lzdGVudA0KPj4N
Cj4+DQo+Pg0KPj4gVGhhbmsgeW91IGZvciB5b3VyIGhlbHAsDQo+Pg0KPj4gU3RldmUNCj4+
DQo+Pg0KPj4NCj4+DQo+Pg0KPj4NCj4+DQo+Pg0KPj4gLT0tPS09LT0tPS09LT0tPS09LT0t
PS0NCj4+IExpbmtzOiBZb3UgcmVjZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdy
b3VwLg0KPj4gWW91IGF1dG9tYXRpY2FsbHkgZm9sbG93IGFueSB0b3BpY3MgeW91IHN0YXJ0
IG9yIHJlcGx5IHRvLg0KPj4gVmlldy9SZXBseSBPbmxpbmUgKCM1Nzk1Nyk6IGh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTc5NTcNCj4+IE11dGUg
VGhpcyBUb3BpYzogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL210LzkzMzY4NTI2
LzE5OTc5MTQNCj4+IE11dGUgI3lvY3RvOmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9nL3lvY3RvL211dGVoYXNodGFnL3lvY3RvDQo+PiBNdXRlICNkdW5mZWxsOmh0dHBzOi8v
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL211dGVoYXNodGFnL2R1bmZlbGwNCj4+
IE11dGUgI3FlbXV4ODYtNjQ6aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9j
dG8vbXV0ZWhhc2h0YWcvcWVtdXg4Ni02NA0KPj4gR3JvdXAgT3duZXI6IHlvY3RvK293bmVy
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3Rz
LnlvY3RvcHJvamVjdC5vcmcvZy95b2N0by91bnN1YiBbcmFqLmtoZW1AZ21haWwuY29tXQ0K
Pj4gLT0tPS09LT0tPS09LT0tPS09LT0tPS0NCj4+DQo=
--------------llBW6cfBnmDTGwCCAzFYhUix
Content-Type: application/pgp-keys; name="OpenPGP_0xBB053355919D3314.asc"
Content-Disposition: attachment; filename="OpenPGP_0xBB053355919D3314.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
//VuX4EDPW3CZmbPy6U=3D
=3D+jUt
-----END PGP PUBLIC KEY BLOCK-----

--------------llBW6cfBnmDTGwCCAzFYhUix--

--------------NsIcskDmhX0X0mX06awgtiJd--

--------------e0bcn0QZ601ctnoaG8sEE9UU
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wmMEABEIACMWIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCYw+OZgUDAAAAAAAKCRC7BTNVkZ0zFEst
AJ9KYfc9BBSzlKF9c3tHeN3XzR+3KQCfaV9rkAa1M+0pRHX/4t5AhmiW0eU=
=HDpT
-----END PGP SIGNATURE-----

--------------e0bcn0QZ601ctnoaG8sEE9UU--

