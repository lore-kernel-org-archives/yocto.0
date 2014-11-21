Return-Path: <J.Spriggs@raylase.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5615E008F3; Fri, 21 Nov 2014 05:19:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 307 seconds by postgrey-1.32 at yocto-www;
	Fri, 21 Nov 2014 05:19:26 PST
Received: from emailsecurity.raylase.de (mail.raylase.de [217.6.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FCE2E0085D
	for <yocto@yoctoproject.org>; Fri, 21 Nov 2014 05:19:26 -0800 (PST)
Received: from emailsecurity.raylase.de (127.0.0.1) id hdstu20171sq for
	<yocto@yoctoproject.org>;
	Fri, 21 Nov 2014 14:14:18 +0100 (envelope-from <J.Spriggs@raylase.de>)
Received: from EXCHANGE-A.raylase.de ([192.168.1.16])
	by emailsecurity.raylase.de (RAYLASE AG)
	with ESMTPS (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA
	bits=256/256)
	id 201411211314170065686; Fri, 21 Nov 2014 14:14:17 +0100
Received: from EXCHANGE-B.raylase.de (192.168.2.12) by EXCHANGE-A.raylase.de
	(192.168.1.16) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Fri, 21 Nov 2014 14:14:18 +0100
Received: from EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49]) by
	EXCHANGE-B.raylase.de ([fe80::3144:5b1b:13e0:ad49%14]) with mapi id
	14.03.0210.002; Fri, 21 Nov 2014 14:14:17 +0100
From: "Spriggs, Jim" <J.Spriggs@raylase.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Newbie confusion: trying to use meta-mono on poky-socfpga
	(Arrow SoCKit)
Thread-Index: AdAFjQjhqDIRVS47RT+9LUF/RtgC+Q==
Date: Fri, 21 Nov 2014 13:14:15 +0000
Message-ID: <2238EDC6081C944E97E4EE915AE5CBEC51FD801C@EXCHANGE-B.raylase.de>
Accept-Language: en-GB, de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.255.1]
MIME-Version: 1.0
X-Mlf-Version: 8.0.5.2663
X-Mlf-UniqueId: o201411211314170065686
Subject: Newbie confusion: trying to use meta-mono on poky-socfpga (Arrow SoCKit)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Nov 2014 13:19:31 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR3V5cywNCg0KWyB5ZXMsIEkndmUgYWxzbyBwb3N0ZWQgdGhpcyBxdWVzdGlvbiBvbiByb2Nr
ZXRib2FyZHMgbGlzdF0NCg0KTXkgZ29hbCBpcyB0byBydW4gImNvbnNvbGUiIC5ORVQgYXBwcyB2
aWEgTW9ubyBvbiB0aGUgQXJyb3cgU29DS2l0IHdpdGggcG9reS1zb2NmcGdhIHYxNC4wDQoNCk15
IGZpcnN0IHN0ZXBzIHdlcmU6DQoxKSBBZGQgdGhlIG1ldGEtbW9ubyBsYXllciB0byBiYmxheWVy
cy5jb25mDQoyKSBQdXQgIklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiBtb25vIiIgaW4gbG9jYWwu
Y29uZg0KMykgRXhlY3V0ZSAiYml0YmFrZSBhbHRlcmEtZ3NyZC1pbWFnZSAiLi4uDQoNCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tDQoNCkJ1aWxkIENvbmZpZ3VyYXRpb246DQpCQl9WRVJTSU9OICAgICAgICA9ICIxLjE2LjAi
DQpUQVJHRVRfQVJDSCAgICAgICA9ICJhcm0iDQpUQVJHRVRfT1MgICAgICAgICA9ICJsaW51eC1n
bnVlYWJpIg0KTUFDSElORSAgICAgICAgICAgPSAic29jZnBnYV9jeWNsb25lNSINCkRJU1RSTyAg
ICAgICAgICAgID0gInBva3kiDQpESVNUUk9fVkVSU0lPTiAgICA9ICIxLjMiDQpUVU5FX0ZFQVRV
UkVTICAgICA9ICJhcm12N2EgdmZwIG5lb24gY2FsbGNvbnZlbnRpb24taGFyZCBjb3J0ZXhhOSIN
ClRBUkdFVF9GUFUgICAgICAgID0gInZmcC1uZW9uIg0KbWV0YQ0KbWV0YS15b2N0bw0KbWV0YS15
b2N0by1ic3ANCm1ldGEtYWx0ZXJhDQptZXRhLWxpbmFybyAgICAgICA9ICJhY2RzMTQuMDo4M2Ew
MWM0YjJkYTY2NDY0OGQ4Y2EwNDI1YmE2Yjk4ZmY5YTViN2NhIg0KbWV0YS1tb25vICAgICAgICAg
PSAibWFzdGVyOjgwMjEzODcyMWNjNzJlNWY0ZmI5ODUzYjA1NTJhMTE3ZTY3NzUzNmUiDQoNCk5P
VEU6IFJlc29sdmluZyBhbnkgbWlzc2luZyB0YXNrIHF1ZXVlIGRlcGVuZGVuY2llcw0KRVJST1I6
IE5vdGhpbmcgUFJPVklERVMgJ2xpYnhmdCcgKGJ1dCAvaG9tZS9qaW0vUHJvamVjdHMvcG9reS1z
b2NmcGdhL21ldGEtbW9uby9yZWNpcGVzLW1vbm8vbGliZ2RpcGx1cy9saWJnZGlwbHVzXzIuMTAu
OC5iYiBERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCkVSUk9SOiBsaWJ4ZnQg
d2FzIHNraXBwZWQ6ICd4MTEnIG5vdCBpbiBESVNUUk9fRkVBVFVSRVMNCk5PVEU6IFJ1bnRpbWUg
dGFyZ2V0ICdtb25vJyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCk1pc3Npbmcgb3IgdW5i
dWlsZGFibGUgZGVwZW5kZW5jeSBjaGFpbiB3YXM6IFsnbW9ubycsICdsaWJnZGlwbHVzJywgJ2xp
YnhmdCddDQpFUlJPUjogUmVxdWlyZWQgYnVpbGQgdGFyZ2V0ICdhbHRlcmEtZ3NyZC1pbWFnZScg
aGFzIG5vIGJ1aWxkYWJsZSBwcm92aWRlcnMuDQpNaXNzaW5nIG9yIHVuYnVpbGRhYmxlIGRlcGVu
ZGVuY3kgY2hhaW4gd2FzOiBbJ2FsdGVyYS1nc3JkLWltYWdlJywgJ21vbm8nLCAnbGliZ2RpcGx1
cycsICdsaWJ4ZnQnXQ0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpPYnZpb3VzbHksICJ4MTEgbm90IGluIERJU1RS
T19GRUFUVVJFUyIgaXMgYSBjbHVlLCBidXQgYXMgYSBOZXdiaWUsIEknbSBub3QgZXhhY3RseSBz
dXJlIHdoYXQgaXQncyB0ZWxsaW5nIG1lLg0KDQpBZnRlciBzcGVuZGluZyBzZXZlcmFsIGhvdXJz
IHRyYXdsaW5nIHRocm91Z2ggdGhlIHRoZSBvdGhlciBsYXllcnMgYW5kIHJlY2lwZXMgaW4gcG9r
eS1zb2NmcGdhLCAgSSdtIGNvbWluZyB0byB0aGUgY29uY2x1c2lvbiB0aGF0IHRoZSBsYWNrIG9m
IHgxMSBpcyBzb21laG93IGR1ZSB0byB0aGUgbWFjaGluZSBjb25maWd1cmF0aW9uLg0KDQpXb3Vs
ZCBzb21lb25lIGJlIGtpbmQgZW5vdWdoIGNvbmZpcm0gb3IgZGVueSBteSBjb25jbHVzaW9uLCBh
bmQgcGVyaGFwcyBwb2ludCBtZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uLCBpZiB0aGVyZSBpcyBv
bmU/DQoNCg0KVGhhbmtzIQ0KLS0NCmppbQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KDQpSQVlMQVNFIEFHDQpBcmdlbHNyaWVkZXIgRmVsZCAyKzQNCjgyMjM0IFdlc3NsaW5n
DQpHZXJtYW55DQpUZWwuOiArNDktKDApODE1My84OCA5OC0wDQpGYXg6ICs0OS0oMCk4MTUzLzg4
IDk4LTEwDQpodHRwOi8vd3d3LnJheWxhc2UuZGUNCg0KRGlzdHJpY3QgQ291cnQgTXVuaWNoLCBI
UkIgMTMxNDUwDQoNCkJvYXJkOiBQZXRlciB2b24gSmFuIChDRU8pDQoNClN1cGVydmlzb3J5IEJv
YXJkOiBEci4gVWxyaWNoIExvaG1hbm4gKENoYWlybWFuKQ0KDQoNCkRpZXNlIEUtTWFpbCBlbnRo
w6RsdCB2ZXJ0cmF1bGljaGUgdW5kL29kZXIgcmVjaHRsaWNoIGdlc2Now7x0enRlIEluZm9ybWF0
aW9uZW4uIFdlbm4gU2llIG5pY2h0IGRlciByaWNodGlnZSBBZHJlc3NhdCBzaW5kIG9kZXIgZGll
c2UgRS1NYWlsIGlycnTDvG1saWNoIGVyaGFsdGVuIGhhYmVuLCBpbmZvcm1pZXJlbiBTaWUgYml0
dGUgc29mb3J0IGRlbiBBYnNlbmRlciB1bmQgdmVybmljaHRlbiBTaWUgZGllc2UgTWFpbC4gRGFz
IHVuZXJsYXVidGUgS29waWVyZW4gc293aWUgZGllIHVuYmVmdWd0ZSBXZWl0ZXJnYWJlIGRpZXNl
ciBNYWlsIGlzdCBuaWNodCBnZXN0YXR0ZXQuDQoNClRoaXMgZS1tYWlsIG1heSBjb250YWluIGNv
bmZpZGVudGlhbCBhbmQvb3IgcHJpdmlsZWdlZCBpbmZvcm1hdGlvbi4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCAob3IgaGF2ZSByZWNlaXZlZCB0aGlzIGUtbWFpbCBpbiBl
cnJvcikgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IHRo
aXMgZS1tYWlsLiBBbnkgdW5hdXRob3JpemVkIGNvcHlpbmcsIGRpc2Nsb3N1cmUgb3IgZGlzdHJp
YnV0aW9uIG9mIHRoZSBtYXRlcmlhbCBpbiB0aGlzIGUtbWFpbCBpcyBzdHJpY3RseSBmb3JiaWRk
ZW4uDQo=

