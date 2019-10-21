Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3947AE00B47; Mon, 21 Oct 2019 09:44:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 704E6E00839
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:44:01 -0700 (PDT)
Received: by mail-il1-f179.google.com with SMTP id f13so12621927ils.11
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:44:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Tn3IUSJitC/DzVJV+sypgcQ0dIZlfGId+LRyHr+eiJs=;
	b=WQEQrxN0P4GH685ibtAIY4ygnIZOZQG4nn2agQeMhCfl4GTx5bKTAr+BeL+8H8Urw4
	ZUVbDs4SlYfLeUFv/G3I4F/b8rg634NhRKRLx0tMDmAVwW/CQjHO/84DMpawuYglydQr
	0m9mFdQBpEeHiDFEpA/Bklkwd0jzFPqdz/Rsu2dJ5hyLR4x2HRnNEn/8omMbcq9EkaWB
	mcQDScLjGLmrEVudvRSzlL5iPdHY3d1Mc29imx/5UKsn7JbYwQ8MJcB+RMtQkph/0Xt/
	Tkmc2XaACsHGaoGTyIZx3JkVeMKK/XweFuILot2Z1ND6Vrza3Mhp7OPXhAe2lFcDLU1y
	6l4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Tn3IUSJitC/DzVJV+sypgcQ0dIZlfGId+LRyHr+eiJs=;
	b=r95fZQFbHVtNizlx2gzZj3pjpIgMTplUZjh/7jIV6GDYppBkV9gjOTTYuMBjUcLeKe
	gJwgHjQbCO7AWF8oUvkfp58Fa89MeIB+BqheRP9OA9NBGg5f1hTdeamvogR+m5MC807k
	5bfMO2XIm5sa4hlc36K1meoivxt3i/kQHJ8lGp8/+hkCvDx5IWqSolbWgxCm+8E+8cos
	JO73ulRbtG85kkq2iCSwd+j98tLCXOZlDG76q9bN9G/FFN6WCZ6O01rNJWU1RV0AbeZi
	c9Zfr0p77ixnnd7XACnd06Iukpc+IocyFW90g8ECrnRzMdb4DtMjuqKiVqfsF6OF5aHF
	yNaQ==
X-Gm-Message-State: APjAAAWop+03T8CWrlQ/bx80YGV7o+qaFB3mKegXsDGNbP0dYdF5wo3s
	k5y86d7kNmpDBpJ6ljGLdf3x1jI8H3lKpYED3vytM9Ta
X-Google-Smtp-Source: APXvYqztXZ5SCdDqKTq9MyJydllonn2NUlhN/8aWuB6o9xkEu0hd1UcAZST8S69rcRCK9AE6ah8KpfPvKHW4fEKaF44=
X-Received: by 2002:a92:c8cb:: with SMTP id c11mr27025453ilq.173.1571676240697;
	Mon, 21 Oct 2019 09:44:00 -0700 (PDT)
MIME-Version: 1.0
From: Marco <cavallini.koan@gmail.com>
Date: Mon, 21 Oct 2019 18:43:49 +0200
Message-ID: <CAFQ+DignGREDF+RgLc_-Ax1rwWwLofm2ZZhUHGn51dJO_o_=LQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: [yocto-autobuilder2][yocto-autobuilder-helper]Updated the Stand-alone Installation details
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
X-List-Received-Date: Mon, 21 Oct 2019 16:44:02 -0000
X-Groupsio-MsgNum: 47008
Content-Type: multipart/mixed; boundary="000000000000080f2105956e64a1"

--000000000000080f2105956e64a1
Content-Type: text/plain; charset="UTF-8"

Modified the README-Guide.md.
See thread "[yocto-autobuilder-helper] Replaced hardcoded BASE_HOMEDIR
directory"
--
Marco

--000000000000080f2105956e64a1
Content-Type: text/x-patch; charset="UTF-8"; 
	name="0001-README-Guide.md-Updated-the-Stand-alone-Installation.patch"
Content-Disposition: attachment; 
	filename="0001-README-Guide.md-Updated-the-Stand-alone-Installation.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k20nfws80>
X-Attachment-Id: f_k20nfws80

RnJvbSAzMGVkMTM0NDVhMDFhMmFmNzU5NzkxY2IzOTUyNjQzN2I0MzkwNmMwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJjbyBDYXZhbGxpbmkgPG0uY2F2YWxsaW5pQGtvYW5zb2Z0
d2FyZS5jb20+CkRhdGU6IE1vbiwgMjEgT2N0IDIwMTkgMTg6Mzg6MjIgKzAyMDAKU3ViamVjdDog
W1BBVENIXSBSRUFETUUtR3VpZGUubWQ6IFVwZGF0ZWQgdGhlIFN0YW5kLWFsb25lIEluc3RhbGxh
dGlvbiBkZXRhaWxzCiBhY2NvcmRpbmcgdG8gdGhlIHlvY3RvLWF1dG9idWlsZGVyLWhlbHBlciBw
YXRjaAogNWJhMTUyZTU1Njg4YjI3Yzc0NWE3ODdhNWNhOTY4YmIwNThlYmYyNQoKICAgIE5vdyBp
cyBubyBsb25nZXIgbmVlZGVkIHRvIG1hbnVhbGx5IG1vZGlmeSBjb25maWcuanNvbi4KClNpZ25l
ZC1vZmYtYnk6IE1hcmNvIENhdmFsbGluaSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3YXJlLmNvbT4K
LS0tCiBSRUFETUUtR3VpZGUubWQgfCA1ICsrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL1JFQURNRS1HdWlkZS5tZCBiL1JF
QURNRS1HdWlkZS5tZAppbmRleCA3MGYxNDMzLi5lOGY3NGExIDEwMDY0NAotLS0gYS9SRUFETUUt
R3VpZGUubWQKKysrIGIvUkVBRE1FLUd1aWRlLm1kCkBAIC01Myw4ICs1Myw3IEBAIE5leHQsIGlm
IHlvdSBkbyBub3Qgd2FudCB0byBlZGl0IHRoZSBvcmlnaW5hbCBgeW9jdG8tYXV0b2J1aWxkZXIt
aGVscGVyL2NvbmZpZy5qCiAKIEhlcmUgYXJlIHNvbWUgc3VnZ2VzdGlvbnMgZm9yIHRoZSBzYWtl
IG9mIDoKIAotIDEuIEluIHRoZSBvcmlnaW5hbMKgYGNvbmZpZy5qc29uYCwgZmluZCBhbGwgaW5z
dGFuY2VzwqBvZiB3aGF0ZXZlciBgQkFTRV9IT01FRElSYMKgd2FzIHNldCB0bywgZm9yIGV4YW1w
bGXCoGAvaG9tZS9wb2t5YnVpbGQzYC7CoCBDb3B5IHRob3NlIHZhcmlhYmxlcyB0byB5b3VywqBg
Y29uZmlnLWxvY2FsLmpzb25gwqByZXBsYWNlwqBgL2hvbWUvcG9reWJ1aWxkM2Agd2l0aMKgYCR7
QkFTRV9IT01FRElSfWAuwqDCoFRoZXNlIHdpbGwgYmUgdmFyaWFibGVzIGxpa2XCoGBCVUlMRFBF
UkZfU1RBVEVESVJgwqBhbmTCoGBFWFRSQVBMQUlOQ01EU2AuCi1TZXTCoGBCQVNFX0hPTUVESVJg
IHNob3VsZCBiZSB5b3VyIGJ1aWxkIHVzZXIncyBob21lIGRpcmVjdG9yeS7CoCAoVGhlcmUgYXJl
IHNoZWxsIHNjcmlwdHMgd2hlcmUgdGhpcyBpcyBhc3N1bWVkLikKKyAxLiBDdXN0b21pemF0aW9u
IGNhbiBiZSBkb25lIGJ5IGNvcHlpbmcgdGhlIHZhcmlhYmxlIHRvIGJlIG92ZXJyaWRlbiBmcm9t
IHRoZSBvcmlnaW5hbMKgYGNvbmZpZy5qc29uYCB0byB5b3VywqBgY29uZmlnLWxvY2FsLmpzb25g
LCBmb3IgZXhhbXBsZSBsaWtlwqBgQlVJTERQRVJGX1NUQVRFRElSYMKgYW5kwqBgRVhUUkFQTEFJ
TkNNRFNgLiBfTk9URTpfIEluIHRoaXMgZG9jdW1lbnQgYW5kIGJ5IGRlZmF1bHQgYEJBU0VfSE9N
RURJUmAgaXMgc2V0IGFzIHBva3lidWlsZDMgYW5kIHNob3VsZCBiZSB0aGUgQXV0b2J1aWxkZXIy
IHVzZXIncyBob21lIGRpcmVjdG9yeS4KICAyLiBBZGQgYEJBU0VfU0hBUkVERElSYCBhbmQgYEJB
U0VfUFVCTElTSERJUmAgc3VjaCB0aGF0IHRoZXkgYXJlIHN1YnRyZWVzIG9mIHlvdXLCoGBCQVNF
X0hPTUVESVJgLCBlLmcuLMKgYCR7QkFTRV9IT01FRElSfS9zcnYvYXV0b2J1aWxkZXIueW91cnNp
dGUuY29tYC4KICAzLiBDaGFuZ2UgeW91csKgYFdFQlBVQkxJU0hfVVJMYCB0byBtYXRjaCB5b3Vy
wqBgY29uZmlnLnB5YCBkZWZpbml0aW9uIGZvcsKgYGJ1aWxkYm90VVJMYC4KICA0LiBJbiBvcmRl
ciBmb3IgdGhpcyB0byB3b3JrLCB5b3UgbXVzdCBleHBvcnTCoGBBQkhFTFBFUl9KU09OPSJjb25m
aWcuanNvbiBjb25maWctbG9jYWwuanNvbiJgIGludG8gdGhlIGVudmlyb25tZW50IG9mIHRoZSBj
b250cm9sbGVyIGFuZCBqYW5pdG9yIHNlcnZpY2VzICh0aGUgZXhhbXBsZSBzZXJ2aWNlIHNjcmlw
dHMgaW5jbHVkZWQgYmVsb3cgYWxyZWFkeSBoYXZlIHRoaXMpLgpAQCAtMjgxLDQgKzI4MCw0IEBA
IEdyb3VwPW5vZ3JvdXAKIAogW0luc3RhbGxdCiBXYW50ZWRCeT1tdWx0aS11c2VyLnRhcmdldAot
YGBgClwgTm8gbmV3bGluZSBhdCBlbmQgb2YgZmlsZQorYGBgCi0tIAoyLjcuNAoK

--000000000000080f2105956e64a1--
