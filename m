Return-Path: <juro.bystricky@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FA83E0070F; Tue,  1 Nov 2016 15:53:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A579E00509
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 15:52:58 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP; 01 Nov 2016 15:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,433,1473145200"; d="scan'208";a="26669591"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga004.jf.intel.com with ESMTP; 01 Nov 2016 15:52:57 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.58]) by
	ORSMSX104.amr.corp.intel.com ([169.254.4.86]) with mapi id
	14.03.0248.002; Tue, 1 Nov 2016 15:52:57 -0700
From: "Bystricky, Juro" <juro.bystricky@intel.com>
To: "Hatle, Mark G (Wind River)" <mark.hatle@windriver.com>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: meta-mingw
Thread-Index: AQHSNJEPAJjdlflJG0iTAwX2gSlDNaDEu38g
Date: Tue, 1 Nov 2016 22:52:56 +0000
Message-ID: <6E51916E4A1F32428260031F4C7CD2B6118ABB36@ORSMSX112.amr.corp.intel.com>
References: <0b4748f5-05bb-57c9-402b-64ca67a9bd73@windriver.com>
In-Reply-To: <0b4748f5-05bb-57c9-402b-64ca67a9bd73@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: meta-mingw
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
X-List-Received-Date: Tue, 01 Nov 2016 22:53:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBzZW50IGEgc2V0IG9mIHBhdGNoZXMgYSB3aGlsZSBhZ28gZm9yIG1ldGEtbWluZ3cvbWFzdGVy
IGJyYW5jaC4NCiJrcm9nb3RoIiBhbmQgIm1vcnR5L21hc3RlciIgbmVlZCBzZXBhcmF0ZSBicmFu
Y2hlcy4NCg0KImtyb2dvdGgiIGJyYW5jaCBleGlzdHMsIGJ1dCBJIHRoaW5rIG1vcnR5IGJyYW5j
aCBuZWVkcyB0byBiZSBjcmVhdGVkIHlldC4NCg0KDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj4gRnJvbTogTWFyayBIYXRsZSBbbWFpbHRvOm1hcmsuaGF0bGVAd2luZHJpdmVyLmNv
bV0NCj4gU2VudDogVHVlc2RheSwgTm92ZW1iZXIgMSwgMjAxNiAzOjQxIFBNDQo+IFRvOiBZb2N0
byBQcm9qZWN0IDx5b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KPiBDYzogQnlzdHJpY2t5LCBKdXJv
IDxqdXJvLmJ5c3RyaWNreUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IG1ldGEtbWluZ3cNCj4gDQo+
IEkgd2FzIHRyeWluZyB0byBidWlsZCBtZXRhLW1pbmd3IChtYXN0ZXIpIHdpdGggb2UtY29yZSAo
bW9ydHkpLiAgSSdtDQo+IGdldHRpbmcgYQ0KPiBmYWlsdXJlOg0KPiANCj4gfCBFUlJPUjogRnVu
Y3Rpb24gZmFpbGVkOiBkb19jb25maWd1cmUgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQNCj4gLi4u
L25hdGl2ZXNkay1taW5ndy13NjQtcnVudGltZS8zLjEuMC1yMC90ZW1wL2xvZy5kb19jb25maWd1
cmUuMjA4ODE1KQ0KPiBFUlJPUjogVGFzaw0KPiAoLy4uLi9vZS1jb3JlL21ldGEtbWluZ3cvcmVj
aXBlcy1kZXZ0b29scy9taW5ndy13NjQvbmF0aXZlc2RrLW1pbmd3LXc2NC0NCj4gcnVudGltZV8z
LjEuMC5iYjpkb19jb25maWd1cmUpDQo+IGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCj4gDQo+
IFRoZSBtb3JlIGRldGFpbGVkIGxvZyBzaG93cyB0aGF0IGl0IHdhcyB1bmFibGUgdG8gZmluZCB0
aGUgY29tcGlsZXIuDQo+IA0KPiBBbnkgc3VnZ2VzdGlvbnMgZnJvbSBhbnlvbmU/DQo=

