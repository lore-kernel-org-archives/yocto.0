Return-Path: <reinette.chatre@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41CF3E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 11:50:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Sep 2012 11:50:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,455,1344236400"; d="scan'208";a="195461683"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by orsmga001.jf.intel.com with ESMTP; 20 Sep 2012 11:50:08 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.152]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.116]) with mapi id
	14.01.0355.002; Thu, 20 Sep 2012 11:50:08 -0700
From: "Chatre, Reinette" <reinette.chatre@intel.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Thread-Topic: Any hints when building boost-nativesdk?
Thread-Index: AQHNl2DAYYi5OLliiECcghhBTHaaUw==
Date: Thu, 20 Sep 2012 18:50:08 +0000
Message-ID: <1348166956.16487.26.camel@rchatre.jf.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.198.73]
MIME-Version: 1.0
Subject: Any hints when building boost-nativesdk?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 18:50:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <3C8BFCC46F1FE2448658DEC9EB75D075@intel.com>
Content-Transfer-Encoding: base64

SGksDQoNCkkgYW0gcnVubmluZyBZb2N0byAxLjIgYW5kIHdvdWxkIGxpa2UgdG8gaW5jbHVkZSB0
aGUgYm9vc3QgZGV2ZWxvcG1lbnQNCmVudmlyb25tZW50IGluIG15IFNESy4gSSBjcmVhdGVkIGEg
YmJhcHBlbmQgZm9yIHRoZSBib29zdCByZWNpcGUgdGhhdA0Kb25seSBjb250YWlucyB0d28gbGlu
ZXM6DQoNClBSID0gIiR7SU5DX1BSfS4xIg0KQkJDTEFTU0VYVEVORCArPSAibmF0aXZlc2RrIg0K
DQpXaGVuIEkgYnVpbGQgd2l0aCB0aGUgYWJvdmUgSSBnZXQgdGhlIGZvbGxvd2luZyB3YXJuaW5n
czoNCk5PVEU6IG11bHRpcGxlIHByb3ZpZGVycyBhcmUgYXZhaWxhYmxlIGZvciBydW50aW1lIGJv
b3N0LWRhdGUtdGltZSAoYm9vc3QsIGJvb3N0LW5hdGl2ZXNkaykNCk5PVEU6IGNvbnNpZGVyIGRl
ZmluaW5nIGEgUFJFRkVSUkVEX1BST1ZJREVSIGVudHJ5IHRvIG1hdGNoIGJvb3N0LWRhdGUtdGlt
ZQ0KTk9URTogbXVsdGlwbGUgcHJvdmlkZXJzIGFyZSBhdmFpbGFibGUgZm9yIHJ1bnRpbWUgYm9v
c3QtZmlsZXN5c3RlbSAoYm9vc3QsIGJvb3N0LW5hdGl2ZXNkaykNCk5PVEU6IGNvbnNpZGVyIGRl
ZmluaW5nIGEgUFJFRkVSUkVEX1BST1ZJREVSIGVudHJ5IHRvIG1hdGNoIGJvb3N0LWZpbGVzeXN0
ZW0NCk5PVEU6IG11bHRpcGxlIHByb3ZpZGVycyBhcmUgYXZhaWxhYmxlIGZvciBydW50aW1lIGJv
b3N0LWdyYXBoIChib29zdCwgYm9vc3QtbmF0aXZlc2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5p
bmcgYSBQUkVGRVJSRURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2ggYm9vc3QtZ3JhcGgNCk5PVEU6
IG11bHRpcGxlIHByb3ZpZGVycyBhcmUgYXZhaWxhYmxlIGZvciBydW50aW1lIGJvb3N0LWlvc3Ry
ZWFtcyAoYm9vc3QsIGJvb3N0LW5hdGl2ZXNkaykNCk5PVEU6IGNvbnNpZGVyIGRlZmluaW5nIGEg
UFJFRkVSUkVEX1BST1ZJREVSIGVudHJ5IHRvIG1hdGNoIGJvb3N0LWlvc3RyZWFtcw0KTk9URTog
bXVsdGlwbGUgcHJvdmlkZXJzIGFyZSBhdmFpbGFibGUgZm9yIHJ1bnRpbWUgYm9vc3QtcHJvZ3Jh
bS1vcHRpb25zIChib29zdCwgYm9vc3QtbmF0aXZlc2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5p
bmcgYSBQUkVGRVJSRURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2ggYm9vc3QtcHJvZ3JhbS1vcHRp
b25zDQpOT1RFOiBtdWx0aXBsZSBwcm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IgcnVudGltZSBi
b29zdC1yZWdleCAoYm9vc3QsIGJvb3N0LW5hdGl2ZXNkaykNCk5PVEU6IGNvbnNpZGVyIGRlZmlu
aW5nIGEgUFJFRkVSUkVEX1BST1ZJREVSIGVudHJ5IHRvIG1hdGNoIGJvb3N0LXJlZ2V4DQpOT1RF
OiBtdWx0aXBsZSBwcm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IgcnVudGltZSBib29zdC1zaWdu
YWxzIChib29zdCwgYm9vc3QtbmF0aXZlc2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5pbmcgYSBQ
UkVGRVJSRURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2ggYm9vc3Qtc2lnbmFscw0KTk9URTogbXVs
dGlwbGUgcHJvdmlkZXJzIGFyZSBhdmFpbGFibGUgZm9yIHJ1bnRpbWUgYm9vc3Qtc3lzdGVtIChi
b29zdCwgYm9vc3QtbmF0aXZlc2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5pbmcgYSBQUkVGRVJS
RURfUFJPVklERVIgZW50cnkgdG8gbWF0Y2ggYm9vc3Qtc3lzdGVtDQpOT1RFOiBtdWx0aXBsZSBw
cm92aWRlcnMgYXJlIGF2YWlsYWJsZSBmb3IgcnVudGltZSBib29zdC10ZXN0IChib29zdCwgYm9v
c3QtbmF0aXZlc2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5pbmcgYSBQUkVGRVJSRURfUFJPVklE
RVIgZW50cnkgdG8gbWF0Y2ggYm9vc3QtdGVzdA0KTk9URTogbXVsdGlwbGUgcHJvdmlkZXJzIGFy
ZSBhdmFpbGFibGUgZm9yIHJ1bnRpbWUgYm9vc3QtdGhyZWFkIChib29zdCwgYm9vc3QtbmF0aXZl
c2RrKQ0KTk9URTogY29uc2lkZXIgZGVmaW5pbmcgYSBQUkVGRVJSRURfUFJPVklERVIgZW50cnkg
dG8gbWF0Y2ggYm9vc3QtdGhyZWFkDQoNCkl0IHNlZW1zIGEgYml0IHN0cmFuZ2UgdGhhdCAiYm9v
c3QtbmF0aXZlc2RrIiBpcyBzZWVuIGFzIGEgcHJvdmlkZXIgZm9yDQphbnkgb2YgdGhvc2UgcnVu
dGltZSBjb21wb25lbnRzLiBBbnkgaGludHMgd2hhdCBJIHNob3VsZCBjaGFuZ2UgdG8gYnVpbGQN
CnRoaW5ncyBjb3JyZWN0bHk/DQoNClRoYW5rIHlvdSB2ZXJ5IG11Y2gNCg0KUmVpbmV0dGUNCiAN
Cg==

