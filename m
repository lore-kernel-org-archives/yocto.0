Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web09.248.1632335474015520456
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 11:31:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=ldJhBiAg;
 spf=neutral (domain: ibeeto.com, ip: 209.85.215.181, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-pg1-f181.google.com with SMTP id w8so3644905pgf.5
        for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 11:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=to:from:autocrypt:subject:message-id:date:user-agent:mime-version;
        bh=ccyCSkp7r4RkmCJ1jVUrM1UA6/GpHNUVjrqYenpTZXU=;
        b=ldJhBiAgA9v/G/9R5eyPG1rTQoqBVFKpgpefmiuYlDhRAWYPueVECk2620gF4IOkp/
         7fw7DyZdhv5noqDT8WggHvEHGv1Btu7roWwGGqYOX4G8neor6pswXjaLy6/qophK2eqe
         SvKBKpFob7CjMDkGUCyL3dmSC+q0BRsBa4j/aAZ0j4qojwRLQoaE6a45K2paYUXRnEUr
         pBgupRpTFDmar6WmL8E8XsxmdgkJ71S9bf8VPeRlE8wuRy6lIibJOjfSydK24qqv+Hbc
         CbOoG97WT10WHqSoQVTvRXr3oPDO85u3wad9MgM+5w7/0u4gPU9bn18UxykIsNqUZ1UZ
         pIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:to:from:autocrypt:subject:message-id:date
         :user-agent:mime-version;
        bh=ccyCSkp7r4RkmCJ1jVUrM1UA6/GpHNUVjrqYenpTZXU=;
        b=igYrIlbRqRX28qlqrUjLNgptvpPKHqux2fuSz0l+FwdJWN+sHM0CxfL7IDi7vk4i4X
         wYGBNe3DBkytBNs8gLj1VLf2gAtxmD7p64T7UlenIAvsARzrN9r3e2LwfltC3SU+bPEB
         uNfW2V1Jl7u6JTT8UcGKoSaoQPEHuQLR5DkhOC+2aftgGb7cqNoBwugGuw5hwGoGh/Ec
         hpepWqCTJllSU+HOJOk12ern5OTxboHHlc/RkttmTsoBNBpjXk96y2EWO0gV725NqmRA
         KsoN9sTA3aHiQSP2NZV2YTvulVpRyEt4i1rhWIk6HGbBfXUzRdsu+Ja41xdWR6dMFhYz
         wz4g==
X-Gm-Message-State: AOAM530JR6JDhX3YSrsUvHbaYq85DyGVaTz8/JXdnqaQpE9D5w22Mqfe
	U2+5A8kmXMLHAHdOCLlRMDWRMNAGs9dp/Q==
X-Google-Smtp-Source: ABdhPJz65e1ZQhfDKR/iP1kDLVTfqit3DOxnPPhWaqs0VMXHedS3vSxTlH7M0VVd7+ZrJU4xTC22NQ==
X-Received: by 2002:a63:684a:: with SMTP id d71mr276357pgc.175.1632335472561;
        Wed, 22 Sep 2021 11:31:12 -0700 (PDT)
Return-Path: <rudolf.streif@ibeeto.com>
Received: from [192.168.4.197] (ip72-220-244-209.sd.sd.cox.net. [72.220.244.209])
        by smtp.gmail.com with ESMTPSA id t2sm6448330pje.5.2021.09.22.11.31.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 11:31:11 -0700 (PDT)
To: Yocto <yocto@lists.yoctoproject.org>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
 xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
 Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
 /Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
 cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
 3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
 AAHNKlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgA
 IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
 3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
 txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
 lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
 Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
 zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvzsBNBFhQFAQBCADXoLKCuF48
 5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
 RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
 w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
 svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
 tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAkFAlhQFAQC
 GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
 s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
 fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
 Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
 P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
 ROZj4g==
Subject: [WIC] bootimg-partition plugin
Message-ID: <81c3bcac-289b-5179-be19-55d6ee454a52@ibeeto.com>
Date: Wed, 22 Sep 2021 11:31:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
X-Groupsio-MsgNum: 54800
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="5sJcdjVz66BdJFG5UuaM6EwzwRTKsizRa"

--5sJcdjVz66BdJFG5UuaM6EwzwRTKsizRa
Content-Type: multipart/mixed; boundary="xDaZ898UnVSdCq1hmmMKnPAICENvUfNhB";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: Yocto <yocto@lists.yoctoproject.org>
Message-ID: <81c3bcac-289b-5179-be19-55d6ee454a52@ibeeto.com>
Subject: [WIC] bootimg-partition plugin

--xDaZ898UnVSdCq1hmmMKnPAICENvUfNhB
Content-Type: multipart/mixed;
 boundary="------------86999047EA9EFC7EFA9F062D"
Content-Language: en-US

--------------86999047EA9EFC7EFA9F062D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: base64

QSBub3Qgc28gd2VsbC1rbm93biBmZWF0dXJlIG9mIHRoZSBXSUMgYm9vdGltZy1wYXJ0aXRp
b24gcGx1Z2luIGlzIHRoYXQgCml0IGNhbiBpbnN0YWxsIGZpbGVzIGludG8gZGlmZmVyZW50
IHBhcnRpdGlvbnMuIEZvciB0aGF0IHRoZSB2YXJpYWJsZSAKSU1BR0VfQk9PVF9GSUxFUyBo
YXMgdG8gYmUgZGVmaW5lZCBhcyBvbmUgb2YgdGhlIGZvbGxvd2luZzoKCklNQUdFX0JPT1Rf
RklMRVNfbGFiZWwtPHBhcnRsYWJlbD4gPSAiLi4uIgoKSU1BR0VfQk9PVF9GSUxFU191dWlk
LTxwYXJ0dXVpZD4gPSAiLi4uIgoKVGhlIHBsdWdpbiB3aWxsIHRoZW4gdXNlIGVpdGhlciB0
aGUgcGFydGl0aW9uIGxhYmVsIG9yIHRoZSBwYXJ0aXRpb24gCnV1aWQgZnJvbSB0aGUgV0tT
IGZpbGUgInBhcnQiIGRpcmVjdGl2ZSB0byBsb29rIHVwIHRoZSBjb3JyZWN0IGZpbGUgbGlz
dCAKdmFyaWFibGUuCgpUaGlzIGNvZGUgc25pcHBldCBmcm9tIHRoZSBwbHVnaW4gCihwb2t5
L3NjcmlwdHMvbGliL3dpYy9wbHVnaW5zL3NvdXJjZS9ib290aW1nLXBhcnRpdGlvbi5weSkg
aXMgc3VwcG9zZWQgCnRvIGRvIHRoZSB0cmljazoKCiA+Pj4+PgoKIMKgNTDCoMKgwqDCoMKg
wqDCoMKgIGJvb3RfZmlsZXMgPSBOb25lCiDCoDUxwqDCoMKgwqDCoMKgwqDCoCBmb3IgKGZt
dCwgaWQpIGluICgoIl91dWlkLSVzIiwgcGFydC51dWlkKSwgKCJfbGFiZWwtJXMiLCAKcGFy
dC5sYWJlbCksIChOb25lLCBOb25lKSk6CiDCoDUywqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IGlmIGZtdDoKIMKgNTPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB2YXIgPSBm
bXQgJSBpZAogwqA1NMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbHNlOgogwqA1NcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHZhciA9ICIiCiDCoDU2CiDCoDU3wqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHByaW50KCd2YXI6ICcsIHZhcikKIMKgNTgKIMKgNTnCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYm9vdF9maWxlcyA9IGdldF9iaXRiYWtlX3ZhcigiSU1B
R0VfQk9PVF9GSUxFUyIgKyB2YXIpCiDCoDYwwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlm
IGJvb3RfZmlsZXMgaXMgbm90IE5vbmU6CiDCoDYxwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgYnJlYWsKCjw8PDw8CgpIb3dldmVyLCB0aGUgZnVuY3Rpb24gZ2V0X2JpdGJh
a2VfdmFyKCkgZnJvbSAKcG9reS9zY3JpcHRzL2xpYi93aWMvbWlzYy5weSB1c2VzIHRoZSB0
aGUgV0lDIGVudmlyb25tZW50IHdoaWNoIGlzIApjcmVhdGVkIGZyb20gdGhlIFdJQ1ZBUlMg
dmFyaWFibGUgYnkgdGhlIApwb2t5L21ldGEvY2xhc3Nlcy9pbWFnZV90eXBlc193aWMuYmJj
bGFzcy4gV0lDVkFSUyBpcyBkZWZpbmVkIGF0IHRoZSAKYmVnaW5uaW5nIG9mIHRoZSBjbGFz
cyBhbmQgY29udGFpbnMgYWxsIGJpdGJha2UgdmFyaWFibGVzIHJlbGV2YW50IHRvIApXSUMu
IEl0IG9mIGNvdXJzZSBpbmNsdWRlcyB0aGUgcGxhaW4gSU1BR0VfQk9PVF9GSUxFUy4gV2hl
biB0aGUgY2xhc3MgCmNyZWF0ZXMgdGhlIGVudmlyb25tZW50IChkb19yb290ZnNfd2ljZW52
KSBpcyBzaW1wbHkgc3BsaXRzIFdJQ1ZBUlMgYW5kIApsb29rcyB1cCB0aGUgdmFyaWFibGVz
IG9uZS1ieS1vbmUgaW4gdGhlIERhdGFTbWFydCBkaWN0aW9uYXJ5IAooZC5nZXRWYXIoPHZh
cm5hbWU+KS4gU2luY2UgdGhpcyBpcyBhIGtleSBsb29rdXAgaXQgd2lsbCBub3QgbWF0Y2gg
YW55IAp2YXJpYWJsZXMgZm9yIElNQUdFX0JPT1RfRklMRVNfbGFiZWwtPHBhcnRsYWJlbD4g
YW5kL29yIApJTUFHRV9CT09UX0ZJTEVTX3V1aWQtPHBhcnR1dWlkPi4KCkZvciB0aGlzIHRv
IHdvcmsgdGhlcmUgc2hvdWxkIGJlIGEgbG9va3VwIGluIERhdGFTbWFydCB0aGF0IHN1cHBv
cnRzIApnZXRWYXIoKSB3aXRoIGEgd2lsZGNhcmQgb3IgInN0YXJ0cyB3aXRoIi4gSSBhbSBu
b3QgYWxsIGludG8gdGhlIGRldGFpbHMgCm9mIERhdGFTbWFydCBhbmQgbWF5YmUgdGhlcmUg
aXMgc29tZXRoaW5nIGxpa2UgdGhpcyBhbHJlYWR5IGFuZCBJIGp1c3QgCmRvbid0IGtub3cg
YWJvdXQgaXQuIEhlbmNlIHRoZSBxdWVzdGlvbiBoZXJlIGJlZm9yZSBJIHN0YXJ0IGhhY2tp
bmcgYSAKa2x1ZGdlIGludG8gdGhlIGltYWdlX3R5cGVzX3dpYyBjbGFzcy4KClRoYW5rcywK
ClJ1ZGkKCi0tIApSdWRvbGYgSiBTdHJlaWYKQ0VPL0NUTyBpYmVldG8KKzEuODU1LjQ0Mi4z
Mzg2IHg3MDAKCg==

--------------86999047EA9EFC7EFA9F062D
Content-Type: application/pgp-keys;
 name="OpenPGP_0x8D8CA82927339B75.asc"
Content-Transfer-Encoding: quoted-printable
Content-Description: OpenPGP public key
Content-Disposition: attachment;
 filename="OpenPGP_0x8D8CA82927339B75.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvDQpe=
+
Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ/Qymy+7=
C
bh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969cQD/S9LNndn=
K
5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM3sPiHrF+Y2HTdK7=
j
7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEBAAHNKlJ1ZG9sZiBKIFN=
0
cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPsLAdwQTAQgAIQUCWFAUBAIbAwULCQgHAgY=
V
CAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf03GsVMG6C5QOLaPx6rOgj5qexCH3=
r
fYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBktxioE384/51QTIfCmW8ZG5X0cMC5d38=
L
Fvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xllpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR8=
4
ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+wXl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x=
5
LZhUhGYoqbYwNy9imoBkUAZkbbViNOtXzaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjV=
L
mLHvzsBNBFhQFAQBCADXoLKCuF485eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTq=
k
3fb9+Ao6C6IliC9ZRXyAVLD/RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIF=
p
PBpxHRrZnDdEd5IKsy+zw6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJS=
H
WMBh0OMKDeBik5wlsvtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mC=
B
CZ+IKhBQR36vtUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAHCwF8EGAEIAAk=
F
AlhQFAQCGwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LY=
U
pLNjs4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9Mby=
E
fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8TzYf9=
m
2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/NlouvceP41tsC5=
d
axZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/ANROZj4g=3D=
=3D
=3DLHwf
-----END PGP PUBLIC KEY BLOCK-----

--------------86999047EA9EFC7EFA9F062D--

--xDaZ898UnVSdCq1hmmMKnPAICENvUfNhB--

--5sJcdjVz66BdJFG5UuaM6EwzwRTKsizRa
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAmFLdm4FAwAAAAAACgkQjYyoKSczm3Vt
6gf+Kfzqv2k+cuIJvwE4y2IH/IOsWYUhFe3zn1cWOTEfT+E8paP4qCeGVYExnb2KRyIdsWTrZzJU
4CRmHaUnVk+S36MImsBeo+vf9hFVpS4KFga4d3t6NxuTKSIVhojRa835Sw61JKVpCm2jigYmCkCI
3zlm1YrnOVIGZOjhTqMf47N6eXmGTOdXVLyUYtNg8tLUhwt95tKbAwD0qLcSFyYSVBVquB8syC0c
/aAg2foZR1dCdC+w1Zz6mXRdbe+2tcNGaSIz9hhUVOYzjucrIvKn5cVAeKg7JB4XiXpykS7/S7CT
6edAPauS/lYypnG4lhWD6K4y9sc/9j+TU1AMYObosg==
=QT3L
-----END PGP SIGNATURE-----

--5sJcdjVz66BdJFG5UuaM6EwzwRTKsizRa--
