Received: from forward500p.mail.yandex.net (forward500p.mail.yandex.net [77.88.28.110])
 by mx.groups.io with SMTP id smtpd.web12.23973.1630944638511746840
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Sep 2021 09:10:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yandex.com header.s=mail header.b=FSY92k6m;
 spf=pass (domain: yandex.com, ip: 77.88.28.110, mailfrom: deco33000@yandex.com)
Received: from sas8-b941d800e977.qloud-c.yandex.net (sas8-b941d800e977.qloud-c.yandex.net [IPv6:2a02:6b8:c1b:2904:0:640:b941:d800])
	by forward500p.mail.yandex.net (Yandex) with ESMTP id 9874DF016B3
	for <yocto@lists.yoctoproject.org>; Mon,  6 Sep 2021 19:10:34 +0300 (MSK)
Received: from 2a02:6b8:c1b:2a09:0:640:bb48:16e8 (2a02:6b8:c1b:2a09:0:640:bb48:16e8 [2a02:6b8:c1b:2a09:0:640:bb48:16e8])
	by sas8-b941d800e977.qloud-c.yandex.net (mxback/Yandex) with HTTP id WARDwZ2E2Sw1-AXECA2c1;
	Mon, 06 Sep 2021 19:10:34 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail; t=1630944634;
	bh=l+VwTDvZzGKYa0Tqyl0kRfJvxJ5slLNCtWzHwSjihTI=;
	h=Message-Id:Subject:In-Reply-To:Date:References:To:From;
	b=FSY92k6mSOmZY4xEbyeM5QPqo7Z5noQKgMi35KHeoHvrvCE4xW4DfQflcf6tOIrZH
	 pWZPs2JkUNns0b+kbmI8sK3DN0+Y1wij4q2Ab5puVdOXkPP6uyf6AKOD5+G0AdhzVF
	 ENPTQ0BqaWghy0DCVvx2XzrsTt2Cm2rja7Omg1vA=
Authentication-Results: sas8-b941d800e977.qloud-c.yandex.net; dkim=pass header.i=@yandex.com
Received: by sas8-bb4816e87b9b.qloud-c.yandex.net with HTTP;
	Mon, 06 Sep 2021 19:10:33 +0300
From: "KL" <deco33000@yandex.com>
Envelope-From: deco33000@yandex.ru
To: yocto@lists.yoctoproject.org
In-Reply-To: <1004181630942804@mail.yandex.com>
References: <1004181630942804@mail.yandex.com>
Subject: Debating best tool to use
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Mon, 06 Sep 2021 18:10:33 +0200
Message-Id: <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGJyIC8+PGJsb2NrcXVvdGUgY2xhc3M9IjIxMGU3YTg0OGU4ZmNiNDV3bWktcXVvdGUiPjxkaXY+
SGksPC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+SSBwbGFuIHRvIGhhdmUgYSBtaW5pbWFsIGVtYmVk
ZGVkIHN5c3RlbSB3aXRoIEJULCB3aWZpLCBubyBndWksIHRvIGhvc3QgbXkgYXBwbGljYXRpb24g
d2l0aCBteSBvd24gd2Vic2VydmVyLjwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2Pk15IHdlYnNlcnZl
cithcHAgYXJlIHJlc3BvbnNpYmxlIHRvIG1hbmFnZSB0aGUgT1MgKHNvIEkgZG9uJ3Qgd2FudCBh
bnl0aGluZyBlbHNlIHRvIGRvIGl0KS4gVGhleSByZWNlaXZlIG5ldyBwcm9ncmFtcyBhbmQgbG9h
ZCB0aGVtIGFjY29yZGluZyB0byBteSBydWxlcyAodGhhdCBpcyBvdXIgbWFuYWdlciBhdCB3b3Jr
KS48L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5JIHdvdWxkIGxpa2UgdG8gYXZvaWQgdGhlIHBsYWd1
ZSBvZiBtdWx0aXBsZSBjb25maWd1cmF0aW9uIGZpbGVzIHB1dCBldmVyeXdoZXJlIGluIGZpbGVz
IChsaWtlIG5vdyBpbiBkaWZmZXJlbnQgcHJvZmlsZSBkaXJlY3Rvcmllcy4uLiksIGJ1dCBpbnN0
ZWFkIGhhdmUgbXkgY3VzdG9tIG1hbmFnZXIgaGFuZGxlIEFMTCB0aGUgZGlmZmVyZW50IHNldHRp
bmdzIGZvciB0aGUgT1MgKGNlbnRyYWxpemVkIHBvaW50KS48L2Rpdj48ZGl2PsKgPC9kaXY+PGRp
dj5XZSwgYXQgdGhlIG9mZmljZSwgY29tcGlsZSBhbmQgbWFpbnRhaW4gdGhlIGRpZmZlcmVudCBz
b2Z0d2FyZSBuZWVkZWQgYW5kIHNlbmQgdGhlbSBieSB3aWZpLjwvZGl2PjxkaXY+wqA8L2Rpdj48
ZGl2Pkkgd2FudCB0aGF0IE9TIHRvIGJlIGJ1aWx0IG9uIHRvcCBvZiBMaW51eC48L2Rpdj48ZGl2
PsKgPC9kaXY+PGRpdj5Xb3VsZCBZb2N0byBlbmFibGUgbWUgdG8gZG8gdGhhdD8gSXMgaXQgdGhl
IGJlc3QgdG9vbCBmb3IgdGhhdD88L2Rpdj48ZGl2PsKgPC9kaXY+PGRpdj5UaGFua3MsPC9kaXY+
PGRpdj7CoDwvZGl2PjxkaXY+wqA8L2Rpdj48ZGl2Pi0twqA8L2Rpdj48ZGl2Pk1LTDwvZGl2Pjxk
aXY+PGJyIC8+PC9kaXY+PC9ibG9ja3F1b3RlPg==
