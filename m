Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BCB6E00796
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2013 06:14:19 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 12 Dec 2013 06:14:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,878,1378882800"; d="scan'208";a="448957110"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by fmsmga002.fm.intel.com with ESMTP; 12 Dec 2013 06:14:18 -0800
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 12 Dec 2013 06:14:18 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.2]) with mapi id
	14.03.0123.003; Thu, 12 Dec 2013 06:14:18 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: =?utf-8?B?RGF2aWQgTnlzdHLDtm0=?= <david.c.nystrom@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms
	to	Distro Feature list."
Thread-Index: AQHO8crWEbp2wvEVF0mnSroiS+9DnJpQpQSQ
Date: Thu, 12 Dec 2013 14:14:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F53F27@ORSMSX101.amr.corp.intel.com>
References: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
In-Reply-To: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms to	Distro Feature list."
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
X-List-Received-Date: Thu, 12 Dec 2013 14:14:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGF2aWQsIA0KDQpJIGFwcGxpZWQgdGhpcyBieSBoYW5kLiANCg0KVGhhbmtzLCANClNjb3R0DQoN
Cj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9w
cm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPmJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24g
QmVoYWxmIE9mIERhdmlkIE55c3Ryw7ZtDQo+U2VudDogVGh1cnNkYXksIERlY2VtYmVyIDA1LCAy
MDEzIDY6NDUgQU0NCj5UbzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPlN1YmplY3Q6IFt5b2N0
b10gW3lvY3RvLWRvY3NdW1BBVENIXSBSZXZlcnQgInJlZi1tYW51YWw6IEFkZGVkIHNkay1wbXMg
dG8NCj5EaXN0cm8gRmVhdHVyZSBsaXN0LiINCj4NCj5UaGlzIHJldmVydHMgY29tbWl0IGY4MDc2
ZjE5MTZjYzUyNjQ3YjEyOTkyMmMxYjE2NDZhZDZkZjhmZjkuDQo+DQo+c2RrLXBtcyBpcyBhbHdh
eXMgaW5jbHVkZWQsIHdpdGggY29tbWl0Og0KPk1vZHVsZTogb3BlbmVtYmVkZGVkLWNvcmUuZ2l0
DQo+QnJhbmNoOiBtYXN0ZXItbmV4dA0KPkNvbW1pdDogODBhOGVjZjkxMTgxZjJmYmVjMWE0NTIz
MTYxNWIxMjk0OTMyNzk3MA0KPlVSTDogICAgaHR0cDovL2dpdC5vcGVuZW1iZWRkZWQub3JnLz9w
PW9wZW5lbWJlZGRlZC0NCj5jb3JlLmdpdCZhPWNvbW1pdDtoPTgwYThlY2Y5MTE4MWYyZmJlYzFh
NDUyMzE2MTViMTI5NDkzMjc5NzANCj4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBEYXZpZCBOeXN0csO2
bSA8ZGF2aWQubnlzdHJvbUBlbmVhLmNvbT4NCj4tLS0NCj4gZG9jdW1lbnRhdGlvbi9yZWYtbWFu
dWFsL3JlZi1mZWF0dXJlcy54bWwgfCA2IC0tLS0tLQ0KPiAxIGZpbGUgY2hhbmdlZCwgNiBkZWxl
dGlvbnMoLSkNCj4NCj5kaWZmIC0tZ2l0IGEvZG9jdW1lbnRhdGlvbi9yZWYtbWFudWFsL3JlZi1m
ZWF0dXJlcy54bWwNCj5iL2RvY3VtZW50YXRpb24vcmVmLW1hbnVhbC9yZWYtZmVhdHVyZXMueG1s
DQo+aW5kZXggMTFlMzczMS4uZjU2NDFjNiAxMDA2NDQNCj4tLS0gYS9kb2N1bWVudGF0aW9uL3Jl
Zi1tYW51YWwvcmVmLWZlYXR1cmVzLnhtbA0KPisrKyBiL2RvY3VtZW50YXRpb24vcmVmLW1hbnVh
bC9yZWYtZmVhdHVyZXMueG1sDQo+QEAgLTE3NywxMiArMTc3LDYgQEANCj4gICAgICAgICAgICAg
ICAgICAgICBzdXBwb3J0cyBpdC48L3BhcmE+PC9saXN0aXRlbT4NCj4gICAgICAgICAgICAgICAg
IDxsaXN0aXRlbT48cGFyYT48ZW1waGFzaXM+d2lmaTo8L2VtcGhhc2lzPiBJbmNsdWRlIFdpRmkg
c3VwcG9ydA0KPiAgICAgICAgICAgICAgICAgICAgIChpbnRlZ3JhdGVkIG9ubHkpLjwvcGFyYT48
L2xpc3RpdGVtPg0KPi0gICAgICAgICAgICAgICAgPGxpc3RpdGVtPjxwYXJhPjxlbXBoYXNpcz5z
ZGstcG1zOjwvZW1waGFzaXM+IEluY2x1ZGUgUGFja2FnZQ0KPi0gICAgICAgICAgICAgICAgICAg
IE1hbmFnZW1lbnQgVG9vbHMgaW4gdGhlDQo+LSAgICAgICAgICAgICAgICAgICAgPGZpbGVuYW1l
Pm5hdGl2ZXNkazwvZmlsZW5hbWU+IHRvb2xjaGFpbiB0YXJiYWxsLg0KPi0gICAgICAgICAgICAg
ICAgICAgIEluY2x1ZGluZyB0aGVzZSB0b29scyBhbGxvd3MgZm9yIGVhc3kgc2FuZGJveCB1c2Ug
d2hlbg0KPi0gICAgICAgICAgICAgICAgICAgIGNyZWF0aW5nIHRoZSByb290IGZpbGVzeXN0ZW0g
d2hpbGUgdXNpbmcgdGhlIFNESyB0YXJiYWxsLg0KPi0gICAgICAgICAgICAgICAgICAgIDwvcGFy
YT48L2xpc3RpdGVtPg0KPiAgICAgICAgICAgICA8L2l0ZW1pemVkbGlzdD4NCj4gICAgICAgICA8
L3BhcmE+DQo+ICAgICA8L3NlY3Rpb24+DQo+LS0NCj4xLjguMy4yDQo+DQo+X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj55b2N0byBtYWlsaW5nIGxpc3QN
Cj55b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2xpc3RpbmZvL3lvY3RvDQo=

