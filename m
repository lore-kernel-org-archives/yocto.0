Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F2FDE00C9C; Fri, 16 Aug 2019 06:46:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6C1EE00B8E
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 06:46:45 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Aug 2019 06:46:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,393,1559545200"; d="scan'208";a="184922731"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 06:46:43 -0700
Received: from pgsmsx101.gar.corp.intel.com ([169.254.1.232]) by
	KMSMSX155.gar.corp.intel.com ([169.254.15.65]) with mapi id
	14.03.0439.000; Fri, 16 Aug 2019 21:46:42 +0800
From: "Mittal, Anuj" <anuj.mittal@intel.com>
To: "moritz.porst@gmx.de" <moritz.porst@gmx.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Trouble using initramfs
Thread-Index: AQHVU7ehn1rkazCIxkWZBLRquYSYeqb8UcCAgACZXACAAFlpgA==
Date: Fri, 16 Aug 2019 13:46:41 +0000
Message-ID: <9d85a0a41cc56931cd412764dc65055c49dec178.camel@intel.com>
References: <e30590c0-3122-15f6-013b-2e6c565c89c9@bry.com.br>
	<96faecc73afeba5146e926dc43b7bbcc7ee12947.camel@intel.com>
	<e39e4c98-46d7-773a-285f-e34ddd451f01@gmx.de>
In-Reply-To: <e39e4c98-46d7-773a-285f-e34ddd451f01@gmx.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.255.156.88]
MIME-Version: 1.0
Subject: Re: Trouble using initramfs
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
X-List-Received-Date: Fri, 16 Aug 2019 13:46:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D49DFB260C9C76438128C3D3A38590C1@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE5LTA4LTE2IGF0IDEwOjI2ICswMjAwLCBNb3JpdHogUG9yc3Qgd3JvdGU6DQo+
ID4gV2hpY2ggYnJhbmNoIGFyZSB5b3UgdXNpbmc/IENhbiB5b3UgdHJ5IHRoZSBsYXRlc3QgbWFz
dGVyIHdpdGggd2ljPw0KPiA+IFRoZXJlIHdhcyBhIGZpeCB0byB3aWMgdG8gYWxsb3cgY29weWlu
ZyB0aGUga2VybmVsIGltYWdlIHdpdGgNCj4gPiBidW5kbGVkDQo+ID4gaW5pdHJhbWZzIHRvIGJv
b3QgcGFydGl0aW9uIGluc3RlYWQgb2YgdGhlIG9uZSB3aXRob3V0IHdoZW4NCj4gPiBJTklUUkFN
RlNfSU1BR0VfQlVORExFIGlzIDEuDQo+ID4gDQo+ID4gICAgIA0KPiANCj4gICAgIEkgZGlkbid0
IGFzayB0aGUgb3JpZ2luYWwgcXVlc3Rpb24gYnV0IGhhdmUgdGhlIHNhbWUNCj4gICAgICAgcHJv
YmxlbS4gSSBoYXZlIHRoZSB0aHVkIGJyYW5jaCBjaGVja2VkIG91dCwgYnV0IEkgY291bGRuJ3QN
Cj4gZmluZA0KPiAgICAgICB0aGF0IGZpeCBvbiBnb29nbGUuIENhbiB5b3UgZWxhYm9yYXRlIG9u
IHRoaXMgPyANCj4gDQo+ICAgICANCj4gPiAgICAgICANCg0KUGxlYXNlIHNlZToNCg0KaHR0cHM6
Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL3Bva3kvY29tbWl0Lz9pZD1iNjk3
YWJhNjFlNTViOTNhYTFlYmY1OWEzNjlkMTgyYzdhMTRjMzEzDQoNClRoYW5rcywNCg0KQW51ag0K

