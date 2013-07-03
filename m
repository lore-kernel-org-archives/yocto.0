Return-Path: <Holger.Behrens@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E4F4E013CB
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 05:38:13 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r63Cc9HC013480
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 3 Jul 2013 05:38:10 -0700 (PDT)
Received: from ALA-MBA.corp.ad.wrs.com ([169.254.2.34]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.02.0342.003;
	Wed, 3 Jul 2013 05:38:07 -0700
From: "Behrens, Holger" <Holger.Behrens@windriver.com>
To: Sergey Matyukevich <Sergey_Matyukevich@mentor.com>
Thread-Topic: [meta-ivi] [PATCHv2] connman: do not delete init scripts in
	bbappend
Thread-Index: AQHOd+S93bnF8uIOtEGQBspmz+z5b5lTUfqA//+O2RA=
Date: Wed, 3 Jul 2013 12:38:06 +0000
Message-ID: <7A688B48FC95D148BFE83E098348BE50393435C4@ALA-MBA.corp.ad.wrs.com>
References: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
	<CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
	<51D4120F.6040306@mentor.com>
	<CAJTo0LagT0i=JkkxEkd1mPbNH-F17vV9z4Pw9-bf8yNAUE0XHA@mail.gmail.com>
In-Reply-To: <CAJTo0LagT0i=JkkxEkd1mPbNH-F17vV9z4Pw9-bf8yNAUE0XHA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.204.208]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-ivi] [PATCHv2] connman: do not delete init scripts in bbappend
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
X-List-Received-Date: Wed, 03 Jul 2013 12:38:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCj4gT24gMyBKdWx5IDIwMTMgMTI6NTksIFNlcmdleSBNYXR5dWtldmljaA0KPiA8U2Vy
Z2V5X01hdHl1a2V2aWNoQG1lbnRvci5jb20+IHdyb3RlOg0KPiA+IEhtbS4uLiBUaGFua3MgZm9y
IGNvbW1lbnQuIEl0IGlzIGdvb2QgaWRlYSB0byB0YWtlIGEgYnJlYWsgYW5kIHRvIHNlZSB0aGUN
Cj4gPiBmb3Jlc3QgZm9yIHRoZSB0cmVlcy4gSGVyZSBpcyB0aGUgc2Vjb25kIHBhdGNoIHJldmlz
aW9uLg0KPiA+DQo+ID4gQ29ubm1hbiBpbml0IHNjcmlwdHMgYXJlIG5vdyBpbnN0YWxsZWQgb25s
eSB3aGVuICdzeXN2aW5pdCcgZmVhdHVyZSBpcw0KPiA+IGVuYWJsZWQgaW4gRElTVFJPX0ZFQVRV
UkVTOiBjb21taXQNCj4gN2M4MTYwY2NiZTE3ZDZlMTBiZDdhMDliOTE4NDMxODJhODliOTA1NQ0K
PiA+IGluDQo+ID4gcG9reS4gTm8gbmVlZCB0byByZW1vdmUgdGhlbSBpbiBiYmFwcGVuZDogdGhl
eSBhcmUgbm90IGluc3RhbGxlZCBmb3INCj4gPiAnc3lzdGVtZCctZW5hYmxlZA0KPiA+IHN5c3Rl
bXMgYW5kIHRoZXkgYXJlIG5lZWRlZCBmb3IgJ3N5c3Zpbml0Jy1lbmFibGVkIHN5c3RlbXMuDQo+
ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgTWF0eXVrZXZpY2ggPHNlcmdleV9tYXR5dWtl
dmljaEBtZW50b3IuY29tPg0KPiA+IC0tLQ0KPiA+ICByZWNpcGVzLWNvbm5lY3Rpdml0eS9jb25u
bWFuL2Nvbm5tYW5fMS4xNS5iYmFwcGVuZCB8ICAgIDUgLS0tLS0NCj4gPiAgMSBmaWxlcyBjaGFu
Z2VkLCAwIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0
IGEvcmVjaXBlcy1jb25uZWN0aXZpdHkvY29ubm1hbi9jb25ubWFuXzEuMTUuYmJhcHBlbmQNCj4g
PiBiL3JlY2lwZXMtY29ubmVjdGl2aXR5L2Nvbm5tYW4vY29ubm1hbl8xLjE1LmJiYXBwZW5kDQo+
ID4gaW5kZXggY2RhNjEyYi4uODNlNGI1MSAxMDA2NDQNCj4gPiAtLS0gYS9yZWNpcGVzLWNvbm5l
Y3Rpdml0eS9jb25ubWFuL2Nvbm5tYW5fMS4xNS5iYmFwcGVuZA0KPiA+ICsrKyBiL3JlY2lwZXMt
Y29ubmVjdGl2aXR5L2Nvbm5tYW4vY29ubm1hbl8xLjE1LmJiYXBwZW5kDQo+ID4gQEAgLTIsOCAr
MiwzIEBAIFBSSU5DIDo9ICIke0BpbnQoUFJJTkMpICsgMn0iDQo+ID4NCj4gPiAgSU5JVFNDUklQ
VF9OQU1FID0gIiINCj4gPiAgSU5JVFNDUklQVF9QQVJBTVMgPSAiIg0KPiA+IC0NCj4gPiAtZG9f
aW5zdGFsbF9hcHBlbmQoKSB7DQo+ID4gLSAgICAgICAjIFJlbW92ZSBpbml0IHNjcmlwdHMNCj4g
PiAtICAgICAgIHJtIC1yICR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZA0KPiA+IC19DQo+ID4gLS0N
Cj4gPiAxLjcuMi41DQo+IA0KPiBJbiB0aGF0IGNhc2UsIHlvdSBjYW4gZGVsZXRlIElOSVRTQ1JJ
UFRfTkFNRSBhbmQgSU5JVFNDUklQVF9QQVJBTVMgdG9vDQo+IHN1cmVseS4gIFRoZW4gYWxsIHlv
dSdyZSBsZWZ0IGlzIHRoZSBQUklOQywgc28geW91IGNhbiBkZWxldGUgdGhhdCBpZg0KPiB5b3Ug
ZG9uJ3QgY2FyZS9hcmUgdXNpbmcgdGhlIFBSIHNlcnZpY2UsIG9yIGRlbGV0ZSB0aGF0IGJiYXBw
ZW5kIHdoZW4NCj4gY29ubm1hbiAxLjE2IGlzIGludGVncmF0ZWQuDQoNCkkgYWdyZWUgdGhhdCB3
ZSBjb3VsZCBub3cgc3RhcnQgd2l0aCB0aGUgY2xlYW4tdXAgb2YgdGhlIG1ldGEtaXZpIGxheWVy
LCBnaXZlbiB0aGUgZmFjdCB0aGF0IHN5c3RlbWQgaXMgbm93IHN1cHBvcnRlZCBieSBvZS1jb3Jl
LiAgV2hpY2ggbWFrZXMgdGhpcyAuYmJhcHBlbmQgb2Jzb2xldGUuIEFuZCBzbyBhZ3JlZSB3aXRo
IFJvc3MgdG8gImRlbGV0ZSB0aGF0IGJiYXBwZW5kIHdoZW4gY29ubm1hbiAxLjE2IGlzIGludGVn
cmF0ZWQiLiAgSSBjcmVhdGVkIGEgY2FyZCBbMV0gYW5kIGFkZGVkIGl0IHRvIHRoZSAiTmV4dCBV
cCIgc3RhY2sgaW4gVHJlbGxvLCBzbyB0aGF0IHdlIGRvbid0IGZvcmdldC4NCg0KUmVnYXJkcywN
CkhvbGdlcg0KDQpbMV0gaHR0cHM6Ly90cmVsbG8uY29tL2MvYm1XcFQ2bFUNCg==

