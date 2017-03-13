Return-Path: <david.reyna@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C2FAE00A51; Sun, 12 Mar 2017 23:26:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AFB2E00A48;
	Sun, 12 Mar 2017 23:26:34 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v2D6QH3q024489
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 12 Mar 2017 23:26:17 -0700
Received: from ALA-MBC.corp.ad.wrs.com ([fe80::fcbe:9b7:1141:89a1]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0294.000;
	Sun, 12 Mar 2017 23:26:17 -0700
From: "Reyna, David" <david.reyna@windriver.com>
To: "Matthias.Schoepfer@i-thinx.com" <Matthias.Schoepfer@i-thinx.com>
Thread-Topic: [yocto] toaster
Thread-Index: AQHSmS6tb/mi4bYHH0ak+lThEMjLvqGSUV5w
Date: Mon, 13 Mar 2017 06:26:16 +0000
Message-ID: <5E53D14CE4667A45B9A06760DE5D13D0CF5E66B5@ALA-MBC.corp.ad.wrs.com>
References: <63EFF8D6B0566D4E82DEBC3D979C491383C6EDA3@SW-VM-02.kelle.grp>
	<305b0a23-5747-3301-2c93-5b44b236ebef@linux.intel.com>
In-Reply-To: <305b0a23-5747-3301-2c93-5b44b236ebef@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.11.118.9]
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Mar 2017 07:47:23 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"toaster@yoctoproject.org" <toaster@yoctoproject.org>
Subject: Re: toaster
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
X-List-Received-Date: Mon, 13 Mar 2017 06:26:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWF0dGhpYXMsDQoNCkkgYW0gc29ycnkgSSBkaWQgbm90IHNlZSB5b3VyIHBvc3Qgc29vbmVy
LiBUaGUgVG9hc3RlciBncm91cCBnZW5lcmFsbHkgZm9sbG93cyB0aGUgInRvYXN0ZXJAeW9jdG9w
cm9qZWN0Lm9yZyIgZW1haWwgbGlzdC4NCg0KV2UgZnVsbHkgaW50ZW5kIHRvIHN1cHBvcnQgbWFy
aWFkYiBhcyBhIHByb2R1Y3Rpb24gbGV2ZWwgZGF0YWJhc2UsIGVzcGVjaWFsbHkgZ2l2ZW4gaXRz
IG9wZW4gc291cmNlIGNyZWRlbnRpYWxzLCBidXQgd2UgaGF2ZSBub3QgdHJpZWQgaXQgeWV0Lg0K
DQpXZSB1bmRlcnN0b29kIHRoYXQgbWFyaWFkYiB3YXMgc3VwcG9zZWQgdG8gYmUgYW4gZXhhY3Qg
ZHJvcC1pbiByZXBsYWNlbWVudCwgYnV0IG9idmlvdXMgeW91ciBleHBlcmllbmNlIGlzIGRpZmZl
cmVudC4gT3VyIGV4cGVyaWVuY2Ugd2FzIGp1c3Qgd2l0aCBNeVNRTC4NCg0KSSB3aWxsIHRyeSB0
byBnYXRoZXIgYWR2aWNlIGZyb20gb3VyIHZhcmlvdXMgdXNlcnMgdG8gc2VlIGlmIHdlIGNhbiBo
ZWxwIHlvdSBpbiB0aGUgbWVhbnRpbWUuDQoNCi0gRGF2aWQNCiANCg0KLS0tLS0tLS0gRm9yd2Fy
ZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6IFt5b2N0b10gdG9hc3Rlcg0KRGF0ZTogVHVl
LCAyMSBGZWIgMjAxNyAxNzozMzowOCArMDAwMA0KRnJvbTogRHIuIE1hdHRoaWFzIFNjaMO2cGZl
ciA8TWF0dGhpYXMuU2Nob2VwZmVyQGktdGhpbnguY29tPg0KVG86IHlvY3RvQHlvY3RvcHJvamVj
dC5vcmcgPHlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQoNCkhlbGxvIQ0KDQpGaXJzdCBvZiBhbGws
IEkgaGF2ZSBiZWVuIHdvcmtpbmcgd2l0aCB5b2N0by9vZSBmb3Igc29tZSB0aW1lIG5vdyBhbmQN
CmVuam95IGFuZCBhcHByZWNpYXRlIGl0IHZlcnkgbXVjaCENCg0KSSBoYXZlIGEgcXVlc3Rpb24g
cmVnYXJkaW5nIHRvYXN0ZXIgaW4gYSAiUHJvZHVjdGlvbiBJbnN0YW5jZSIgU2V0dXAuIEkNCmhh
dmUgdHJpZWQgdG8gc2V0IHRvYXN0ZXIgdXAgb24gVWJ1bnR1IDE2LjA0IGZvbGxvd2luZyB0aGUN
Cmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuMi90b2FzdGVyLW1hbnVhbC90b2Fz
dGVyLW1hbnVhbC5odG1sDQphbmQgcmFuIGludG8gYSBidW5jaCBvZiBwcm9ibGVtcy4gSSBoYXZl
IGJlZW4gYWJsZSB0byByZXNvbHZlIHNvbWUsIGJ1dA0Kbm93IEkgYW0gYXQgYSBwb2ludCB3aGVy
ZSBJIGRvdWJ0IHRoYXQgdGhpcyBzZXR1cCBjYW4gd29yayBhdCBhbGwsIHNvDQpwbGVhc2UgY29y
cmVjdCBtZSBpZiBJIGFtIHdyb25nLg0KDQogRnJvbSB0aGUgdG9wIG9mIG15IGhlYWQsIHRoZXNl
IHdoZXJlIHRoZSB0cm91YmxlcyBJIGhhZDoNCg0KKiB0aGVyZSB3ZXJlIElzc3VlcyB1c2luZyBt
YXJpYWRiIGluc3RlYWQgb2YgbXlzcWwuDQoNCiogdGhlIHxtb2Qtd3NnaSB8dGhhdCBjb21lcyB3
aXRoIFVidW50dSAxNi4wNCBoYXMgYSBidWcgdGhhdCBkb2VzIG5vdA0KYWxsb3cgdG8gY29uY2F0
ZW5hdGUgcHl0aG9uLXBhdGggd2l0aCBjb2xvbiwgc28gVXBkYXRlIHRvIFZlcnNpb24gPj00LjUN
CndhcyBuZWVkZWQNCg0KKiBUaGUgbGluZSAgLi9iaXRiYWtlL2xpYi90b2FzdGVyL21hbmFnZS5w
eSBjaGVja3NldHRpbmdzIHdpbGwgYXNrIGZvcg0KdGhlIHBhdGggdG8gdGhlIG9wZW5lbWJlZGRl
ZCBtZXRhLi4uDQoNCiogSSBhbSBub3Qgc3VyZSBpZiBUT0FTVEVSX0NPTkYgaXMgdXNlZCwgYXQg
bGVhc3QsIHRoZSB0b2F0ZXJjb25mLmpzb24NCmFuZCB3aGF0IEkgZ2V0IG9uIHRoZSB3ZWJzZXJ2
ZXIgZG8gbm90IG1hdGNoLg0KDQoqIEZpbmFsbHksIGFuZCB0aGlzIGlzIHRoZSBwb2ludCB3aGVy
ZSBJIGRvdWJ0IHRoYXQgdGhpcyBzZXR1cCBjYW4gd29yaw0KYXQgYWxsIGFzIGRlc2NyaWJlZDog
V2hlbiB0cnlpbmcgdG8gcnVuIGEgYnVpbGQsIEkgZ2V0IGFuIEludGVybmFsDQpTZXJ2ZXIgRXJy
b3IsIHdoaWNoIGJvaWxzIGRvd24gdGhhdCAkQlVJTERESVIgaXMgbm90IHNldCBmb3IgZW52aXJv
bm1lbnQNCmFwYWNoZSBydW5zIGluLiBJZiBJIGhhcmRjb2RlIHRoYXQsIEkgZ2V0IG9mIGNvdXJz
ZSB0aGUgZXJyb3Igb24gdGhlDQpzaWduYWwsIHRoYXQgcGVybWlzc2lvbiBpcyBkZW5pZWQsIGJl
Y2F1c2UgdGhlIHJ1bmJ1aWxkcy1zZXJ2aWNlIGlzIHJ1bg0KYXMgdG9hc3RlciB1c2VyIHdoaWxl
IGFwYWNoZSBydW5zIGFzIHd3dy1kYXRhIHVzZXIuDQoNClRoZXJlZm9yZTogSXMgYW55b25lIHJ1
bm5pbmcgdG9hc3RlciBpbiB0aGlzIHNldHVwPyEgU2hvdWxkIEkgYWJhbmRvbg0KdGhpcyBzZXR1
cD8NCg0KVGhhbmtzIGluIGFkdmFuY2UhDQoNClJlZ2FyZHMsDQoNCiAgICAgTWF0dGhpYXMNCg0K
DQoNCmkuQS4gRHIuLUluZy4gTWF0dGhpYXMgU2Now7ZwZmVyICB8ICBpdGhpbnggR21iSCAgfCAg
U29mdHdhcmUgRW5naW5lZXINClBob25lOiArNDkgKDIyMSkgOTk1ODktMzMyICB8ICBGYXg6ICs0
OSAoMjIxKSA5OTU4OS0xOTkNCkFkZHJlc3M6IGl0aGlueCBHbWJIICB8ICBCdXR6d2VpbGVyaG9m
IEFsbGVlIDQgIHwgIDUwODI5IENvbG9nbmUgIHwgIEdlcm1hbnkNCkUtTWFpbDogTWF0dGhpYXMu
U2Nob2VwZmVyQGktdGhpbnguY29tICB8ICBXZWJzaXRlOiB3d3cuaS10aGlueC5jb20NClJlZ2lz
dGVyZWQgT2ZmaWNlOiBDb2xvZ25lICB8ICBEaXN0cmljdCBjb3VydDogTWFyYnVyZyAgfCAgSFJC
IDY3NDkNCk1hbmFnaW5nIERpcmVjdG9yOiBDaHJpc3RpYW4gRmF1c3QNCg0KVGhpcyBlLW1haWwg
bWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGFuZC9vciBwcml2aWxlZ2VkIGluZm9ybWF0aW9uLiBp
ZiB5b3UgYXJlIA0Kbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQgKG9yIGhhdmUgcmVjZWl2ZWQg
dGhpcyBlLW1haWwgaW4gZXJyb3IpIHBsZWFzZQ0Kbm90aWZpeSB0aGUgc2VuZGVyIGltbWVkaWF0
ZWx5IGFuZCBkZXN0cm95IHRoaXMgZS1tYWlsLiBBbnkgdW5hdXRvaHJpemVkIA0KY29weWluZywg
ZGlzY2xvc3VyZSBvciBkaXN0cmlidXRpb24gb2YgdGhlIG1hdGVyaWFsIGluIHRoaXMgZS1tYWls
IGlzIHN0cmljdGx5IA0KZm9yYmlkZGVuLg0KDQpXZSBsaWtlIHRyZWVzLiBQbGVhc2UgY29uc2lk
ZXIgdGhlIGVudmlyb25tZW50IGJlZm9yZSBwcmludGluZyB0aGlzIGUtbWFpbC4gDQpUaGFuayB5
b3UuDQotLSANCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
DQp5b2N0byBtYWlsaW5nIGxpc3QNCnlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCmh0dHBzOi8vbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0K

