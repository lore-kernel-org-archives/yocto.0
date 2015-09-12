Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F02C2E00CD9; Fri, 11 Sep 2015 22:45:27 -0700 (PDT)
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
X-Greylist: delayed 602 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Sep 2015 22:45:20 PDT
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBD13E00B37
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:45:20 -0700 (PDT)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NUJ01CYSU6TRB30@mailout3.samsung.com> for
	yocto@yoctoproject.org; Sat, 12 Sep 2015 14:35:17 +0900 (KST)
Received: from epcpsbgx4.samsung.com ( [172.20.52.126])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 32.C7.28411.499B3F55;
	Sat, 12 Sep 2015 14:35:17 +0900 (KST)
X-AuditID: cbfee68e-f79c56d000006efb-9e-55f3b9943371
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx4.samsung.com (EPCPMTA) with SMTP id E2.13.25195.499B3F55;
	Sat, 12 Sep 2015 14:35:16 +0900 (KST)
Date: Sat, 12 Sep 2015 05:35:16 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-version: 1.0
X-MTR: 20150912053147187@maninder1.s
Msgkey: 20150912053147187@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150912053147187@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <87817094.969641442036116314.JavaMail.weblogic@ep2mlwas07a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOIsWRmVeSWpSXmKPExsWyRsSkTnfqzs+hBuefsVhMermGzYHRo/1E
	H1sAYxSXTUpqTmZZapG+XQJXxpvGWawFn3grWg89ZG1gPMDbxcjJISSgJrFo72M2EFtCwERi
	x6V37BC2mMSFe+uB4lxANUsZJVZff8IOU9R+7ghUYg6jxN33u1hAEiwCqhL/r+8Cm8QmoC9x
	du86ZhBbWMBRYndPCyuILSKQIHF25zSwOLNAnkTLaogaIQFFifU3njCC2LwCghInZz5hgVim
	IjHt2y02iLiqxMK1c1kh4nISS6ZeZoKweSVmtD9lgYlP+7qGGcKWljg/awMjzDeLvz+GivNL
	HLu9A6pXQGLqmYNQNZoSB7bdgarhk1iz8C0LTP2uU8uZYXbd3zIXqldCYmvLE1aIXxQlpnQ/
	ZIewDSSOLJrDiu4XXgF3iQu3NrKAAk5CoJdD4u6HF8wTGJVmIambhWTWLCSzkNUsYGRZxSia
	WpBcUJyUXmSkV5yYW1yal66XnJ+7iRGYHk7/e9a3g/HmAetDjAIcjEo8vBnVn0OFWBPLiitz
	DzGaAuNpIrOUaHI+MAnllcQbGpsZWZiamBobmVuaKYnzJkj9DBYSSE8sSc1OTS1ILYovKs1J
	LT7EyMTBKdXAyNTWb9XqHNO+8bOulrbw2yOhV3dN1tNUzK6KlPeRUXMsUzjEN8fq4a9tLHPj
	d516kbjNYtnnh7Wbjh/yqpO8KDjv5bLgNZcuMx/05FlyNdsnvU3q8jmlz6tl8rLLcp3nvowp
	mX66bNWcs9ynV9msqqpT3uLGsP9eS15oxqXd1cruO72eh2uUKrEUZyQaajEXFScCAO6hwjAK	AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBKsWRmVeSWpSXmKPExsVy+t/tPt0pOz+HGlx9YG4x6eUaNgdGj/YT
	fWwBjFFpNhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlA
	U5UUyhJzSoFCAYnFxUr6djZF+aUlqQoZ+cUltkrRhuZGekYGeqZGeoamsVaGBgZGpkA1CWkZ
	bxpnsRZ84q1oPfSQtYHxAG8XIyeHkICaxKK9j9lAbAkBE4n2c0egbDGJC/fWA9lcQDVzGCXu
	vt/FApJgEVCV+H99F1gRm4C+xNm965hBbGEBR4ndPS2sILaIQILE2Z3TwOLMAnkSLashaoQE
	FCXW33jCCGLzCghKnJz5hAVimYrEtG+32CDiqhIL185lhYjLSSyZepkJwuaVmNH+lAUmPu3r
	GmYIW1ri/KwNjDBHL/7+GCrOL3Hs9g6oXgGJqWcOQtVoShzYdgeqhk9izcK3LDD1u04tZ4bZ
	dX/LXKheCYmtLU9YIX5RlJjS/ZAdwjaQOLJoDiu6X3gF3CUu3NrIMoFRdhaS1Cwk7bOQtCOr
	WcDIsopRNLUguaA4Kb3CRK84Mbe4NC9dLzk/dxMjOBU9W7KDseGC9SFGAQ5GJR7ejOrPoUKs
	iWXFlbmHGCU4mJVEeIuFgUK8KYmVValF+fFFpTmpxYcYTYGxNpFZSjQ5H5gm80riDY1NzE2N
	TS0MDM3NzZTEedVWPgsVEkhPLEnNTk0tSC2C6WPi4JRqYLQI12Xbc0vusss0+yOFD9d8lZx7
	yyL75Jz6tVsZ7c/c+mAoEmVsEnD24uz9H7eFub8PnCr5MCNFqF+/4frnyK8OEXn7nhx9kH3z
	r39VDJdk/YafFuqGMVsydf/v2yg6I0iSwWVel0mbzZKbs53KjurKfnnPMqP7M1PhP9bX7GZh
	V7ybnDoPfFJiKc5INNRiLipOBACZdHaZWwMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: Vaneet Narang <v.narang@samsung.com>, AJEET YADAV <ajeet.y@samsung.com>,
	pankaj.m@samsung.com
Subject: Re: [prelink-cross] LD_PRELOAD Implementation in Prelink
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
X-List-Received-Date: Sat, 12 Sep 2015 05:45:28 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

SGkgTWFyaywNCg0KVGhhbmtzIGZvciBjaGVja2luZywNCg0KVGhlcmUgaXMgb25lIGJ1ZyBpbiB0
aGlzIHBhdGNoICwgd2Ugd2lsbCBzaGFyZSB0aGUgZml4IGFmdGVyIHRlc3RpbmcgcHJvYmFibHkg
b24gbW9uZGF5Lg0KDQpUaGFua3MNCk1hbmluZGVyIFNpbmdoDQoNCg0KPj5NZXJnZWQgdG8gdGhl
IHN0YWdpbmcgYnJhbmNoLg0KDQo+T24gNS8xOC8xNSAxMjoxNyBBTSwgTWFuaW5kZXIgU2luZ2gg
d3JvdGU6DQo+PiBFUC1GNkFBMDYxOEM0OUM0QUVEQTczQkZGMUIzOTk1MEJBQg0KPj4gSGksDQo+
PiANCj4+IFN1YmplY3Q6IFtQQVRDSCAxLzFdIExEX1BSRUxPQUQgSW1wbGVtZW50YXRpb24gaW4g
UHJlbGluaw0KPj4gDQo+PiBwcmVsaW5rIGZhaWxzIGlmICB0aGVyZSBhcmUgbGRfcHJlbG9hZCBs
aWJzIHByZXNlbnQgYXQgdGFyZ2V0IHdpdGggYmVsb3cgZXJyb3IuDQo+PiAJZXhwZWN0IGxpYnNY
LnNvLjEsIGZvdW5kIC9saWIvbGliWS5zbyBpbiBkZXBlbmRlbmN5IG9yZGVyDQo+PiAJd2hlcmUg
bGliWS5zby4xIGlzIGxkX3ByZWxvYWQgbGliDQo+PiAgDQo+PiBUbyB1c2UgdGhpcyBmZWF0dXJl
IDoNCj4+IC4vcHJlbGluayAtLWxkLXByZWxvYWQ9bGlicHJlbG9hZDEuc286bGlicHJlbG9hZDIu
c286Li4uLiB1cHRvIDIwIGxpYnMNCj4+IE9yZGVyIG9mIGxpYnJhcmllcyB0byBiZSBwcmVsb2Fk
ZWQgaXMgc2lnbmlmaWNhbnQuIE1ha2Ugc3VyZSBzZXF1ZW5jZQ0KPj4gbWVudGlvbmVkIGluIHBy
ZWxpbmsNCj4+IHNob3VsZCBiZSBzYW1lIGFzIHJ1bnRpbWUgc2VxdWVuY2UuDQo+PiANCj4+IFNp
Z25lZC1vZmYtYnk6IFZhbmVldCBOYXJhbmcgPHYubmFyYW5nQHNhbXN1bmcuY29tPg0KPj4gU2ln
bmVkLW9mZi1ieTogTWFuaW5kZXIgU2luZ2ggPG1hbmluZGVyMS5zQHNhbXN1bmcuY29tPg0KPj4g
UmV2aWV3ZWQtYnk6IEFqZWV0IFlhZGF2IDxhamVldC52QHNhbXN1bmcuY29tPg0KPj4gUmV2aWV3
ZWQtYnk6IEdlb24taG8gS2ltIDxnaDAwNy5raW1Ac2Ftc3VuZy5jb20+DQo+PiAtLS0NCj4+ICBz
cmMvZ2F0aGVyLmMgICAgfCAgICA4ICsrKysrKystDQo+PiAgc3JjL2dldC5jICAgICAgIHwgICAg
OSArKysrKysrKy0NCj4+ICBzcmMvbWFpbi5jICAgICAgfCAgICA2ICsrKysrKw0KPj4gIHNyYy9w
cmVsaW5rLmggICB8ICAgIDEgKw0KPj4gIHNyYy9ydGxkL3J0bGQuYyB8ICAgNTEgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tDQo+PiAgNSBmaWxlcyBj
aGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0K



