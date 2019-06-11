Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 108E1E00D68; Mon, 10 Jun 2019 23:31:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAED9E00DFC
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2019 23:31:47 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jun 2019 23:31:47 -0700
X-ExtLoop1: 1
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
	by fmsmga005.fm.intel.com with ESMTP; 10 Jun 2019 23:31:46 -0700
Received: from pgsmsx105.gar.corp.intel.com ([169.254.4.239]) by
	pgsmsx114.gar.corp.intel.com ([169.254.4.185]) with mapi id
	14.03.0415.000; Tue, 11 Jun 2019 14:31:45 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "zhe.he@windriver.com"
	<zhe.he@windriver.com>
Thread-Topic: [yocto][meta-dpdk][PATCH] dpdk: Fix do_compile failure for
	qemux86 and qemux86-64
Thread-Index: AQHVIALNSJF58nRZwE2XvXHD/MSbdKaVeIuA
Date: Tue, 11 Jun 2019 06:31:45 +0000
Message-ID: <82c0e90ca18d0b5a2389a9fc608f3bab61492f7f.camel@intel.com>
References: <1560222410-414851-1-git-send-email-zhe.he@windriver.com>
	<1560222410-414851-2-git-send-email-zhe.he@windriver.com>
In-Reply-To: <1560222410-414851-2-git-send-email-zhe.he@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.141.205]
MIME-Version: 1.0
Subject: Re: [meta-dpdk][PATCH] dpdk: Fix do_compile failure for qemux86 and qemux86-64
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
X-List-Received-Date: Tue, 11 Jun 2019 06:31:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <2A227E0EE2FAED40819EC159295590B9@intel.com>
Content-Transfer-Encoding: base64

T24gVHVlLCAyMDE5LTA2LTExIGF0IDExOjA2ICswODAwLCB6aGUuaGVAd2luZHJpdmVyLmNvbSB3
cm90ZToNCj4gRnJvbTogSGUgWmhlIDx6aGUuaGVAd2luZHJpdmVyLmNvbT4NCj4gDQo+IERQREtf
VEFSR0VUX01BQ0hJTkUgaW4gYmJhcHBlbmQgaW4gb3RoZXIgbGF5ZXJzIGZvcm1zIHRoZSBkcGRr
LQ0KPiBpbnRlcm5hbCB2YXJpYWJsZQ0KPiBNQUNISU5FX0NGTEFHUyB3aGljaCBpcyBwYXNzZWQg
dG8gZHBkayBjb21waWxhdGlvbiBjb21tYW5kIGxpbmUNCj4gY29udGFpbmluZyB0aGUNCj4gZmly
c3QgLW1hcmNoIHBhcmFtZXRlci4gQW5kIEVYVFJBX0NGTEFHUyBpbiBkcGRrLmluYyBpcyBwYXNz
ZWQgdG8NCj4gZHBkayBjb21tYW5kDQo+IGxpbmUgY29udGFpbmluZyB0aGUgc2Vjb25kIC1tYXJj
aCBwYXJhbWV0ZXIuIEJ5IG1pc3Rha2UsIHRoZSBmaXJzdA0KPiAtbWFyY2ggaGFkDQo+IGFsd2F5
cyBvdmVyd3JpdHRlbiB0aGUgc2Vjb25kIG9uZSB1bnRpbCB0aGUgZm9sbG93aW5nIGNvbW1pdCBv
ZiBHQ0MNCj4gdjkuMS4wDQo+IDhjMGY2OTVkODNkMSAoImRyaXZlcjogQWxzbyBwcnVuZSBqb2lu
ZWQgc3dpdGNoZXMgd2l0aCBuZWdhdGlvbiIpLg0KPiANCj4gU2luY2UgaXQgd2FzIGZpeGVkLCB0
aGUgc2Vjb25kIC1tYXJjaCwgd2hpY2ggd2FzIGNvcmUyIGZvciBxZW11eDg2LTY0IA0KPiBvcg0K
PiBjb3JlMi0zMiBmb3IgcWVtdXg4NiwgYmVnYW4gdG8gdGFrZSBlZmZlY3QuIEJ1dCBjb3JlMiog
ZG9lcyBub3QgaGF2ZQ0KPiBTU0U0LjINCj4gZmVhdHVyZSB3aGljaCBpcyByZXF1aXJlZCBieSBz
b21lIGRwZGsgaW5zdHJ1Y3Rpb24gb3B0aW1pemF0aW9uIGFuZA0KPiB0aHVzIGNhdXNlDQo+IHRo
ZSBmb2xsb3dpbmcgY29tcGlsYXRpb24gZmFpbHVyZS4NCj4gDQo+IDkuMS4wL2luY2x1ZGUvc21t
aW50cmluLmg6MTc5OjE6IGVycm9yOiBpbmxpbmluZyBmYWlsZWQgaW4gY2FsbCB0bw0KPiBhbHdh
eXNfaW5saW5lDQo+ICdfbW1fYmxlbmR2X2VwaTgnOiB0YXJnZXQgc3BlY2lmaWMgb3B0aW9uIG1p
c21hdGNoDQo+ICAgMTc5IHwgX21tX2JsZW5kdl9lcGk4IChfX20xMjhpIF9fWCwgX19tMTI4aSBf
X1ksIF9fbTEyOGkgX19NKQ0KPiAgICAgICB8IF5+fn5+fn5+fn5+fn5+fg0KPiANCj4gVGhpcyBw
YXRjaCBhZGRzIERQREtfRVhUUkFfQ0ZMQUdTIHRvIGFwcGVuZCBhcHByb3ByaWF0ZSAtbWFyY2gs
DQo+IGNvcmVpNyB3aGljaCBpcw0KPiBtaW5pbXVtIGFuZCBjbGVhciBhbmQgaW5kZXBlbmRlbnQg
b2YgaG9zdCBtYWNoaW5lLCB0byBkcGRrDQo+IGNvbXBpbGF0aW9uIGNvbW1hbmQNCj4gbGluZSB0
byBvdmVyd3JpdGUgYWxsIHByZXZpb3VzIG9uZXMsIHdpdGhvdXQgaGF2aW5nIHRvIGNoYW5nZSBk
cGRrDQo+IHNvdXJjZSBjb2RlLg0KPiANCj4gTm90ZSB0aGF0IGFzIHdlIGRvIG5vdCB3YW50IHRv
IGNoYW5nZSB0aGUgZGVmYXVsdCB0dW5lIGNvcmUyKiBmb3INCj4gcWVtdXg4NiosIHRoaXMNCj4g
cGF0Y2gganVzdCBmaXhlcyB0aGUgY29tcGlsYXRpb24gZXJyb3IuIEl0IHdvdWxkIHByb2JhYmx5
IG5vdCBiZSBhYmxlDQo+IHRvIHJ1biBvbg0KPiBxZW11eDg2KiB3aXRoIGNvcmVpNyB0dW5lLg0K
DQpJIGRvbid0IHRoaW5rIG92ZXJyaWRpbmcgYXJjaCB2YWx1ZXMgaW4gcmVjaXBlIGlzIGFwcHJv
cHJpYXRlLiBBbHNvIHRoZQ0KcmVjaXBlIGlzIHNldHRpbmcgQ09NUEFUSUJMRV9NQUNISU5FIHRv
IGJlIG51bGwgYmVjYXVzZSBvZiB0aGlzIHJlYXNvbi4NCklmIHRoZSBNQUNISU5FIHRoYXQgd2Un
cmUgYnVpbGRpbmcgZm9yIGRvZXNuJ3Qgc3VwcG9ydCB0aGUgZmVhdHVyZXMNCnJlcXVpcmVkLCB0
aGVuIHdlIHNob3VsZG4ndCBiZSBidWlsZGluZyBkcGRrIGZvciBpdCBpbiBteSBvcGluaW9uLg0K
DQpUaGFua3MsDQoNCkFudWoNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSGUgWmhlIDx6aGUuaGVA
d2luZHJpdmVyLmNvbT4NCj4gLS0tDQo+ICByZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBkay5pbmMg
fCA5ICsrKysrKy0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9yZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBkay5p
bmMgYi9yZWNpcGVzLQ0KPiBleHRlbmRlZC9kcGRrL2RwZGsuaW5jDQo+IGluZGV4IGEwZTA4MWEu
LjAyNzVlMGMgMTAwNjQ0DQo+IC0tLSBhL3JlY2lwZXMtZXh0ZW5kZWQvZHBkay9kcGRrLmluYw0K
PiArKysgYi9yZWNpcGVzLWV4dGVuZGVkL2RwZGsvZHBkay5pbmMNCj4gQEAgLTYxLDYgKzYxLDkg
QEAgRFBES19SVEVfVEFSR0VUX3g4Ni02NCA9ICJ4ODZfNjQtbmF0aXZlLWxpbnV4YXBwLQ0KPiBn
Y2MiDQo+ICBEUERLX1JURV9UQVJHRVRfeDg2ID0gImk2ODYtbmF0aXZlLWxpbnV4YXBwLWdjYyIN
Cj4gIERQREtfUlRFX1RBUkdFVF9hYXJjaDY0ID0gImFybTY0LSR7RFBES19UQVJHRVRfTUFDSH0t
bGludXhhcHAtZ2NjIg0KPiAgZXhwb3J0IFJURV9UQVJHRVQgPSAiJHtEUERLX1JURV9UQVJHRVR9
Ig0KPiArRFBES19FWFRSQV9DRkxBR1MgPSAiIg0KPiArRFBES19FWFRSQV9DRkxBR1NfcWVtdXg4
NiA/PSAiLW1hcmNoPWNvcmVpNyINCj4gK0RQREtfRVhUUkFfQ0ZMQUdTX3FlbXV4ODYtNjQgPz0g
Ii1tYXJjaD1jb3JlaTciDQo+ICANCj4gICMgVGhlIGxpc3Qgb2YgaW50ZWwgQ29tbXMgcGxhdGZv
cm1zIGFuZCB0aGVpciB0YXJnZXQgbWFjaGluZQ0KPiAgIyBwcm9jZXNzIG1hcHBpbmcuIFRoZSBz
dXBwb3J0ZWQgdGFyZ2V0IG1hY2hpbmUgaXMgbGlzdGVkIHVuZGVyDQo+IEBAIC0xMDAsMTggKzEw
MywxOCBAQCBkb19jb21waWxlICgpIHsNCj4gIA0KPiAgCWNkICR7U30vJHtSVEVfVEFSR0VUfQ0K
PiAgCW9lX3J1bm1ha2UgRVhUUkFfTERGTEFHUz0iLUwke1NUQUdJTkdfTElCRElSfSAtLWhhc2gt
c3R5bGU9Z251IiANCj4gXA0KPiAtCQkgICBFWFRSQV9DRkxBR1M9IiR7SE9TVF9DQ19BUkNIfSAk
e1RPT0xDSEFJTl9PUFRJT05TfQ0KPiAtSSR7U1RBR0lOR19JTkNESVJ9IiBcDQo+ICsJCSAgIEVY
VFJBX0NGTEFHUz0iJHtIT1NUX0NDX0FSQ0h9ICR7VE9PTENIQUlOX09QVElPTlN9DQo+ICR7RFBE
S19FWFRSQV9DRkxBR1N9IC1JJHtTVEFHSU5HX0lOQ0RJUn0iIFwNCj4gIAkJICAgQ1JPU1M9IiR7
VEFSR0VUX1BSRUZJWH0iIFwNCj4gIAkJICAgcHJlZml4PSIiICBMREZMQUdTPSIke1RVTkVfTERB
UkdTfSIgIFdFUlJPUl9GTEFHUz0iLQ0KPiB3IiBWPTENCj4gIA0KPiAgCWNkICR7U30vZXhhbXBs
ZXMvDQo+ICAJb2VfcnVubWFrZSBFWFRSQV9MREZMQUdTPSItTCR7U1RBR0lOR19MSUJESVJ9IC0t
aGFzaC1zdHlsZT1nbnUNCj4gLWZ1c2UtbGQ9YmZkIiBcDQo+IC0JCSAgIEVYVFJBX0NGTEFHUz0i
JHtIT1NUX0NDX0FSQ0h9ICR7VE9PTENIQUlOX09QVElPTlN9DQo+IC1JJHtTVEFHSU5HX0lOQ0RJ
Un0iIFwNCj4gKwkJICAgRVhUUkFfQ0ZMQUdTPSIke0hPU1RfQ0NfQVJDSH0gJHtUT09MQ0hBSU5f
T1BUSU9OU30NCj4gJHtEUERLX0VYVFJBX0NGTEFHU30gLUkke1NUQUdJTkdfSU5DRElSfSIgXA0K
PiAgCQkgICBDUk9TUz0iJHtUQVJHRVRfUFJFRklYfSIgTz0iJHtTfS9leGFtcGxlcy8kQC8iDQo+
ICANCj4gIAljZCAke1N9L3Rlc3QvDQo+ICAJb2VfcnVubWFrZSBFWFRSQV9MREZMQUdTPSItTCR7
U1RBR0lOR19MSUJESVJ9IC0taGFzaC1zdHlsZT1nbnUNCj4gLWZ1c2UtbGQ9YmZkIiBcDQo+IC0J
CSAgIEVYVFJBX0NGTEFHUz0iJHtIT1NUX0NDX0FSQ0h9ICR7VE9PTENIQUlOX09QVElPTlN9DQo+
IC1JJHtTVEFHSU5HX0lOQ0RJUn0iIFwNCj4gKwkJICAgRVhUUkFfQ0ZMQUdTPSIke0hPU1RfQ0Nf
QVJDSH0gJHtUT09MQ0hBSU5fT1BUSU9OU30NCj4gJHtEUERLX0VYVFJBX0NGTEFHU30gLUkke1NU
QUdJTkdfSU5DRElSfSIgXA0KPiAgCQkgICBDUk9TUz0iJHtUQVJHRVRfUFJFRklYfSIgTz0iJHtT
fS90ZXN0LyRALyINCj4gIH0NCj4gIA0KDQo=

