Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4646FE00858; Tue,  7 Apr 2015 03:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB79EE007A0
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 03:16:00 -0700 (PDT)
Received: from epcpsbgr1.samsung.com
	(u141.gpu120.samsung.co.kr [203.254.230.141])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NMF00AIKLULC700@mailout3.samsung.com> for
	yocto@yoctoproject.org; Tue, 07 Apr 2015 19:15:57 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.122])
	by epcpsbgr1.samsung.com (EPCPMTA) with SMTP id 78.A4.18889.D5EA3255;
	Tue, 7 Apr 2015 19:15:57 +0900 (KST)
X-AuditID: cbfee68d-f79266d0000049c9-14-5523ae5d508d
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id 4F.D8.25195.05EA3255;
	Tue, 7 Apr 2015 19:15:44 +0900 (KST)
Date: Tue, 07 Apr 2015 10:15:44 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20150407101049512@maninder1.s
Msgkey: 20150407101049512@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150407101049512@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1615523338.521981428401744312.JavaMail.weblogic@epmlwas08a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWyRsSkSjd2nXKowadT+haTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV8XbtCraCJrGKDX/uMzcwbhHtYuTkEBJQk1i09zEbiC0hYCLx
	tauHEcIWk7hwbz1QnAuoZimjxPOVV1hgii409jFCJOYwSjxe94Kpi5GDg0VAReLOtFqQGjYB
	fYmze9cxg9jCAhESTTeuM4HYIgLaEgeeH2MF6WUWaGOUaN0xixHiCkWJ9TeegNm8AoISJ2c+
	gVqmIvHuQQMrRFxV4tCiX1DXyUksmXqZCcLmlZjR/pQFJj7t6xpmCFta4vysDXDfLP7+GCrO
	L3Hs9g6oXgGJqWcOMoLcLyGgKXGhWwkizCexZuFbFpjyXaeWM8Osur9lLlSrhMTWlidgpzED
	nT+l+yE7hG0gcWTRHFZ0r/AKeEh0Xf0P9ruEwFQOiVknfjBNYFSahaRuFpJZs5DMQlazgJFl
	FaNoakFyQXFSepGhXnFibnFpXrpecn7uJkZgcjj971nvDsbbB6wPMQpwMCrx8DLIKYcKsSaW
	FVfmHmI0BUbTRGYp0eR8YArKK4k3NDYzsjA1MTU2Mrc0UxLnVZT6GSwkkJ5YkpqdmlqQWhRf
	VJqTWnyIkYmDU6qBcb14qJRq0GZ9tbrr/M9XfNxg6L3QLDNAx3Vj/LT1gfzqpRfevZux1TL6
	792zxn8NijJu3Hgexzc3c++EMy0S+6Zdnuk9b+f6O+9mnNMquxHVrb/m3beejr3lLNMPNMvJ
	pj2VNbE1dtgkkL/71dy847dTOHIDq4V7l3y5+X7PjBP5yQxXdgscklViKc5INNRiLipOBABM
	LW4sCQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRmVeSWpSXmKPExsVy+t/tPt2AdcqhBhtfmVtMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	27Ur2AqaxCo2/LnP3MC4RbSLkZNDSEBNYtHex2wgtoSAicSFxj5GCFtM4sK99UBxLqCaOYwS
	j9e9YOpi5OBgEVCRuDOtFqSGTUBf4uzedcwgtrBAhETTjetMILaIgLbEgefHWEF6mQXaGCVa
	d8xihFimKLH+xhMwm1dAUOLkzCcsEMtUJN49aGCFiKtKHFr0C+oIOYklUy8zQdi8EjPan7LA
	xKd9XcMMYUtLnJ+1Ae7oxd8fQ8X5JY7d3gHVKyAx9cxBRpD7JQQ0JS50K0GE+STWLHzLAlO+
	69RyZphV97fMhWqVkNja8gTsNGag86d0P2SHsA0kjiyaw4ruFV4BD4muq/9ZJzDKzkKSmoWk
	fRaSdmQ1CxhZVjGKphYkFxQnpVeY6BUn5haX5qXrJefnbmIEJ6JnS3YwNlywPsQowMGoxMPL
	KKccKsSaWFZcmXuIUYKDWUmEl30RUIg3JbGyKrUoP76oNCe1+BCjKTDSJjJLiSbnA5NkXkm8
	obGJuamxqYWBobm5mZI47/9zuSFCAumJJanZqakFqUUwfUwcnFINjDk9wcJ2ryuqTq/49PT7
	qotlopeE5zQZeLnMMTlWs+ZU07x3mxqy9MUKJy6S3n47bbHLif37dvlF/3qQ58f54/LG+UtW
	5xk8mTbnj2t0aMjGvQ4Cb+ZG6IhGcr3b0n348079D8vcXfdda3Dxda13SclcO+PAUzuFF56s
	Gy0Xzvf6fX3lCvUzD5WUWIozEg21mIuKEwEqnVlgWgMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: Re: [prelink-cross][PATCH 1/1] debug message for dependencies not found
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: maninder1.s@samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Apr 2015 10:16:03 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGkgTWFyaywNCg0KV2UgaGF2ZSBjaGVja2VkIHRoZSBjb21taXQgb24gY3Jvc3NfcHJlbGlrX3N0
YWdpbmcsIGl0IGlzIGNvcnJlY3QgQnV0IGkgZGlkIG9uZSB0eXBvIGVycm9yIFBsZWFzZSBjb3Jy
ZWN0IGZvbGxvd2luZzotDQpKdXN0IGNoYW5nZSBSZXZpZXdlZC1ieTogQWplZXQgWWFkYXYgPGFq
ZWV0LnZAc2Ftc3VuZy5jb20+DQp0bw0KUmV2aWV3ZWQtYnk6IEFqZWV0IFlhZGF2IDxhamVldC55
QHNhbXN1bmcuY29tPiBmb3Igdm90aCBwYXRjaGVzLg0KVHlwbyBhcnJvciBmb3IgYWplZXQudiAt
LS0+IGFqZWV0LnkNClRoYW5rcw0KTWFuaW5kZXIgU2luZ2gNCj5UaGlzIGFuZCB0aGUgb3RoZXIg
cGF0Y2ggaGF2ZSBiZWVuIG1lcmdlZCBvbnRvIHRoZSBjcm9zc19wcmVsaW5rX3N0YWdpbmcgYnJh
bmNoLg0KDQo+UGxlYXNlIHRlc3QgdGhhdCBJIG1lcmdlZCBpdCBwcm9wZXJseS4gIChFdmVyeXRo
aW5nIHBhc3NlZCBteSBiYXNpYyB0ZXN0aW5nLCBidXQNCj5JIGhhdmVuJ3QgcnVuIGl0IGFnYWlu
c3QgYW55IEFSTS9IRiBsaWJyYXJpZXMgb3Igc2ltaWxhci4pDQoNCj4tLU1hcmsNCg0KT24gNC82
LzE1IDQ6MDcgQU0sIE1hbmluZGVyIFNpbmdoIHdyb3RlOg0KPiBIaSwNCj4gU2FtZSBtYWlsIHNl
bnQgZWFybGllciBDaGFuZ2luZyBzdWJqZWN0IGxpbmUsIEJ5IG1pc3Rha2Ugc2hhcmVkIHN1Ympl
Y3QgbGluZSBvZiBvdGhlciBwYXRjaC4NCj4gDQo+IHByZWxpbmsgZ2l2ZXMgYmVsb3cgZXJyb3Ig
bWVzc2FnZSBmb3IgZmFpbHVyZSBkZXBlbmRlbmN5Og0KPiAuL3ByZWxpbms6IC90ZXN0X2JpbmFy
eTogQ291bGQgbm90IGZpbmQgb25lIG9mIHRoZSBkZXBlbmRlbmNpZXMNCj4gDQo+IFRoaXMgcHJv
dmlkZXMgbmFtZSBvZiBkZXBlbmRlbnQgbGlicmFyeSB3aGljaCBpcyBtaXNzaW5nIGxpa2UgYmVs
b3c6DQo+IC4vcHJlbGluazogL3Rlc3RfYmluYXJ5OiBDb3VsZCBub3QgZmluZCBvbmUgb2YgdGhl
IGRlcGVuZGVuY2llczoNCj4gLi9wcmVsaW5rLXJ0bGQ6IGVycm9yIHdoaWxlIGxvYWRpbmcgc2hh
cmVkIGxpYnJhcmllczogbGliQi5zbzogY2Fubm90IG9wZW4gc2hhcmVkIG9iamVjdCBmaWxlOiBO
byBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+IHdoZXJlIGxpYkIuc28gaXMgbWlzc2luZyBkZXBl
bmRlY3kNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1hbmluZGVyIFNpbmdoIDxtYW5pbmRlcjEuc0Bz
YW1zdW5nLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmFuZWV0IE5hcmFuZyA8di5uYXJhbmdAc2Ft
c3VuZy5jb20+DQo+IFJldmlld2VkLWJ5OiBBamVldCBZYWRhdiA8YWplZXQudkBzYW1zdW5nLmNv
bT4NCj4gUmV2aWV3ZWQtYnk6IEdlb24taG8gS2ltIDxnaDAwNy5raW1Ac2Ftc3VuZy5jb20+DQo+
IC0tLQ0KPiAgc3JjL2dhdGhlci5jIHwgICAgNCArKy0tDQo+ICAxIGZpbGVzIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9zcmMvZ2F0
aGVyLmMgYi9zcmMvZ2F0aGVyLmMNCj4gaW5kZXggNWNjZDI0My4uNGEzZjQyOCAxMDA2NDQNCj4g
LS0tIGEvc3JjL2dhdGhlci5jDQo+ICsrKyBiL3NyYy9nYXRoZXIuYw0KPiBAQCAtMjQwLDggKzI0
MCw4IEBAIGdhdGhlcl9kZXBzIChEU08gKmRzbywgc3RydWN0IHByZWxpbmtfZW50cnkgKmVudCkN
Cj4gICAgICAgICAgIGlmIChxICE9IE5VTEwpDQo+ICAgICAgICAgICAgIHsNCj4gICAgICAgICAg
ICAgICBlcnJvciAoMCwgMCwNCj4gLSAgICAgICAgICAgICAgICAiJXM6IENvdWxkIG5vdCBmaW5k
IG9uZSBvZiB0aGUgZGVwZW5kZW5jaWVzIiwNCj4gLSAgICAgICAgICAgICAgICBlbnQtPmZpbGVu
YW1lKTsNCj4gKyAgICAgICAgICAgICAgICAiJXM6IENvdWxkIG5vdCBmaW5kIG9uZSBvZiB0aGUg
ZGVwZW5kZW5jaWVzOlxuJXMiLA0KPiArICAgICAgICAgICAgICAgIGVudC0+ZmlsZW5hbWUsIGxp
bmUpOw0KPiAgICAgICAgICAgICAgIGdvdG8gZXJyb3Jfb3V0Ow0KPiAgICAgICAgICAgICB9DQo+
ICAgICAgICAgfQ0KPiAtLQ0KPiANCj4gDQo+IFRoYW5rcyANCj4gTWFuaW5kZXIgU2luZ2gNCj4g
DQo=



