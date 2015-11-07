Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF04DE00B1C; Sat,  7 Nov 2015 03:24:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.24 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
Received: from mailout1.samsung.com (mailout1.samsung.com [203.254.224.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB576E00A26
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 03:24:06 -0800 (PST)
Received: from epcpsbgr4.samsung.com
	(u144.gpu120.samsung.co.kr [203.254.230.144])
	by mailout1.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NXF02E5BZO42580@mailout1.samsung.com> for
	yocto@yoctoproject.org; Sat, 07 Nov 2015 20:24:04 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.125])
	by epcpsbgr4.samsung.com (EPCPMTA) with SMTP id 5A.2E.05342.45FDD365;
	Sat, 7 Nov 2015 20:24:04 +0900 (KST)
X-AuditID: cbfee690-f794e6d0000014de-67-563ddf54cab0
Received: from epmailer01 ( [203.254.219.141])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id 92.94.04973.45FDD365;
	Sat, 7 Nov 2015 20:24:04 +0900 (KST)
Date: Sat, 07 Nov 2015 11:24:04 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20151107112215375@maninder1.s
Msgkey: 20151107112215375@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20151107112215375@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <1576099213.193511446895444014.JavaMail.weblogic@ep2mlwas06c>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBIsWRmVeSWpSXmKPExsWyRsSkVjfkvm2YwZVDGhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CVcXrOHqaCM1IVnbd72RsYP0h2MXJyCAmoSSza+5gNxJYQMJGY
	uLGLGcIWk7hwbz1QnAuoZimjxO1bk+GKpp3+wQqRmMMosXxdIztIgkVAReLSuUawbjYBfYmz
	e9eB2cICjhKbDqxnAbFFBCwlvqx5xQjSzCzQySjx7vBlNogzFCXW33jCCGLzCghKnJz5hAVi
	m4rE7q4uVoi4qsSOzT1QcTmJJVMvM0HYvBIz2p/Cxad9XQP1grTE+VkbGGHeWfz9MVScX+LY
	7R1QvQISU88chKrRlPj0cTrUl3wSaxa+ZYGp33VqOTPMrvtb5kL1SkhsbXkCdhsz0P1Tuh+y
	Q9gGEkcWzWFF9wuvgKfEl0XLmEGelxCYyCHR3z6VaQKj0iwkdbOQzJqFZBaymgWMLKsYRVML
	kguKk9KLTPSKE3OLS/PS9ZLzczcxAhPE6X/PJuxgvHfA+hCjAAejEg/vxh82YUKsiWXFlbmH
	GE2BETWRWUo0OR+YhvJK4g2NzYwsTE1MjY3MLc2UxHlfS/0MFhJITyxJzU5NLUgtii8qzUkt
	PsTIxMEp1cDIWXsvqPULR96F2RaWxy9UrpuTVLgoe9EFj+RprbKxylOka+qLOXW12Ga/+jlN
	0fZ+w4yNRwo3/uUTX7O5tOLRzU9JVd8C8tM7RJjD+V7bnddL9hDd6FQxK2l1T8Xi8Et720Rj
	EtsSAzfde/Ch6R9Lw987mv80mzUPeraZ3XKpbQ9a71IV0KzEUpyRaKjFXFScCACfgvSCCwMA	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJKsWRmVeSWpSXmKPExsVy+t/tXt2Q+7ZhBq9fKVlMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	6Tl7mArOSFV03u5lb2D8INnFyMkhJKAmsWjvYzYQW0LARGLa6R+sELaYxIV764HiXEA1cxgl
	lq9rZAdJsAioSFw618gMYrMJ6Euc3bsOzBYWcJTYdGA9C4gtImAp8WXNK0aQZmaBTkaJd4cv
	s0FsU5RYf+MJI4jNKyAocXLmExaIbSoSu7u6WCHiqhI7NvdAxeUklky9zARh80rMaH8KF5/2
	dQ0zhC0tcX7WBkaYqxd/fwwV55c4dnsHVK+AxNQzB6FqNCU+fZwO9TGfxJqFb1lg6nedWs4M
	s+v+lrlQvRISW1uegN3GDHT/lO6H7BC2gcSRRXNY0f3CK+Ap8WXRMuYJjLKzkKRmIWmfhaQd
	Wc0CRpZVjKKpBckFxUnpFSZ6xYm5xaV56XrJ+bmbGMHJ6NmSHYwNF6wPMQpwMCrx8HL8tgkT
	Yk0sK67MPcQowcGsJMLrcdw2TIg3JbGyKrUoP76oNCe1+BCjKTDaJjJLiSbnAxNlXkm8obGJ
	uamxqYWBobm5mZI475t0jTAhgfTEktTs1NSC1CKYPiYOTqkGRi5NsyO/HnRqexvqTMqvnqDw
	cMUKvhvOwhqrm2LzjLxOtD6Kypr34/LigDkmnc+SnswJ0YmfFbV0aV2s6wLfSc/+LG86uPbv
	dtsrU2dveGokY2yYuFfAMdJD7PVcgZTA7ao7v5ysuJUy93PTlm/M3D/63qd8FQx9r9158Obf
	Ui++/X9umweKhCmxFGckGmoxFxUnAgCGCBC0XAMAAA==
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
X-List-Received-Date: Sat, 07 Nov 2015 11:24:07 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGksDQpQaW5nLi4uLg0KDQo+VGhpcyBwYXRjaCBkbyBmb2xsb3dpbmcgdGhpbmdzOi0NCj4xLiAJ
Rml4ZXMgYnVnIG9mIGFkZGluZyBwcmVsb2FkZWQgbGlicyBpbiBzZWFyY2ggc2NvcGUgb2YgZGVw
ZW5kZW50IA0KPglsaWJyYXJpZXMgd2hpY2ggcmVzdWx0cyBpbiBzZWFyY2ggc2NvcGUgb2YgZmV3
IHN5bWJvbHMgYmVjb21lcyANCj4Jc2FtZSBmb3IgZXhlY3V0YWJsZSBhbmQgbGlicmFyeSwgc28g
Y29uZmxpY3QgZG9lc24ndCBvY2N1ciBmb3IgDQo+CXRob3NlIHN5bWJvbHMgYW5kIGhlbmNlIHJl
c3VsdGVkIGluIGxlc3MgbnVtYmVyIG9mIGNvbmZsaWN0cy4NCj4yLiAJUmVkdWNlIGNvZGUgcmVk
dW5kYW5jeS4NCj4zLiAJQnVmZmVyIE92ZXJmbG93IGZpeC4NCj4NCj5TaWduZWQtb2ZmLWJ5OiBN
YW5pbmRlciBTaW5naCA8bWFuaW5kZXIxLnNAc2Ftc3VuZy5jb20+DQo+U2lnbmVkLW9mZi1ieTog
VmFuZWV0IE5hcmFuZyA8di5uYXJhbmdAc2Ftc3VuZy5jb20+DQo+UmV2aWV3ZWQtYnk6IERvaGEg
SHdhbmcgPGRvaGEuaHdhbmdAc2Ftc3VuZy5jb20+DQo+LS0tDQo+IHRydW5rL3NyYy9ydGxkL3J0
bGQuYyB8ICAgMjcgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tDQo+IDEgZmlsZXMgY2hhbmdl
ZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+DQo+ZGlmZiAtLWdpdCBhL3Ry
dW5rL3NyYy9ydGxkL3J0bGQuYyBiL3RydW5rL3NyYy9ydGxkL3J0bGQuYw0KPmluZGV4IDUwNDYx
YjYuLjhhZjUwNTIgMTAwNjQ0DQo+LS0tIGEvdHJ1bmsvc3JjL3J0bGQvcnRsZC5jDQo+KysrIGIv
dHJ1bmsvc3JjL3J0bGQvcnRsZC5jDQo+QEAgLTYwNiw3ICs2MDYsNyBAQCBsb2FkX2Rzb3MgKERT
TyAqZHNvLCBpbnQgaG9zdF9wYXRocykNCj4gew0KPiAgIHN0cnVjdCBkc29fbGlzdCAqZHNvX2xp
c3QsICpkc29fbGlzdF90YWlsLCAqY3VyX2Rzb19lbnQsICpuZXdfZHNvX2VudDsNCj4gICBzdHJ1
Y3Qgc3RhdDY0IHN0Ow0KPi0gIGludCB0b3RhbF9wcmVsb2FkID0gMDsNCj4rICBpbnQgdG90YWxf
cHJlbG9hZCA9IDAsIHRlbXBfdG90YWxfcHJlbG9hZCA9IDA7DQo+ICAgY2hhciAqIGxpYm5hbWVb
TUFYX1BSRUxPQURFRF9MSUJTXSA9IHtOVUxMfTsNCj4gDQo+ICAgLyogQXNzdW1lIGl0J3Mgc3Rh
dGljIHVubGVzcyB3ZSBmaW5kIERUX05FRURFRCBlbnRyaWVzICovDQo+QEAgLTYzMiwxOSArNjMy
LDE5IEBAIGxvYWRfZHNvcyAoRFNPICpkc28sIGludCBob3N0X3BhdGhzKQ0KPiANCj4gICBpZihk
c28tPmVoZHIuZV90eXBlID09IEVUX0VYRUMgJiYgbGRfcHJlbG9hZCkgew0KPiAgICAgICBjaGFy
ICpuZXh0X2xpYiA9ICBsZF9wcmVsb2FkOw0KPi0gICAgICBsaWJuYW1lW3RvdGFsX3ByZWxvYWRd
ID0gbGRfcHJlbG9hZDsNCj4tICAgICAgdG90YWxfcHJlbG9hZCsrOw0KPi0gICAgICBuZXh0X2xp
Yj1zdHJjaHIobGRfcHJlbG9hZCwnOicpOw0KPi0gICAgICB3aGlsZShuZXh0X2xpYiE9TlVMTCl7
DQo+LQkgICpuZXh0X2xpYiA9ICdcMCc7DQo+LQkgIG5leHRfbGliKys7DQo+LQkgIGxpYm5hbWVb
dG90YWxfcHJlbG9hZF0gPSBuZXh0X2xpYjsNCj4tCSAgdG90YWxfcHJlbG9hZCsrOw0KPi0JICBu
ZXh0X2xpYj1zdHJjaHIobmV4dF9saWIsJzonKTsNCj4tICAgICAgfQ0KPisgICAgICB3aGlsZSgq
bmV4dF9saWIgIT0gJ1wwJyAmJiAodG90YWxfcHJlbG9hZCA8IE1BWF9QUkVMT0FERURfTElCUykp
ew0KPisgICAgICAgIGxpYm5hbWVbdG90YWxfcHJlbG9hZCsrXSA9IG5leHRfbGliOw0KPisgICAg
ICAgIG5leHRfbGliPXN0cmNocm51bChuZXh0X2xpYiwnOicpOw0KPisgICAgICAgIGlmKCpuZXh0
X2xpYiA9PSAnXDAnKQ0KPisgICAgICAgICAgYnJlYWs7DQo+KyAgICAgICAgKm5leHRfbGliID0g
J1wwJzsNCj4rICAgICAgICBuZXh0X2xpYisrOw0KPisgICAgIH0NCj4rICAgIHRlbXBfdG90YWxf
cHJlbG9hZCA9IHRvdGFsX3ByZWxvYWQ7DQo+ICAgfQ0KPiAgIGVsc2Ugew0KPiAgICAgICB0b3Rh
bF9wcmVsb2FkID0gMDsNCj4rICAgICAgdGVtcF90b3RhbF9wcmVsb2FkID0gMDsNCj4gICB9DQo+
ICAgd2hpbGUgKGN1cl9kc29fZW50ICE9IE5VTEwpDQo+ICAgICB7DQo+QEAgLTY2Niw2ICs2NjYs
MTEgQEAgbG9hZF9kc29zIChEU08gKmRzbywgaW50IGhvc3RfcGF0aHMpDQo+IAl7DQo+IAkgIGlu
dCBuZHgsIG1heG5keDsNCj4gCSAgbWF4bmR4ID0gZGF0YS0+ZF9zaXplIC8gY3VyX2Rzby0+c2hk
cltjdXJfZHNvLT5keW5hbWljXS5zaF9lbnRzaXplOw0KPisgICAgICBpZighKGN1cl9kc28tPmVo
ZHIuZV90eXBlID09IEVUX0VYRUMpKQ0KPisgICAgICAgIHRvdGFsX3ByZWxvYWQgPSAwOw0KPisg
ICAgICBlbHNlDQo+KyAgICAgICAgdG90YWxfcHJlbG9hZCA9IHRlbXBfdG90YWxfcHJlbG9hZDsN
Cj4rDQo+IAkgIGZvciAobmR4ID0gMDsgbmR4IDwgbWF4bmR4ICsgdG90YWxfcHJlbG9hZDsgKytu
ZHgpDQo+IAkgICAgew0KPiANCj4tLSANCj4xLjcuMQ0K



