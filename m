Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 206D2E00C58; Tue, 17 Apr 2018 06:41:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9016E00BFF
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2018 06:41:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w3HDfLgE024244
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Apr 2018 06:41:22 -0700
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 17 Apr 2018 06:41:20 -0700
To: Nicolas Salmin <nicolas_salmin@trimble.com>, <yocto@yoctoproject.org>
References: <CAGTsOqOb1jEyVz9EpgkqyOg=7GiNvgcE2qmpvyMBXztNoMbgMg@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Openpgp: preference=signencrypt
Autocrypt: addr=mark.hatle@windriver.com; prefer-encrypt=mutual; keydata=
	xsBNBFYKxFgBCACt/pzutBp6p/xVKTFJjHbM3KpQKCblyot/YP+bpTr51Hrc5xDXBQhoG7TC
	aIRvRIvbhEevEQK9y04gW3JK/5lobq5ORebolcsHlYBUvpNeIPjupLQwGvz/TPtrLRNGLqDC
	rvsM6OA2XbQ2bwzxWaSQS3ImE2O2iXOZn9HhThMGeDB4Nff3fgUvXOTDIrgWOn9K2DgLL7Yc
	zkUIlFdj+Nraksd/7BSk8oH6tjeBVhFqSFvKta9QxWgdr58oPaTYaW/xNqUjlLrbJuMw/MSe
	xzuYfdfDfm6J8kRjMOnwQ0n8svJElzqAk+d83ow38gpGQ+LkjGgnf8ZFJ4rUJFADroX3ABEB
	AAHNJU1hcmsgSGF0bGUgPG1hcmsuaGF0bGVAd2luZHJpdmVyLmNvbT7CwHcEEwEIACEFAlYK
	xFgCGwMFCwkIBwIGFQgJCgsCBBYCAwECHgECF4AACgkQfv796/r0vvlvZAf9Gs+eN320yhRW
	V/fZCsngKhmOK4v3HrTwFrkSmoD9QHQiE/5IPdNacHwIPwZx07tNBohB8xOeNqCPRYRBwGhA
	AnxKOPyd0nnm6ZhPzbA57v4x3IGRQr4QzvcBTASJq91l3Ew4lpAslyx5w1DPPqRD7G8ycDKg
	peKyDwmdkvCunVisSAQI3XIMq2y230biTO98tDPEezg+lg+yTsz9ZT33F5KNuWrpf8VL5fG/
	mt+kAv7wtsx/KTRbqhH3iFXF6eBSwMjAfTXFlkLfbM9riJGXrWEl9n2S2R3cDHNHug0lb8f4
	whK370KEO4OwRKIYW/VUBmzk5XZUE9DTlDSV8ycsrs7ATQRWCsRYAQgAwK3FuHCE+HW3YWdH
	PUjeSn5p//xJ57u8g2rng8zm9zNjmYgpPv5UxozaD9i2jf4mlQLHGGOezhHae8K4Nj70oVcv
	8AmwcrJa9i9WL1oy/9R3fHMWf/Ctt9VXTO0qlCuq6PDzaUfvsXR61aJIjTKNQTOjCLjY1vXm
	VSewUgARysmA8WrjTfwGBihMBxAX0+kIjx8nOlam0WvekMBXZ0AbS56oTLRxYao6DI3GeB/N
	oWPy/5DfuTKaSdM0Pf8al20x9RuNN5/HLMlyDH/k8bIa1xd9aAqW+Feiw5gC107V2E6ULyIy
	q6em2UrsmIRxrvpHqbNgQKqvTehJ+V/i4g/uOwARAQABwsBfBBgBCAAJBQJWCsRYAhsMAAoJ
	EH7+/ev69L755XAH/3ZcNhooqd9OBhFkvXm1iWZ8EoC7motWqVn2oEyxoonsg8AD9kFXiN+T
	dYp7dH99EZu9q4ptj56AXm4uHzOgywL/5/V2TY6twCGAjUGzDjAB5gzoi+JLIBlDiyOip0eL
	QswIhRk473xy3j8DA4oVamnSPWgyNJ+qsdt37YWDzoDFFvtDoRU7Eb+znfIMDKzlny0XU/8L
	cW1bNHJlpv/78GPdfP4tjysEd8MuA5jf5o5w4XqcwTqalffEJtQ/s3pbkstEi7qm5uPui5Kt
	gq6YYLSqcSNe0GWAF9/T+qwyo7burSTxUWCWtMmlXdAQLW9SynLhB3Jbch0nFAh0fCKi6yY=
Organization: Wind River Systems
Message-ID: <9cb80929-0b30-bb27-44dd-03ce6f5f4cb1@windriver.com>
Date: Tue, 17 Apr 2018 08:41:19 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAGTsOqOb1jEyVz9EpgkqyOg=7GiNvgcE2qmpvyMBXztNoMbgMg@mail.gmail.com>
Subject: Re: Prelink compilation for ZCU102
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
X-List-Received-Date: Tue, 17 Apr 2018 13:41:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: base64

T24gNC8xNy8xOCAzOjU1IEFNLCBOaWNvbGFzIFNhbG1pbiB3cm90ZToNCj4gSGVsbG8gZ3V5
cywNCj4gDQo+IFNvbWVvbmUgaGVyZSBoYXZlIHNvbWUgaW5mb3JtYXRpb24gdG8gYnVpbGQg
cHJlbGluayByZWNpcGUgZm9yIFpDVTEwMiBib2FyZA0KPiBiZWNhdXNlIGknbSBub3QgYWJs
ZSB0byBkbyBpdCAuLi4NCj4gDQo+IEhlbGxvIGd1eXMsDQo+IA0KPiBTb21lb25lIGhlcmUg
aGF2ZSBzb21lIGluZm9ybWF0aW9uIHRvIGJ1aWxkIHByZWxpbmsgcmVjaXBlIGZvciBaQ1Ux
MDIgYm9hcmQNCj4gYmVjYXVzZSBpJ20gbm90IGFibGUgdG8gZG8gaXQgLi4uDQo+IA0KPiBF
UlJPUjogcHJlbGluay0xLjArZ2l0QVVUT0lOQythYTI5ODVlZWZhLXIwIGRvX3VucGFjazog
RmV0Y2hlciBmYWlsdXJlOiBGZXRjaA0KPiBjb21tYW5kIGV4cG9ydCBQU0VVRE9fRElTQUJM
RUQ9MTsgZXhwb3J0DQo+IERCVVNfU0VTU0lPTl9CVVNfQUREUkVTUz0idW5peDphYnN0cmFj
dD0vdG1wL2RidXMtS1Ric0kwV2daMiI7IGV4cG9ydA0KPiBTU0hfQVVUSF9TT0NLPSIvcnVu
L3VzZXIvMTAwMC9rZXlyaW5nL3NzaCI7IGV4cG9ydA0KPiBQQVRIPSIvcHJpdmF0ZS9wYXRo
L1VsdHJhU2NhbGUvemN1MTAyL3lvY3RvL2J1aWxkL3RtcC9zeXNyb290cy11bmluYXRpdmUv
eDg2XzY0LWxpbnV4L3Vzci9iaW46L3ByaXZhdGUvcGF0aC9VbHRyYVNjYWxlL3pjdTEwMi95
b2N0by9wb2t5L3NjcmlwdHM6L3ByaXZhdGUvcGF0aC9VbHRyYVNjYWxlL3pjdTEwMi95b2N0
by9idWlsZC90bXAvd29yay9hYXJjaDY0LXBva3ktbGludXgvcHJlbGluay8xLjArZ2l0QVVU
T0lOQythYTI5ODVlZWZhLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FhcmNo
NjQtcG9reS1saW51eDovcHJpdmF0ZS9wYXRoL1VsdHJhU2NhbGUvemN1MTAyL3lvY3RvL2J1
aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9wcmVsaW5rLzEuMCtnaXRBVVRPSU5D
K2FhMjk4NWVlZmEtcjAvcmVjaXBlLXN5c3Jvb3QvdXNyL2Jpbi9jcm9zc3NjcmlwdHM6L3By
aXZhdGUvcGF0aC9VbHRyYVNjYWxlL3pjdTEwMi95b2N0by9idWlsZC90bXAvd29yay9hYXJj
aDY0LXBva3ktbGludXgvcHJlbGluay8xLjArZ2l0QVVUT0lOQythYTI5ODVlZWZhLXIwL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3Ivc2JpbjovcHJpdmF0ZS9wYXRoL1VsdHJhU2NhbGUv
emN1MTAyL3lvY3RvL2J1aWxkL3RtcC93b3JrL2FhcmNoNjQtcG9reS1saW51eC9wcmVsaW5r
LzEuMCtnaXRBVVRPSU5DK2FhMjk4NWVlZmEtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vz
ci9iaW46L3ByaXZhdGUvcGF0aC9VbHRyYVNjYWxlL3pjdTEwMi95b2N0by9idWlsZC90bXAv
d29yay9hYXJjaDY0LXBva3ktbGludXgvcHJlbGluay8xLjArZ2l0QVVUT0lOQythYTI5ODVl
ZWZhLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS9zYmluOi9wcml2YXRlL3BhdGgvVWx0cmFT
Y2FsZS96Y3UxMDIveW9jdG8vYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L3By
ZWxpbmsvMS4wK2dpdEFVVE9JTkMrYWEyOTg1ZWVmYS1yMC9yZWNpcGUtc3lzcm9vdC1uYXRp
dmUvYmluOi9wcml2YXRlL3BhdGgvVWx0cmFTY2FsZS96Y3UxMDIveW9jdG8vcG9reS9iaXRi
YWtlL2JpbjovcHJpdmF0ZS9wYXRoL1VsdHJhU2NhbGUvemN1MTAyL3lvY3RvL2J1aWxkL3Rt
cC9ob3N0dG9vbHMiOw0KPiBleHBvcnQgSE9NRT0iL2hvbWUvbmljb2xhcyI7IGdpdCAtYyBj
b3JlLmZzeW5jb2JqZWN0ZmlsZXM9MCBjaGVja291dCAtQg0KPiBjcm9zc19wcmVsaW5rIGFh
Mjk4NWVlZmE5NDYyNTAzN2FkMzFlOWRjNTIwN2ZkNWJmMzFjYTcgZmFpbGVkIHdpdGggZXhp
dCBjb2RlDQo+IDEyOCwgb3V0cHV0Og0KPiBmYXRhbDogcmVmZXJlbmNlIGlzIG5vdCBhIHRy
ZWU6IGFhMjk4NWVlZmE5NDYyNTAzN2FkMzFlOWRjNTIwN2ZkNWJmMzFjYTcNCg0KVGhlIGNv
bW1pdCBpcyBtb3N0IGRlZmluaXRlbHkgc3RpbGwgaW4gdGhlIHRyZWUuDQoNCmh0dHA6Ly9n
aXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL3ByZWxpbmstY3Jvc3MvY29tbWl0
Lz9oPWNyb3NzX3ByZWxpbmsmaWQ9YWEyOTg1ZWVmYTk0NjI1MDM3YWQzMWU5ZGM1MjA3ZmQ1
YmYzMWNhNw0KDQpZb3UgbGlrZWx5IGhhdmUgYSBsb2NhbCBtaXJyb3IgdGhhdCBpcyBub3Qg
dXAtdG8tZGF0ZSBvciBzb21ldGhpbmcgc2ltaWxhci4NCg0KLS1NYXJrDQoNCj4gRVJST1I6
IHByZWxpbmstMS4wK2dpdEFVVE9JTkMrYWEyOTg1ZWVmYS1yMCBkb191bnBhY2s6IEZ1bmN0
aW9uIGZhaWxlZDoNCj4gYmFzZV9kb191bnBhY2sNCj4gRVJST1I6IExvZ2ZpbGUgb2YgZmFp
bHVyZSBzdG9yZWQgaW46DQo+IC9wcml2YXRlL3BhdGgvVWx0cmFTY2FsZS96Y3UxMDIveW9j
dG8vYnVpbGQvdG1wL3dvcmsvYWFyY2g2NC1wb2t5LWxpbnV4L3ByZWxpbmsvMS4wK2dpdEFV
VE9JTkMrYWEyOTg1ZWVmYS1yMC90ZW1wL2xvZy5kb191bnBhY2suODU5ODYNCj4gRVJST1I6
IFRhc2sNCj4gKC9wcml2YXRlL3BhdGgvVWx0cmFTY2FsZS96Y3UxMDIveW9jdG8vcG9reS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHJlbGluay9wcmVsaW5rX2dpdC5iYjpkb191bnBhY2sp
DQo+IGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCj4gDQo+IA0KPiBJIGRvbid0IGtub3cg
aWYgaXQncyBiZWNhdXNlIG9mIHRoZSB0YXJnZXQgaXMgYW4gYWFyY2g2NCBhcmNoaXRlY3R1
cmUgb3Igbm90IC4uLg0KPiANCj4gQW55IGFkdmlzZSA/DQo+IENoZWVycywNCj4gTmljb2xh
cw0KPiANCj4gDQoNCg==

