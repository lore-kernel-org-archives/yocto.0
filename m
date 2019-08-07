Return-Path: <prvs=115729d81=Thomas.Koeller@baslerweb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 850EEE00D8F; Wed,  7 Aug 2019 02:06:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [80.156.24.166 listed in list.dnswl.org]
Received: from mail01.baslerweb.com (mail01.baslerweb.com [80.156.24.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA89E00D8C
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 02:06:45 -0700 (PDT)
Received: from unknown (HELO ahr205s.basler.corp) ([172.16.20.205])
	by mail01-out.baslerweb.com with ESMTP; 07 Aug 2019 11:06:44 +0200
From: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] -staticdev packages not in sdk
Thread-Index: AQHVTFWso6fd5X0pbUaUbh5PH0TYwqbujEiAgADZT4Y=
Date: Wed, 7 Aug 2019 09:06:43 +0000
Message-ID: <1565168803695.79587@baslerweb.com>
References: <1565100281929.57461@baslerweb.com>,
	<9b48f7baf468c9627a799282dbeb7651e5510c8e.camel@linuxfoundation.org>
In-Reply-To: <9b48f7baf468c9627a799282dbeb7651e5510c8e.camel@linuxfoundation.org>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.20.16]
x-c2processedorg: edc209ba-7b98-423a-8e4d-b8fa22bc0743
MIME-Version: 1.0
Subject: Re: -staticdev packages not in sdk
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
X-List-Received-Date: Wed, 07 Aug 2019 09:06:48 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pk9uIFR1ZSwgMjAxOS0wOC0wNiBhdCAxNDowNCArMDAwMCwgS29lbGxlciwgVGhvbWFzIHdyb3Rl
Og0KPj4gYnJvd3NpbmcgdGhlIGxpc3QgYXJjaGl2ZXMgSSBjYW1lIGFjcm9zcyBhbiBvbGRlciB0
aHJlYWQgdGhhdCBleGFjdGx5DQo+PiBkZXNjcmliZXMgdGhlIHByb2JsZW0gSSBhbSBjdXJyZW50
bHkgc3RydWdnbGluZyB3aXRoOg0KPj4NCj4+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9waXBlcm1haWwveW9jdG8vMjAxOC1GZWJydWFyeS8wMzk5NTAuaHRtbA0KPj4NCj4+IEluIHNo
b3J0LCBJIGhhdmUgYSByZWNpcGUgdGhhdCBwcm9kdWNlcyBvbmx5IGEgY291cGxlIG9mIGhlYWRl
ciBmaWxlcw0KPj4gYW5kIGEgc2luZ2xlIHN0YXRpYyBsaWJyYXJ5LCBub3RoaW5nIHRvIGJlIGlu
c3RhbGxlZCBvbiB0aGUgdGFyZ2V0Lg0KPj4gU28gdGhlIGJhc2UgcGFja2FnZSBpcyBlbXB0eSwg
d2hpY2ggaXMgd2h5IEkgaGF2ZSAnQUxMT1dfRU1QVFlfJHtQTn0NCj4+ID0gIjEiJyBpbiBpdHMg
cmVjaXBlLiBJbiBteSBpbWFnZSBkZWZpbml0aW9uIEkgaGF2ZQ0KPj4gJ1NES0lNQUdFX0ZFQVRV
UkVTX2FwcGVuZCA9ICIgc3RhdGljZGV2LXBrZ3MiJywgc28gSSBleHBlY3QgdGhlDQo+PiAtc3Rh
dGljZGV2IHBhY2thZ2UgdG8gYmUgaW5jbHVkZWQgd2hlbiBnZW5lcmF0aW5nIHRoZSBTREsuIFRo
aXMgaXMsDQo+PiBob3dldmVyLCBub3QgdGhlIGNhc2UuIFdoaWxlIGEgbGFyZ2UgbnVtYmVyIG9m
IC1zdGF0aWNkZXYgcGFja2FnZXMNCj4+IGZyb20gZGlmZmVyZW50IHJlY2lwZXMgaXMgbm93IGlu
Y2x1ZGVkIGluIHRoZSBTREssIG9ubHkgdGhlIC1kZXYNCj4+IHBhY2thZ2UgaXMgaW5jbHVkZWQg
Zm9yIG15IHJlY2lwZSwgbm90IHRoZSAtc3RhdGljZGV2ICh0aG91Z2ggdGhlDQo+PiBjb3JyZXNw
b25kaW5nIHJwbSBpcyBhY3R1YWxseSBidWlsdCBhbmQgY29udGFpbnMgdGhlIGxpYnJhcnkgYXMN
Cj4+IGV4cGVjdGVkLCBpdCBqdXN0IGlzIG5vdCBpbnN0YWxsZWQpLg0KPj4NCj4+IFRoZSBhcmNo
aXZlZCBtYWlsIHRocmVhZCByZWZlcmVuY2VkIGFib3ZlIHN1Z2dlc3RzIGFkZGluZyB0aGUgYmFz
ZQ0KPj4gcGFja2FnZSAke1BOfSB0byBJTUFHRV9JTlNUQUxMLCB3aGljaCBpbmRlZWQgZG9lcyB3
b3JrIGZvciBtZS4NCj4+IEhvd2V2ZXIsIEkgZG8gbm90IHVuZGVyc3RhbmQgd2h5IHRoaXMgaXMg
bmVjZXNzYXJ5IGF0IGFsbCwgYXMgbXkNCj4+IHBhY2thZ2UgaXMgYWxyZWFkeSByZWZlcmVuY2Vk
IGZyb20gYW5vdGhlciByZWNpcGUgYnkgYmVpbmcgbGlzdGVkIGluDQo+PiB0aGF0IHJlY2lwZSdz
IERFUEVORFMgdmFyaWFibGUsIHNob3VsZG4ndCB0aGF0IGJlIGVub3VnaD8NCj4NCj4gREVQRU5E
UyBtZWFucyBpdHMgYSAqYnVpbGQqIHRpbWUgZGVwZW5kZW5jeS4gU2luY2Ugbm90aGluZyBsaW5r
cyB0byBpdA0KPiB0aGVyZSBpcyBubyBydW50aW1lIGRlcGVuZGVuY3kgZ2VuZXJhdGVkIGFuZCB0
aGlzIGVtcHR5IHBhY2thZ2UgeW91J3ZlDQo+IGNyZWF0ZWQgaXMgbmV2ZXIgaW5zdGFsbGVkIGlu
dG8gdGhlIGltYWdlLg0KPg0KPiBJZiBpdHMgbm90IGluc3RhbGxlZCBpbnRvIHRoZSBpbWFnZSwg
dGhlIFNESyBmb3IgdGhhdCBpbWFnZSB3b24ndCBoYXZlDQo+IHRoZSBjb3JyZXNwb25kaW5nIC1k
ZXYgcGFja2FnZS4NCg0KQnV0IHRoZSAtZGV2IGltYWdlIGlzIGluIGZhY3QgaW5zdGFsbGVkLCBp
dCBpcyB0aGUgLXN0YXRpY2RldiB0aGF0IGlzDQpub3QuDQoNCj4gSWYgeW91IGFkZCBhbiBSREVQ
RU5EUyBvbiB0aGUgZW1wdHkgcGFja2FnZSB0byBzb21ldGhpbmcgaW4gdGhlIGltYWdlLA0KPiB5
b3UnbGwgcHJvYmFibHkgZmluZCB0aGUgLWRldiBwYWNrYWdlIHRoZW4gaXMgaW5zdGFsbGVkLg0K
DQpNZWFud2hpbGUsIEkgdHJpZWQgYSBkaWZmZXJlbnQgYXBwcm9hY2g6DQoNCkluIGJpdGJha2Uu
Y29uZiB0aGVyZSBpcyBhIGxpbmUNCiAgICBERVBDSEFJTl9QT1NUID0gIi1kZXYgLWRiZyINCnRo
YXQgY2F1c2VzIC1kZXYgYW5kIC1kYmcgcGFja2FnZXMgdG8gcHVsbCBpbiB0aGUgcmVzcGVjdGl2
ZSBwYWNrYWdlcw0KZ2VuZXJhdGVkIGJ5IHJlY2lwZXMgdGhhdCBhcmUgZGVwZW5kZW5jaWVzLiBU
aGlzIHNlZW1lZCB0byBleHBsYWluIHdoeQ0KLWRldiBwYWNrYWdlcyB3ZXJlIGNoYWluZWQgd2hp
bGUgLXN0YXRpY2RldiB3ZXJlIG5vdC4gSSBhcHBlbmRlZA0KIiAtc3RhdGljZGV2IiB0byB0aGF0
IHZhcmlhYmxlIChpbiBteSBpbWFnZSByZWNpcGUpLCB3aGljaCBJTUhPIHNob3VsZA0KYmUgdGhl
IGRlZmF1bHQuIEkgZG8gbm90IHNlZSBhbnkgcmVhc29uIHdoeSAtc3RhdGljZGV2IHBhY2thZ2Vz
IHNob3VsZA0KYmUgdHJlYXRlZCBkaWZmZXJlbnRseSBmcm9tIC1kZXYgaW4gdGhpcyByZXNwZWN0
Lg0KDQpUaGVuLCBJIHVzZWQNCiAgICBBTExPV19FTVBUWV8ke1BOfS1zdGF0aWNkZXYgPSAiMSIN
CmluIG15IGRlcGVuZGVudCByZWNpcGUsIGJlY2F1c2UgdGhhdCBvbmUgZG9lcyBub3QgcHJvZHVj
ZSBhIG5vbi1lbXB0eQ0KLXN0YXRpY2RldiBwYWNrYWdlLg0KDQpJIGNob3NlIHRoYXQgYXBwcm9h
Y2ggYmVjYXVzZSB0byBtZSBpdCBhcHBlYXJlZCB0byBiZSB0aGUgY2xlYW5lc3Qgd2F5DQp0byBh
ZGRyZXNzIHRoZSBwcm9ibGVtLiBUb28gYmFkIGl0IGRvZXNuJ3Qgd29yaywgc3RpbGwgb25seSB0
aGUgLWRldg0KcGFja2FnZXMgYXJlIGluY2x1ZGVkIGluIHRoZSBTREsuIEFueSBpZGVhIGFzIHRv
IHdoeSB0aGlzIGRpZCBub3Qgd29yaw0Kb3V0Pw0KDQo+PiAgQWxzbywgdGhlIC1kZXYgcGFja2Fn
ZSBnZXRzIGluc3RhbGxlZCBpbnRvIHRoZSBTREsgZXZlbiB3aXRob3V0IHN1Y2gNCj4+IGNydWZ0
LiBBcyBmYXIgYXMgSSBjYW4gc2VlLCBpZGVudGljYWwgbG9naWMgaXMgYXBwbGllZCB0byBib3Ro
IC1kZXYNCj4+IGFuZCAtc3RhdGljZGV2IHBhY2thZ2VzLCBzbyB3aGF0IGlzIHRoZSBkaWZmZXJl
bmNlPw0KPj4NCj4+IEkgYWxzbyBmb3VuZCBhIGRpZmZlcmVudCB3b3JrYXJvdW5kIGZvciB0aGUg
cHJvYmxlbTogbGlzdGluZyB0aGUNCj4+IC1zdGF0aWNkZXYgcGFja2FnZSBpbiBUT09MQ0hBSU5f
VEFSR0VUX1RBU0suIE5lZWRsZXNzIHRvIHNheSwgdGhpcw0KPj4gd29ya2Fyb3VuZCBpcyBqdXN0
IGFzIHVuZGVzaXJhYmxlIGFzIHRoZSBmb3JtZXIgb25lLg0KDQoNClRob21hcyBLb2VsbGVyDQpT
ZW5pb3IgU29mdHdhcmUgRGV2ZWxvcGVyDQoNCg0KQmFzbGVyIEFHDQpBbiBkZXIgU3RydXNiZWsg
NjAtNjINCjIyOTI2IEFocmVuc2J1cmcNCkdlcm1hbnkNCg0KVGVsLiArNDkgNDEwMiA0NjMgMzkw
DQpGYXggKzQ5IDQxMDIgNDYzIDQ2IDM5MA0KDQoNClRob21hcy5Lb2VsbGVyQGJhc2xlcndlYi5j
b20NCnd3dy5iYXNsZXJ3ZWIuY29tDQoNCk1hbmFnZW1lbnQgYm9hcmQ6IERyLi1JbmcuIERpZXRt
YXIgTGV5IChDRU8pIMK3IEpvaG4gUC4gSmVubmluZ3MgwrcgQXJuZHQgQmFrZSDCtyBIYXJkeSBN
ZWhsDQpDaGFpcm1hbiBvZiB0aGUgc3VwZXJ2aXNvcnkgYm9hcmQ6IE5vcmJlcnQgQmFzbGVyDQpC
YXNsZXIgQUcgwrcgQW10c2dlcmljaHQgTMO8YmVjayBIUkIgNDA5MCDCtyBVc3QtSWROci46IERF
IDEzNSAwOTggMTIxIMK3IFN0ZXVlci1Oci46IDMwIDI5MiAwNDQ5NyDCtyBXRUVFLVJlZy4tTnIu
IERFIDgzODg4MDQ1DQo=

