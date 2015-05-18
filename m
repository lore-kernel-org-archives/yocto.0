Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCC85E009E1; Sun, 17 May 2015 22:02:33 -0700 (PDT)
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
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52CF3E009AE
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 22:02:31 -0700 (PDT)
Received: from epcpsbgr1.samsung.com
	(u141.gpu120.samsung.co.kr [203.254.230.141])
	by mailout4.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NOJ001SH4O4WQ50@mailout4.samsung.com> for
	yocto@yoctoproject.org; Mon, 18 May 2015 14:02:28 +0900 (KST)
Received: from epcpsbgx2.samsung.com ( [172.20.52.125])
	by epcpsbgr1.samsung.com (EPCPMTA) with SMTP id 11.FC.29324.46279555;
	Mon, 18 May 2015 14:02:28 +0900 (KST)
X-AuditID: cbfee68d-f79106d00000728c-b3-555972649924
Received: from epmailer02 ( [203.254.219.142])
	by epcpsbgx2.samsung.com (EPCPMTA) with SMTP id 66.8E.31182.26279555;
	Mon, 18 May 2015 14:02:26 +0900 (KST)
Date: Mon, 18 May 2015 05:02:26 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: "mark.hatle@windriver.com" <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-version: 1.0
X-MTR: 20150518045225084@maninder1.s
Msgkey: 20150518045225084@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150518045225084@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <2324891.319351431925345938.JavaMail.weblogic@ep2mlwas03d>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWyRsSkVjelKDLUYPYbC4tJL9ewOTB6tJ/o
	YwtgjOKySUnNySxLLdK3S+DK6N+9i6ngi0LFm/0zmBoYWxS6GDk5hATUJBbtfcwGYksImEj8
	W/udHcIWk7hwbz1QnAuoZimjxKsVS5hgippfn2KEaJ7DKHFmniqIzSKgKvFrwhqwOJuAvsTZ
	veuYQWxhAWeJfQ9fg9kiAnkSW/uOgNnMAhES/w4+ZIKYoyix/sYTsF5eAUGJkzOfsEDsUpHo
	XHSaFSKuKtF8+jQzRFxOYsnUy1D38ErMaH/KAhOf9nUNVI20xPlZGxhhnln8/TFUnF/i2O0d
	UL0CElPPHISq0ZSYf+Eh1PN8EmsWvmWBqd91ajkzzK77W+ZC9UpIbG15wgrxi6LElG6IXmYB
	A4kji+awovuFV8BNYsqvR8ygAJUQaOWQ2LrrJ9MERqVZSOpmIZk1C8ksZDULGFlWMYqmFiQX
	FCelFxnqFSfmFpfmpesl5+duYgQmh9P/nvXuYLx9wPoQowAHoxIPr8WbiFAh1sSy4srcQ4ym
	wHiayCwlmpwPTEF5JfGGxmZGFqYmpsZG5pZmSuK8ilI/g4UE0hNLUrNTUwtSi+KLSnNSiw8x
	MnFwSjUwyv9zFj7LUn1na8eX3o99lXFVS5inbPKuMMiqiZsSsLrxVNrONe+vrbn2nPXhAbO3
	/yeUvj07ZXMsl+uh7R6r72glWG/SvLCx741kT+vLoPRNNfufbp3YOMWkJsSN/8K0E8yrY7/y
	L/JcoXR/WciR0wu3NG8s0Y1Vm7zz8DuRhy+i/5xbNregTE+JpTgj0VCLuag4EQDmfMYhCQMA	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRmVeSWpSXmKPExsVy+t/tPt2koshQg3eTFC0mvVzD5sDo0X6i
	jy2AMSrNJiM1MSW1SCE1Lzk/JTMv3VbJOzjeOd7UzMBQ19DSwlxJIS8xN9VWycUnQNctMwdo
	qpJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVina0NxIz8hAz9RIz9A01srQwMDIFKgmIS2j
	f/cupoIvChVv9s9gamBsUehi5OQQElCTWLT3MRuILSFgItH8+hQjhC0mceHeejaImjmMEmfm
	qYLYLAKqEr8mrAGrYRPQlzi7dx0ziC0s4Cyx7+FrMFtEIE9ia98RMJtZIELi38GHTBBzFCXW
	33gC1ssrIChxcuYTFohdKhKdi06zQsRVJZpPn2aGiMtJLJl6mQnC5pWY0f6UBSY+7esaqBpp
	ifOzNsDdvPj7Y6g4v8Sx2zugegUkpp45CFWjKTH/wkN2CJtPYs3Ctyww9btOLWeG2XV/y1yo
	XgmJrS1PWCF+UZSY0g3RyyxgIHFk0RxWdL/wCrhJTPn1iHkCo+wsJKlZSNpnIWlHVrOAkWUV
	o2hqQXJBcVJ6hZFecWJucWleul5yfu4mRnAierZoB+O/89aHGAU4GJV4eC3eRIQKsSaWFVfm
	HmKU4GBWEuGNPAMU4k1JrKxKLcqPLyrNSS0+xGgKjLWJzFKiyfnAJJlXEm9obGJuamxqYWBo
	bm6mJM77/1xuiJBAemJJanZqakFqEUwfEwenVAPjQ/9tSp8zKxyC3T3z1h3/0f9gze0fN3sC
	D0y/znMvw2TlvG65UgWuqtme61VzrjtX+LKXNvFIWu0+av5j6mYmlamGpz/0zvx8NW6FHcOh
	dZe+/92w4eM5f/YZCbvje/52ah002SM+c2nhsRJfA+V/MxadbT+pu2Ezr7k2d0pRhfSStAen
	yzYcVmIpzkg01GIuKk4EAIttbd1aAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "v.narang@samsung.com" <v.narang@samsung.com>,
	AJEET YADAV <ajeet.y@samsung.com>
Subject: [EDT][prelink-cross][PATCH 1/1] bugifx for soname mismatch
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
X-List-Received-Date: Mon, 18 May 2015 05:02:33 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

RVAtRjZBQTA2MThDNDlDNEFFREE3M0JGRjFCMzk5NTBCQUIKCkhpLAoKU3ViamVjdDogW1BBVENI
IDEvMV0gYnVnaWZ4IGZvciBzb25hbWUgbWlzbWF0Y2gKCkFzIHBlciBteSB1bmRlcnN0YW5kaW5n
LCB0aGlzIGlzc3VlIG5lZWRzIHRvIGJlIGZpeGVkIGluIGxvYWRlciwgQnV0IGlmIGNhbiBub3Qg
YmUgZml4ZWQgCnRoZW4gdGhlcmUgaXMgd29yayBhcm91bmQgZm9yIGZvbGxvd2luZyBpc3N1ZS4K
Cklzc3VlIGNhc2U6LQoxLiBDcmVhdGUgYSBsaWJyYXJ5IGxpYkIuc28gaGF2aW5nIHNvbmFtZSBs
aWJCLnNvCjIuIEF0IGNvbXBpbGUgdGltZSB3ZSBsaW5rZWQgbGliQi5zbyB0byBiaW5hcnksIGFu
ZCB0aHVzIGluIE5FRURFRCBzZWN0aW9uIGl0IHdpbGwgc2hvdyBsaWJCLnNvCglnY2MgdGVzdC5j
IC1vIHRlc3QgLWxCCjMuIE5vdyBjcmVhdGUgYSBzb2Z0bGluayBhcyBiZWxvdzotCglsbiAtc2Yg
bGliQS5zbyBsaWJCLnNvCgkobGliQi5zbyAtPiBsaWJBLnNvKQo0LiBObyB3aGVuIHdlIGRvIHBy
ZWxpbmssIExpYnJhcnkgbGlzdCBzZWN0aW9uICcuZ251LmxpYmxpc3QnIGNvbnRhaW5zICBlbnRy
aWVzIGFzIGJlbG93OgoJMDogbGliQS5zbyAgICAgICAgICAgICAgMjAxNC0xMi0wMlQwNDoyODo0
MCAweDk1YzkyOWU1IDAgICAgICAgMCAvL1NPTkFNRQo1LiBBbmQgYXQgcnVuIHRpbWUgcHJlbGlu
ayB3aWxsIGJlIGZhaWxlZCBiZWNhdXNlIG9mIGRlcGVuZGVuY3kgbWlzbWF0Y2ggZHVlIHRvIHNv
bmFtZSBpc3N1ZS4KCWV4cGVjdCBsaWJBLnNvLCBmb3VuZCAvbGliL2xpYkIuc28gaW4gZGVwZW5k
ZW5jeSBvcmRlcgoJcHJlbGluayBjaGVja2luZzogZmFpbGVkCgkKSXNzdWUgaXMgcHJlbGluayBm
aWxscyBzb25hbWUgaW4gZ251LmxpYmxpc3Qgc2VjdGlvbiBidXQgbG9hZGVyIHVzZXMgZmlsZW5h
bWUgbm90IHNvbmFtZS5TbyB3ZQpjcmVhdGVkIGEgd29ya2Fyb3VuZCBmb3IgdGhpcyBpc3N1ZS4K
ClRvIHVzZSBmaWxlbmFtZSBpbnN0ZWFkIG9mIHNvbmFtZSBpbiBnbnUubGlibGlzdApVc2FnZSA6
Li9wcmVsaW5rIC1zIG9yIC4vcHJlbGluayAtLWlnbm9yZS1zb25hbWUKCgpTaWduZWQtb2ZmLWJ5
OiBNYW5pbmRlciBTaW5naCA8bWFuaW5kZXIxLnNAc2Ftc3VuZy5jb20+ClNpZ25lZC1vZmYtYnk6
IFZhbmVldCBOYXJhbmcgPHYubmFyYW5nQHNhbXN1bmcuY29tPgpSZXZpZXdlZC1ieTogQWplZXQg
WWFkYXYgPGFqZWV0LnlAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBHZW9uLWhvIEtpbSA8Z2gw
MDcua2ltQHNhbXN1bmcuY29tPgotLS0KIHNyYy9nZXQuYyAgICAgfCAgICAyICsrCiBzcmMvbWFp
bi5jICAgIHwgICAgNSArKysrKwogc3JjL3ByZWxpbmsuaCB8ICAgIDEgKwogMyBmaWxlcyBjaGFu
Z2VkLCA4IGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvc3JjL2dl
dC5jIGIvc3JjL2dldC5jCmluZGV4IGZmZWZlNzMuLmJiMDEzMzEgMTAwNjQ0Ci0tLSBhL3NyYy9n
ZXQuYworKysgYi9zcmMvZ2V0LmMKQEAgLTE4Miw2ICsxODIsOCBAQCBwcmVsaW5rX3JlY29yZF9y
ZWxvY2F0aW9ucyAoc3RydWN0IHByZWxpbmtfaW5mbyAqaW5mbywgRklMRSAqZiwKIAkJfQogCSAg
ICB9CiAJfQorICAgICAgaWYoaWdub3JlX3NvbmFtZSkgCisgICAgICAgICAgc29uYW1lID0gc3Ry
cmNocihmaWxlbmFtZSwgJy8nKSArIDE7CiAKICAgICAgIGlmICghIHRkZXBzKQogCWRlcHNbMF0u
ZW50ID0gaW5mby0+ZW50OwpkaWZmIC0tZ2l0IGEvc3JjL21haW4uYyBiL3NyYy9tYWluLmMKaW5k
ZXggMTVjMWQ1My4uNTg5MWRiYyAxMDA2NDQKLS0tIGEvc3JjL21haW4uYworKysgYi9zcmMvbWFp
bi5jCkBAIC02MSw2ICs2MSw3IEBAIGNvbnN0IGNoYXIgKnByZWxpbmtfY2FjaGUgPSBQUkVMSU5L
X0NBQ0hFOwogY29uc3QgY2hhciAqdW5kb19vdXRwdXQ7CiBpbnQgbm9yZWV4ZWNpbml0OwogdGlt
ZV90IGluaXRjdGltZTsKK2ludCBpZ25vcmVfc29uYW1lID0gMDsKIAogY29uc3QgY2hhciAqYXJn
cF9wcm9ncmFtX3ZlcnNpb24gPSBQUkVMSU5LX1BST0cgUEtHVkVSU0lPTiAiIDEuMCI7CiAKQEAg
LTEyMyw2ICsxMjQsNyBAQCBzdGF0aWMgc3RydWN0IGFyZ3Bfb3B0aW9uIG9wdGlvbnNbXSA9IHsK
ICAgeyJydGxkIiwJCU9QVF9SVExELCAiUlRMRCIsIE9QVElPTl9ISURERU4sICIiIH0sCiAgIHsi
aW5pdCIsCQknaScsIDAsIDAsICAiRG8gbm90IHJlLWV4ZWN1dGUgaW5pdCIgfSwKICAgeyJhbGxv
dy10ZXh0cmVsIiwJT1BUX0FMTE9XX1RFWFRSRUwsIDAsIDAsICJBbGxvdyB0ZXh0IHJlbG9jYXRp
b25zIGV2ZW4gb24gYXJjaGl0ZWN0dXJlcyB3aGVyZSB0aGV5IG1heSBub3Qgd29yayIgfSwKKyAg
eyJpZ25vcmUtc29uYW1lIiwJJ3MnLCAwLCAwLCAgIlRvIHVzZSBmaWxlbmFtZSBpbnN0ZWFkIG9m
IHNvbmFtZSBpbiBnbnUubGlibGlzdCIgfSwKICAgeyAwIH0KIH07CiAKQEAgLTI1MCw2ICsyNTIs
OSBAQCBwYXJzZV9vcHQgKGludCBrZXksIGNoYXIgKmFyZywgc3RydWN0IGFyZ3Bfc3RhdGUgKnN0
YXRlKQogICAgIGNhc2UgT1BUX0FMTE9XX1RFWFRSRUw6CiAgICAgICBhbGxvd19iYWRfdGV4dHJl
bCA9IDE7CiAgICAgICBicmVhazsKKyAgICBjYXNlICdzJzoKKyAgICAgIGlnbm9yZV9zb25hbWUg
PSAxOworICAgICAgYnJlYWs7IAogICAgIGRlZmF1bHQ6CiAgICAgICByZXR1cm4gQVJHUF9FUlJf
VU5LTk9XTjsKICAgICB9CmRpZmYgLS1naXQgYS9zcmMvcHJlbGluay5oIGIvc3JjL3ByZWxpbmsu
aAppbmRleCA2NmFiYTk5Li43NzhlNjdhIDEwMDY0NAotLS0gYS9zcmMvcHJlbGluay5oCisrKyBi
L3NyYy9wcmVsaW5rLmgKQEAgLTU5Nyw2ICs1OTcsNyBAQCBleHRlcm4gZW51bSB2ZXJpZnlfbWV0
aG9kX3QgdmVyaWZ5X21ldGhvZDsKIGV4dGVybiBpbnQgcXVpY2s7CiBleHRlcm4gbG9uZyBsb25n
IHNlZWQ7CiBleHRlcm4gR0VsZl9BZGRyIG1tYXBfcmVnX3N0YXJ0LCBtbWFwX3JlZ19lbmQsIGxh
eW91dF9wYWdlX3NpemU7CitleHRlcm4gaW50IGlnbm9yZV9zb25hbWU7CiAKIGV4dGVybiBjb25z
dCBjaGFyICpzeXNyb290OwogCi0tIAoxLjcuMQoKClRoYW5rcyAKTWFuaW5kZXIgU2luZ2g=



