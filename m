Return-Path: <embedded@vivavis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 036DCC19F2A
	for <webhook@archiver.kernel.org>; Thu,  4 Aug 2022 12:35:35 +0000 (UTC)
Received: from mx-relay50-hz1.antispameurope.com
 (mx-relay50-hz1.antispameurope.com [94.100.133.225])
 by mx.groups.io with SMTP id smtpd.web10.4134.1659616524716118556
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Aug 2022 05:35:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vivavis.com header.s=hse1 header.b=H/d9eR9E;
 spf=pass (domain: vivavis.com, ip: 94.100.133.225,
 mailfrom: prvs=0208b3f95e=embedded@vivavis.com)
Received: from unknown ([185.80.187.2]) by mx-relay50-hz1.antispameurope.com;
 Thu, 04 Aug 2022 14:35:21 +0200
Received: from grp-ex01.Vivavis.int (192.168.17.53) by grp-ex01.Vivavis.int
 (192.168.17.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Thu, 4 Aug 2022
 14:35:16 +0200
Received: from grp-ex01.Vivavis.int ([::1]) by grp-ex01.Vivavis.int ([::1])
 with mapi id 15.02.1118.009; Thu, 4 Aug 2022 14:35:16 +0200
From: "embedded (VIVAVIS AG)" <embedded@vivavis.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] libnss-resolve not automatically installed
Thread-Topic: [yocto] libnss-resolve not automatically installed
Thread-Index: AdinXld1wwtbm81QTxO1GYn0SZVuPgAhQBYAAAZcoYA=
Date: Thu, 4 Aug 2022 12:35:16 +0000
Message-ID: <0167a3c723b34bafa4edc0b81ca0ea66@vivavis.com>
References: <07e0007095824408bedb92b61019fd9d@vivavis.com>
 <CAMKF1sqVSHHmi=NGqmFvbmtjA2fi8PLj5iTodU4+ESyiczPKmA@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sqVSHHmi=NGqmFvbmtjA2fi8PLj5iTodU4+ESyiczPKmA@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.1]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 
 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay50-hz1.antispameurope.com with 972FB1649F7A
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 55c54a770313fe37b597548cc54c6435
X-cloud-security: scantime:1.616
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=vivavis.com; h=from:to
	:cc:subject:date:message-id:references:in-reply-to:content-type
	:content-transfer-encoding:mime-version; s=hse1; bh=opEetuzd7b8a
	lp9aRBdKbjMfTGGRdESrttiE5WHfExo=; b=H/d9eR9EXfbdVq2gjfSES/P6k8Yg
	5XgNimevBfkHJWy3kXUWzeYGGu5vKew+8NLiC1drS3OrZgLwf9T08TJx1wwr/3Bh
	ul9KiBZa+I5HYYYIJQg9QFKJhJqrN/DC/hIDaHXxesb9r+/e2TLYsUe9tq6Ak5UN
	Ke1TWYK2FKCIQxefI0BWJBMK+6v5YXMLWUiJjTaB7On1KjpsZ3yszTIAjywdmyOu
	21QeH9WVmQ1InCP+5UJ2DIFUCzHVhGcmRDl4klqnl+svbTS/Wk8auOCblb7g741t
	V2TI1GwJXhpmC8HbAFDZvG/q/nS9E14iQ2EMcqAEUkkiZodxyiwSszqsPw==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Aug 2022 12:35:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57778

SGkgS2hlbSwNCg0KPiBWb246IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KPiBHZXNl
bmRldDogRG9ubmVyc3RhZywgNC4gQXVndXN0IDIwMjIgMTM6MjANCj4+DQo+PiBUbyBpbnN0YWxs
IHRoZSBtaXNzaW5nIGxpYnJhcnkgbGlibnNzLXJlc29sdmUuc28uMiwgSSd2ZSBhZGRlZA0KPj4g
wqAgSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIGxpYm5zcy1yZXNvbHZlIg0KPj4gdG8gbXkgaW1h
Z2UgcmVjaXBlLCBidXQgSSB3b25kZXIsIGlmIHRoaXMgaXMgdGhlIHJpZ2h0IHBsYWNlIG9yIG5l
Y2Vzc2FyeQ0KPj4gYXQgYWxsLg0KPj4NCj4+IE15IGFzc3VtcHRpb24gd2FzIHRoYXQgaGF2aW5n
IG5zcy1yZXNvbHZlIGluIFBBQ0tBR0VDT05GSUcgd2lsbA0KPj4gYWxzbyBpbnN0YWxsIHRoZSBy
ZWxhdGVkIGxpYnJhcnksIHdoaWNoIGlzIG9idmlvdXNseSBub3QgdGhlIGNhc2UuDQo+DQo+IFBh
Y2thZ2Vjb25maWdzIGFyZSBhYm91dCB3aGF0IHlvdSB3b3VsZCBsaWtlIHRvIGJ1aWxkIGl04oCZ
cyBzdGlsbCBhbm90aGVyIHN0ZXAgd2hhdCB5b3Ugd291bGQgbGlrZSB0byBidW5kbGUgaW4geW91
ciBpbWFnZSB3aGljaCBpcyB3aGF0IElNQUdFX0lOU1RBTEwgZG9lcy4gQXQgdGltZXMgdGhpcyBp
cyBhbHJlYWR5IGRvbmUgYmVjYXVzZSB3aGF0ZXZlciB0aGUgcGFja2FncmNvbmZpZyBpcyBlbmFi
bGluZyBpcyBhbHJlYWR5IHBhcnQgb2YgYSBvdXRwdXQgcGFja2FnZSB0aGF04oCZcyBpbiB5b3Vy
IElNQUdFX0lOU1RBTEwgZGVwZW5kZW5jaWVzIGFuZCBnZXRzIHB1bGxlZCBpbiBpbmRpcmVjdGx5
IGJ1dCB0aGF04oCZcyBub3QgdGhlIGNhc2UgaGVyZS4gVGhlcmVmb3JlIHlvdSBoYXZlIHRvIGRv
IGl0IGluIGJvdGggcGxhY2VzDQo+DQo+Pg0KPj4gRnVydGhlcm1vcmUsIEkgaGFkIHRvIHdyaXRl
IGFuIGFwcGVuZC1maWxlIGZvciBiYXNlLWZpbGVzLCBzdWNoIHRoYXQNCj4+IC9ldGMvbnNzd2l0
Y2guY29uZiBjb250YWlucyB0aGUgZm9sbG93aW5nIGxpbmUNCj4+IMKgIGhvc3RzOiByZXNvbHZl
IFshVU5BVkFJTD1yZXR1cm5dIGZpbGVzIGRucyBteWhvc3RuYW1lDQo+Pg0KDQpPaywgdGhlcmUn
cyBub3RoaW5nIHRvIHdvcnJ5IGFib3V0Lg0KQWRkaW5nIGxpYm5zcy1yZXNvbHZlIHRvIElNQUdF
X0lOU1RBTEwgYW5kIG92ZXJ3cml0aW5nIG5zc3dpdGNoLmNvbmYgaW4NCnRoZSBhcHBlbmQtZmls
ZSBpc3QgaGUgY29ycmVjdCBwcm9jZWR1cmUgaGVyZS4NCg0KVGhhbmtzIGZvciBjbGFyaWZpY2F0
aW9uLg0KDQpDYXJzdGVuDQo=

