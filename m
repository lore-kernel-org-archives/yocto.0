Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00264E00546; Fri, 10 Feb 2017 07:13:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743D3E004D8
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 07:13:19 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP; 10 Feb 2017 07:13:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,141,1484035200"; d="scan'208";a="819346641"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by FMSMGA003.fm.intel.com with ESMTP; 10 Feb 2017 07:13:18 -0800
Received: from orsmsx113.amr.corp.intel.com ([169.254.9.27]) by
	ORSMSX108.amr.corp.intel.com ([169.254.2.88]) with mapi id
	14.03.0248.002; Fri, 10 Feb 2017 07:13:18 -0800
From: "Wold, Saul" <saul.wold@intel.com>
To: "ryan.hsu@axiomtek.com.tw" <ryan.hsu@axiomtek.com.tw>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] intel cpu apollo lake support qusetion
Thread-Index: AQHSg7A09jYrHM2AvEuFFfvcqsUioQ==
Date: Fri, 10 Feb 2017 15:13:17 +0000
Message-ID: <1486739595.26702.146.camel@intel.com>
References: <B45C53F1AF66314F8172C6526FC10626056A105F@axiomtekex.axiomtek.com.tw>
In-Reply-To: <B45C53F1AF66314F8172C6526FC10626056A105F@axiomtekex.axiomtek.com.tw>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.83.13]
MIME-Version: 1.0
Subject: Re: intel cpu apollo lake support qusetion
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
X-List-Received-Date: Fri, 10 Feb 2017 15:13:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A99399D418F0242B64F448EA71181CD@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE3LTAyLTEwIGF0IDE3OjQ0ICswODAwLCByeWFuLmhzdSjoqLHmlofmlL8pIHdy
b3RlOg0KPiBIaQ0KPiDCoA0KPiBEb2VzIFlvY3RvIDIuMiBvciBvdGhlciByZWxlYXNlIHZlcnNp
b24gc3VwcG9ydCBpbnRlbCBBcG9sbG8gbGFrZSA/DQo+IMKgDQpZb2N0byBQcm9qZWN0IDIuMiBh
bG9uZyB3aXRoIHRoZSBtZXRhLWludGVsIGRvZXMgc3VwcG9ydCBBcG9sbG8gTGFrZQ0Kd2l0aCB0
aGUgNC44IGtlcm5lbC4gwqBGb3IgdGhlIHVwY29taW5nIDIuMyByZWxlYXNlIHRoZSA0Ljkga2Vy
bmVsIGhhcw0KYWRkaXRpb25hbCBzdXBwb3J0LsKgDQoNClRoZSBtZXRhLWludGVsIGxheWVyIChm
b3IgMi4zKSB3aWxsIGFsc28gaGF2ZSBhIG5ldyBsaW51eC1pbnRlbC00LjkNCmtlcm5lbCB3aXRo
IGZ1bGwgc3VwcG9ydC4NCg0KU2F1IQ0KTWV0YS1JbnRlbCBNYWludGFpbmVyDQoNCj4gQmVzdCBS
ZWdhcmRzLA0KPiDCoA0KPiBSeWFuIEhzdQ0KPiBBeGlvbXRlayBDby4sIEx0ZC4NCj4gU29mdHdh
cmUgYW5kIFNvbHV0aW9uIERpdmlzaW9uDQo+IFRFTDogKzg4Ni0yLTI5MTctNDU1MCBleHQuNzY5
NQ0KPiB3d3cuYXhpb210ZWsuY29tDQo+IA0KPiBBIE1pbGVzdG9uZSBvZiBMZWFkZXJzaGlwOiBB
eGlvbXRlaw0KPiBUdXJucyAyNQ0KPiDCoA==

