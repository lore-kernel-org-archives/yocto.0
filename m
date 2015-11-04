Return-Path: <v.narang@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD1DFE00AB0; Tue,  3 Nov 2015 22:08:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [203.254.224.34 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	*  1.0 XPRIO Has X-Priority header
X-Greylist: delayed 604 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Nov 2015 22:08:44 PST
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66CBDE00AA5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 22:08:44 -0800 (PST)
Received: from epcpsbgr1.samsung.com
	(u141.gpu120.samsung.co.kr [203.254.230.141])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NXA02W880LQTA30@mailout4.samsung.com> for
	yocto@yoctoproject.org; Wed, 04 Nov 2015 14:58:38 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.123])
	by epcpsbgr1.samsung.com (EPCPMTA) with SMTP id 4D.04.05274.E8E99365;
	Wed, 4 Nov 2015 14:58:38 +0900 (KST)
X-AuditID: cbfee68d-f79ae6d00000149a-bd-56399e8e9c9e
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id D1.3D.04973.E8E99365;
	Wed, 4 Nov 2015 14:58:38 +0900 (KST)
Date: Wed, 04 Nov 2015 05:58:38 +0000 (GMT)
From: Vaneet Narang <v.narang@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>
MIME-version: 1.0
X-MTR: 20151104051250795@v.narang
Msgkey: 20151104051250795@v.narang
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20151104051250795@v.narang
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <928799812.483311446616717724.JavaMail.weblogic@ep2mlwas02b>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWyRsSkWrdvnmWYwdaFUhaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV0bZxEmvBF/WKP/vmsDYwvlHrYuTkEBJQlui8do0VxJYQMJE4
	+2QOO4QtJnHh3nq2LkYuoJqljBIHWs/CFd1Zt54FIjGHUWLupUWMIAkWARWJ/1fPsYHYbALa
	Em/+9bKA2MICLhIXp55iArFFgOIHnh9jBWlmFtjKJHHgdTsrxBlyEn8X/GIGsXkFBCVOznzC
	ArFNUaLvVAcbRFxJYuaeD1DnyUksmXqZCcLmlZjR/pQFJj7t6xpmCFta4vysDYww7yz+/hgq
	zi9x7PYOqF4BialnDkLVqEkcWX4Xaj6fxJqFb1lg6nedWs4Ms+v+lrlQvRISW1uegN3PDHTn
	lO6H7BC2gcSRRXNYUf3CAWR7SFw9bAvyu4TARA6J1rf/GScwKs1CUjYLyahZSEYhq1nAyLKK
	UTS1ILmgOCm9yFCvODG3uDQvXS85P3cTIzA9nP73rHcH4+0D1ocYBTgYlXh4G/5bhAmxJpYV
	V+YeYjQFxtNEZinR5HxgEsoriTc0NjOyMDUxNTYytzRTEudVlPoZLCSQnliSmp2aWpBaFF9U
	mpNafIiRiYNTqoHxxIKLT1+w2fekFNwKcJ5+T1yoijMsOyY/lO3yY7fXIaZvVp9hX/klJy5M
	tbz82IsPcqd3zt2uNW/31tnqF29tEggRW7XW9V+Z56kj5nlRd6M/vGBYkGsiuOpetYqy8hY5
	rgV9shnLGoVEOqatTZfpmr5kRapgEXu506+ze24FXHb6qnJNTtZKiaU4I9FQi7moOBEAK6bj
	DgoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsVy+t/tPt2+eZZhBlOeC1tMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlpG
	28ZJrAVf1Cv+7JvD2sD4Rq2LkZNDSEBZovPaNVYQW0LAROLOuvUsELaYxIV769m6GLmAauYw
	Ssy9tIgRJMEioCLx/+o5NhCbTUBb4s2/XrAGYQEXiYtTTzGB2CJA8QPPj7GCNDMLbGWSOPC6
	nRVim5zE3wW/mEFsXgFBiZMzn0BtU5ToO9XBBhFXkpi55wM7RFxOYsnUy0wQNq/EjPanLDDx
	aV/XMEPY0hLnZ21ghLl68ffHUHF+iWO3d0D1CkhMPXMQqkZN4sjyu1Dz+STWLHzLAlO/69Ry
	Zphd97fMheqVkNja8gTsfmagO6d0P2SHsA0kjiyaw4rqFw4g20Pi6mHbCYyys5BkZiHpnoWk
	G1nNAkaWVYyiqQXJBcVJ6RUmesWJucWleel6yfm5mxjBqejZkh2MDResDzEKcDAq8fA2/LcI
	E2JNLCuuzD3EKMHBrCTCW+lnGSbEm5JYWZValB9fVJqTWnyI0RQYaxOZpUST84FpMq8k3tDY
	xNzU2NTCwNDc3ExJnPdNukaYkEB6YklqdmpqQWoRTB8TB6dUA6NW2womPoOlTFmSLfpGbyZF
	/Pg90+r2w7yzTNPzS4qrWj4+234zQX1nZaPbKTmDtHPuEgu+nrj0jDNjhUywutRUPTc31l1r
	fTcn++mu9JSzPe13csPsJKGrhxvSth1hWXFeKOZofWPSVv0lVn2F7dPjds5wqb1dse9yrujh
	Cu870gn6y8MFliqxFGckGmoxFxUnAgAvIWA5WwMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Wed, 04 Nov 2015 07:48:49 -0800
Cc: AJEET YADAV <ajeet.y@samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	doha Hwang <doha.hwang@samsung.com>,
	Hak-Bong Lee <hakbong5.lee@samsung.com>,
	Maninder Singh <maninder1.s@samsung.com>,
	Manjeet Pawar <manjeet.p@samsung.com>, PANKAJ MISHRA <pankaj.m@samsung.com>
Subject: Re: [PATCH 1/1] Fix AARCH64_TLSDESC relocation conflict
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: v.narang@samsung.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 04 Nov 2015 06:08:46 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

T24gMTEvMy8xNSA1OjQ0IEFNLCBNYW5qZWV0IFBhd2FyIHdyb3RlOg0KPj4gVGhpcyBwYXRjaCBu
ZWVkcyB0byBiZSBhcHBsaWVkIHRvICdjcm9zc19wcmVsaW5rX2FhcmNoNjQnIGJyYW5jaC4NCj4+
IEl0IGZpeGVzIHRsczEsIHRsczIsIHRsczQsIHRsczUsIHRsczYgdGVzdCBjYXNlcyBvZiBwcmVs
aW5rIHRlc3RzdWl0ZS4NCj4+IHRsczMgZ2V0cyBmYWlsZWQgYnV0IHRoaXMgdGVzdCBjYXNlIGZh
aWxzIHdpdGhvdXQgcHJlbGluayBhcyB3ZWxsIG9uIEFBUkNINjQNCj4NCj5JJ20gc3RpbGwgZ2V0
dGluZyBzZWdmYXVsdHMgaGVyZS4NCj4NCj5UaGUgd2F5IEkgYW0gdGVzdGluZyBpcyBidWlsZGlu
ZyBhIFlvY3RvIFByb2plY3QgKGpldGhybykgc3lzdGVtDQo+Y29yZS1pbWFnZS1iYXNlLCBhbmQg
YWRkaW5nIHRvIGl0Og0KPiJwYWNrYWdlZ3JvdXAtY29yZS1idWlsZGVzc2VudGlhbCxsaWJlbGYs
ZWxmdXRpbHMtZGV2LGJpbnV0aWxzLXN0YXRpY2RldixnbGliYy1zdGF0aWNkZXYiDQo+DQo+VGhl
IGNvcHlpbmcgYSBjaGVja2VkIG91dCB2ZXJzaW9uIG9mIHRoZSBwcmVsaW5rLWNyb3NzIHJlcG9z
aXRvcnkgd2l0aCB0aGUNCj5wcmVsaW5rX2Nyb3NzX2FhcmNoNjQgYnJhbmNoIGNoZWNrZWQgb3V0
Lg0KPg0KPk9uIHRoZSB0YXJnZXQ6DQo+DQo+YXV0b3JlY29uZiAtaWYNCj4uL2NvbmZpZ3VyZQ0K
Pm1ha2UNCj5tYWtlIC1DIHRlc3RzdWl0ZSBjaGVjaw0KPg0KPk1vc3QgdGVzdHMgc3RpbGwgZmFp
bCwgYW5kIGFsbCBvZiB0aGUgVExTIHRlc3RzIHJlc3VsdCBpbiBhIHNlZ2ZhdWx0Lg0KPg0KPihJ
IGRvIGhhdmUgdGhlICdhYXJjaDY0L2RsLW1hY2hpbmUuaDogRml4IGxvYWQtYWRkcmVzcyBmb3Ig
cHJlbGluayBzdXBwb3J0Jw0KPmFwcGxpZWQgdG8gbXkgZ2xpYmMuICBBcmUgdGhlcmUgYW55IG90
aGVyIHBhdGNoZXMgdGhhdCBtYXkgbmVlZCB0byBiZSBhcHBsaWVkPykNCj4NCj4tLU1hcmsNCkhp
IE1hcmssDQoNCkFwYXJ0IGZyb20gZml4aW5nIGxvYWQtYWRkcmVzcyBjaGFuZ2VzLCBJIGhhdmUg
ZG9uZSBvbmUgbW9yZSBjaGFuZ2UgaW4gX2RsX3Rsc2Rlc2NfdW5kZWZ3ZWFrIGZ1bmN0aW9uIA0K
b2YgbG9hZGVyIHRvIGhhbmRsZSBBQVJDSDY0X1RMU0RFU0MgcmVsb2NhdGlvbiB0eXBlLiBTYW1l
dGhpbmcgSSBoYXZlIG1lbnRpb25lZCBpbiBwYXRjaCBkZXNjcmlwdGlvbiBvZiANCltQQVRDSCAx
LzFdIHByZWxpbms6IEFBUkNINjQgc3VwcG9ydCBhZGRlZC4gVGhpcyBpcyBraW5kIG9mIGEgcXVp
Y2sgZml4LCBzbyBJIGFtIG9wZW4gdG8gc3VnZ2VzdGlvbiByZWdhcmRpbmcgcHJvcGVyIGZpeC4N
Cg0KQ2hhbmdlIGRvbmUgaW4gX2RsX3Rsc2Rlc2NfdW5kZWZ3ZWFrDQotLS0gYS9wb3J0cy9zeXNk
ZXBzL2FhcmNoNjQvZGwtdGxzZGVzYy5TDQorKysgYi9wb3J0cy9zeXNkZXBzL2FhcmNoNjQvZGwt
dGxzZGVzYy5TDQpAQCAtOTgsNyArOTgsNiBAQCBfZGxfdGxzZGVzY191bmRlZndlYWs6DQogICAg
ICAgIGNmaV9hZGp1c3RfY2ZhX29mZnNldCgxNikNCiAgICAgICAgbGRyICAgICB4MCwgW3gwLCAj
OF0NCiAgICAgICAgbXJzICAgICB4MSwgdHBpZHJfZWwwDQotICAgICAgIHN1YiAgICAgeDAsIHgw
LCB4MQ0KICAgICAgICBsZHIgICAgIHgxLCBbc3BdLCAjMTYNCiAgICAgICAgY2ZpX2FkanVzdF9j
ZmFfb2Zmc2V0KDE2KQ0KICAgICAgICBSRVQNCg0KDQpSZWFzb24gZm9yIHRoaXMgY2hhbmdlOiAN
ClRvIGhhbmRsZSBBQVJDSDY0X1RMU0RFU0MsIEkgaGF2ZSByZWZlcnJlZCAgYmVsb3cgcGF0Y2gg
d2hpY2ggc3RhdGUgY3JlYXRlIGEgY29uZmxpY3QgZm9yIFRMU0RFU0MuDQpbeW9jdG9dIFtwcmVs
aW5rLWNyb3NzXVtQQVRDSF0gQWx3YXlzIGNyZWF0ZSBhIGNvbmZsaWN0IGZvciBSX0FSTV9UTFNf
REVTQyByZWxvY3MuIA0KaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dpdC5jZ2kv
cHJlbGluay1jcm9zcy9jb21taXQvP2g9Y3Jvc3NfcHJlbGlua19hYXJjaDY0JmlkPWZhYTA2OWRl
ZWM5OWJmNjE0MThkMGJhYjgzMWM4M2Q3YzFiNzk3Y2ENCg0KSSBoYXZlIGRvbmUgdGhlIHNhbWUg
aW1wbGVtZW50YXRpb24gZm9yIEFBUkNINjQuICBMb2FkZXIgaGFuZGxlcyBBQVJDSDY0X1RMU0RF
U0MgY29uZmxpY3QgYXMgYmVsb3cuDQpjYXNlIFJfQUFSQ0g2NF9UTFNERVNDOg0KLi4uLg0KICAg
ICAgICAgICAgaWYgKCEgc3ltKQ0KICAgICAgICAgICAgICB7DQogICAgICAgICAgICAgICAgdGQt
PmFyZyA9ICh2b2lkKilyZWxvYy0+cl9hZGRlbmQ7DQogICAgICAgICAgICAgICAgdGQtPmVudHJ5
ID0gX2RsX3Rsc2Rlc2NfdW5kZWZ3ZWFrOw0KICAgICAgICAgICAgICB9DQogDQpBZnRlciB0aGlz
IGNoYW5nZSwgYWxsIHRoZSBhY2Nlc3MgdG8gX190aHJlYWQgdmFyaWFibGUgd2lsbCBlbmQgdXAg
Y2FsbGluZyBfZGxfdGxzZGVzY191bmRlZndlYWsgZnVuY3Rpb24uIA0KX2RsX3Rsc2Rlc2NfdW5k
ZWZ3ZWFrIHJldHVybnMgYWRkZW5kIG1pbnVzICB0aHJlYWQgcG9pbnRlciBidXQgYWNjZXNzIHRv
IF9fdGhyZWFkIGV4cGVjdHMgb25seSBhZGRlbmQgYXMgcGVyIGFzc2VtYmx5LiANClNvIHJlbW92
ZWQgc3VidHJhY3Rpb24gb3BlcmF0aW9uIGZyb20gY29kZS4NCg0KRXhhbXBsZSBvZiBzaW1wbGUg
X190aHJlYWQgdmFyaWFibGUgZ2V0dGluZyBhY2Nlc3NlZCBpbiBzaGFyZWQgbGlicmFyeS4NCl9f
dGhyZWFkIGludCBpID0gMTA7DQpkdW1teSgpIHsNCiAgICBwcmludGYoIlZhbHVlIG9mIGkgJWQg
XG4iLGkpOw0KfQ0KDQpPYmpkdW1wIG9mIGFib3ZlIGNvZGU6DQowMDAwMDAwMDAwMDAwODhjIDxk
dW1teT46DQogODkwOiAgIGQ1M2JkMDQxICAgIG1ycyB4MSwgdHBpZHJfZWwwICAgLy8gUmVhZCBj
b3Byb2Nlc3NvciByZWdpc3RlciBmb3IgdGhyZWFkIHBvaW50ZXIuIHgxIHdpbGwgY29udGFpbiB0
aHJlYWQgcG9pbnRlcg0KIDg5NDogICA5MDAwMDA4MCAgICBhZHJwICAgIHgwLCAxMDAwMCA8X19G
UkFNRV9FTkRfXysweGY2Mjg+DQogODk4OiAgIGY5NDYyODAyICAgIGxkciB4MiwgW3gwLCMzMTUy
XSAgLy8gUmVhZCAuZ290LnBsdCBzZWN0aW9uIHRvIGZldGNoIGFkZHJlc3Mgb2YgdGxzIGhhbmRs
ZXIgKF9kbF90bHNkZXNjX3VuZGVmd2VhaykNCiA4OWM6ICAgOTEzMTQwMDAgICAgYWRkIHgwLCB4
MCwgIzB4YzUwDQogOGEwOiAgIGQ2M2YwMDQwICAgIGJsciB4MiAgIC8vIEZ1bmN0aW9uIGNhbGwg
dG8gX2RsX3Rsc2Rlc2NfdW5kZWZ3ZWFrLCBhZnRlciBmdWN0aW9uIGNhbGwgeDAgd2lsbCBjb250
YWluIGFkZGVuZCAtIHRocmVhZCBwb2ludGVyDQogOGE0OiAgIDkxMDAwM2ZkICAgIG1vdiB4Mjks
IHNwDQogOGE4OiAgIDkwMDAwMDAyICAgIGFkcnAgICAgeDIsIDAgPGk+DQogOGFjOiAgIGE4YzE3
YmZkICAgIGxkcCB4MjksIHgzMCwgW3NwXSwjMTYNCiA4YjA6ICAgYjg2MDY4MjEgICAgbGRyIHcx
LCBbeDEseDBdIC8vIEFjY2VzcyB0byB4MCAoYWRkZW5kIC0gdGhyZWFkIHBvaW50ZXIpICsgeDEg
KHRocmVhZCBwb2ludGVyKS4gQWNjZXNzIHRvIGFkZGVuZCB3aWxsIHJlc3VsdCBzZWcgZmF1bHQN
CiA4YjQ6ICAgOTEyMzQwNDAgICAgYWRkIHgwLCB4MiwgIzB4OGQwDQogOGI4OiAgIDE3ZmZmZmFh
ICAgIGIgICA3NjAgPHByaW50ZkBwbHQ+DQoNClNvIGNoYW5nZSBkb25lIGluIGxvYWRlciB0byBt
YWtlIF9kbF90bHNkZXNjX3VuZGVmd2VhayByZXR1cm4gb25seSBhZGRlbmQuDQoNClRoYW5rcyAm
IFJlZ2FyZHMsDQpWYW5lZXQgTmFyYW5n



