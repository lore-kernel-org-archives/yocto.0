Return-Path: <sandrieu@greenflex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B5FEE00786; Wed, 24 Sep 2014 02:48:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out.fingerprint.fr (smtp-out.fingerprint.fr
	[109.69.192.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E700CE0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:48:32 -0700 (PDT)
Received: from mxr1.fingerprint.fr (unknown [192.168.2.144])
	by smtp-out.fingerprint.fr (Postfix) with SMTP id 0D15C8005C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 11:47:35 +0200 (CEST)
Received: (qmail 23937 invoked from network); 24 Sep 2014 09:48:29 -0000
Received: from unknown (HELO SRV-MAIL.greenflex.group) (185.3.64.10)
	by mxr1.fingerprint.fr with SMTP; 24 Sep 2014 09:48:29 -0000
Received: from SRV-MAIL.greenflex.group (192.168.100.25) by
	SRV-MAIL.greenflex.group (192.168.100.25) with Microsoft SMTP Server
	(TLS) id 15.0.913.22; Wed, 24 Sep 2014 11:48:29 +0200
Received: from SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001]) by
	SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001%12]) with mapi id
	15.00.0913.011; Wed, 24 Sep 2014 11:48:29 +0200
From: Simon Andrieu <sandrieu@greenflex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Support to install TUN/TAP kernel-module-tun
Thread-Index: Ac/X3H2z4++kzUG4S/KyLqa8SLsZJw==
Date: Wed, 24 Sep 2014 09:48:28 +0000
Message-ID: <9c7f907ca73448338304b78ceb440afd@SRV-MAIL.greenflex.group>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.193.55.84]
MIME-Version: 1.0
Subject: Support to install TUN/TAP kernel-module-tun
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
X-List-Received-Date: Wed, 24 Sep 2014 09:48:38 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNClRoYW5rcyBmb3IgeW91ciB2YXJpb3VzIGhlbHBmdWwgYW5zd2VycyB0aGF0IGVuYWJs
ZSBtZSB0byB1bmRlcnN0YW5kIGJldHRlciB0aGUgcG9zc2libGUgc29sdXRpb25zIHRvIGNvbm5l
Y3QgYSBjZWxsdWxhciBtb2RlbS4NCg0KSSBhbSBmaXJzdCB0cnlpbmcgdGhlIE9mb25vIHNvbHV0
aW9uLCBhbmQgY2FtZSB0byB0aGlzIG1lc3NhZ2UgZXJyb3IgKGRtZXNnKToNCkp1biAxMSAwOTox
MToxMyBpZ2VwMDB4MCBkYWVtb24uaW5mbyBvZm9ub2RbMTI2MV06IE1vZGVtIHN1cHBvcnQgKENE
QyBzdXBwb3J0OiB1bmtub3duKQ0KSnVuIDExIDA5OjExOjE0IGlnZXAwMHgwIGRhZW1vbi5lcnIg
b2Zvbm9kWzEyNjFdOiBNaXNzaW5nIHN1cHBvcnQgZm9yIFRVTi9UQVAgZGV2aWNlcw0KDQpGcm9t
IG15IHNlYXJjaCwgSSBoYXZlIHRvIGluc3RhbGwgdGhlIGtlcm5lbC1tb2R1bGUtdHVuIG1vZHVs
ZS4NCkNvdWxkIHlvdSBoZWxwIG1lIHRvIGtub3cgdGhlIHJlcG9zaXRvcnkgdG8gY29uZmlndXJl
IGZvciB1c2luZyB6aXBwZXIgYW5kIGluc3RhbGxpbmcgaXQgcGxlYXNlPw0KKENvdWxkIHlvdSBh
bHNvIGNvbmZpcm0gbWUgdGhhdCBpbnN0YWxsaW5nIGtlcm5lbC1tb2R1bGUtdHVuIGlzIHRoZSBy
aWdodCBzb2x1dGlvbiBwbGVhc2U/KQ0KDQpUaGFua3MgZm9yIHlvdXIgaGVscC4NCg0KUmVnYXJk
cywNClNpbW9uIEFuZHJpZXUNCg0KLS0tLS1NZXNzYWdlIGQnb3JpZ2luZS0tLS0tDQpEZSA6IEJ1
cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0gDQpFbnZvecOpIDogdmVu
ZHJlZGkgMTkgc2VwdGVtYnJlIDIwMTQgMjM6MzMNCsOAIDogU2ltb24gQW5kcmlldQ0KQ2MgOiB5
b2N0b0B5b2N0b3Byb2plY3Qub3JnDQpPYmpldCA6IFJlOiBbeW9jdG9dIFBva3kvWW9jdG8gZHJp
dmVycyBmb3IgY2VsbHVsYXIgbW9kZW0NCg0KT24gMTggU2VwdGVtYmVyIDIwMTQgMTc6MzksIFNp
bW9uIEFuZHJpZXUgPHNhbmRyaWV1QGdyZWVuZmxleC5jb20+IHdyb3RlOg0KPiBVc2luZyBzb21l
IExpbnV4IGRpc3RyaWJ1dGlvbiwgaXQgZXhpc3RzIGRyaXZlcnMgdGhhdCBoZWxwIHJlY29nbml6
aW5nIA0KPiBhIGNlbGx1bGFyIG1vZGVtIFVTQiBzdGljayBhbmQgdG8gcmFpc2UgYSBjb3JyZXNw
b25kaW5nIG5ldHdvcmsgaW50ZXJmYWNlLg0KPg0KPiBXb3VsZCB5b3Uga25vdyBwbGVhc2UgaWYg
c3VjaCBhIGdlbmVyaWMgY2VsbHVsYXIgbW9kZW0gZHJpdmVyIGV4aXN0cyANCj4gaW4gUG9reS9Z
b2N0byBkaXN0cmlidXRpb24gcGxlYXNlPw0KDQpXb3VsZCBjb25ubWFuICsgb2Zvbm8gYmUgc3Vp
dGFibGU/DQoNClJvc3MNCg0KLS0tLS1NZXNzYWdlIGQnb3JpZ2luZS0tLS0tDQpEZcKgOiBNYWNp
ZWogQm9yemVja2kgW21haWx0bzptYWNpZWouYm9yemVja2lAb3Blbi1ybmQucGxdIA0KRW52b3nD
qcKgOiBzYW1lZGkgMjAgc2VwdGVtYnJlIDIwMTQgMTU6MzYNCsOAwqA6IFNpbW9uIEFuZHJpZXUN
CkNjwqA6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCk9iamV0wqA6IFJlOiBbeW9jdG9dIFBva3kv
WW9jdG8gZHJpdmVycyBmb3IgY2VsbHVsYXIgbW9kZW0NCg0KT24gVGh1cnNkYXkgMTggb2YgU2Vw
dGVtYmVyIDIwMTQgMTY6Mzk6MzMgU2ltb24gQW5kcmlldSB3cm90ZToNCj4gSGksDQo+IA0KPiBJ
IHdvcmsgZm9yIGEgY29tcGFueSAgdGhhdCBkZXZlbG9wcyB0ZWxlbWV0cnkgYm94ZXMsIGFuZCB0
aGF0IHVzZXMgYSANCj4gUG9reS9Zb2N0byBkaXN0cmlidXRpb24gcnVubmluZyBvbiB0aGUgbWFp
biBib2FyZC4gSXQgaXMgcGxhbm5lZCB0byANCj4gaW50ZWdyYXRlIGEgY2VsbHVsYXIgbW9kdWxl
IGNvbm5lY3RlZCB2aWEgVVNCIG9yIHNlcmlhbCBsaW5rIHRvIHRoZSANCj4gbWFpbiBib2FyZC4N
Cj4gDQo+IFVzaW5nIHNvbWUgTGludXggZGlzdHJpYnV0aW9uLCBpdCBleGlzdHMgZHJpdmVycyB0
aGF0IGhlbHAgcmVjb2duaXppbmcgDQo+IGEgY2VsbHVsYXIgbW9kZW0gVVNCIHN0aWNrIGFuZCB0
byByYWlzZSBhIGNvcnJlc3BvbmRpbmcgbmV0d29yayBpbnRlcmZhY2UuDQo+IFdvdWxkIHlvdSBr
bm93IHBsZWFzZSBpZiBzdWNoIGEgZ2VuZXJpYyBjZWxsdWxhciBtb2RlbSBkcml2ZXIgZXhpc3Rz
IA0KPiBpbiBQb2t5L1lvY3RvIGRpc3RyaWJ1dGlvbiBwbGVhc2U/IE1vcmUgZnVydGhlciwgSXQg
Y291bGQgYmUgaGVscGZ1bCANCj4gdG8gaGF2ZSBzb21lIHR1dG9yaWFsIG5vdGVzIHRvIGludGVn
cmF0ZSBpdCBwbGVhc2UuDQoNCkknbSB3b3JraW5nIGEgc2ltaWxhciBhcHBsaWNhdGlvbnMuIE1v
c3QgVVNCIGRldmljZXMgc2VlbSB0byBpbXBsZW1lbnQgQ0RDIEFDTSB0aGF0IHdvcmtzIHF1aXRl
IHdlbGwgd2l0aCBrZXJuZWwgZHJpdmVycy4gQmFzaWNhbGx5IHlvdSBlbmQgdXAgd2l0aCBvbmUg
b2YgL2Rldi90dHlBQ00gZGV2aWNlcyB0aGF0IHBwcGQgY2FuIHRhbGsgdG8uIA0KDQpJbiBwYXN0
LCBkdWUgdG8gaW1hZ2Ugc2l6ZSBjb25zdHJhaW50cywgd2UgaGFkIGN1c3RvbSBjb2RlIHRoYXQg
bG9va2VkIGF0IHRoZXNlIGRldmljZXMgKHVzZWQgbGlidWRldiB0byBjb3JyZWxhdGVkIC9kZXYg
ZW50cmllcyB3aXRoIHVzYiBkZXZpY2VzKSBhbmQgc3RhcnRlZCBwcHBkLCB0aHVzIHNraXBwaW5n
IG9mb25vL2Nvbm5tYW4gYW5kIHRoZWlyIGRlcHMuIFRoZSBjdXJyZW50IHNldHVwcyBhcmUgbW9z
dGx5IHN5c3RlbWQvc3lzdGVtZC1uZXR3b3JrZCArIHBwcGQgZ2x1ZS4gV2l0aG91dCBtdWNoIHRy
b3VibGUgaXQncyBwb3NzaWJsZSB0byBnZXQgfjIwTUIgZXh0MyByb290ZnMgaW1hZ2Ugd2l0aCBh
bGwgdGhlIHN0dWZmIHlvdSBuZWVkLg0KDQpUaGVyZSB3ZXJlIGFsc28gc29tZSBkb25nbGVzIHRo
YXQgY2FtZSB1cCBhcyBDREMgRXRoZXIsIGJ1dCBJJ3ZlIG9ubHkgc2VlbiB0aGlzIGZvciBzb21l
IFdpTUFYIG1vZHVsZXMgdGhhdCBJJ20gbm90IHN1cmUgYXJlIGV2ZW4gYXZhaWxhYmxlIG9uIHRo
ZSBtYXJrZXQgYW55bW9yZS4NCg0KRm9yIHRyYW5zcG9ydCwgeW91IGNhbiBmaW5kIHJhYmJpdG1x
LWMgaW4gbWV0YS1vZS4gSSdsbCBhbHNvIGJlIHNlbmRpbmcgc29tZSBwYXRjaGVzIGZvciBQYWhv
IE1RVFQgbGlicmFyaWVzIGFuZCBtb3NxdWl0dG8gbmV4dCB3ZWVrIG9yIHNvLg0KDQotLSANCg0K
TWFjaWVqIEJvcnrEmWNraQ0KU2VuaW9yIFNvZnR3YXJlIEVuZ2luZWVyIE9wZW4tUm5EIFNwLiB6
IG8uby4gDQp3d3cub3Blbi1ybmQucGwsIEZhY2Vib29rLCBUd2l0dGVyDQptb2JpbGU6ICs0OCB0
ZWxlZm9uLCBmYXg6ICs0OCA0MiA2NTcgOTA3OSANCg0KTmluaWVqc3phIHdpYWRvbW/Fm8SHIHdy
YXogeiB6YcWCxIVjem5pa2FtaSBtb8W8ZSB6YXdpZXJhxIcgY2hyb25pb25lIHByYXdlbSBsdWIg
cG91Zm5lIGluZm9ybWFjamUgaSB6b3N0YcWCYSB3eXPFgmFuYSB3ecWCxIVjem5pZSBkbyB3aWFk
b21vxZtjaSBpIHXFvHl0a3Ugb3PDs2IsIGRvIGt0w7NyeWNoIHpvc3RhxYJhIHphYWRyZXNvd2Fu
YS4gSmXFm2xpIHdpYWRvbW/Fm8SHIHpvc3RhxYJhIG90cnp5bWFuYSBwcnp5cGFka293byB6YWJy
YW5pYSBzacSZIGplaiBrb3Bpb3dhbmlhIGx1YiByb3pzecWCYW5pYSBkbyBvc8OzYiB0cnplY2lj
aC4gVyB0YWtpbSBwcnp5cGFka3UgdXByYXN6YSBzacSZIG8gbmF0eWNobWlhc3Rvd2Ugem5pc3pj
emVuaWUgd2lhZG9tb8WbY2kgb3JheiBwb2luZm9ybW93YW5pZSBuYWRhd2N5IG8gemFpc3RuaWHF
gmVqIHN5dHVhY2ppIHphIHBvbW9jxIUgd2lhZG9tb8WbY2kgendyb3RuZWouIER6acSZa3VqZW15
LiANCg0KVGhpcyBtZXNzYWdlLCBpbmNsdWRpbmcgYW55IGF0dGFjaG1lbnRzIGhlcmV0bywgbWF5
IGNvbnRhaW4gcHJpdmlsZWdlZCBvciBjb25maWRlbnRpYWwgaW5mb3JtYXRpb24gYW5kIGlzIHNl
bnQgc29sZWx5IGZvciB0aGUgYXR0ZW50aW9uIGFuZCB1c2Ugb2YgdGhlIGludGVuZGVkIGFkZHJl
c3NlZShzKS4gSWYgeW91IGFyZSBub3QgYW4gaW50ZW5kZWQgYWRkcmVzc2VlLCB5b3UgbWF5IG5l
aXRoZXIgdXNlIHRoaXMgbWVzc2FnZSBub3IgY29weSBvciBkZWxpdmVyIGl0IHRvIGFueW9uZS4g
SW4gc3VjaCBjYXNlLCB5b3Ugc2hvdWxkIGltbWVkaWF0ZWx5IGRlc3Ryb3kgdGhpcyBtZXNzYWdl
IGFuZCBraW5kbHkgbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHkgZW1haWwuIA0KVGhhbmsgeW91
LiANCg==

