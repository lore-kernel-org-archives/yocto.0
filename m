Return-Path: <henry.bruce@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B995E00546; Mon, 13 Mar 2017 10:51:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2092E004D2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 10:51:34 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga105.jf.intel.com with ESMTP; 13 Mar 2017 10:51:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,160,1486454400"; d="scan'208";a="943806813"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by orsmga003.jf.intel.com with ESMTP; 13 Mar 2017 10:51:34 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 13 Mar 2017 10:51:34 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.118]) by
	ORSMSX115.amr.corp.intel.com ([169.254.4.108]) with mapi id
	14.03.0248.002; Mon, 13 Mar 2017 10:51:32 -0700
From: "Bruce, Henry" <henry.bruce@intel.com>
To: "openembedded-architecture@lists.openembedded.org"
	<openembedded-architecture@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Openembedded-architecture] Proposal: dealing with
	language-specific build tools/dependency management tools
Thread-Index: AQHSmaVAZF4vkDqMvEqCGfz5RS/wiaGOqHeAgAAFKYCAAAKvgIAAA1WAgATTSoA=
Date: Mon, 13 Mar 2017 17:51:31 +0000
Message-ID: <1489427487.16742.49.camel@intel.com>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<CAP9ODKogXP8vO7CCmxs2c-TiRmZZhOKyN5M=ffZV7U2Qrjw1hQ@mail.gmail.com>
	<b80a93fd-8fa3-5b27-0ffb-ab9fd8d04c12@linux.intel.com>
	<CAP9ODKpGer=sF2QF8cCPh68OybqJxMdR5a_x9aXhw=htNWKOiw@mail.gmail.com>
	<2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
In-Reply-To: <2ce1386b-e63b-4aea-0685-7abf949de115@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.68]
MIME-Version: 1.0
Subject: Re: [Openembedded-architecture] Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Mon, 13 Mar 2017 17:51:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <B30A040A0AC8BE4DB6218ED37D64C93F@intel.com>
Content-Transfer-Encoding: base64

T24gRnJpLCAyMDE3LTAzLTEwIGF0IDE3OjEwICswMjAwLCBBbGV4YW5kZXIgS2FuYXZpbiB3cm90
ZToNCg0KVGhhbmtzIGZvciByYWlzaW5nIHRoaXMgdG9waWMuIFRoZSBwcm9ibGVtcyB3ZSBoaXQg
aW4gYWRkaW5nIG5vZGUuanMNCnN1cHBvcnQgY2xlYXJseSBzaG93cyB3ZSB3b3VsZCBiZW5lZml0
IGZyb20gYSBjb21tb24gYXBwcm9hY2ggdG8NCnN1cHBvcnRpbmcgbGFuZ3VhZ2VzIHdpdGggdGhl
aXIgb3duIGFuZCBydW50aW1lIGFuZCBwYWNrYWdpbmcuDQoNCj4gDQo+IG5wbSBmZXRjaGVyIGZv
ciBpbnN0YW5jZSB3YXMgYSBuaWdodG1hcmUgdG8gd3JpdGUsIGZyb20gd2hhdCBJJ3ZlDQo+IGhl
YXJkOg0KPiANCj4gaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kvcG9r
eS90cmVlL2JpdGJha2UvbGliL2JiL2ZlDQo+IHRjaDIvbnBtLnB5DQoNCkFsdGhvdWdoIEkgZGlk
bid0IHdyaXRlIHRoZSBjb2RlIEkgd29ya2VkIHdpdGggUGF1bCBFZ2dsZXRvbiAod2hvIG5vdw0K
b3ducyBpdCkgb24gaW1wcm92aW5nIGl0LCBhbmQgeWVzIGl0IHdhcyBoYXJkIHRvIHdyaXRlLiBB
bmQgaXQgaXMNCmJlY29taW5nIGluY3JlYXNpbmdseSBjb21wbGV4IGFzIHdlIGhpdCBjb3JuZXIg
Y2FzZXMsIGluZGljYXRpbmcgdGhhdA0KdGhlIGN1cnJlbnQgYXJjaGl0ZWN0dXJlIGlzIG5vdCBp
ZGVhbC4NCg0KPiA+ID4gSSB3YW50IHRvIHVzZSBleGlzdGluZyB0b29scyAobGlrZSAnbnBtIGlu
c3RhbGwnKSBmb3IgZ2V0dGluZyB0aGUNCj4gPiA+IHN0dWZmIGZyb20gdGhlIG5ldHdvcmsgLSB3
ZSBkb24ndCByZWFsbHkgbmVlZCBmdWxsIHJlY2lwZXMsIHdlDQo+ID4gPiBqdXN0IHdhbnQgdG8g
a25vdyB0aGUgbGljZW5zZXMgb2YgdGhlIGRlcGVuZGVuY2llcywgYW5kLCBpZg0KPiA+ID4gcG9z
c2libGUsIGxvY2sgdGhlbSBkb3duIHRvIGEgc3BlY2lmaWMgdmVyc2lvbi4NCg0KSSBhZ3JlZSB0
aGF0IGxldmVyYWdpbmcgdGhlIGxpa2VzIG9mICducG0gaW5zdGFsbCcgd2lsbCBtYWtlIGxpZmUN
CnNpbXBsZXIgYnV0IHRoZSBwcm9ibGVtIHdpdGggdGhlc2Ugb3BlcmF0aW9ucyBpcyB0aGF0IHRo
ZXkgc3BhbiBhIHJhbmdlDQpvZiBiaXRiYWtlIHRhc2tzLiBUaGUgcmVhc29uIHdlIHdyb3RlIGFu
IG5wbSBmZXRjaGVyIHdhcyB0byBsaW1pdA0KbmV0d29yayBhY2Nlc3MgdG8gdGhlIGZldGNoIHRh
c2suIFRoaXMgd29ya3MgaW4gY29uanVuY3Rpb24gd2l0aCBhbiBucG0NCnBhdGNoIHRoYXQgZW5h
YmxlcyB0aGUgaW5zdGFsbCBjb21tYW5kIHRvIHJ1biBpbiB0aGUgY29tcGlsZSB0YXNrDQp3aXRo
b3V0IGFjY2Vzc2luZyB0aGUgcmVnaXN0cnkuIEFyZSB5b3UgYXJlIHByb3Bvc2luZyB0aGF0IHdl
IGFsbG93DQpuZXR3b3JrIGFjY2VzcyBvdXRzaWRlIG9mIHRoZSBmZXRjaCB0YXNrP8KgDQoNCkkg
bG9vayBmb3J3YXJkIHRvIFBhdWwncyBjb21tZW50cy4NCg0KDQpIZW5yeQ0K

