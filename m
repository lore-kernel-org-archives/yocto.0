Return-Path: <Matthias.Schoepfer@ithinx.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CFDDE00C35; Tue, 11 Jul 2017 02:43:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,T_HK_NAME_DR
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000] *  0.0 T_HK_NAME_DR T_HK_NAME_DR
Received: from mx.kellendonk.de (mx.kellendonk.de [213.168.66.147])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0531BE00B31
	for <yocto@yoctoproject.org>; Tue, 11 Jul 2017 02:43:13 -0700 (PDT)
From: =?utf-8?B?RHIuIE1hdHRoaWFzIFNjaMO2cGZlcg==?=
	<Matthias.Schoepfer@ithinx.io>
To: Khem Raj <raj.khem@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] License missing coreutils when creating
	/usr/share/licenses and bbappend
Thread-Index: AdL5mE78aKVdcmwYTKeFJQ+XwmQWMg==
Date: Tue, 11 Jul 2017 09:43:08 +0000
Message-ID: <63EFF8D6B0566D4E82DEBC3D979C491383D59F54@SW-VM-02.kelle.grp>
References: <63EFF8D6B0566D4E82DEBC3D979C491383D59D8A@SW-VM-02.kelle.grp>
	<67d4a2ee-6ca3-23cd-ff11-d4a05e9cb205@gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.89]
x-c2processedorg: 75376498-2711-4ea7-8653-9a4c2c5b248f
MIME-Version: 1.0
Subject: Re: License missing coreutils when creating /usr/share/licenses and bbappend
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
X-List-Received-Date: Tue, 11 Jul 2017 09:43:17 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgS2hlbSwNCg0KDQoNCmkuQS4gRHIuLUluZy4gTWF0dGhpYXMgIFNjaMO2cGZlciAgfCBpdGhp
bnggR21iSCB8ICBTb2Z0d2FyZSBFbmdpbmVlcg0KUGhvbmU6ICArNDkgKDIyMSkgOTk1ODktMzMy
IHwgRmF4OiArNDkgKDIyMSkgOTkgNTg5LTE5OSAgfCBFLU1haWw6ICBNYXR0aGlhcy5TY2hvZXBm
ZXJAaXRoaW54LmlvDQoNCg0KT24gMDcvMTAvMjAxNyAwNzoyNyBQTSwgS2hlbSBSYWogd3JvdGU6
DQo+IE9uIDcvMTAvMTcgOToxOSBBTSwgRHIuIE1hdHRoaWFzIFNjaMO2cGZlciB3cm90ZToNCj4+
IEhpIQ0KPj4NCj4+IFdlIGFyZSB1c2luZyB5b2N0byAvIG9wZW5lbWJlZGRlZCAocHlybykuIEkg
dXNlOg0KPj4NCj4+IENPUFlfTElDX01BTklGRVNUID0gIjEiDQo+PiBDT1BZX0xJQ19ESVJTID0g
IjEiDQo+PiBMSUNFTlNFX0NSRUFURV9QQUNLQUdFID0gIjEiDQo+Pg0KPj4gdG8gZ2VuZXJhdGUg
YSAvdXNyL3NoYXJlL2xpY2Vuc2VzIGFuZCAvdXNyL3NoYXJlL2NvbW1vbi1saWNlbnNlcw0KPj4g
cmVzcGVjdGl2ZWx5LiBCdXQgdW5mb3J0dW5hdGVseSwgdGhlIGNvcmV1dGlscyBzdWJkaXJlY3Rv
cnkgaXMgZW1wdHkuDQo+Pg0KPj4gSSB1c2UgYSBiYmFwcGVuZCBmaWxlIGNvbnRhaW5pbmcgb25s
eToNCj4+DQo+PiBBTFRFUk5BVElWRV9QUklPUklUWSA9ICI0MCINCj4+IEFMVEVSTkFUSVZFX1BS
SU9SSVRZW29kXSA9ICIxMDAiDQo+Pg0KPj4gc3VjaCB0aGF0IG9ubHkgb2QgZ2V0cyBpbnN0YWxs
ZWQgKHJlbWFpbmluZyBmdW5jdGlvbmFsaXR5IGJ5IGJ1c3lib3gpLg0KPj4NCj4+IEFueSBoaW50
cyBvbiBob3cgdG8gZ2V0IHRoZSBsaWNlbnNlIGluZm8gaW4gdGhlcmUgYXMgd2VsbD8hDQo+IHlv
dSBtaWdodCBoYXZlIHRvIGNoZWNrIGlmIG9kIGlzIGdldHRpbmcgaW5zdGFsbGVkIGZyb20gY29y
ZXV0aWxzIG9yDQo+IHNvbWUgb3RoZXIgcGFja2FnZSBpcyBwcm92aWRpbmcgaXQuDQoNCkkgY2Fu
IGNvbmZpcm0gdGhhdCBkZWZpbml0ZWx5IG9kLmNvcmV1dGlscyBpcyBpbnN0YWxsZWQuIFRoYXQg
d29ya3MuIEJ1dA0Kc3RpbGwsIExpY2Vuc2UgaXMgbWlzc2luZyA6KA0KDQpSZWdhcmRzLA0KDQog
ICAgTWF0dGhpYXMNCg==


