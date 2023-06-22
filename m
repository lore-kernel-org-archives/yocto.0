Return-Path: <stephan.wurm@a-eberle.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8851EEB64DB
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 09:07:15 +0000 (UTC)
Received: from mail.a-eberle.de (mail.a-eberle.de [213.95.140.213])
 by mx.groups.io with SMTP id smtpd.web10.7129.1687424825877424374
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 02:07:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: a-eberle.de, ip: 213.95.140.213, mailfrom: stephan.wurm@a-eberle.de)
Received: from localhost (localhost [127.0.0.1])
	by mail.a-eberle.de (Postfix) with ESMTP id 33B62380475
	for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 11:07:03 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at aeberle-mx.softwerk.noris.de
Received: from mail.a-eberle.de ([127.0.0.1])
	by localhost (ebl-mx-02.a-eberle.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpbS0md0xQL6 for <yocto@lists.yoctoproject.org>;
	Thu, 22 Jun 2023 11:07:00 +0200 (CEST)
Received: from gateway.a-eberle.de (unknown [178.15.155.2])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "sg310.eberle.local", Issuer "A. Eberle GmbH & Co. KG WebAdmin CA" (not verified))
	(Authenticated sender: postmaster@a-eberle.de)
	by mail.a-eberle.de (Postfix) with ESMTPSA
	for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 11:07:00 +0200 (CEST)
Received: from svr-exch2019.eberle.local ([192.168.1.17]:45137 helo=webmail.a-eberle.de)
	by gateway.a-eberle.de with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <Stephan.Wurm@a-eberle.de>)
	id 1qCGHC-0007QM-0L;
	Thu, 22 Jun 2023 11:06:50 +0200
Received: from Svr-Exch2019.eberle.local (192.168.1.17) by
 Svr-Exch2019.eberle.local (192.168.1.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.42; Thu, 22 Jun 2023 11:06:49 +0200
Received: from Svr-Exch2019.eberle.local ([::1]) by Svr-Exch2019.eberle.local
 ([::1]) with mapi id 15.02.0986.042; Thu, 22 Jun 2023 11:06:49 +0200
From: "Wurm, Stephan" <Stephan.Wurm@a-eberle.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] dm-verity-image-initramfs: Allow
 compressed image types
Thread-Topic: [yocto] [meta-security][PATCH] dm-verity-image-initramfs: Allow
 compressed image types
Thread-Index: AQHZontRqb1db/S4XUak4m1sHKrnsK+VxkEAgAClAQA=
Date: Thu, 22 Jun 2023 09:06:49 +0000
Message-ID: <134e044cf712cc4fdb711fbfc09dd20cd0ef1f62.camel@a-eberle.de>
References: <20230619065728.189934-1-stephan.wurm@a-eberle.de>
	 <d59ec999-6dae-6135-b728-0d672b4d63fe@gmail.com>
In-Reply-To: <d59ec999-6dae-6135-b728-0d672b4d63fe@gmail.com>
Reply-To: "Wurm, Stephan" <Stephan.Wurm@a-eberle.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.30.11]
x-esetresult: clean, is OK
x-esetid: 37303A298E357D546C7163
Content-Type: text/plain; charset="utf-8"
Content-ID: <10D308FD47D8314AAF4FD332F8CD9FCB@eberle.local>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 09:07:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60392

SGVsbG8gYWt1c3RlcjgwOCwNCg0KQW0gTWl0dHdvY2gsIGRlbSAyMS4wNi4yMDIzIHVtIDE5OjE2
IC0wNDAwIHNjaHJpZWIgYWt1c3RlcjgwODoNCj4gdGhpcyBmYWlscyB0byBidWlsZDoNCj4gDQo+
IFRoZSBzdGFjayB0cmFjZSBvZiBweXRob24gY2FsbHMgdGhhdCByZXN1bHRlZCBpbiB0aGlzDQo+
IGV4Y2VwdGlvbi9mYWlsdXJlIHdhczoNCj4gRmlsZTogJzxjb2RlPicsIGxpbmVubzogMjQsIGZ1
bmN0aW9uOiA8bW9kdWxlPg0KPiAwMDIwOl9fYW5vbl83MF9faG9tZV9ha3VzdGVyX29zc19jbGVh
bl9wb2t5X21ldGFfY2xhc3Nlc19yZWNpcGVfcm9vdGYNCj4gc19wb3N0Y29tbWFuZHNfYmJjbGFz
cyhkKQ0KPiAwMDIxOl9fYW5vbl8xMjVfX2hvbWVfYWt1c3Rlcl9vc3NfY2xlYW5fcG9reV9tZXRh
X2NsYXNzZXNfcmVjaXBlX2ltYWcNCj4gZV9iYmNsYXNzKGQpDQo+IDAwMjI6X19hbm9uXzE4MV9f
aG9tZV9ha3VzdGVyX29zc19jbGVhbl9wb2t5X21ldGFfY2xhc3Nlc19yZWNpcGVfaW1hZw0KPiBl
X2JiY2xhc3MoZCkNCj4gMDAyMzpfX2Fub25fNTE4X19ob21lX2FrdXN0ZXJfb3NzX2NsZWFuX3Bv
a3lfbWV0YV9jbGFzc2VzX3JlY2lwZV9pbWFnDQo+IGVfYmJjbGFzcyhkKQ0KPiDCoMKgKioqIA0K
PiAwMDI0Ol9fYW5vbl8yOF9faG9tZV9ha3VzdGVyX29zc19tYWludF9tZXRhX3NlY3VyaXR5X3Jl
Y2lwZXNfY29yZV9pbWENCj4gZ2VzX2RtX3Zlcml0eV9pbWFnZV9pbml0cmFtZnNfYmIoZCkNCj4g
RmlsZTogDQo+ICcvaG9tZS9ha3VzdGVyL29zcy9tYWludC9tZXRhLXNlY3VyaXR5L3JlY2lwZXMt
Y29yZS9pbWFnZXMvZG0tdmVyaXR5LQ0KPiBpbWFnZS1pbml0cmFtZnMuYmInLCANCj4gbGluZW5v
OiAyNiwgZnVuY3Rpb246IA0KPiBfX2Fub25fMjhfX2hvbWVfYWt1c3Rlcl9vc3NfbWFpbnRfbWV0
YV9zZWN1cml0eV9yZWNpcGVzX2NvcmVfaW1hZ2VzX2QNCj4gbV92ZXJpdHlfaW1hZ2VfaW5pdHJh
bWZzX2JiDQo+IMKgwqDCoMKgwqAgMDAyMjpweXRob24gX19hbm9ueW1vdXMoKSB7DQo+IMKgwqDC
oMKgwqAgMDAyMzrCoMKgwqAgdmVyaXR5X2ltYWdlID0gZC5nZXRWYXIoJ0RNX1ZFUklUWV9JTUFH
RScpDQo+IMKgwqDCoMKgwqAgMDAyNDrCoMKgwqAgdmVyaXR5X3R5cGUgPSBkLmdldFZhcignRE1f
VkVSSVRZX0lNQUdFX1RZUEUnKQ0KPiDCoMKgwqDCoMKgIDAwMjU6DQo+IMKgwqAqKiogMDAyNjrC
oMKgwqAgZGVwID0gJyAlczpkb19pbWFnZV8lcycgJSAodmVyaXR5X2ltYWdlLCANCj4gdmVyaXR5
X3R5cGUucmVwbGFjZSgnLScsICdfJykpDQo+IMKgwqDCoMKgwqAgMDAyNzrCoMKgwqAgZC5hcHBl
bmRWYXJGbGFnKCdkb19pbWFnZScsICdkZXBlbmRzJywgZGVwKQ0KPiDCoMKgwqDCoMKgIDAwMjg6
fQ0KPiDCoMKgwqDCoMKgIDAwMjk6DQo+IMKgwqDCoMKgwqAgMDAzMDojIEVuc3VyZSBkbS12ZXJp
dHkuZW52IGlzIHVwZGF0ZWQgYWxzbyB3aGVuIHJlYnVpbGRpbmcgDQo+IERNX1ZFUklUWV9JTUFH
RQ0KPiBFeGNlcHRpb246IEF0dHJpYnV0ZUVycm9yOiAnTm9uZVR5cGUnIG9iamVjdCBoYXMgbm8g
YXR0cmlidXRlDQo+ICdyZXBsYWNlDQp0aGlzIGxvb2tzIGxpa2UgYERNX1ZFUklUWV9JTUFHRV9U
WVBFYCB3YXMgbmV2ZXIgc2V0IG9yIGlzIGVtcHR5LA0KaGVuY2UgdGhlIGByZXBsYWNlYCBvcGVy
YXRpb24gY2Fubm90IHdvcmsuDQoNCkkgdGVzdGVkIHRoaXMgb24ga2lya3N0b25lIHdpdGggYERN
X1ZFUklUWV9JTUFHRV9UWVBFYCBzZXQgdG8NCmBzcXVhc2hmc2Agb3IgYHNxdWFzaGZzLXpzdGAs
IHdoaWxlIGBETV9WRVJJVFlfSU1BR0VgIHdhcw0KY29uZmlndXJlZCB0byByZWZsZWN0IG15IG5v
cm1hbCByb290ZnMgaW1hZ2UuDQoNCg0KQmVzdCByZWdhcmRzDQpTdGVwaGFuDQo=

