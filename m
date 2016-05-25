Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5A52E00D78; Wed, 25 May 2016 14:12:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA85FE00D5C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 14:12:25 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 25 May 2016 14:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,365,1459839600"; d="scan'208";a="814822607"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga003.jf.intel.com with ESMTP; 25 May 2016 14:12:25 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.84]) by
	ORSMSX110.amr.corp.intel.com ([169.254.10.165]) with mapi id
	14.03.0248.002; Wed, 25 May 2016 14:12:24 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "randy.e.witt@linux.intel.com" <randy.e.witt@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-autobuilder][PATCH] GetLayerVersion.py: set new
	layer version only if cmd was sucessful and not already set
Thread-Index: AQHRtsQBF/CeArbg3Uedk3SA6rkf/Z/KmaeAgAACbQA=
Date: Wed, 25 May 2016 21:12:24 +0000
Message-ID: <1464210744.2802.9.camel@intel.com>
References: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
	<c14a55a9-6398-8fb5-4aaf-9ef611c2d376@linux.intel.com>
In-Reply-To: <c14a55a9-6398-8fb5-4aaf-9ef611c2d376@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.158]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] GetLayerVersion.py: set new layer version only if cmd was sucessful and not already set
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
X-List-Received-Date: Wed, 25 May 2016 21:12:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A158637C88E5BE4EBCAD181AE6D20C27@intel.com>
Content-Transfer-Encoding: base64

T24gV2VkLCAyMDE2LTA1LTI1IGF0IDE0OjAzIC0wNzAwLCBSYW5keSBXaXR0IHdyb3RlOg0KPiBP
biAwNS8yNS8yMDE2IDAxOjI4IFBNLCBCaWxsIFJhbmRsZSB3cm90ZToNCj4gPiANCj4gPiBGaXhl
ZCBhIGJ1ZyB3aGVyZSBHZXRMYXllclZlcnNpb24gc2V0IHRoZSBsYXllcnZlcnNpb24gdG8gLTEg
d2hlbiBhDQo+ID4gbWV0YS1wb2t5IGxheWVyLmNvbmYgd2FzIG5vdCBmb3VuZC4NCj4gPiANCj4g
PiBTaWduZWQtb2ZmLWJ5OiBCaWxsIFJhbmRsZSA8d2lsbGlhbS5jLnJhbmRsZUBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gwqAuLi4vYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9HZXRMYXllclZlcnNp
b24ucHnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHwgMTUgKysrKysrLS0tLQ0KPiA+IC0tLS0t
DQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0K
PiA+IA0KPiA+IGRpZmYgLS1naXQgYS9saWIvcHl0aG9uMi43L3NpdGUtDQo+ID4gcGFja2FnZXMv
YXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9HZXRMYXllclZlcnNpb24ucHkgYi9saWIvcHl0aG9uMi43
L3NpdGUtDQo+ID4gcGFja2FnZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9HZXRMYXllclZlcnNp
b24ucHkNCj4gPiBpbmRleCBkZTVjMjAzLi4zZjE2N2U4IDEwMDY0NA0KPiA+IC0tLSBhL2xpYi9w
eXRob24yLjcvc2l0ZS1wYWNrYWdlcy9hdXRvYnVpbGRlci9idWlsZHN0ZXBzL0dldExheWVyVmVy
c2lvbi5weQ0KPiA+ICsrKyBiL2xpYi9weXRob24yLjcvc2l0ZS1wYWNrYWdlcy9hdXRvYnVpbGRl
ci9idWlsZHN0ZXBzL0dldExheWVyVmVyc2lvbi5weQ0KPiA+IEBAIC00NCwxNSArNDQsMTIgQEAg
Y2xhc3MgR2V0TGF5ZXJWZXJzaW9uKFNoZWxsQ29tbWFuZCk6DQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgU2hlbGxDb21tYW5kLnN0YXJ0KHNlbGYpDQo+ID4gDQo+ID4gwqDCoMKgwqDCoGRlZiBjb21t
YW5kQ29tcGxldGUoc2VsZiwgY21kKToNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoHJlc3VsdCA9IGNt
ZC5sb2dzWydzdGRpbyddLmdldFRleHQoKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgbGF5ZXJ2PSBy
ZXN1bHQucmVwbGFjZSgiTEFZRVJWRVJTSU9OXyIgKyBzZWxmLmxheWVyZmlsZSwNCj4gPiAiIiku
cmVwbGFjZSgiPSIsIiIpLnJlcGxhY2UoJyAnLCcnKS5yZXBsYWNlKCciJywnJykucmVwbGFjZSgi
JyIsJycpLnN0cmlwKCkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoGlmIGNtZC5kaWRGYWlsKCk6DQo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsYXllcnYgPSAiLTEiDQo+ID4gLcKgwqDCoMKgwqDC
oMKgwqBpZiBzZWxmLmdldFByb3BlcnR5KCdsYXllcnZlcnNpb25fJyArIHNlbGYubGF5ZXJmaWxl
KToNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VsZi5maW5pc2hlZChTVUNDRVNTKQ0K
PiA+IC3CoMKgwqDCoMKgwqDCoMKgZWxzZToNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
c2VsZi5zZXRQcm9wZXJ0eSgnbGF5ZXJ2ZXJzaW9uXycgKyBzZWxmLmxheWVyZmlsZSwgbGF5ZXJ2
LA0KPiA+ICJTZXR0aW5nIExheWVyIFZlcnNpb24iKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBzZWxmLmZpbmlzaGVkKFNVQ0NFU1MpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqBpZiBub3Qg
Y21kLmRpZEZhaWwoKToNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmVzdWx0ID0gY21k
LmxvZ3NbJ3N0ZGlvJ10uZ2V0VGV4dCgpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxh
eWVydiA9IHJlc3VsdC5yZXBsYWNlKCJMQVlFUlZFUlNJT05fIiArIHNlbGYubGF5ZXJmaWxlLA0K
PiA+ICIiKS5yZXBsYWNlKCI9IiwiIikucmVwbGFjZSgnICcsJycpLnJlcGxhY2UoJyInLCcnKS5y
ZXBsYWNlKCInIiwnJykuc3RyaXAoKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiBu
b3Qgc2VsZi5nZXRQcm9wZXJ0eSgnbGF5ZXJ2ZXJzaW9uXycgKyBzZWxmLmxheWVyZmlsZSk6DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2VsZi5zZXRQcm9wZXJ0eSgnbGF5
ZXJ2ZXJzaW9uXycgKyBzZWxmLmxheWVyZmlsZSwgbGF5ZXJ2LA0KPiA+ICJTZXR0aW5nIExheWVy
IFZlcnNpb24iKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgc2VsZi5maW5pc2hlZChTVUNDRVNTKQ0K
PiBXaGF0IGhhcHBlbnMgaWYgdGhlIGNvbW1hbmQgYWN0dWFsbHkgZmFpbGVkPw0KDQpJdCBqdXN0
IHNldHMgU1VDQ0VTUyBhbmQgY2FycmllcyBvbi4gV2hhdCdzIGdvaW5nIG9uIGlzIHRoYXQgdGhl
IGNvZGUgdGhhdCBjYWxscw0KdGhpcyBpcyBpdGVyYXRpbmcgb3ZlciBkaWZmZXJlbnQgbGF5ZXJz
LCBzdGFydGluZyB3aXRoIG1ldGEtcG9reSwgdGhlbiBtZXRhLQ0KeW9jdG8uIFdoZW4gYnVpbGRp
bmcgYSB2ZXJzaW9uIHByaW9yIHRvIHRoZSBtZXRhLXlvY3RvIC0+IG1ldGEtcG9reSB0cmFuc2l0
aW9uLA0KaXQgd2lsbCBmYWlsIHRvIGZpbmQgbWV0YS1wb2t5L2NvbmYvbGF5ZXIuY29uZiwgYnV0
IGl0J3Mgb2ssIGJlY2F1c2UgaXQgd2lsbA0KbmV4dCB0cnkgbWV0YS15b2N0by9jb25mL2xheWVy
LmNvbmYgYW5kIHN1Y2NlZWQuDQoNCldoYXQgd2FzIGdvaW5nIG9uIGJlZm9yZSBpcyB0aGF0IG9u
IGZhaWx1cmUsIGlmIHRoZSBsYXllcnZlcnNpb24gd2FzIG5vdA0KcHJldmlvdWlzbHkgc2V0LCBp
dCB3b3VsZCBnZXQgc2V0IHRvIC0xIG9uIHRoYXQgZmFpbHVyZSBhbmQgbm90IGdldCBvdmVycmlk
ZW4gYnkNCnRoZSBjb3JyZWN0IHZlcnNpb24gaW4gbWV0YS15b2N0by9jb25mLg0KDQrCoCDCoCAt
QmlsbA==

