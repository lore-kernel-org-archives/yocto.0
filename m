Return-Path: <maninder1.s@samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A1F4E009D8; Tue,  5 May 2015 22:07:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00, MIME_BASE64_BLANKS, 
	RCVD_IN_DNSWL_HI, SPF_HELO_PASS,
	XPRIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 MIME_BASE64_BLANKS RAW: Extra blank lines in base64 encoding
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [203.254.224.33 listed in list.dnswl.org]
	*  1.0 XPRIO Has X-Priority header
Received: from mailout3.samsung.com (mailout3.samsung.com [203.254.224.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 532B1E009AA
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 22:07:04 -0700 (PDT)
Received: from epcpsbgr2.samsung.com
	(u142.gpu120.samsung.co.kr [203.254.230.142])
	by mailout3.samsung.com (Oracle Communications Messaging Server
	7.0.5.31.0 64bit (built May  5 2014))
	with ESMTP id <0NNW00KX4WVQ2S10@mailout3.samsung.com> for
	yocto@yoctoproject.org; Wed, 06 May 2015 14:07:02 +0900 (KST)
Received: from epcpsbgx2.samsung.com ( [172.20.52.123])
	by epcpsbgr2.samsung.com (EPCPMTA) with SMTP id 00.4C.28411.671A9455;
	Wed, 6 May 2015 14:07:02 +0900 (KST)
X-AuditID: cbfee68e-f79c56d000006efb-56-5549a17629b4
Received: from epmailer03 ( [203.254.219.143])
	by epcpsbgx2.samsung.com (EPCPMTA) with SMTP id AB.36.31182.671A9455;
	Wed, 6 May 2015 14:07:02 +0900 (KST)
Date: Wed, 06 May 2015 05:07:02 +0000 (GMT)
From: Maninder Singh <maninder1.s@samsung.com>
To: mark.hatle@windriver.com
MIME-version: 1.0
X-MTR: 20150506045445838@maninder1.s
Msgkey: 20150506045445838@maninder1.s
X-EPLocale: en_US.windows-1252
X-Priority: 3
X-EPWebmail-Msg-Type: personal
X-EPWebmail-Reply-Demand: 0
X-EPApproval-Locale: 
X-EPHeader: ML
X-MLAttribute: 
X-RootMTR: 20150506045445838@maninder1.s
X-ParentMTR: 
X-ArchiveUser: 
X-CPGSPASS: N
X-ConfirmMail: N,general
MIME-version: 1.0
Message-id: <205051265.113801430888822142.JavaMail.weblogic@epmlwas03a>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWyRsSkWrdsoWeowfGPphaTXq5hc2D0aD/R
	xxbAGMVlk5Kak1mWWqRvl8CV8XH7PMaCZ3IV15tfszUw/pHtYuTkEBJQk1i09zEbiC0hYCKx
	t/UBM4QtJnHh3nqgOBdQzVJGid4tW5lhihau3cgKkZjDKDFt1VN2kASLgIrE5d/7WUBsNgF9
	ibN714E1CAvYSWx/3gVWIyKgKLHg1VEmEJtZoFZi79lZrBBXKEqsv/GEEcTmFRCUODnzCdAc
	DqBlKhK/JopBhFUl7q/YCHWonMSSqZeZIGxeiRntT1lg4tO+roG6U1ri/KwNjDDPLP7+GCrO
	L3Hs9g6oXgGJqWcOQtVoSqy4/RdqPp/EmoVvWWDqd51azgyz6/6WuVC9EhJbW56wQryiKDGl
	+yE7hG0gcWTRHFZUr4DY7hIHvz8Ah5uEwEQOiWm9i5knMCrNQlI3C8msWUhmIatZwMiyilE0
	tSC5oDgpvchIrzgxt7g0L10vOT93EyMwOZz+96xvB+PNA9aHGAU4GJV4eG9Ee4YKsSaWFVfm
	HmI0BUbTRGYp0eR8YArKK4k3NDYzsjA1MTU2Mrc0UxLnTZD6GSwkkJ5YkpqdmlqQWhRfVJqT
	WnyIkYmDU6qB0Vra6OBE/yvFb0VcL35S/y7YePdeenjbe56VwmpLxA2dT5vOY3m4OmFRpXp1
	5Lq1KyfaKk3hYxcrOc7sq37xuMf5zoLNOUk8n+35k1tUwqKfmhe94FhmZfPu0edXthLMCipl
	/N4ODjerdLSXv3F2O+TvY8Pprfrh75UinxknDF+E9pRGXzNRYinOSDTUYi4qTgQAa/R7BQkD	AAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOKsWRmVeSWpSXmKPExsVy+t/tft2yhZ6hBg8+6ltMermGzYHRo/1E
	H1sAY1SaTUZqYkpqkUJqXnJ+SmZeuq2Sd3C8c7ypmYGhrqGlhbmSQl5ibqqtkotPgK5bZg7Q
	VCWFssScUqBQQGJxsZK+nU1RfmlJqkJGfnGJrVK0obmRnpGBnqmRnqFprJWhgYGRKVBNQlrG
	x+3zGAueyVVcb37N1sD4R7aLkZNDSEBNYtHex2wgtoSAicTCtRtZIWwxiQv31gPFuYBq5jBK
	TFv1lB0kwSKgInH5934WEJtNQF/i7N51zCC2sICdxPbnXWA1IgKKEgteHWUCsZkFaiX2np3F
	CrFMUWL9jSeMIDavgKDEyZlPgOZwAC1Tkfg1UQwirCpxf8VGqHvkJJZMvcwEYfNKzGh/ygIT
	n/Z1DTOELS1xftYGRpibF39/DBXnlzh2ewdUr4DE1DMHoWo0JVbc/gs1n09izcK3LDD1u04t
	Z4bZdX/LXKheCYmtLU9YIV5RlJjS/ZAdwjaQOLJoDiuqV0Bsd4mD3x+wTmCUnYUkNQtJ+ywk
	7chqFjCyrGIUTS1ILihOSq8w0itOzC0uzUvXS87P3cQITkTPFu1g/Hfe+hCjAAejEg/vjWjP
	UCHWxLLiytxDjBIczEoivFPcgUK8KYmVValF+fFFpTmpxYcYTYGRNpFZSjQ5H5gk80riDY1N
	zE2NTS0MDM3NzZTEef+fyw0REkhPLEnNTk0tSC2C6WPi4JRqYIyLUf2+JqWDQ/LI4riVhnzv
	Otw+vBB6InWaaelqmZWq8qybk+ySOxr1Nj5cMTN5MqvhvaorSoXfeTtn/p68XC535ecHmqEn
	L+7VCmC9vtSd1eFlS4A7/xHnHTMOqrPO+rTqR8FGo92GyZw6rXmhR8Rcqo4mrr3dKSPbv3J3
	7MLL8baKD0vmLFNiKc5INNRiLipOBADGsgzNWgMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
Cc: "v.narang@samsung.com" <v.narang@samsung.com>, yocto@yoctoproject.org,
	AKHILESH KUMAR <akhilesh.k@samsung.com>
Subject: [EDT] [PATCH] [prelink-cross] realloc fix memory leak
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
X-List-Received-Date: Wed, 06 May 2015 05:07:13 -0000
Content-transfer-encoding: base64
Content-type: text/plain; charset=windows-1252

IEVQLUY2QUEwNjE4QzQ5QzRBRURBNzNCRkYxQjM5OTUwQkFCCgpIaSBNYXJrLAoKRnJlZSBwcmV2
aW91c2x5IGFsbG9jYXRlZCBtZW1vcnkgaWYgcmVhbGxvYyBmYWlscy4KClNpZ25lZC1vZmYtYnk6
IE1hbmluZGVyIFNpbmdoIDxtYW5pbmRlcjEuc0BzYW1zdW5nLmNvbT4KU2lnbmVkLW9mZi1ieTog
VmFuZWV0IG5hcmFuZyA8di5uYXJhbmdAc2Ftc3VuZy5jb20+ClJldmlld2VkLWJ5OiBBa2hpbGVz
aCBLdW1hciA8YWtoaWxlc2gua0BzYW1zdW5nLmNvbT4KLS0tCiB0cnVuay9zcmMvZG9pdC5jICAg
IHwgICAgNCArKystCiB0cnVuay9zcmMvZ2F0aGVyLmMgIHwgICAgNCArKystCiB0cnVuay9zcmMv
dW5kb2FsbC5jIHwgICAgNCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90cnVuay9zcmMvZG9pdC5jIGIvdHJ1bmsvc3Jj
L2RvaXQuYwppbmRleCBjOTRmYzUzLi4wOTk1ZmNlIDEwMDY0NAotLS0gYS90cnVuay9zcmMvZG9p
dC5jCisrKyBiL3RydW5rL3NyYy9kb2l0LmMKQEAgLTUzLDcgKzUzLDcgQEAgcHJlbGlua19lbnQg
KHN0cnVjdCBwcmVsaW5rX2VudHJ5ICplbnQpCiAgIERTTyAqZHNvOwogICBzdHJ1Y3Qgc3RhdDY0
IHN0OwogICBzdHJ1Y3QgcHJlbGlua19saW5rICpoYXJkbGluazsKLSAgY2hhciAqbW92ZSA9IE5V
TEw7CisgIGNoYXIgKm1vdmUgPSBOVUxMLCAqbW92ZV90ZW1wOwogICBzaXplX3QgbW92ZWxlbiA9
IDA7CiAKICAgZm9yIChpID0gMDsgaSA8IGVudC0+bmRlcGVuZHM7ICsraSkKQEAgLTE3Niw5ICsx
NzYsMTEgQEAgcHJlbGlua19lbnQgKHN0cnVjdCBwcmVsaW5rX2VudHJ5ICplbnQpCiAgICAgICBp
ZiAobGVuICsgc2l6ZW9mICgiLiNwcmVsaW5rIyIpID4gbW92ZWxlbikKIAl7CiAJICBtb3ZlbGVu
ID0gbGVuICsgc2l6ZW9mICgiLiNwcmVsaW5rIyIpOworCSAgbW92ZV90ZW1wID0gbW92ZTsKIAkg
IG1vdmUgPSByZWFsbG9jIChtb3ZlLCBtb3ZlbGVuKTsKIAkgIGlmIChtb3ZlID09IE5VTEwpCiAJ
ICAgIHsKKwkJICBmcmVlKG1vdmVfdGVtcCk7CiAJICAgICAgZXJyb3IgKDAsIEVOT01FTSwgIkNv
dWxkIG5vdCBoYXJkbGluayAlcyB0byAlcyIsCiAJCSAgICAgaGFyZGxpbmstPmNhbm9uX2ZpbGVu
YW1lLCBlbnQtPmNhbm9uX2ZpbGVuYW1lKTsKIAkgICAgICBtb3ZlbGVuID0gMDsKZGlmZiAtLWdp
dCBhL3RydW5rL3NyYy9nYXRoZXIuYyBiL3RydW5rL3NyYy9nYXRoZXIuYwppbmRleCBjM2QzMTI4
Li43MzNiNDlmIDEwMDY0NAotLS0gYS90cnVuay9zcmMvZ2F0aGVyLmMKKysrIGIvdHJ1bmsvc3Jj
L2dhdGhlci5jCkBAIC02NCw3ICs2NCw3IEBAIGdhdGhlcl9kZXBzIChEU08gKmRzbywgc3RydWN0
IHByZWxpbmtfZW50cnkgKmVudCkKICAgY29uc3QgY2hhciAqYXJndls2XTsKICAgY29uc3QgY2hh
ciAqZW52cFs1XTsKICAgY2hhciAqbGluZSA9IE5VTEwsICpwLCAqcSA9IE5VTEw7Ci0gIGNvbnN0
IGNoYXIgKipkZXBlbmRzID0gTlVMTDsKKyAgY29uc3QgY2hhciAqKmRlcGVuZHMgPSBOVUxMLCAq
KmRlcGVuZHNfdGVtcDsKICAgc2l6ZV90IG5kZXBlbmRzID0gMCwgbmRlcGVuZHNfYWxsb2NlZCA9
IDA7CiAgIHNpemVfdCBsZW4gPSAwOwogICBzc2l6ZV90IG47CkBAIC0yNjEsMTEgKzI2MSwxMyBA
QCBnYXRoZXJfZGVwcyAoRFNPICpkc28sIHN0cnVjdCBwcmVsaW5rX2VudHJ5ICplbnQpCiAgICAg
ICBpZiAobmRlcGVuZHMgPT0gbmRlcGVuZHNfYWxsb2NlZCkKIAl7CiAJICBuZGVwZW5kc19hbGxv
Y2VkICs9IDEwOworCSAgZGVwZW5kc190ZW1wID0gZGVwZW5kczsKIAkgIGRlcGVuZHMgPQogCSAg
ICAoY29uc3QgY2hhciAqKikgcmVhbGxvYyAoZGVwZW5kcywKIAkJCQkgICAgIG5kZXBlbmRzX2Fs
bG9jZWQgKiBzaXplb2YgKGNoYXIgKikpOwogCSAgaWYgKGRlcGVuZHMgPT0gTlVMTCkKIAkgICAg
eworCQkgIGZyZWUoZGVwZW5kc190ZW1wKTsKIAkgICAgICBlcnJvciAoMCwgRU5PTUVNLCAiJXM6
IENvdWxkIG5vdCByZWNvcmQgZGVwZW5kZW5jaWVzIiwKIAkJICAgICBlbnQtPmZpbGVuYW1lKTsK
IAkgICAgICBnb3RvIGVycm9yX291dDsKZGlmZiAtLWdpdCBhL3RydW5rL3NyYy91bmRvYWxsLmMg
Yi90cnVuay9zcmMvdW5kb2FsbC5jCmluZGV4IDkwZTkyNDAuLjYxNjNkYTMgMTAwNjQ0Ci0tLSBh
L3RydW5rL3NyYy91bmRvYWxsLmMKKysrIGIvdHJ1bmsvc3JjL3VuZG9hbGwuYwpAQCAtMzMsNyAr
MzMsNyBAQCB1bmRvX29uZSAodm9pZCAqKnAsIHZvaWQgKmluZm8pCiAgIERTTyAqZHNvOwogICBz
dHJ1Y3Qgc3RhdDY0IHN0OwogICBzdHJ1Y3QgcHJlbGlua19saW5rICpoYXJkbGluazsKLSAgY2hh
ciAqbW92ZSA9IE5VTEw7CisgIGNoYXIgKm1vdmUgPSBOVUxMLCAqbW92ZV90ZW1wOwogICBzaXpl
X3QgbW92ZWxlbiA9IDA7CiAKICAgaWYgKGVudC0+ZG9uZSAhPSAyKQpAQCAtMTE2LDkgKzExNiwx
MSBAQCB1bmRvX29uZSAodm9pZCAqKnAsIHZvaWQgKmluZm8pCiAgICAgICBpZiAobGVuICsgc2l6
ZW9mICgiLiNwcmVsaW5rIyIpID4gbW92ZWxlbikKIAl7CiAJICBtb3ZlbGVuID0gbGVuICsgc2l6
ZW9mICgiLiNwcmVsaW5rIyIpOworCSAgbW92ZV90ZW1wID0gbW92ZTsKIAkgIG1vdmUgPSByZWFs
bG9jIChtb3ZlLCBtb3ZlbGVuKTsKIAkgIGlmIChtb3ZlID09IE5VTEwpCiAJICAgIHsKKwkJICBm
cmVlKG1vdmVfdGVtcCk7CiAJICAgICAgZXJyb3IgKDAsIEVOT01FTSwgIkNvdWxkIG5vdCBoYXJk
bGluayAlcyB0byAlcyIsCiAJCSAgICAgaGFyZGxpbmstPmNhbm9uX2ZpbGVuYW1lLCBlbnQtPmNh
bm9uX2ZpbGVuYW1lKTsKIAkgICAgICBtb3ZlbGVuID0gMDsKLS0gCjEuNy4xCgoKVGhhbmtzIGFu
ZCBSZWdhcmRzLApNYW5pbmRlciBTaW5naA==



