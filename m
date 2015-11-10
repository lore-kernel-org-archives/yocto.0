Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DA76E008D2; Mon,  9 Nov 2015 17:05:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62051E00803
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2015 17:05:56 -0800 (PST)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NXK02ROKR1VPNC0@mailout3.samsung.com> for
	yocto@yoctoproject.org; Tue, 10 Nov 2015 10:05:55 +0900 (KST)
Received: from epcpsbgx2.samsung.com ( [172.20.52.125])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id F1.DA.05342.3F241465;
	Tue, 10 Nov 2015 10:05:55 +0900 (KST)
X-AuditID: cbfee690-f794e6d0000014de-51-564142f3aa4f
Received: from epmailer01 ( [203.254.219.141])
	by epcpsbgx2.samsung.com (EPCPMTA) with SMTP id 3F.75.04967.3F241465;
	Tue, 10 Nov 2015 10:05:55 +0900 (KST)
Date: Tue, 10 Nov 2015 01:05:55 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20151110005552327@maninder1.s
Msgkey: 20151110005552327@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20151110005552327@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <715456391.737811447117554644.JavaMail.weblogic@ep2mlwas05b>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWyRsSkVvezk2OYwY1HQhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVMfXbfMaCNtWKdUe2szQwdqh0MXJyCAmoSSza+5gNxJYQMJHY
	2jWdFcIWk7hwbz1QnAuoZimjxN39HcwwRS/Ov2OESMxhlFj8+RVYN4uAqsTvbcvZQWw2AX2J
	s3vXgTUICzhKbDqwngXEFhHQljjw/BgrSDOzQCejxLvDl9kgzlCUWH/jCSOIzSsgKHFy5hOg
	Bg6gbSoSd+eyQ4RVJR4e7YI6Qk5iydTLTBA2r8SM9qcsMPFpX9dA1UhLnJ+1gRHmm8XfH0PF
	+SWO3d4B1SsgMfXMQagaTYlXvx9DzeGTWLPwLQtM/a5Ty5lhdt3fMheqV0Jia8sTcGgxA50/
	pfshO4RtIHFk0RxWdK/wCnhIrOpVBnldQqCXQ6Jj8yX2CYxKs5CUzUIyahaSUchqFjCyrGIU
	TS1ILihOSi8y0StOzC0uzUvXS87P3cQITA6n/z2bsIPx3gHrQ4wCHIxKPLwTvzmECbEmlhVX
	5h5iNAVG00RmKdHkfGAKyiuJNzQ2M7IwNTE1NjK3NFMS530t9TNYSCA9sSQ1OzW1ILUovqg0
	J7X4ECMTB6dUAyMjzypzxzX+1qnPRJ7dVxbc/OHKsiXn9zpcPCe1UOvZ34WXFyp7Bi/4XrLB
	5Hii0EzhsvqfU56tmvnnQppd15LsydtfcsR9fuSyMjNh1bRtr2P2Cz/8VdGpe09ZpHHrF/bM
	X9fM4lscyyZPXO0xYelK7bdBPJ8icuum65iFPsqZuvnlv8a1S3fGKLEUZyQaajEXFScCAGYL
	TN0JAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRmVeSWpSXmKPExsVy+t/tXt3PTo5hBt9e8FhMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	1G/zGQvaVCvWHdnO0sDYodLFyMkhJKAmsWjvYzYQW0LAROLF+XeMELaYxIV764HiXEA1cxgl
	Fn9+BVbEIqAq8XvbcnYQm01AX+Ls3nXMILawgKPEpgPrWUBsEQFtiQPPj7GCNDMLdDJKvDt8
	mQ1im6LE+htPwDbwCghKnJz5BKiBA2ibisTduewQYVWJh0e7mCGOkJNYMvUyE4TNKzGj/SkL
	THza1zVQNdIS52dtgDt68ffHUHF+iWO3d0D1CkhMPXMQqkZT4tXvx1Bz+CTWLHzLAlO/69Ry
	Zphd97fMheqVkNja8oQVxGYGOn9K90N2CNtA4siiOazoXuEV8JBY1as8gVF2FpLMLCTds5B0
	I6tZwMiyilE0tSC5oDgpvcJIrzgxt7g0L10vOT93EyM4ET1btIPx33nrQ4wCHIxKPLwTvjmE
	CbEmlhVX5h5ilOBgVhLhtX8BFOJNSaysSi3Kjy8qzUktPsRoCoy0icxSosn5wCSZVxJvaGxi
	bmpsamFgaG5upiTO+yZdI0xIID2xJDU7NbUgtQimj4mDU6qBsU3x+lzHZaIrv7G1zQ3MTPyy
	Nuz6E93fqaWxt1eyaeVf9y0wuFcv9rD38UHvif/9GZf/YC/skbo9le213VH5qbyvlSeL+82e
	NZMjc3vOe50pMeee6Thm7BYqU7hmssWR8bxW5Eev27taDeY3vTmh6f7BYDFvdUmSw8pSWVP1
	wxVKD50uqDJeUWIpzkg01GIuKk4EADgD5opaAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	PANKAJ MISHRA <pankaj.m@samsung.com>
Subject: Re: [prelink-cross][PATCH 1/1] rtld.c: LD_PRELOAD bugfix
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
X-List-Received-Date: Tue, 10 Nov 2015 01:05:58 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGVsbG8sDQoNCj5PbiAxMS83LzE1IDU6MjQgQU0sIE1hbmluZGVyIFNpbmdoIHdyb3RlOg0KPj4g
SGksDQo+PiBQaW5nLi4uLg0KPg0KPkknZCBnb3R0ZW4gYSBtc2cgYWZ0ZXIgdGhpcyB0byBob2xk
IG9mZiBhbmQgd2FpdCBmb3IgYW4gdXBkYXRlLiAgSXMgdGhpcyB0aGUNCj51cGRhdGVkIHZlcnNp
b24gb2YgdGhlIGZpeD8NCj4NCj4tLU1hcmsNCg0KWWVzLCB3ZSBzZW5kIG1lc3NhZ2UgZm9yIHVw
ZGF0ZSBhIGZpeCBmb3IgTERfUFJFTE9BRCBpbXBsZW1udGF0aW9uIGluIHByZWxpbms6LQ0KaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL3BpcGVybWFpbC95b2N0by8yMDE1LVNlcHRlbWJl
ci8wMjY0MzEuaHRtbA0KIChMRF9QUkVMT0FEIGltcGxlbW50YXRpb24gcGF0Y2gsIHdoaWNoIGlz
IG1lcmdlZCB3aXRoIHByZWxpbmtfY3Jvc3MgcHJvamVjdCkNCg0KYW5kIHRoaXMgYmVsb3cgcGF0
Y2ggZml4ZXMgIGJ1ZyBpbiBMRF9QUkVMT0FEIHBhdGNoICh5ZXMgdGhpcyBpcyB1cGRhdGVkIHZl
cnNpb24gb2YgZml4KS4NCg0KPj4+IFRoaXMgcGF0Y2ggZG8gZm9sbG93aW5nIHRoaW5nczotDQo+
Pj4gMS4gCUZpeGVzIGJ1ZyBvZiBhZGRpbmcgcHJlbG9hZGVkIGxpYnMgaW4gc2VhcmNoIHNjb3Bl
IG9mIGRlcGVuZGVudCANCj4+PiAJbGlicmFyaWVzIHdoaWNoIHJlc3VsdHMgaW4gc2VhcmNoIHNj
b3BlIG9mIGZldyBzeW1ib2xzIGJlY29tZXMgDQo+Pj4gCXNhbWUgZm9yIGV4ZWN1dGFibGUgYW5k
IGxpYnJhcnksIHNvIGNvbmZsaWN0IGRvZXNuJ3Qgb2NjdXIgZm9yIA0KPj4+IAl0aG9zZSBzeW1i
b2xzIGFuZCBoZW5jZSByZXN1bHRlZCBpbiBsZXNzIG51bWJlciBvZiBjb25mbGljdHMuDQo+Pj4g
Mi4gCVJlZHVjZSBjb2RlIHJlZHVuZGFuY3kuDQo+Pj4gMy4gCUJ1ZmZlciBPdmVyZmxvdyBmaXgu
DQo+Pj4NCj4+PiBTaWduZWQtb2ZmLWJ5OiBNYW5pbmRlciBTaW5naCA8bWFuaW5kZXIxLnNAc2Ft
c3VuZy5jb20+DQo+Pj4gU2lnbmVkLW9mZi1ieTogVmFuZWV0IE5hcmFuZyA8di5uYXJhbmdAc2Ft
c3VuZy5jb20+DQo+Pj4gUmV2aWV3ZWQtYnk6IERvaGEgSHdhbmcgPGRvaGEuaHdhbmdAc2Ftc3Vu
Zy5jb20+DQo+Pj4gLS0tDQo+Pj4gdHJ1bmsvc3JjL3J0bGQvcnRsZC5jIHwgICAyNyArKysrKysr
KysrKysrKysrLS0tLS0tLS0tLS0NCj4+PiAxIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQ0KPj4+DQo+Pj4gZGlmZiAtLWdpdCBhL3RydW5rL3NyYy9ydGxk
L3J0bGQuYyBiL3RydW5rL3NyYy9ydGxkL3J0bGQuYw0KPj4+IGluZGV4IDUwNDYxYjYuLjhhZjUw
NTIgMTAwNjQ0DQo+Pj4gLS0tIGEvdHJ1bmsvc3JjL3J0bGQvcnRsZC5jDQo+Pj4gKysrIGIvdHJ1
bmsvc3JjL3J0bGQvcnRsZC5jDQo+Pj4gQEAgLTYwNiw3ICs2MDYsNyBAQCBsb2FkX2Rzb3MgKERT
TyAqZHNvLCBpbnQgaG9zdF9wYXRocykNCj4+PiB7DQo+Pj4gICBzdHJ1Y3QgZHNvX2xpc3QgKmRz
b19saXN0LCAqZHNvX2xpc3RfdGFpbCwgKmN1cl9kc29fZW50LCAqbmV3X2Rzb19lbnQ7DQo+Pj4g
ICBzdHJ1Y3Qgc3RhdDY0IHN0Ow0KPj4+IC0gIGludCB0b3RhbF9wcmVsb2FkID0gMDsNCj4+PiAr
ICBpbnQgdG90YWxfcHJlbG9hZCA9IDAsIHRlbXBfdG90YWxfcHJlbG9hZCA9IDA7DQo+Pj4gICBj
aGFyICogbGlibmFtZVtNQVhfUFJFTE9BREVEX0xJQlNdID0ge05VTEx9Ow0KPj4+DQo+Pj4gICAv
KiBBc3N1bWUgaXQncyBzdGF0aWMgdW5sZXNzIHdlIGZpbmQgRFRfTkVFREVEIGVudHJpZXMgKi8N
Cj4+PiBAQCAtNjMyLDE5ICs2MzIsMTkgQEAgbG9hZF9kc29zIChEU08gKmRzbywgaW50IGhvc3Rf
cGF0aHMpDQo+Pj4NCj4+PiAgIGlmKGRzby0+ZWhkci5lX3R5cGUgPT0gRVRfRVhFQyAmJiBsZF9w
cmVsb2FkKSB7DQo+Pj4gICAgICAgY2hhciAqbmV4dF9saWIgPSAgbGRfcHJlbG9hZDsNCj4+PiAt
ICAgICAgbGlibmFtZVt0b3RhbF9wcmVsb2FkXSA9IGxkX3ByZWxvYWQ7DQo+Pj4gLSAgICAgIHRv
dGFsX3ByZWxvYWQrKzsNCj4+PiAtICAgICAgbmV4dF9saWI9c3RyY2hyKGxkX3ByZWxvYWQsJzon
KTsNCj4+PiAtICAgICAgd2hpbGUobmV4dF9saWIhPU5VTEwpew0KPj4+IC0JICAqbmV4dF9saWIg
PSAnXDAnOw0KPj4+IC0JICBuZXh0X2xpYisrOw0KPj4+IC0JICBsaWJuYW1lW3RvdGFsX3ByZWxv
YWRdID0gbmV4dF9saWI7DQo+Pj4gLQkgIHRvdGFsX3ByZWxvYWQrKzsNCj4+PiAtCSAgbmV4dF9s
aWI9c3RyY2hyKG5leHRfbGliLCc6Jyk7DQo+Pj4gLSAgICAgIH0NCj4+PiArICAgICAgd2hpbGUo
Km5leHRfbGliICE9ICdcMCcgJiYgKHRvdGFsX3ByZWxvYWQgPCBNQVhfUFJFTE9BREVEX0xJQlMp
KXsNCj4+PiArICAgICAgICBsaWJuYW1lW3RvdGFsX3ByZWxvYWQrK10gPSBuZXh0X2xpYjsNCj4+
PiArICAgICAgICBuZXh0X2xpYj1zdHJjaHJudWwobmV4dF9saWIsJzonKTsNCj4+PiArICAgICAg
ICBpZigqbmV4dF9saWIgPT0gJ1wwJykNCj4+PiArICAgICAgICAgIGJyZWFrOw0KPj4+ICsgICAg
ICAgICpuZXh0X2xpYiA9ICdcMCc7DQo+Pj4gKyAgICAgICAgbmV4dF9saWIrKzsNCj4+PiArICAg
ICB9DQo+Pj4gKyAgICB0ZW1wX3RvdGFsX3ByZWxvYWQgPSB0b3RhbF9wcmVsb2FkOw0KPj4+ICAg
fQ0KPj4+ICAgZWxzZSB7DQo+Pj4gICAgICAgdG90YWxfcHJlbG9hZCA9IDA7DQo+Pj4gKyAgICAg
IHRlbXBfdG90YWxfcHJlbG9hZCA9IDA7DQo+Pj4gICB9DQo+Pj4gICB3aGlsZSAoY3VyX2Rzb19l
bnQgIT0gTlVMTCkNCj4+PiAgICAgew0KPj4+IEBAIC02NjYsNiArNjY2LDExIEBAIGxvYWRfZHNv
cyAoRFNPICpkc28sIGludCBob3N0X3BhdGhzKQ0KPj4+IAl7DQo+Pj4gCSAgaW50IG5keCwgbWF4
bmR4Ow0KPj4+IAkgIG1heG5keCA9IGRhdGEtPmRfc2l6ZSAvIGN1cl9kc28tPnNoZHJbY3VyX2Rz
by0+ZHluYW1pY10uc2hfZW50c2l6ZTsNCj4+PiArICAgICAgaWYoIShjdXJfZHNvLT5laGRyLmVf
dHlwZSA9PSBFVF9FWEVDKSkNCj4+PiArICAgICAgICB0b3RhbF9wcmVsb2FkID0gMDsNCj4+PiAr
ICAgICAgZWxzZQ0KPj4+ICsgICAgICAgIHRvdGFsX3ByZWxvYWQgPSB0ZW1wX3RvdGFsX3ByZWxv
YWQ7DQo+Pj4gKw0KPj4+IAkgIGZvciAobmR4ID0gMDsgbmR4IDwgbWF4bmR4ICsgdG90YWxfcHJl
bG9hZDsgKytuZHgpDQo+Pj4gCSAgICB7DQo+Pj4NCj4+PiAtLSANCj4+PiAxLjcuMQ0KDQpUaGlz
IHBhdGNoIGlzIGEgZml4IHRvIGEgYnVnIG9mIGJlbG93IGNvbW1pdCAoYWRkaXRpb24gb2YgbmV3
IC0tbGQtcHJlbG9hZCBvcHRpb24pOi0NCmh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0
L2NnaXQuY2dpL3ByZWxpbmstY3Jvc3MvY29tbWl0Lz9oPWNyb3NzX3ByZWxpbmsmaWQ9MzE5OWVl
NGViZmMzNzI4ODM5MWUxNjk4MjViNzVmYTgwYzYxMzZhMw0KYW5kIGFwcGxpY2FibGUgYWZ0ZXIg
dGhpcyBjb21taXQNCg0KDQpUaGFua3MsDQpNYW5pbmRlciBTaW5naA==



