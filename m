Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B5FE0056A; Thu, 17 Jul 2014 11:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64671E00559
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 11:28:16 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2014 11:28:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,679,1400050800"; d="scan'208";a="571432022"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2014 11:28:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.157]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.79]) with mapi id
	14.03.0123.003; Thu, 17 Jul 2014 11:28:13 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "maciej.borzecki@open-rnd.pl" <maciej.borzecki@open-rnd.pl>, Tom Zanussi
	<tom.zanussi@linux.intel.com>
Thread-Topic: [yocto] wic status
Thread-Index: AQHPocY/+OfIdNDM3UmOV8y5BvarQpukxcSAgAA38ID//5f4YA==
Date: Thu, 17 Jul 2014 18:28:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FB9C8E@ORSMSX101.amr.corp.intel.com>
References: <1405599916.4781.2.camel@localhost.localdomain>
	<23827558.qlZqcTDZms@peggleto-mobl5.ger.corp.intel.com>
	<CAFNP8Os559bt59bx6tfqp+R+HyUxz66kaxjuvzBGiRKbdUMjdQ@mail.gmail.com>
	<3342528.IHg5slGbJt@peggleto-mobl5.ger.corp.intel.com>
	<1405606711.31082.12.camel@empanada>
	<1405618723.15660.1.camel@localhost.localdomain>
In-Reply-To: <1405618723.15660.1.camel@localhost.localdomain>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Scott Rifenbark <srifenbark@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wic status
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
X-List-Received-Date: Thu, 17 Jul 2014 18:28:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U28gdG9tb3Jyb3cgSSBzaG91bGQgaGF2ZSBhbiB1cGRhdGVkIHZlcnNpb24gb2YgdGhhdCB3aWMg
c2VjdGlvbiBpbiB0aGUgZG9yYSBicmFuY2ggb2YgdGhlIGRvY3MuICBJIHdpbGwgbmVlZCBUb20g
dG8gbG9vayBhdCBpdC4gIEkgYW0gbWFraW5nIHNvbWUgY2hhbmdlcyBiYXNlZCBvbiB0aGUgd3Jp
dGUgdXAgSSBnb3QgZnJvbSB0aGF0IGZpcnN0IGVtYWlsIHRocmVhZCBUb20gc2VudCBvdXQuICBU
aGVuLCBiYXNlZCBvbiB0aGF0IGNvcHkgaW4gdGhlIDEuNS54IGRvY3MsIEkgd2lsbCBnZXQgdGhl
IHNlY3Rpb24gaW50byB0aGUgZGFpc3kgYnJhbmNoIGFuZCB0aGUgbWFzdGVyIGJyYW5jaC4gIFRv
bSAtIEkgd2lsbCBzZW5kIHlvdSBhIG5vdGUgYW5kIGxpbmsgd2hlbiBpdCBpcyByZWFkeSBmb3Ig
cmV2aWV3LiANCg0KU2NvdHQNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTog
eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tDQo+Ym91bmNlc0B5
b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgTWFjaWVrIEJvcnplY2tpDQo+U2VudDogVGh1
cnNkYXksIEp1bHkgMTcsIDIwMTQgMTA6MzkgQU0NCj5UbzogVG9tIFphbnVzc2kNCj5DYzogUGF1
bCBFZ2dsZXRvbjsgU2NvdHQgUmlmZW5iYXJrOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+U3Vi
amVjdDogUmU6IFt5b2N0b10gd2ljIHN0YXR1cw0KPg0KPk9uIGN6dywgMjAxNC0wNy0xNyBhdCAw
OToxOCAtMDUwMCwgVG9tIFphbnVzc2kgd3JvdGU6DQo+PiBPbiBUaHUsIDIwMTQtMDctMTcgYXQg
MTQ6NTEgKzAxMDAsIFBhdWwgRWdnbGV0b24gd3JvdGU6DQo+PiA+IE9uIFRodXJzZGF5IDE3IEp1
bHkgMjAxNCAxNjo0ODo0MSBTY290dCBSaWZlbmJhcmsgd3JvdGU6DQo+PiA+ID4gT24gVGh1LCBK
dWwgMTcsIDIwMTQgYXQgMzo1NiBQTSwgUGF1bCBFZ2dsZXRvbiA8DQo+PiA+ID4gcGF1bC5lZ2ds
ZXRvbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOg0KPj4gPiA+ID4gT24gVGh1cnNkYXkgMTcgSnVs
eSAyMDE0IDE0OjI1OjE2IE1hY2llayBCb3J6ZWNraSB3cm90ZToNCj4+ID4gPiA+ID4gVGhlcmUg
dXNlZCB0byBiZSBhbiBlbnRyeSBhYm91dCB3aWMgaW4gZGV2ZWxvcG1lbnQgbWFudWFsIGJhY2sg
aW4NCj4xLjUuMjoNCj4+ID4gPiA+ID4gaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3Mv
MS41LjIvZGV2LW1hbnVhbC9kZXYtbWFudWFsLmgNCj4+ID4gPiA+ID4gdG1sDQo+PiA+ID4gPiA+
DQo+PiA+ID4gPiA+IFRoaXMgZW50cnkgaXMgZ29uZSBpbiBjdXJyZW50IGRvY3VtZW50YXRpb24g
YW5kIHRoZXJlIHNlZW1zIHRvDQo+PiA+ID4gPiA+IGJlIG5vIG1lbnRpb24gb2Ygd2ljIGF0IGFs
bDoNCj4+ID4gPiA+ID4gaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzL2N1cnJlbnQv
ZGV2LW1hbnVhbC9kZXYtDQo+bWFudWENCj4+ID4gPiA+ID4gbC5odG1sDQo+PiA+ID4gPg0KPj4g
PiA+ID4gU2NvdHQsIGNhbiB5b3UgdGFrZSBhIGxvb2sgYXQgdGhpcyBpZiB5b3UgaGF2ZW4ndCBh
bHJlYWR5Pw0KPj4gPiA+DQo+PiA+ID4gd2ljIHdhcyBkb2N1bWVudGVkIGluIHRoZSAxLjUueCBz
ZXQgYW5kIHdhcyBub3QgcHV0IGludG8gdGhlIDEuNg0KPj4gPiA+IHNldC4gIEkgd2FzIHRvbGQg
dGhhdCBpdCB3YXMgZ29pbmcgdG8gY2hhbmdlIG9yIGJlIGZ1cnRoZXINCj4+ID4gPiBjb21wbGV0
ZWQgc28gaXQgZGlkIG5vdCBnbyBpbiB0aGF0IGRldmVsb3BtZW50IGJyYW5jaC4gIFdpYyB3YXMg
bmV2ZXINCj5kb2N1bWVudGVkIGluIHRoZSAxLjYgc2V0Lg0KPj4gPg0KPj4gPiBXZWxsLCB3aWMg
aXMgc3RpbGwgYSBwYXJ0IG9mIHRoZSBzeXN0ZW0gaW4gMS42IGFuZCBiZXlvbmQgc28gd2UgZG8N
Cj4+ID4gbmVlZCB0byBkb2N1bWVudCBpdDsgYXMgZmFyIGFzIEkgY2FuIHRlbGwgd2hhdCB3YXMg
aW4gdGhlIDEuNSBtYW51YWwNCj4+ID4gbGlua2VkIGFib3ZlIHNob3VsZCBiZSBwZXJmZWN0bHkg
ZmluZSBhbmQgd2UgY2FuIGp1c3QgZXh0ZW5kIC8NCj4+ID4gdXBkYXRlIGl0IGFzIG5lZWRlZC4g
VG9tIHNob3VsZCBiZSBhYmxlIHRvIGhlbHAgZmlsbCBpbiBhbnkgYmxhbmtzLg0KPj4gPg0KPj4N
Cj4+IFJpZ2h0LCB3aWMgaXMgc3RpbGwgaW5jbHVkZWQgaW4gdGhlIHN5c3RlbSwgYW5kIGxpa2Ug
dGhlIHJlc3Qgb2YgdGhlDQo+PiBzeXN0ZW0gaXMgdW5kZXJnb2luZyBjb250aW51YWwgZGV2ZWxv
cG1lbnQsIHNvIEknbSBub3Qgc3VyZSB3aHkgaXQNCj4+IHdvdWxkIGJlIHRyZWF0ZWQgZGlmZmVy
ZW50bHkuDQo+Pg0KPj4gSW4gYW55IGNhc2UsIHRvIG1ha2UgaXQgZWFzaWVyIGZvciB1c2VycyBh
bmQgdG8gYXZvaWQgYSBtaXNtYXRjaCB3aXRoDQo+PiBleHRlcm5hbCBkb2N1bWVudGF0aW9uLCBv
dmVyIHRoZSBwYXN0IGNvdXBsZSB3ZWVrcyBJJ3ZlIHN1Ym1pdHRlZCBhDQo+PiBzZXQgb2YgcGF0
Y2hlcyAod2hpY2ggaGF2ZSBub3cgYmVlbiBtZXJnZWQpIHRoYXQgcHV0cyBtb3N0IG9mIHRoZSBo
ZWxwDQo+PiBjb250ZW50IGludG8gdGhlIHRvb2wgaXRzZWxmLCB3aGljaCBpcyBhbGwgbm93IGFj
Y2Vzc2libGUgdmlhICd3aWMNCj4+IGhlbHAnLg0KPg0KPlJpZ2h0LCBJJ3ZlIHNlZW4geW91ciBw
YXRjaGVzIGluIG1hc3RlciwgdmVyeSBoZWxwZnVsLg0KPg0KPlRoZXJlJ3Mgb25lIG1vcmUgdGhp
bmcgdGhhdCBJJ20gYSBiaXQgY29uZnVzZWQgYWJvdXQuIFRoZSAxLjUuMiBkb2NzIHN0YXRlIHRo
ZQ0KPmZvbGxvd2luZzoNCj4NCj48ZXhjZXJwdCBzdGFydD4NCj5IZXJlIGFyZSB0aGUgYWN0dWFs
IHBhcnRpdGlvbiBsYW5ndWFnZSBjb21tYW5kcyB1c2VkIGluIHRoZSBta2VmaWRpc2sud2tzDQo+
ZmlsZSB0byBnZW5lcmF0ZSBhbiBpbWFnZToNCj4NCj4gICAgICMgc2hvcnQtZGVzY3JpcHRpb246
IENyZWF0ZSBhbiBFRkkgZGlzayBpbWFnZQ0KPiAgICAgIyBsb25nLWRlc2NyaXB0aW9uOiBDcmVh
dGVzIGEgcGFydGl0aW9uZWQgRUZJIGRpc2sgaW1hZ2UgdGhhdCB0aGUgdXNlcg0KPiAgICAgIyBj
YW4gZGlyZWN0bHkgZGQgdG8gYm9vdCBtZWRpYS4NCj4NCj4gICAgIHBhcnQgL2Jvb3QgLS1zb3Vy
Y2UgYm9vdGltZyAtLW9uZGlzayBzZGEgLS1mc3R5cGU9ZWZpIC0tbGFiZWwgbXNkb3MgLS1hY3Rp
dmUNCj4tLWFsaWduIDEwMjQgPGV4Y2VycHQgZW5kPg0KPg0KPkknZCBhc3N1bWUgdG8gZmluZCBz
Y3JpcHRzL2xpYi9taWMvcGx1Z2lucy9zb3VyY2UvYm9vdGltZy5weSBpbiB0aGUgdHJlZSwgYnV0
DQo+dGhlIGZpbGUgaXMgbm90IHRoZXJlLiBIYXZlIEkgbWlzc2VkIHNvbWV0aGluZz8NCj4NCj4o
YnR3LiBJJ20gYWxzbyBhc3N1bWluZyB0aGF0IGJvb3RpbWcgd291bGQgcHJlcGFyZSBhIGJvb3Qg
cGFydGl0aW9uZyB3aXRob3V0DQo+cHVzaGluZyBhbnkgcGFydGljdWxhciBib290bG9hZGVyLCBs
aWtlIHN5c2xpbnV4IG9yIHdoYXRldmVyDQo+cmlnaHQ/KQ0KPg0KPg0KPi0tDQo+TWFjaWVqIEJv
cnrEmWNraQ0KPlNlbmlvciBTb2Z0d2FyZSBEZXZlbG9wZXIgYXQgT3Blbi1SbkQgU3AuIHogby5v
LiwgUG9sYW5kIHd3dy5vcGVuLXJuZC5wbA0KPm1vYmlsZTogKzQ4IDg4OSAxMTcgMzY1LCBmYXg6
ICs0OCA0MiA2NTcgOTA3OQ0KPg0KPk5pbmllanN6YSB3aWFkb21vxZvEhyB3cmF6IHogemHFgsSF
Y3puaWthbWkgbW/FvGUgemF3aWVyYcSHIGNocm9uaW9uZSBwcmF3ZW0NCj5sdWIgcG91Zm5lIGlu
Zm9ybWFjamUgaSB6b3N0YcWCYSB3eXPFgmFuYSB3ecWCxIVjem5pZSBkbyB3aWFkb21vxZtjaSBp
IHXFvHl0a3UNCj5vc8OzYiwgZG8ga3TDs3J5Y2ggem9zdGHFgmEgemFhZHJlc293YW5hLiBKZcWb
bGkgd2lhZG9tb8WbxIcgem9zdGHFgmEgb3RyenltYW5hDQo+cHJ6eXBhZGtvd28gemFicmFuaWEg
c2nEmSBqZWoga29waW93YW5pYSBsdWIgcm96c3nFgmFuaWEgZG8gb3PDs2IgdHJ6ZWNpY2guIFcN
Cj50YWtpbSBwcnp5cGFka3UgdXByYXN6YSBzacSZIG8gbmF0eWNobWlhc3Rvd2Ugem5pc3pjemVu
aWUgd2lhZG9tb8WbY2kgb3Jheg0KPnBvaW5mb3Jtb3dhbmllIG5hZGF3Y3kgbyB6YWlzdG5pYcWC
ZWogc3l0dWFjamkgemEgcG9tb2PEhSB3aWFkb21vxZtjaQ0KPnp3cm90bmVqLiBEemnEmWt1amVt
eS4NCj4NCj5UaGlzIG1lc3NhZ2UsIGluY2x1ZGluZyBhbnkgYXR0YWNobWVudHMgaGVyZXRvLCBt
YXkgY29udGFpbiBwcml2aWxlZ2VkIG9yDQo+Y29uZmlkZW50aWFsIGluZm9ybWF0aW9uIGFuZCBp
cyBzZW50IHNvbGVseSBmb3IgdGhlIGF0dGVudGlvbiBhbmQgdXNlIG9mIHRoZQ0KPmludGVuZGVk
IGFkZHJlc3NlZShzKS4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgYWRkcmVzc2VlLCB5b3Ug
bWF5DQo+bmVpdGhlciB1c2UgdGhpcyBtZXNzYWdlIG5vciBjb3B5IG9yIGRlbGl2ZXIgaXQgdG8g
YW55b25lLiBJbiBzdWNoIGNhc2UsIHlvdQ0KPnNob3VsZCBpbW1lZGlhdGVseSBkZXN0cm95IHRo
aXMgbWVzc2FnZSBhbmQga2luZGx5IG5vdGlmeSB0aGUgc2VuZGVyIGJ5DQo+cmVwbHkgZW1haWwu
IFRoYW5rIHlvdS4NCj4NCj4NCj4tLQ0KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fDQo+eW9jdG8gbWFpbGluZyBsaXN0DQo+eW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZw0KPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

