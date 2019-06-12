Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6D31E00DE6; Wed, 12 Jun 2019 01:39:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1A2DE00A96
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2019 01:39:00 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Jun 2019 01:38:59 -0700
X-ExtLoop1: 1
Received: from pgsmsx111.gar.corp.intel.com ([10.108.55.200])
	by orsmga004.jf.intel.com with ESMTP; 12 Jun 2019 01:38:57 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.97]) by
	PGSMSX111.gar.corp.intel.com ([169.254.2.3]) with mapi id
	14.03.0415.000; Wed, 12 Jun 2019 16:38:13 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"pokybuild@debian9-ty-1.yocto.io" <pokybuild@debian9-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: QA notification for completed autobuilder build
	(yocto-2.8_M1.rc2)
Thread-Index: AQHVIDLHVpE/OxKP8kW2QigdnkDqC6aXKFaA///8FwCAAI6Q8A==
Date: Wed, 12 Jun 2019 08:38:12 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634E3371C@PGSMSX110.gar.corp.intel.com>
References: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
	<b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634E32E41@PGSMSX110.gar.corp.intel.com>
	<678b31de26a70fb63f19c7ab005dac0d681c8ff0.camel@linuxfoundation.org>
In-Reply-To: <678b31de26a70fb63f19c7ab005dac0d681c8ff0.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYzAzNmE4OGMtYjU2Ny00NzgxLWIwMDEtNTAxN2MxNjY5NjY4IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRFQrWXJjN3R2UEJVeUhDWDYzQTBnNWdaQXBOUnNxSWJBMm1HRFRvcXBwd1lpRHBOcE11UVhFcTV5ZkpNaEt6UiJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc2)
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
X-List-Received-Date: Wed, 12 Jun 2019 08:39:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IHJpY2hhcmQucHVyZGllQGxp
bnV4Zm91bmRhdGlvbi5vcmcgPHJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmc+DQo+
U2VudDogV2VkbmVzZGF5LCAxMiBKdW5lLCAyMDE5IDQ6MDUgUE0NCj5UbzogSmFpbiwgU2FuZ2Vl
dGEgPHNhbmdlZXRhLmphaW5AaW50ZWwuY29tPjsgcG9reWJ1aWxkQGRlYmlhbjktdHktDQo+MS55
b2N0by5pbzsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPkNjOiBvdGF2aW9Ab3NzeXN0ZW1zLmNv
bS5icjsgeWkuemhhb0B3aW5kcml2ZXIuY29tOyBTYW5nYWwsIEFwb29ydg0KPjxhcG9vcnYuc2Fu
Z2FsQGludGVsLmNvbT47IFllb2gsIEVlIFBlbmcgPGVlLnBlbmcueWVvaEBpbnRlbC5jb20+OyBD
aGFuLA0KPkFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IEFu
ZywgQ2hpbiBIdWF0DQo+PGNoaW4uaHVhdC5hbmdAaW50ZWwuY29tPjsgYWt1c3RlcjgwOEBnbWFp
bC5jb207IHNqb2xsZXkueXAucG1AZ21haWwuY29tDQo+U3ViamVjdDogUmU6IFFBIG5vdGlmaWNh
dGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVyIGJ1aWxkICh5b2N0by0yLjhfTTEucmMyKQ0K
Pg0KPk9uIFdlZCwgMjAxOS0wNi0xMiBhdCAwMDo1MSArMDAwMCwgSmFpbiwgU2FuZ2VldGEgd3Jv
dGU6DQo+PiBPbiBUdWUsIDIwMTktMDYtMTEgYXQgMDM6MzIgKzAwMDAsIHBva3lidWlsZEBkZWJp
YW45LXR5LTEueW9jdG8uaW8NCj4+ID4gd3JvdGU6DQo+PiA+ID4gQSBidWlsZCBmbGFnZ2VkIGZv
ciBRQSAoeW9jdG8tMi44X00xLnJjMikgd2FzIGNvbXBsZXRlZCBvbiB0aGUNCj4+ID4gPiBhdXRv
YnVpbGRlciBhbmQgaXMgYXZhaWxhYmxlIGF0Og0KPj4gPiA+DQo+PiA+ID4NCj4+ID4gPiAgICAg
aHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9wdWIvcmVsZWFzZXMveW9jdG8tMi44X00xLnJj
Mg0KPj4gPiA+DQo+PiA+DQo+PiA+IFNvbWUgbm90ZXMgZm9yIFFBOg0KPj4gVGhhbmtzIFJpY2hh
cmQgZm9yIHNoYXJpbmcgdGhpcy4NCj4+ID4gVGhlcmUgd2FzIGEgZmFpbHVyZSBpbiB0aGlzIGJ1
aWxkIGluIHFlbXV4ODYgb2Utc2VsZnRlc3QuIEl0IGxvb2tzDQo+PiA+IHRvIGJlIGEgcmFjZSBp
c3N1ZSB3aGVyZSBxZW11IHdhcyBzaHV0dGluZyBkb3duLiBUaGlzIG5lZWRzIGEgYnVnDQo+PiA+
IGFuZCBsb29raW5nIGludG8gYnV0IGlzIGEgbWlub3IgaXNzdWUgd2hpY2ggd291bGRuJ3QgYmxv
Y2sgdGhlDQo+PiA+IG1pbGVzdG9uZSByZWxlYXNlIG9yIGZ1cnRoZXIgUUEuDQo+Pg0KPj4gV2Ug
YXJlIGFuYWx5c2luZyB0aGUgZmFpbHVyZXMgYW5kIHdpbGwgZmlsZSB0aGUgYnVncyBhcyBzdWdn
ZXN0ZWQuDQo+DQo+SnVzdCBmb3IgcmVmZXJlbmNlIEkgZGlkIGZpbGUgc29tZSBvZiB0aGUgYnVn
cy4NCj4NCj4+ID4gVGhlcmUgYXJlIHRocmVlIHRpbWVvdXRzIGluIHB0ZXN0LCBhY2wsIGJsdWV6
NSAoIzEzMzY2KSBhbmQgbWRhZG0NCj4+ID4gKCMxMzM2OCkuDQo+PiA+IFRoZXNlIGFyZSBhbHNv
IG5vdCBnb2luZyB0byBibG9jayB0aGUgbWlsZXN0b25lIHJlbGVhc2UuIFRoZQ0KPj4gPiBibHVl
ejUgaXNzdWUgaXMgZ2NjOSByZWxhdGVkLCBtZGFkbSB3YXMgZXhwb3NlZCBieSB3aWRlciB0ZXN0
aW5nIGluDQo+PiA+IG1hc3Rlci4gVGhlIGFjbCBpc3N1ZSBuZWVkcyBhIGJ1ZyBvcGVuaW5nIGFu
ZCBpbnZlc3RpZ2F0aW9uIGFzIHRoYXQNCj4+ID4gaXMgYSByZWdyZXNzaW9uLg0KPj4NCj4+IExv
b2tzIGxpa2Ugc29tZSBkaXNjb25uZWN0IGhlcmUuIEluIHRlc3QgcmVzdWx0IHJlcG9ydCwgbm8g
dGltZW91dA0KPj4gaXNzdWUgcmVwb3J0ZWQgZm9yIGFjbCBwdGVzdC4NCj4NCj5odHRwczovL2F1
dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by0NCj4yLjhfTTEucmMyL3Rlc3Ry
ZXN1bHRzL3Rlc3RyZXN1bHQtcmVwb3J0LnR4dA0KPg0KPmFjbCAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAxODQgICAgICAgICB8IDkgICAgICAgIHwgMCAgICAgICAgIHwgMzAyIFQNCj4NCj5J
IGhhZG4ndCBzcG90dGVkIHRoYXQgZGJ1cy10ZXN0IGFsc28gaGFzIGEgdGltZW91dCA6KC4NCj4N
Cj5UaGlzIHRpbWVvdXQgaXMgYWxzbyBpbiB0aGUgdGVzdHJlc3VsdHMgZmlsZToNCj4NCj5FUlJP
UjogRXhpdCBzdGF0dXMgaXMgOVxuRFVSQVRJT046IDMwMlxuVElNRU9VVDogL3Vzci9saWIvYWNs
L3B0ZXN0XG4NCj4NCj5pbjoNCj4NCj5odHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9y
ZWxlYXNlcy95b2N0by0NCj4yLjhfTTEucmMyL3Rlc3RyZXN1bHRzL3FlbXV4ODYtNjQtcHRlc3Qv
dGVzdHJlc3VsdHMuanNvbg0KPg0KPj4gV2UgYXJlIHJlZmVycmluZyB0byB0ZXN0IHJlc3VsdHMg
YXQgeW9jdG8tdGVzdHJlc3VsdHMgdW5kZXIgdGFnICINCj4+IG1hc3Rlci81NDU3My1nOTkxMGEz
NjMxY2U5NTNiOGRkOGYzZDU3ZDZlMTIyYzdmZDhjYjQ2Mi8xIg0KPg0KPllvdSBhcmUgcmlnaHQs
IHRoZXJlIGlzIG5vIG1lbnRpb24gb2YgdGhpcyBpbiB0aGUgbG9nIGF0Og0KPg0KPmh0dHA6Ly9n
aXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0LmNnaS95b2N0by0NCj50ZXN0cmVzdWx0cy90cmVlL3J1
bnRpbWUvcG9reS9xZW11eDg2LTY0L2NvcmUtaW1hZ2Utc2F0by1zZGstcHRlc3QvcHRlc3QtDQo+
YWNsLmxvZz9pZD01NmIxY2FhNjA0NGNlMzBlOTJhMTg5NWVhZTQ4ZDM5MzU1NjJiNjI3DQo+b3IN
Cj5odHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC5jZ2kveW9jdG8tDQo+dGVzdHJlc3Vs
dHMvY29tbWl0L3J1bnRpbWUvcG9reS9xZW11eDg2LTY0L2NvcmUtaW1hZ2Utc2F0by1zZGstcHRl
c3QvcHRlc3QtDQo+YWNsLmxvZz9pZD1hYzYyM2UxM2UzYmMzYTM0OGI2MGZlM2I4ODRlNmFlNTY3
YjgyMzBhDQo+DQo+SSBzdXNwZWN0IHRoaXMgaXMgZHVlIHRvIHRoZSBpbmZvcm1hdGlvbiBiZWlu
ZyBmaWx0ZXJlZCBvdXQgYXMgcGFydCBvZiB0aGUgbG9nDQo+cHJvY2Vzc2luZy4gV2UgcHJvYmFi
bHkgc2hvdWxkbid0IGRvIHRoYXQuDQo+DQo+TG9va2luZyBhdCB0aGUgaW5kaXZpZHVhbCBsb2dz
IGluIGh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL3JlbGVhc2VzL3lvY3RvLQ0KPjIu
OF9NMS5yYzIvdGVzdHJlc3VsdHMvcWVtdXg4Ni02NC1wdGVzdC90ZXN0cmVzdWx0cy5qc29uLCB0
aGUgdGltZW91dA0KPmluZm9ybWF0aW9uIGxvb2tzIHRvIGJlIHRydW5jYXRlZCBvZmYgdGhlcmUg
dG9vLg0KPg0KPkkgZG8gaG93ZXZlciBub3RlIHRoYXQ6DQo+DQo+ICAgICAgICAgICAgInB0ZXN0
cmVzdWx0LnNlY3Rpb25zIjogew0KPiAgICAgICAgICAgICAgICAiYWNsIjogew0KPiAgICAgICAg
ICAgICAgICAgICAgImR1cmF0aW9uIjogIjMwMiIsDQo+ICAgICAgICAgICAgICAgICAgICAiZXhp
dGNvZGUiOiAiOSIsDQo+ICAgICAgICAgICAgICAgICAgICAidGltZW91dCI6IHRydWUNCj4gICAg
ICAgICAgICAgICAgfSwNCj4NCj5pcyBpbiBodHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dp
dC5jZ2kveW9jdG8tDQo+dGVzdHJlc3VsdHMvdHJlZS9ydW50aW1lL3Bva3kvcWVtdXg4Ni02NC9j
b3JlLWltYWdlLXNhdG8tc2RrLQ0KPnB0ZXN0L3Rlc3RyZXN1bHRzLmpzb24/aWQ9NTZiMWNhYTYw
NDRjZTMwZTkyYTE4OTVlYWU0OGQzOTM1NTYyYjYyNw0KPnNvIHRoZSB0aW1lb3V0IGlzIHJlY29y
ZGVkIGluIHRoZSByZXN1bHRzLg0KDQpUaGFua3MuIEFibGUgdG8gdHJhY2UgYWxsIHRpbWUtb3V0
IGlzc3VlcywgaW5jbHVkaW5nIGRidXMtdGVzdCAhDQo+DQo+UmVnYXJkcywNCj4NCj5SaWNoYXJk
DQo+DQoNClRoYW5rcyAmIFJlZ2FyZHMsDQpTYW5nZWV0YSBKYWluDQo=

