Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54FF2E00944; Fri, 16 Mar 2018 14:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F690E0073D
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 14:22:23 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1412.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Fri, 16 Mar 2018 21:22:21 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Fri, 16 Mar 2018 14:22:20 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Fri, 16 Mar 2018 14:22:20 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to get mysqy/mariadb to start on powerup.
Thread-Index: AQHTvJmRjybrgAvccUyN6MZA1cayV6PSO8aA//+OKnaAATjiEIAAqgeA//+fN1CAAIfyAP//i2Zg
Date: Fri, 16 Mar 2018 21:22:20 +0000
Message-ID: <12270a1aeed348d7bdabbbeca64fb6ef@sakuraus.com>
References: <454710ed7f6d42279136acc70c35cf74@sakuraus.com>
	<CAMKF1sp6eeDj8Ny_6G9qiy-uW8spcm+cNrSH-az4+7Z2MpPXbQ@mail.gmail.com>
	<937e0a406a4443b0813052bcc5c0a006@sakuraus.com>
	<e323d1d04c544a93a562c54ebdf23fde@sakuraus.com>
	<CAMKF1sqA+1acjxDK235N2NARXYs=FF-DEQpO8ZnpaCqzjCs=iA@mail.gmail.com>
	<27471f70f26541d8add86faeec8509c1@sakuraus.com>
	<CAMKF1sothqiEPDCow7K+8sqFCEgMrhdEyXuJqEBNToyrMOqeBQ@mail.gmail.com>
In-Reply-To: <CAMKF1sothqiEPDCow7K+8sqFCEgMrhdEyXuJqEBNToyrMOqeBQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.3]
MIME-Version: 1.0
X-BESS-ID: 1521235341-452060-14490-107247-1
X-BESS-VER: 2018.3.1-r1803090017
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.191128
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get mysqy/mariadb to start on powerup.
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
X-List-Received-Date: Fri, 16 Mar 2018 21:22:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJh
ai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxNiwgMjAxOCAwMjoxNiBQ
TQ0KPiBUbzogR3JlZyBXaWxzb24tTGluZGJlcmcgPEdXaWxzb25Ac2FrdXJhdXMuY29tPg0KPiBD
YzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBIb3cgdG8g
Z2V0IG15c3F5L21hcmlhZGIgdG8gc3RhcnQgb24gcG93ZXJ1cC4NCj4gDQo+IE9uIEZyaSwgTWFy
IDE2LCAyMDE4IGF0IDI6MTAgUE0sIEdyZWcgV2lsc29uLUxpbmRiZXJnIDxHV2lsc29uQHNha3Vy
YXVzLmNvbT4NCj4gd3JvdGU6DQo+ID4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+
IEZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0KPiA+PiBTZW50OiBG
cmlkYXksIE1hcmNoIDE2LCAyMDE4IDExOjU1IEFNDQo+ID4+IFRvOiBHcmVnIFdpbHNvbi1MaW5k
YmVyZyA8R1dpbHNvbkBzYWt1cmF1cy5jb20+DQo+ID4+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnDQo+ID4+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIEhvdyB0byBnZXQgbXlzcXkvbWFyaWFkYiB0
byBzdGFydCBvbiBwb3dlcnVwLg0KPiA+Pg0KLi4uLg0KLi4uLg0KLi4uLg0KPiA+DQo+ID4gSSd2
ZSBydW4gam91cm5hbGN0bCBvbiBib3RoIGluc3RhbGxfZGIuc2VydmljZSAmIG15c3FsZC5zZXJ2
aWNlLiBteXNxbGQgY29tZXMNCj4gYmFjayB3aXRoIG5vIGVudHJpZXMuIGluc3RhbGxfZGIgY29t
ZXMgYmFjayB3aXRoIGEgbGluZSBlYWNoIGZvciBTdGFydGluZyBhbmQgU3RhcnRlZA0KPiBJbnN0
YWxsIE15U1FMIENvbW11bml0eSBTZXJ2ZXIgRGF0YWJhc2UuDQo+ID4NCj4gPiBzeXN0ZW1jdGwg
c3RhdHVzIHJldHVybnMgZXhpdGVkIHN1Y2Nlc3MgZm9yIGluc3RhbGxfZGIsIGZvciBteXNxbGQg
aXQgcmVwb3J0cyBBY3RpdmU6DQo+IGluYWN0aXZlIChkZWFkKS4NCj4gPg0KPiA+IHN5c3RlbWN0
bCBsaXN0LXVuaXQtZmlsZXMgc2hvd3MgaW5zdGFsbF9kYiBhcyBlbmFibGVkIGFuZCBteXNxbGQg
YXMgZGlzYWJsZWQuDQo+ID4NCj4gPiBJIHdhcyBhYmxlIHRvIHN0YXJ0IG15c3FsZCB3aXRoIHN5
c3RlbWN0bCBzdGFydCBhbmQgaXQgc2hvd2VkIHJ1bm5pbmcgd2l0aA0KPiBzeXN0ZW1jdGwgc3Rh
dHVzICYgcHMuIEJ1dCBpdCBkaWQgbm90IHJlc3RhcnQgYWZ0ZXIgYSByZWJvb3QuDQo+IA0KPiBj
YW4geW91IHRyeQ0KPiANCj4gc3lzdGVtY3RsIGVuYWJsZSBteXNxbGQNCj4gDQo+IHRoaXMgc2hv
dWxkIGVuYWJsZSBpdCB0byBzdGFydCBvbiBib290Lg0KDQpUaGF0IGRpZCBjcmVhdGUgYSBsaW5r
IGFuZCBpdCBzdGFydGVkIG9uIHJlYm9vdC4NCg0KSSB0YWtlIGl0IHRoYXQgc29tZXRoaW5nIGlz
IGhhcHBlbmluZyBpbiBpbnN0YWxsX2RiIGFuZCBhbW9uZyBvdGhlciB0aGluZ3MgdGhhdCBsaW5r
IGlzIG5vdCBnZXR0aW5nIGNyZWF0ZWQ/DQoNCkdyZWcNCj4gDQo+ID4NCj4gPiBJZiB0aGVyZSBp
cyBhbnl0aGluZyBlbHNlIHRoYXQgSSBjYW4gZG8gdG8gaGVscCB1bmRlcnN0YW5kIHdoYXQgaXMg
Z29pbmcgb24gcGxlYXNlIGxldA0KPiBtZSBrbm93Lg0KPiA+DQo+ID4gR3JlZw0K

