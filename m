Return-Path: <lookatyouhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AA0EE00D38; Tue, 28 May 2019 06:11:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (lookatyouhacker[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A47E00C78
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 06:11:14 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id w144so14167663oie.12
	for <yocto@yoctoproject.org>; Tue, 28 May 2019 06:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=RhfnK0gvjnkvqdY2ionizhUC4TbbEA51WiyKypd1yOQ=;
	b=e7WcBMAhpJJE6PUEHmj02V4OETvEI/hMW+tFxNSDMia+ziuM2zQlagH3wXlNQ0v8+p
	B0eawwRXJYBBj87m/aB7Y3rfXQtH6BwX3uWaZLyhNq70rEFBdIw7XiZy4tneFO2MCOEK
	NNZO5JFjD1NFjGwROYlOQ7gSsdfiT9FY1X3hsQKS8dB4zoos15HDCtNtiHH2w3OWY1Oo
	IMg1XxCluyg/Zf2PxM1AqFrIaVwt4SNEHvt2cfQQ5a8yWavGlmh3gwxvnyLcCnVHmJnB
	Dv4tX3gmhFeTq9bWyUJUi+xMyv3SkNLrfElwy023pHcc93ynEdCkrHPjbCQZWsMH4ZSp
	9chA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RhfnK0gvjnkvqdY2ionizhUC4TbbEA51WiyKypd1yOQ=;
	b=LHlolfRQLx3rs2nyJVNx8nqburORaue38DR3Xi7hE0Me0fY95hIo630fMroJPmpcce
	nI4q3Ie8ChaR8WsXv2Kvno0+/Bg7eqRXy6jCEF5i6Myouj4UMMuCZ0aArrpizll2yx9c
	Xykkq2BGphZIunQqfjxqeSqj/q8HLcJP1/RxEpfK2vowAz8xWpy94TlF400xp6VrADr3
	XFgSURkvFftZLMU0cOtMRRe5Om03irytYCn9n8Y35ddcO9snAVOy4gJ+VZcfz0DYh8vs
	O7B9c/VKAUDcwMGmBSxdb9qqizM3ypn52gMLpmpQMVGxBzQ0Ia9gIRQKxVoTuk18gWA6
	pQmQ==
X-Gm-Message-State: APjAAAVZHjUDyrpQXL1sMLx40llxgjN0jKtCOoOM1qiiND2+8pha1WVZ
	QTMp14QCpMaVtDwhus6K6+iNiD4voGJSemlF4CxFlTxw
X-Google-Smtp-Source: APXvYqzNdcMQVG7Fq02iQgtjK1K8a33JYFAa80bMpd1KsZcckYr1SctkUMLBsf0bs0obCZOuls7/6NdRd0Vmqg7ZFrI=
X-Received: by 2002:aca:c348:: with SMTP id t69mr2613493oif.95.1559049074043; 
	Tue, 28 May 2019 06:11:14 -0700 (PDT)
MIME-Version: 1.0
From: Shane Peelar <lookatyouhacker@gmail.com>
Date: Tue, 28 May 2019 09:11:02 -0400
Message-ID: <CAEseUXksuzYTytKVPaGZA5X_8aCOXFB-seZOSA=2jeTc_cDW=Q@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: [prelink-cross][PATCH] Enable prelink-cross to work on binaries built with -fno-plt
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
X-List-Received-Date: Tue, 28 May 2019 13:11:15 -0000
X-Groupsio-MsgNum: 45402
Content-Type: multipart/mixed; boundary="0000000000003fa7a10589f2666a"

--0000000000003fa7a10589f2666a
Content-Type: multipart/alternative; boundary="0000000000003fa79e0589f26668"

--0000000000003fa79e0589f26668
Content-Type: text/plain; charset="UTF-8"

Make an assert in arch-x86_64.c a conditional if to handle things the same
way as other arches.
Enables binaries built with -fno-plt to be prelinked.

--0000000000003fa79e0589f26668
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Make an assert in arch-x86_64.c a conditional if to handle things the same way as other arches.</div><div>Enables binaries built with -fno-plt to be prelinked.<br></div></div>

--0000000000003fa79e0589f26668--

--0000000000003fa7a10589f2666a
Content-Type: application/octet-stream; 
	name="0001-arch-x86_64.c-Make-assert-conditional.patch"
Content-Disposition: attachment; 
	filename="0001-arch-x86_64.c-Make-assert-conditional.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jw7tiamg0>
X-Attachment-Id: f_jw7tiamg0

RnJvbSAyY2MxZDU4Y2FhYmE5OTQ4NTU1MTZiNTBkNWFmMDU3ODU0Yzk0ZmU4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTaGFuZSBQZWVsYXIgPGxvb2thdHlvdWhhY2tlckBnbWFpbC5j
b20+CkRhdGU6IFNhdCwgMjUgTWF5IDIwMTkgMDg6NDU6NDUgLTA0MDAKU3ViamVjdDogW1BBVENI
XSBhcmNoLXg4Nl82NC5jOiBNYWtlIGFzc2VydCBjb25kaXRpb25hbAoKTWFrZSB0aGUgYXNzZXJ0
IGluIGFyY2hfcHJlbGluayBhIGNvbmRpdGlvbiBpbnN0ZWFkIG9mIGFuIGFzc2VydCwKa2VlcGlu
ZyB0aGluZ3MgY29uc2lzdGVudCB3aXRoIHRoZSBvdGhlciBhcmNoZXMuICBUaGlzIG1ha2VzCnBy
ZWxpbmsgbm90IGJhaWwgb3V0IG9uIGAtZm5vLXBsdGAgZXhlY3V0YWJsZXMuCgpTaWduZWQtb2Zm
LWJ5OiBTaGFuZSBQZWVsYXIgPGxvb2thdHlvdWhhY2tlckBnbWFpbC5jb20+Ci0tLQogc3JjL2Fy
Y2gteDg2XzY0LmMgfCAzICsrLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL3NyYy9hcmNoLXg4Nl82NC5jIGIvc3JjL2FyY2gteDg2
XzY0LmMKaW5kZXggMmY2YzU1MS4uYWE3MzllNiAxMDA2NDQKLS0tIGEvc3JjL2FyY2gteDg2XzY0
LmMKKysrIGIvc3JjL2FyY2gteDg2XzY0LmMKQEAgLTQxOCw3ICs0MTgsOCBAQCB4ODZfNjRfYXJj
aF9wcmVsaW5rIChzdHJ1Y3QgcHJlbGlua19pbmZvICppbmZvKQogCQkJICIucGx0IikpCiAJYnJl
YWs7CiAKLSAgICAgIGFzc2VydCAoaSA8IGRzby0+ZWhkci5lX3NobnVtKTsKKyAgICAgIGlmIChp
ID09IGRzby0+ZWhkci5lX3NobnVtKQorCXJldHVybiAwOwogICAgICAgZGF0YSA9IGRzby0+c2hk
cltpXS5zaF9hZGRyICsgMHgxNjsKICAgICAgIHdyaXRlX2xlNjQgKGRzbywgZHNvLT5pbmZvW0RU
X1BMVEdPVF0gKyA4LCBkYXRhKTsKICAgICB9Ci0tIAoyLjIxLjAKCg==

--0000000000003fa7a10589f2666a--
