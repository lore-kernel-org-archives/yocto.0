Return-Path: <gwenole.beauchesne@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E65D4E00B6D
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 07:57:32 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2014 07:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,787,1389772800"; d="scan'208";a="514139599"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2014 07:53:46 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.172]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.45]) with mapi id
	14.03.0123.003; Thu, 3 Apr 2014 15:52:39 +0100
From: "Beauchesne, Gwenole" <gwenole.beauchesne@intel.com>
To: Meenakumari Shedole <meenakumari.s@hcl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkP///EyAgAZ3sHCAAEJeQIABLiLAgAIeozA=
Date: Thu, 3 Apr 2014 14:52:38 +0000
Message-ID: <278E3B7DD17B744DAAB36F6424581BA61AE98D6D@IRSMSX103.ger.corp.intel.com>
References: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
	<CAJTo0LY5VVCZbimtTBNdgDCEB+1mwSwdsVH31ik8GSdheg48OQ@mail.gmail.com>
	<E4938C0D959B3445943720B88F07213415614CE4@NDA-HCLT-MBS02.hclt.corp.hcl.in>
In-Reply-To: <E4938C0D959B3445943720B88F07213415614CE4@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US, fr-FR, en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 03 Apr 2014 08:22:22 -0700
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Thu, 03 Apr 2014 14:57:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj4gSSBoYXZlIGNoZWNrZWQgdmFhcGlzaW5rIHNvdXJjZSwgaXQgc2VlbXMgaXRzIHN1
cHBvcnRpbmcgb3ZlcmxheSBvbiBmb3JlaWduIFgNCj4gd2luZG93Lg0KPiBodHRwczovL2dpdG9y
aW91cy5vcmcvdmFhcGkvZ3N0cmVhbWVyLQ0KPiB2YWFwaS9zb3VyY2UvNjQzZDM1ZTg3YTY3Mzc2
YWY5Y2Q4OWNkODY4NjY2MzY4YjEwNWFjMzpnc3QvdmFhcGlzaW5rL2dzDQo+IHR2YWFwaXNpbmsu
Yw0KPiBzdGF0aWMgZ2Jvb2xlYW4gZ3N0X3ZhYXBpc2lua19pbXBsZW1lbnRzX2ludGVyZmFjZV9z
dXBwb3J0ZWQoKTsNCj4gc3RhdGljIGdib29sZWFuIGdzdF92YWFwaXNpbmtfZW5zdXJlX3dpbmRv
d194aWQoKTsNCg0KVGhlIHZlcnNpb24geW91IG1lbnRpb24gbG9va3MgdmVyeSBvbGQuIEkgaGF2
ZSBpbnRlZ3JhdGVkIGEgZml4IGZyb20gYW5vdGhlciB1c2VyLCB3aG8gaGFzIGJlZW4gc3VjY2Vz
c2Z1bGx5IHVzaW5nIGdzdHJlYW1lci12YWFwaSB3aXRoIEdTdHJlYW1lciAwLjEwIGluIGEgc2Nl
bmFyaW8geW91IGRlc2NyaWJlICh2YWFwaXNpbmsgKyBmb3JlaWduIHdpbmRvdykuIFBsZWFzZSB1
cGRhdGUgeW91ciBnc3RyZWFtZXItdmFhcGkgdmVyc2lvbiB0byBhdCBsZWFzdCAwLjUuOC4gT3Is
IHRoZSBjdXJyZW50IGdpdCBtYXN0ZXIgdHJlZS4gT3RoZXIgYnJhbmNoZXMgYXJlIG5vdCBtYWlu
dGFpbmVkIGFueSBtb3JlLiBUaGUgZml4IEkgaGF2ZSBpbiBtaW5kIHdhcyBmODY2NmUyLg0KDQpS
ZWdhcmRzLA0KR3dlbm9sZS4NCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9t
OiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQo+IFNlbnQ6IEZy
aWRheSwgTWFyY2ggMjgsIDIwMTQgNDo0MiBQTQ0KPiBUbzogTWVlbmFrdW1hcmkgU2hlZG9sZQ0K
PiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgRGlwZXNoIEthcm1ha2FyDQo+IFN1YmplY3Q6
IFJlOiBbeW9jdG9dIEhlbHAtR3N0cmVhbWVyIFZhYXBpIFBsdWdpbiBJc3N1ZSBpbiAxMDgwcCBt
cDQNCj4gcGxheWJhY2sNCj4gDQo+IE9uIDI4IE1hcmNoIDIwMTQgMDY6MDUsIE1lZW5ha3VtYXJp
IFNoZWRvbGUgPG1lZW5ha3VtYXJpLnNAaGNsLmNvbT4NCj4gd3JvdGU6DQo+ID4gMS4gcGxheWJp
bjIgKyBhdmkvM2dwIGlzIHdvcmtpbmcgcHJvcGVybHkgYmVjYXVzZSBvZiB4dmltYWdlc2luayBp
cyB1c2VkDQo+IGludGVyYWxseS4NCj4gPiAyLiBwbGF5YmluMiArIG1wNCBpcyBub3QgdGFraW5n
IHZhYXBpIHNpbmssIHdlIG5lZWQgdG8gbWFudWFsbHkgc2V0IHZpZGVvLQ0KPiBzaW5rPXZhYXBp
c2luay4NCj4gPiAgICBBbHNvIHdlIGFyZSBnZXR0aW5nIGFyYml0cmFyeSBjcmFzaCB3aGlsZSBz
ZXR0aW5nIHRoZSBxbWwgdmlkZW8gd2luZG93IGlkDQo+IHRvIHRoZSB2YWFwaSBzaW5rLg0KPiA+
ICAgIFNvIHdlIGFyZSBub3QgZ2V0dGluZyBhbnkgc2luZ2xlIHBpcGUgdG8gcGxheSBtcDQvYXZp
LzNncCBzdHVmZi4NCj4gDQo+IFRoZSBpbXBvcnRhbnQgcXVlc3Rpb24gaXMgd2hhdCByZWNpcGUg
YXJlIHlvdSB1c2luZyB0byBnZXQgdGhlIHZhYXBpDQo+IGVsZW1lbnRzPw0KPiANCj4gV2hhdCBo
YXBwZW5zIGlmIHlvdSB1c2UgdmFhcGlzaW5rIHdpdGggQVZJLzNHUD8gIFlvdSBzaG91bGQgc3Rp
bGwgZ2V0IHNvbWUNCj4gYWNjZWxlcmF0aW9uLg0KPiANCj4gTm90ZSB0aGF0IGVzcGVjaWFsbHkg
d2hlbiB1c2luZyB2YWFwaSBzaW5rIHlvdSBuZWVkIHRvIHdhaXQgZm9yIHRoZSBzaW5rIHRvDQo+
IGNyZWF0ZSB0aGUgd2luZG93IGFuZCB0aGVuIHJlcGFyZW50IGl0LCB5b3UgY2FuJ3QgcHJvdmlk
ZSB5b3VyIG93biBYDQo+IHdpbmRvdyB0byB2YWFwaXNpbmsuICBUaGlzIGlzIHRoZSB1c3VhbCBj
YXVzZSBmb3IgYnJlYWthZ2UuICBEbyB0ZXN0aW5nIHdpdGgNCj4gZ3N0LWxhdW5jaCBiZWZvcmUg
YXR0ZW1wdGluZyB0byB1c2UgeW91ciBvd24gYXBwbGljYXRpb24uDQo+IA0KPiBSb3NzDQo+IA0K
PiANCj4gOjpESVNDTEFJTUVSOjoNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCj4gDQo+IFRoZSBjb250ZW50cyBvZiB0aGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1l
bnQocykgYXJlIGNvbmZpZGVudGlhbCBhbmQNCj4gaW50ZW5kZWQgZm9yIHRoZSBuYW1lZCByZWNp
cGllbnQocykgb25seS4NCj4gRS1tYWlsIHRyYW5zbWlzc2lvbiBpcyBub3QgZ3VhcmFudGVlZCB0
byBiZSBzZWN1cmUgb3IgZXJyb3ItZnJlZSBhcw0KPiBpbmZvcm1hdGlvbiBjb3VsZCBiZSBpbnRl
cmNlcHRlZCwgY29ycnVwdGVkLCBsb3N0LCBkZXN0cm95ZWQsIGFycml2ZSBsYXRlIG9yDQo+IGlu
Y29tcGxldGUsIG9yIG1heSBjb250YWluIHZpcnVzZXMgaW4gdHJhbnNtaXNzaW9uLiBUaGUgZSBt
YWlsIGFuZCBpdHMNCj4gY29udGVudHMgKHdpdGggb3Igd2l0aG91dCByZWZlcnJlZCBlcnJvcnMp
IHNoYWxsIHRoZXJlZm9yZSBub3QgYXR0YWNoIGFueQ0KPiBsaWFiaWxpdHkgb24gdGhlIG9yaWdp
bmF0b3Igb3IgSENMIG9yIGl0cyBhZmZpbGlhdGVzLg0KPiBWaWV3cyBvciBvcGluaW9ucywgaWYg
YW55LCBwcmVzZW50ZWQgaW4gdGhpcyBlbWFpbCBhcmUgc29sZWx5IHRob3NlIG9mIHRoZQ0KPiBh
dXRob3IgYW5kIG1heSBub3QgbmVjZXNzYXJpbHkgcmVmbGVjdCB0aGUgdmlld3Mgb3Igb3Bpbmlv
bnMgb2YgSENMIG9yIGl0cw0KPiBhZmZpbGlhdGVzLiBBbnkgZm9ybSBvZiByZXByb2R1Y3Rpb24s
IGRpc3NlbWluYXRpb24sIGNvcHlpbmcsIGRpc2Nsb3N1cmUsDQo+IG1vZGlmaWNhdGlvbiwgZGlz
dHJpYnV0aW9uIGFuZCAvIG9yIHB1YmxpY2F0aW9uIG9mIHRoaXMgbWVzc2FnZSB3aXRob3V0IHRo
ZQ0KPiBwcmlvciB3cml0dGVuIGNvbnNlbnQgb2YgYXV0aG9yaXplZCByZXByZXNlbnRhdGl2ZSBv
ZiBIQ0wgaXMgc3RyaWN0bHkNCj4gcHJvaGliaXRlZC4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhp
cyBlbWFpbCBpbiBlcnJvciBwbGVhc2UgZGVsZXRlIGl0IGFuZCBub3RpZnkNCj4gdGhlIHNlbmRl
ciBpbW1lZGlhdGVseS4NCj4gQmVmb3JlIG9wZW5pbmcgYW55IGVtYWlsIGFuZC9vciBhdHRhY2ht
ZW50cywgcGxlYXNlIGNoZWNrIHRoZW0gZm9yIHZpcnVzZXMNCj4gYW5kIG90aGVyIGRlZmVjdHMu
DQo+IA0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K

