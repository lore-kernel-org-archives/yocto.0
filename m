Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6B9CE00D39; Fri, 14 Jun 2019 16:48:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
	[209.85.210.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF4C2E00D11
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 16:48:34 -0700 (PDT)
Received: by mail-pf1-f196.google.com with SMTP id x15so2319310pfq.0
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 16:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f6KDbssaCG8/29dMRfIcWHuQNtFRCbs5rQHggDBHygU=;
	b=HEgkuf0F2by5gtICNCjQvHK5ui/5PhF2fkjNitq5cYUu9AUpddd7k0kYtP1UV9wFvp
	2OjYF6BnBkxEeTOr8kjh/tF8b9Ny4E4tQ3efXtUnrBTFJ08Un/wmIrUvCAgV/bH6zIcI
	AJOQHW67f/4sXalg19PTeu5Aa066d+lS1RS2t0LmquWDw9qvj16FUzlb7suYNGq+XLUt
	NL/pl7bzxtsRVb3vKooWoUppZmqFbiS7PHvRGBR/R23XNNInz64qEMTzx1XmcEiDlILO
	cWk7vf5fYVlgUAw7ed4ZtPxXOWAxBVCIuviOLfaMOjGAjnvHBODqAmVuqtOxIp/sxmQw
	YTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=f6KDbssaCG8/29dMRfIcWHuQNtFRCbs5rQHggDBHygU=;
	b=QFObembzVSweehO66PBAm9mQnRbWP4aexWt0oub/Zyh9B++PlsG/odu595odK3NY3r
	9+uHizCMKEIThg6u5ZEKtHwHNSXBKV3UER0u2CYIK6yQGblRdEIyKHqemiyvqWGSPe+h
	Socw/kyuzII0semxMDl3ips2qkpNWbBTyBMlbCtz7+Whv5gS+m8NOdv6J/dBNXxVYUr0
	8FXU79r5iTj1IEjE86jPQgrJByEeJNo3ucX0mVSKlWSMkJ2PzeouGy4UCsG8E5G2CarB
	0f/xxNgoGz5DonBiFGQXP50KUe+GOEpumZb3yt/OF/eWqvoCJVe8R+OVBbqtgXMO4gsd
	LdHA==
X-Gm-Message-State: APjAAAVJ61oGcUjxWwNPc3UyeTz1FUmPgJ8drpfttvGX6ZnqfPxQkUS+
	YQfqm0PTvswwhT1Z0IwLadWZE9gb
X-Google-Smtp-Source: APXvYqyITiodk7rPZPMU79Uo0uFScIYuSmYDFiB/qDANzXJZyV5Rck3TXqQXVFzFB0s+8D7Vs0t1+w==
X-Received: by 2002:a63:de43:: with SMTP id y3mr39624134pgi.271.1560556113918; 
	Fri, 14 Jun 2019 16:48:33 -0700 (PDT)
Received: from ?IPv6:2601:646:8100:b254:f1f2:b6fa:2cfe:4d00?
	([2601:646:8100:b254:f1f2:b6fa:2cfe:4d00])
	by smtp.gmail.com with ESMTPSA id m19sm364622pjl.0.2019.06.14.16.48.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 14 Jun 2019 16:48:33 -0700 (PDT)
To: ChenQi <Qi.Chen@windriver.com>, Armin Kuster <akuster808@gmail.com>,
	yocto@yoctoproject.org
References: <20190510030957.26040-1-akuster808@gmail.com>
	<26b35a5c-4225-b4f0-3222-76a74e80688e@windriver.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <2acd40e9-9bcd-915e-779b-b4a1e8e5efa9@gmail.com>
Date: Fri, 14 Jun 2019 16:48:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <26b35a5c-4225-b4f0-3222-76a74e80688e@windriver.com>
Subject: Re: [meta-security][PATCH 1/2] oe-selftest: add running cve checker
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
X-List-Received-Date: Fri, 14 Jun 2019 23:48:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
Content-Language: en-US

Q2hlbiwKCk9uIDYvMTQvMTkgMToxMyBBTSwgQ2hlblFpIHdyb3RlOgo+IEhpIEFybWluLAo+
Cj4gSSBqdXN0IG5vdGljZWQgdGhpcyBzZWxmdGVzdCBjYXNlLgo+IEhhdmUgeW91IGNvbnNp
ZGVyZWQgcHV0dGluZyBpdCBpbnRvIG9lLWNvcmU/ClllcyBJIGhhdmUuIFRoYXQgd2FzIHRo
ZSBmaXJzdCBwbGFjZSBJIHdhbnRlZCB0byBwdXQgaXQgYnV0IFJpY2hhcmQgYW5kClJvc3Mg
aGF2ZSByZXNlcnZhdGlvbnMgYWJvdXQgZG9pbmcgdGhhdCBzbyBpdCBzaXRzIGluIG1ldGEt
c2VjdXJpdHkKdW50aWwgd2UgY2FuIGdldCBpdCBpbnRvIGNvcmUuCgpSZWdhcmRzLAphcm1p
bgoKCj4KPiBCZXN0IFJlZ2FyZHMsCj4gQ2hlbiBRaQo+Cj4gT24gMDUvMTAvMjAxOSAxMTow
OSBBTSwgQXJtaW4gS3VzdGVyIHdyb3RlOgo+PiBTaWduZWQtb2ZmLWJ5OiBBcm1pbiBLdXN0
ZXIgPGFrdXN0ZXI4MDhAZ21haWwuY29tPgo+PiAtLS0KPj4gwqAgbGliL29lcWEvc2VsZnRl
c3QvY2FzZXMvY3ZlY2hlY2tlci5weSB8IDI3ICsrKysrKysrKysrKysrKysrKysrKysrKysr
Kwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVhdGUg
bW9kZSAxMDA2NDQgbGliL29lcWEvc2VsZnRlc3QvY2FzZXMvY3ZlY2hlY2tlci5weQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvbGliL29lcWEvc2VsZnRlc3QvY2FzZXMvY3ZlY2hlY2tlci5weQo+
PiBiL2xpYi9vZXFhL3NlbGZ0ZXN0L2Nhc2VzL2N2ZWNoZWNrZXIucHkKPj4gbmV3IGZpbGUg
bW9kZSAxMDA2NDQKPj4gaW5kZXggMDAwMDAwMC4uMjNjYTdkMgo+PiAtLS0gL2Rldi9udWxs
Cj4+ICsrKyBiL2xpYi9vZXFhL3NlbGZ0ZXN0L2Nhc2VzL2N2ZWNoZWNrZXIucHkKPj4gQEAg
LTAsMCArMSwyNyBAQAo+PiAraW1wb3J0IG9zCj4+ICtpbXBvcnQgcmUKPj4gKwo+PiArZnJv
bSBvZXFhLnNlbGZ0ZXN0LmNhc2UgaW1wb3J0IE9FU2VsZnRlc3RUZXN0Q2FzZQo+PiArZnJv
bSBvZXFhLnV0aWxzLmNvbW1hbmRzIGltcG9ydCBiaXRiYWtlLCBnZXRfYmJfdmFyCj4+ICsK
Pj4gK2NsYXNzIEN2ZUNoZWNrZXJUZXN0cyhPRVNlbGZ0ZXN0VGVzdENhc2UpOgo+PiArwqDC
oMKgIGRlZiB0ZXN0X2N2ZV9jaGVja2VyKHNlbGYpOgo+PiArwqDCoMKgwqDCoMKgwqAgaW1h
Z2UgPSAiY29yZS1pbWFnZS1zYXRvIgo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBkZXBsb3lf
ZGlyID0gZ2V0X2JiX3ZhcigiREVQTE9ZX0RJUl9JTUFHRSIpCj4+ICvCoMKgwqDCoMKgwqDC
oCBpbWFnZV9saW5rX25hbWUgPSBnZXRfYmJfdmFyKCdJTUFHRV9MSU5LX05BTUUnLCBpbWFn
ZSkKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqAgbWFuaWZlc3RfbGluayA9IG9zLnBhdGguam9p
bihkZXBsb3lfZGlyLCAiJXMuY3ZlIiAlCj4+IGltYWdlX2xpbmtfbmFtZSkKPj4gKwo+PiAr
wqDCoMKgwqDCoMKgwqAgc2VsZi5sb2dnZXIuaW5mbygnQ1ZFX0NIRUNLX01BTklGRVNUID0g
IiVzIicgJSBtYW5pZmVzdF9saW5rKQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG5vdCAnY3Zl
LWNoZWNrJyBpbiBnZXRfYmJfdmFyKCdJTkhFUklUJykpOgo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBhZGRfY3ZlX2NoZWNrX2NvbmZpZyA9ICdJTkhFUklUICs9ICJjdmUtY2hlY2si
Jwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzZWxmLmFwcGVuZF9jb25maWcoYWRkX2N2
ZV9jaGVja19jb25maWcpCj4+ICvCoMKgwqDCoMKgwqDCoCBzZWxmLmFwcGVuZF9jb25maWco
J0NWRV9DSEVDS19NQU5JRkVTVCA9ICIlcyInICUgbWFuaWZlc3RfbGluaykKPj4gK8KgwqDC
oMKgwqDCoMKgIHJlc3VsdCA9IGJpdGJha2UoIi1rIC1jIGN2ZV9jaGVjayAlcyIgJSBpbWFn
ZSwKPj4gaWdub3JlX3N0YXR1cz1UcnVlKQo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKG5vdCAn
Y3ZlLWNoZWNrJyBpbiBnZXRfYmJfdmFyKCdJTkhFUklUJykpOgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzZWxmLnJlbW92ZV9jb25maWcoYWRkX2N2ZV9jaGVja19jb25maWcpCj4+
ICsKPj4gK8KgwqDCoMKgwqDCoMKgIGlzZmlsZSA9IG9zLnBhdGguaXNmaWxlKG1hbmlmZXN0
X2xpbmspCj4+ICvCoMKgwqDCoMKgwqDCoCBzZWxmLmFzc2VydEVxdWFsKFRydWUsIGlzZmls
ZSwgJ0ZhaWxlZCB0byBjcmVhdGUgY3ZlIGRhdGEKPj4gZmlsZSA6ICVzJyAlIG1hbmlmZXN0
X2xpbmspCj4+ICsKPgo+Cgo=

