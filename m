Return-Path: <dzimmermann@yellowtec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9618E009EB; Mon,  4 Feb 2019 08:23:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bilbo.thummahr.de (bilbo.thummahr.de [130.180.88.210])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ADF9E00994
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 08:23:20 -0800 (PST)
X-Virus-Scanned: by amavisd-new at 
Received: from 2008-email-vm.tmintra.thummahr.de ([172.16.16.77])
	by bilbo.thummahr.de with ESMTP id x14GN7Jh005647
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=FAIL); 
	Mon, 4 Feb 2019 17:23:07 +0100
Received: from 2008-EMAIL-VM.tmintra.thummahr.de ([fe80::94b0:6cac:381:3a1e])
	by 2008-email-vm.tmintra.thummahr.de ([fe80::94b0:6cac:381:3a1e%11])
	with mapi id 14.03.0361.001; Mon, 4 Feb 2019 17:22:48 +0100
From: David Zimmermann <dzimmermann@yellowtec.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] How to archive only packages contained in a certain image
Thread-Index: AQHUuUCJiNPPm6SckUuTaph6QMGCaaXJF20AgABACYCAAAypAIAGZFgA
Date: Mon, 4 Feb 2019 16:22:48 +0000
Message-ID: <F89498CF-842A-41E5-B569-DD2179BED03B@yellowtec.com>
References: <7289CA52-0B42-4481-93B7-350AE353DC1C@yellowtec.com>
	<CAJTo0LY=A+4CRLoQnxyOYz-=UkbUOxd=ax7FRRDSM1vXXcDX0w@mail.gmail.com>
	<A829632F-9B64-4A3C-B259-C33CC5F8950C@yellowtec.com>
	<CAJTo0La9Fu3xjykguaNQxwCtzcOBazBLzxPW=85x8qJOqCAGoA@mail.gmail.com>
In-Reply-To: <CAJTo0La9Fu3xjykguaNQxwCtzcOBazBLzxPW=85x8qJOqCAGoA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.16.5]
x-tm-as-product-ver: SMEX-11.7.0.1024-8.200.1013-24408.004
x-tm-as-result: No--12.271300-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 172.16.16.1
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How to archive only packages contained in a certain image
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
X-List-Received-Date: Mon, 04 Feb 2019 16:23:21 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-ID: <508948673105EE499984789826CAAB69@thummahr.de>
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB5b3VyIGhlbHBmdWwgaGludHMgUm9zcyAhDQoNCkkgbm93IGhhdmUgYSBzY3Jp
cHQgaW4gcGxhY2Ugd2hpY2g6DQotIGV4dHJhY3RzIHBhY2thZ2UgbmFtZXMgZnJvbSBpbWFnZSBt
YW5pZmVzdA0KLSB0cmFuc2xhdGVzIHBhY2thZ2UgbmFtZXMgdG8gcmVjaXBlIG5hbWVzDQotIGdy
YWJzIHRoZSBzb3VyY2UgcGFja2FnZXMgZm9yIHRob3NlIHJlY2lwZXMgKGZyb20gd2hhdCB0aGUg
YXJjaGl2ZXIgZXh0cmFjdGVkIGFjY29yZGluZyB0byBpdOKAmXMgY29uZmlnKQ0KDQpGb3IgdHdv
IHJlY2lwZXMsIHJlZmVyZW5jZWQgYnkgdGhlIG1hbmlmZXN0IGZpbGUsIHRoZSBhcmNoaXZlciBk
b2VzIGV4dHJhY3Qgbm8gc291cmNlIHBhY2thZ2VzOg0KLSBsaWJnY2MNCi0gZ2NjLXJ1bnRpbWUN
CldoeSBpcyB0aGF0ID8NCg0KUmVnYXJkcywNCkRhdmlkDQogDQo+IEFtIDMxLjAxLjIwMTkgdW0g
MTU6NDYgc2NocmllYiBCdXJ0b24sIFJvc3MgPHJvc3MuYnVydG9uQGludGVsLmNvbT46DQo+IA0K
PiBQbGVhc2UgcmVtZW1iZXIgdG8ga2VlcCB0aGUgbGlzdCBvbiBDQy4NCj4gDQo+IFRoZSByZWFz
b24gaXMgdGhhdCB0aG9zZSByZWNpcGVzIGFyZSBidWlsdCBmb3IgdGhlIHRhcmdldCBzbyB0aGV5
J2xsDQo+IGJlIGFyY2hpdmVkLCB0aGUgYXJjaGl2ZXIgZG9lc24ndCBkaXN0aW5ndWlzaCB3aGF0
IHJlY2lwZXMgZ28gaW50bw0KPiB3aGF0IGltYWdlLg0KPiANCj4gSXQncyByZWxhdGl2ZWx5IHNp
bXBsZSB0byBmaWx0ZXIgdGhlIGxpc3QgYWZ0ZXIgdGhlIGJ1aWxkIGlmIHlvdSB3YW50DQo+IHRv
IHByb2R1Y2UganVzdCB3aGF0IGlzIGluIGEgc3BlY2lmaWMgaW1hZ2UsIHRha2UgdGhlIGltYWdl
IG1hbmlmZXN0DQo+IGFuZCB1c2Ugb2UtcGtnZGF0YS11dGlsIHRvIHR1cm4gdGhlIHBhY2thZ2Ug
bmFtZXMgaW50byByZWNpcGVzLg0KPiANCj4gUm9zcw0KPiANCj4gT24gVGh1LCAzMSBKYW4gMjAx
OSBhdCAxNDowMSwgRGF2aWQgWmltbWVybWFubg0KPiA8ZHppbW1lcm1hbm5AeWVsbG93dGVjLmNv
bT4gd3JvdGU6DQo+PiANCj4+IEhpIFJvc3MsDQo+PiANCj4+IGFuZCB0aGFua3MgZm9yIHlvdXIg
cmVwbHkuDQo+PiBJIGRvIGJha2UgYW4gaW1hZ2UgYmFzZWQgb24gY29yZS1pbWFnZS1taW5pbWFs
IHdpdGggYWRkaXRpb25hbCBwYWNrYWdlcyBsaWtlIG9wZW5zc2ggYW5kIHF0ICgtYmFzZSwgLWRl
Y2xhcmF0aXZlLCAtcXVpY2tjb250cm9scykuDQo+PiBNeSBmb2xkZXIg4oCZdG1wL2RlcGxveS9z
b3VyY2VzL2FybS1wb2t5LWxpbnV4LWdudWVhYmnigJkgZS5nLiBjb250YWluczoNCj4+IHBlcmws
IHB1bHNlYXVkaW8gYW5kIHB5dGhvbg0KPj4gDQo+PiBFdmVuIHRob3VnaCB0aG9zZSBtaWdodCBi
ZSBkZXBlbmRlbmNpZXMgSSBpbmhlcml0ZWQgYnkgb3RoZXIgcmVjaXBlcyAtIHB5dGhvbiBlLmcu
IGlzIG5vdCBjb250YWluZWQgLyB3aWxsIGJlIGluc3RhbGxlZCB0byBteSBpbWFnZS4NCj4+IEFz
IGEgY291bnRlcmNoZWNrIEkgc2VlIHdoYXQgbGljZW5zZXMgd2lsbCBiZSBwbGFjZWQgaW4gdGhl
IGltYWdlIChDT1BZX0xJQ19ESVJTID0gMSAmJiBDT1BZX0xJQ19NQU5JRkVTVCA9IDEpIHdoaWNo
IHJlZmxlY3RzIHRoZSBsaW1pdGVkIG51bWJlciBvZiBwYWNrYWdlcyBJIGRvIGV4cGVjdC4NCj4+
IA0KPj4gUmVnYXJkcywNCj4+IERhdmlkDQo+PiANCj4+PiBBbSAzMS4wMS4yMDE5IHVtIDExOjEx
IHNjaHJpZWIgQnVydG9uLCBSb3NzIDxyb3NzLmJ1cnRvbkBpbnRlbC5jb20+Og0KPj4+IA0KPj4+
IERvZXMgaXQgbm90IGp1c3QgY29udGFpbiB0aGUgcGFja2FnZXMgdXNlZCB0byBidWlsZCB0aGUg
ZW50aXJlIGltYWdlLA0KPj4+IHNvIGJ1aWxkLXRpbWUgZGVwZW5kZW50cy4gIENhbiB5b3UgZ2l2
ZSBhbiBleGFtcGxlIG9mIGEgcmVjaXBlIHRoYXQgaXMNCj4+PiBhcmNoaXZlZCBidXQgc2hvdWxk
bid0IGJlPw0KPj4+IA0KPj4+IFJvc3MNCj4+PiANCj4+PiBPbiBUaHUsIDMxIEphbiAyMDE5IGF0
IDA4OjQ2LCBEYXZpZCBaaW1tZXJtYW5uDQo+Pj4gPGR6aW1tZXJtYW5uQHllbGxvd3RlYy5jb20+
IHdyb3RlOg0KPj4+PiANCj4+Pj4gSGkgTGlzdCwNCj4+Pj4gDQo+Pj4+IEkgdXNlIFlvY3RvIEty
b2dvdGggYW5kIHRoZSBmb2xsb3dpbmcgY29uZmlndXJhdGlvbiBmb3IgdGhlIGFyY2hpdmVyOg0K
Pj4+PiANCj4+Pj4gSU5IRVJJVCArPSDigJ5hcmNoaXZlcuKAnA0KPj4+PiBDT1BZTEVGVF9SRUNJ
UEVfVFlQRVMgPSDigJl0YXJnZXTigJkNCj4+Pj4gDQo+Pj4+IEJ1dCB0aGUg4oCadG1wL2RlcGxv
eS9zb3VyY2VzL+KApi/igJogZm9sZGVyIGZvciBteSB0YXJnZXQgYXJjaGl0ZWN0dXJlIGNvbnRh
aW5zIG11Y2ggbW9yZSBwYWNrYWdlcyB0aGVuIHRob3NlIOKAmnVzZWTigJggdG8gYnVpbGQgbXkg
aW1hZ2UuDQo+Pj4+IElzIHRoZXJlIGEgd2F5IHRvIGV4dHJhY3QgLyBhcmNoaXZlIC8gaXNvbGF0
ZSBvbmx5IHRob3NlIHBhY2thZ2Ugc291cmNlcyB1c2VkIGZvciBhIGNlcnRhaW4gaW1hZ2UgKGtl
cm5lbCArIHJvb3RmcykgPw0KPj4+PiANCj4+Pj4gVGhhbmtzIGZvciB5b3VyIGhlbHAsDQo+Pj4+
IERhdmlkDQo+Pj4+IC0tDQo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+Pj4+IHlvY3RvIG1haWxpbmcgbGlzdA0KPj4+PiB5b2N0b0B5b2N0b3By
b2plY3Qub3JnDQo+Pj4+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95
b2N0bw0KPj4gDQoNCg==

