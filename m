Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.6144.1603347068170358110
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 23:11:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="no key for verify" header.i=@optimcloud.com header.s=obsd header.b=NhH8UJdP;
 spf=none, err=SPF record not found (domain: optimcloud.com, ip: 198.145.29.25, mailfrom: yocto@optimcloud.com)
Received: from mx02.optimcloud.com (mx02.optimcloud.com [46.23.93.22])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 000B038C1143
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2020 23:11:06 -0700 (PDT)
Received: from mx02.optimcloud.com (localhost [127.0.0.1])
	by mx02.optimcloud.com (OpenSMTPD) with ESMTP id 07a2f35b;
	Thu, 22 Oct 2020 08:11:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=optimcloud.com; h=date
	:subject:message-id:from:to:in-reply-to:mime-version
	:content-type:content-transfer-encoding; s=obsd; bh=XKIvZ1X1BIWX
	pJy19yQ7pLYcGHAQHZz9vYuROpFThFI=; b=NhH8UJdPAqvRuokKoXqu6gJIVLyN
	D1ehzEsHYNySTu5clIFO/6LwQPkS/pk5pEn9ThDTbxexRLDLQDgfIlAnziAgDA11
	RtoBIdtVZZHiHs+sbljS3TSzOb98L/8HA50IJw/3vDQ5JjYV6P4UyIinUODrpxpF
	Ra9vEHN2ZpcZbdINrBXaLt2Df8jCARwxCEBoeUpF1C7B8lzi9oLWXm6u+ofeTgdG
	LfYxCWLJ0BUMGCoscVQzCqweuzfhBcI0msRolNZrYil5PpQ4Acd1EnKFZyjjSHp9
	OEZ4RksYsHXJshQs7Q0sDsxgCT0f/wRgfLU3zJt2djEjQmlmKNjg0doS2g==
DomainKey-Signature: a=rsa-sha1; c=nofws; d=optimcloud.com; h=date
	:subject:message-id:from:to:in-reply-to:mime-version
	:content-type:content-transfer-encoding; q=dns; s=obsd; b=IiczxN
	EKhGxSNKSqzd7oPNB/6NAgmQ5Gw5+DVnUVl1H8t6ByYwoOfrLISwlN46cVKNk/Uw
	R3H/J/jaqyTSmsc2Mta7QN4xdovlt1KSxXfQEth4rynXaFSwG3vnqGajxaNOKA+W
	7x7pTc5MaG6giqzKzfyIGmUBpQ+eadpj3JSnRhijX6/caxouG7yn1zWSCeH/ngT9
	Ig/xqIQoNG6rjMh5ySKtRBIRv8nJlTeuF5y2gC/IMrqhqIHjAX9udBHXW+1A6M3B
	AANpM+y1IZ1gfk2e1WfMYEBx2sngzya/Su6NwGn2dCtpQLCygorJEn9M9BiyDALn
	OQO1uox0ZOeD1sZQ==
Received: 
	by mx02.optimcloud.com (OpenSMTPD) with ESMTPSA id 2be4006b (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO) auth=yes user=yocto@optimcloud.com;
	Thu, 22 Oct 2020 08:11:02 +0200 (CEST)
Date: Thu, 22 Oct 2020 13:10:53 +0700
Subject: Re: [yocto] readonly rootfs -> make files writable
Message-ID: <onc77t8ekt75c6bdkfe9o3m9.1603347053766@optimcloud.com>
From: "Yocto" <yocto@optimcloud.com>
To: Marek Belisko <marek.belisko@gmail.com>, yocto <yocto@yoctoproject.org>
In-Reply-To: <CAAfyv35LXFqRUd+cW-U2F0MPCCej5X=H7gf6Jkv9mNimtX6CvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

CgoKClNlbnQgdmlhIEJsYWNrQmVycnkgSHViKyBJbmJveCBmb3IgQW5kcm9pZAoKCgnCoCBPcmln
aW5hbCBNZXNzYWdlIMKgCQoKCkZyb206IG1hcmVrLmJlbGlza29AZ21haWwuY29tClNlbnQ6IE9j
dG9iZXIgMjIsIDIwMjAgMTI6NTMKVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcKU3ViamVjdDog
W3lvY3RvXSByZWFkb25seSByb290ZnMgLT4gbWFrZSBmaWxlcyB3cml0YWJsZQoKCkhpLAoKSSdt
IHVzaW5nIHRoZSByZWFkLW9ubHkgcm9vdGZzIGZlYXR1cmUgb24gbXkgc3lzdGVtLCBidXQgZm9y
IHNvbWUKcGFja2FnZXMgd2hpY2ggSSdtIGludGVncmF0aW5nIGl0IG1ha2VzIHRyb3VibGUuIEkg
dXNlZCB2b2xhdGlsZS1iaW5kcwpyZWNpcGUgdG8gbW91bnQgY2hhbmdlcyBpbiBvdmVybGF5ZnMg
KG9uIG90aGVyIHBhcnRpdGlvbikgYnV0IGFmdGVyCnJlYm9vdCBmaWxlcyBhcmUgbG9zdCAod2hl
biBtb3VudCB2b2xhdGlsZSBkaXJlY3RvcnkpLiBBbm90aGVyCmFwcHJvYWNoIHdoaWNoIGNhbWUg
dG8gbXkgbWluZCBpcyB0byBzeW1saW5rIGFsbCBmaWxlcy9kaXJzIHRvIG90aGVyCnBhcnRpdGlv
bnMgYnV0IHRvIG1lIGl0IGxvb2tzIGxpa2Ugb3ZlcmtpbGwuIEV4aXN0cyB0aGVyZSBzb21lIG90
aGVyCm1lY2hhbmlzbSBJIGNhbiB1c2UgdG8ga2VlcCBmaWxlIHByZXNlcnZlZCBhbmQgc3RpbGwg
aGF2ZSByZWFkb25seQpyb290ZnMgZnVuY3Rpb25hbGl0eT8KClRoYW5rcyBhbmQgQlIsCgpTb3Vu
ZHMgbGlrZSBvcy10cmVlIGNvdWxkIGJlIGEgZ29vZCBvcHRpb24gaGVyZSB3aXRoIGltbXV0YWJs
ZSByb290ZnMKCgptYXJlawoKLS0KYXMgc2ltcGxlIGFuZCBwcmltaXRpdmUgYXMgcG9zc2libGUK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpNYXJlayBC
ZWxpc2tvIC0gT1BFTi1OQU5EUkEKRnJlZWxhbmNlIERldmVsb3BlcgoKUnVza2EgTm92YSBWZXMg
MjE5IHwgUHJlc292LCAwODAwNSBTbG92YWsgUmVwdWJsaWMKVGVsOiArNDIxIDkxNSAwNTIgMTg0
CnNreXBlOiBtYXJla3doaXRlCnR3aXR0ZXI6ICNvcGVubmFuZHJhCndlYjogaHR0cDovL29wZW4t
bmFuZHJhLmNvbQoKCgoK
