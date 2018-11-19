Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36542E00C3C; Mon, 19 Nov 2018 07:18:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AC73E00C09
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 07:18:21 -0800 (PST)
Received: by mail-pg1-f195.google.com with SMTP id 17so13714203pgg.1
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 07:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x7KeFVaj40Ryk6/AMKRzSdvnCJepDgxhw4NfBLEPPTI=;
	b=FkbeYTV9Xjq/tFW5uQNKH21Od60vB5QTs9EF8URNVPYwLUF91SQ7AinQ9tl3BW9R+4
	UMQzQbJ94zTPSMoTpd4UfB1OM6QwQN0WDUhyocuCSNXl7m0OW/wFEHsJQcuZ7UPxbKjV
	2HsOer3Fx+vmRWAhwInjJQ/Ow8HiMtX2j6ExB6g0DU4jIOzj89taH0ekw3hDx1OwJukj
	3DWgD7K6VaaNSlghBMjFn1zf2JZO9BSUzOmEuciwJTIeD1L9v3YPnt7opotkXLCuscfV
	iAsPT38Ccjh9Yx39/9gQ+xcBGF6FqA+EGX3BsIXH5J2HWfi6hu4Mozp9+v7lrCS504bZ
	AYfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=x7KeFVaj40Ryk6/AMKRzSdvnCJepDgxhw4NfBLEPPTI=;
	b=UF4PyBXkmI2wM6qeUoMVvPHP0LnvNDbdhTUrt4yBHmqILnuF0u2Duq+3SuITUROGyZ
	AbBJ1XzYaoujZ/Z7dfW/kTRHF27fpk6CCTGiyJt1HaOND6N+cZlSe7RcYE6CWVUJnmYX
	fn5TjD7k/V2m2l/SLQ5vrixEvUMLduOPxm+hI1GZxHjTM1jKlz2We02TaAdl07Vfkgq2
	Td9BhJ7go8yJVEWHTrQwCSJi82wO4IijiltB3qdxtdEQnNWPM3dRke0f3J9bNP8bXosF
	xsXbkq/NWloCZgYe6ANhaQbDlO3G+55lGR0iQBavlMPwziSulpHGGiqUYfv/+4uOKigs
	uLmw==
X-Gm-Message-State: AGRZ1gJrSGoSgx43wC48tym4jconINkON6iaYUbyYI/FrsqM90xysIOL
	Y9kAl8sLyIqTjz34IJeRN7xnU3wFLHM=
X-Google-Smtp-Source: AJdET5ezRYv7TDWITPf+zg6h91fO/7vv19QqDmRPa44hhV6wC+izozLAONKqU68mjgGEDBAXPFD8Lw==
X-Received: by 2002:a62:4e88:: with SMTP id
	c130-v6mr23105897pfb.141.1542640699962; 
	Mon, 19 Nov 2018 07:18:19 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:cd6c:2c60:eff2:335a?
	([2601:202:4180:c33:cd6c:2c60:eff2:335a])
	by smtp.gmail.com with ESMTPSA id
	v15sm22261630pfn.94.2018.11.19.07.18.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Nov 2018 07:18:18 -0800 (PST)
To: Bas Mevissen <bas@basmevissen.nl>, Armin Kuster <akuster808@gmail.com>
References: <1542596900-12856-1-git-send-email-akuster808@gmail.com>
	<713febab94e0f1a734160f063c840826@basmevissen.nl>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <f4db9faf-0d23-6852-be94-0a6b49a02833@mvista.com>
Date: Mon, 19 Nov 2018 07:18:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <713febab94e0f1a734160f063c840826@basmevissen.nl>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-docs][thud][v2][PATCH] ref-system-requirements: sync with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 15:18:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64
Content-Language: en-US

CgpPbiAxMS8xOS8xOCAyOjQ0IEFNLCBCYXMgTWV2aXNzZW4gd3JvdGU6Cj4gT24gMjAxOC0x
MS0xOSAwNDowOCwgQXJtaW4gS3VzdGVyIHdyb3RlOgo+PiBwb2t5LmNvbmYKPj4gwqDCoMKg
IHVidW50dS0xNi4wNAo+PiDCoMKgwqAgdWJ1bnR1LTE2LjEwCj4+IMKgwqDCoCB1YnVudHUt
MTcuMDQKPj4gwqDCoMKgIGZlZG9yYS0yNgo+Cj4gU3VwcG9ydCBmb3IgRmVkb3JhIDI2IGhh
cyBlbmRlZC4gSSd2ZSBiZWVuIHVzaW5nIEZlZG9yYSAyNyBhbmQgMjggZm9yCj4gU3VtbyBh
bmQgdGhleSBhcmUgZmluZSBmb3IgbWUuIEkgY2FuIGRvIHNvbWUgdGVzdHMgb24gVGh1ZC4g
SG93ZXZlciwgSQo+IGNhbm5vdCBkbyB0aGUgZnVsbCAyVEIgdGVzdHMgdGhhdCBhcmUgc3Vn
Z2VzdGVkIGF0Cj4gaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9EaXN0cmli
dXRpb25fU3VwcG9ydCBhbmQKPiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtp
L0Rpc3Ryb19UZXN0aW5nX1BsYW4KVGhhbmtzIGZvciB0aGUgaW5mby4gSSBiZWxpZXZlIHRo
ZSBUZXN0IHBsYW4gaGFzIGJlZW4gc3VwZXJzZWRlZCBieSB0aGUKYnVpbGRlcnMgYnJpbmcg
dXAgaW4gdGhlIEF1dG9CdWlsZGVyLiBUaGUgdmVyc2lvbiBpbiBtYXN0ZXIgaGFzIGJlZW4K
dXBkYXRlZCBzbyB5b3UgbWFrZSB3YW50IHRvIHRha2UgYSBsb29rLgoKSSBhbSBhbGlnbmlu
ZyB0aGUgRG9jcyB3aXRoIHdoYXQgaXMgaWRlbnRpZmllZCBpbiB0aGUgVGh1ZCByZWxlYXNl
ZApzb3VyY2VzLiBUaGUgYmVjb21lcyBvdXIgc3Rha2UgaW4gdGhlIGdyb3VuZC4gQXMgdGlt
ZSBnb2VzIG9uIHdlIHRlc3Qgb24KbmV3ZXIgaG9zdCBPUyBhbmQgdXBkYXRlIGFjY29yZGlu
Z2x5LgoKVGhhbmtzCi0gYXJtaW4KPgo+IC0tIEJhcy4KPgo+PiDCoMKgwqAgY2VudG9zLTcK
Pj4gwqDCoMKgIGRlYmlhbi04Cj4+IMKgwqDCoCBkZWJpYW4tOQo+PiDCoMKgwqAgb3BlbnN1
c2UtNDIuMQo+PiDCoMKgwqAgb3BlbnN1c2UtNDIuMgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBB
cm1pbiBLdXN0ZXIgPGFrdXN0ZXI4MDhAZ21haWwuY29tPgo+Pgo+PiAtLSAKPj4gW3YyXQo+
PiBEcm9wIExUUyBmb3IgdWJ1bnR1LTE2LjEwCj4+IC0tLQo+PiDCoGRvY3VtZW50YXRpb24v
cmVmLW1hbnVhbC9yZWYtc3lzdGVtLXJlcXVpcmVtZW50cy54bWwgfCAyMAo+PiArKysrKysr
KysrKystLS0tLS0tLQo+PiDCoDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA4
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZG9jdW1lbnRhdGlvbi9yZWYtbWFu
dWFsL3JlZi1zeXN0ZW0tcmVxdWlyZW1lbnRzLnhtbAo+PiBiL2RvY3VtZW50YXRpb24vcmVm
LW1hbnVhbC9yZWYtc3lzdGVtLXJlcXVpcmVtZW50cy54bWwKPj4gaW5kZXggOTI5OGU4NC4u
Njc5NWE2OSAxMDA2NDQKPj4gLS0tIGEvZG9jdW1lbnRhdGlvbi9yZWYtbWFudWFsL3JlZi1z
eXN0ZW0tcmVxdWlyZW1lbnRzLnhtbAo+PiArKysgYi9kb2N1bWVudGF0aW9uL3JlZi1tYW51
YWwvcmVmLXN5c3RlbS1yZXF1aXJlbWVudHMueG1sCj4+IEBAIC05MywxOSArOTMsMjIgQEAK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVtPjxwYXJhPlVi
dW50dSAxMS4xMDwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+VWJ1bnR1IDEyLjA0IChMVFMpPC9wYXJhPjwv
bGlzdGl0ZW0+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRl
bT48cGFyYT5VYnVudHUgMTMuMTA8L3BhcmE+PC9saXN0aXRlbT4KPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+VWJ1bnR1IDE0LjA0IChMVFMp
PC9wYXJhPjwvbGlzdGl0ZW0+Cj4+IC0tPgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxsaXN0aXRlbT48cGFyYT5VYnVudHUgMTQuMDQgKExUUyk8L3BhcmE+PC9saXN0
aXRlbT4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVtPjxw
YXJhPlVidW50dSAxNC4xMDwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+VWJ1bnR1IDE1LjA0PC9wYXJhPjwv
bGlzdGl0ZW0+Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVt
PjxwYXJhPlVidW50dSAxNS4xMDwvcGFyYT48L2xpc3RpdGVtPgo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRlbT48cGFyYT5VYnVudHUgMTUuMTA8L3BhcmE+
PC9saXN0aXRlbT4gLS0+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxs
aXN0aXRlbT48cGFyYT5VYnVudHUgMTYuMDQgKExUUyk8L3BhcmE+PC9saXN0aXRlbT4KPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+VWJ1bnR1
IDE2LjEwIDwvcGFyYT48L2xpc3RpdGVtPgo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDxsaXN0aXRlbT48cGFyYT5VYnVudHUgMTcuMDQgPC9wYXJhPjwvbGlzdGl0ZW0+
Cj4+IMKgPCEtLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBh
cmE+RmVkb3JhIDE2IChWZXJuZSk8L3BhcmE+PC9saXN0aXRlbT4KPj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVtPjxwYXJhPkZlZG9yYSAxNyAoU3BoZXJp
Y2FsKTwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8bGlzdGl0ZW0+PHBhcmE+RmVkb3JhIHJlbGVhc2UgMTkgKFNjaHLDtmRpbmdlcidz
Cj4+IENhdCk8L3BhcmE+PC9saXN0aXRlbT4KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+RmVkb3JhIHJlbGVhc2UgMjAKPj4gKEhlaXNlbmJ1
Zyk8L3BhcmE+PC9saXN0aXRlbT4gLS0+Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPGxpc3RpdGVtPjxwYXJhPkZlZG9yYSByZWxlYXNlIDIwCj4+IChIZWlzZW5idWcp
PC9wYXJhPjwvbGlzdGl0ZW0+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDxsaXN0aXRlbT48cGFyYT5GZWRvcmEgcmVsZWFzZSAyMjwvcGFyYT48L2xpc3RpdGVtPgo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+RmVk
b3JhIHJlbGVhc2UgMjM8L3BhcmE+PC9saXN0aXRlbT4KPj4gLTwhLS3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVtPjxwYXJhPkZlZG9yYSByZWxlYXNlIDI0PC9w
YXJhPjwvbGlzdGl0ZW0+Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxp
c3RpdGVtPjxwYXJhPkNlbnRPUyByZWxlYXNlIDUuNgo+PiAoRmluYWwpPC9wYXJhPjwvbGlz
dGl0ZW0+Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVtPjxw
YXJhPkZlZG9yYSByZWxlYXNlIDI0PC9wYXJhPjwvbGlzdGl0ZW0+IC0tPgo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRlbT48cGFyYT5GZWRvcmEgcmVsZWFz
ZSAyNjwvcGFyYT48L2xpc3RpdGVtPgo+PiArPCEtLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+Q2VudE9TIHJlbGVhc2UgNS42Cj4+IChGaW5hbCk8
L3BhcmE+PC9saXN0aXRlbT4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PGxpc3RpdGVtPjxwYXJhPkNlbnRPUyByZWxlYXNlIDUuNwo+PiAoRmluYWwpPC9wYXJhPjwv
bGlzdGl0ZW0+Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRl
bT48cGFyYT5DZW50T1MgcmVsZWFzZSA1LjgKPj4gKEZpbmFsKTwvcGFyYT48L2xpc3RpdGVt
Pgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+
Q2VudE9TIHJlbGVhc2UgNi4zCj4+IChGaW5hbCk8L3BhcmE+PC9saXN0aXRlbT4KPj4gQEAg
LTEyMSwxMyArMTI0LDE0IEBACj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDxsaXN0aXRlbT48cGFyYT5EZWJpYW4gR05VL0xpbnV4IDcuNAo+PiAoV2hlZXp5KTwvcGFy
YT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlz
dGl0ZW0+PHBhcmE+RGViaWFuIEdOVS9MaW51eCA3LjUKPj4gKFdoZWV6eSk8L3BhcmE+PC9s
aXN0aXRlbT4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVt
PjxwYXJhPkRlYmlhbiBHTlUvTGludXggNy42Cj4+IChXaGVlenkpPC9wYXJhPjwvbGlzdGl0
ZW0+IC0tPgo+PiAtPCEtLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0
ZW0+PHBhcmE+b3BlblNVU0UgMTEuNDwvcGFyYT48L2xpc3RpdGVtPgo+PiArPCEtLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNVU0UgMTEu
NDwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNVU0UgMTIuMTwvcGFyYT48L2xpc3RpdGVtPgo+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNV
U0UgMTIuMjwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNVU0UgMTIuMzwvcGFyYT48L2xpc3RpdGVt
Pgo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRlbT48cGFyYT5v
cGVuU1VTRSAxMy4xPC9wYXJhPjwvbGlzdGl0ZW0+IC0tPgo+PiAtwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDxsaXN0aXRlbT48cGFyYT5vcGVuU1VTRSAxMy4yPC9wYXJhPjwv
bGlzdGl0ZW0+Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPGxpc3RpdGVt
PjxwYXJhPm9wZW5TVVNFIDEzLjE8L3BhcmE+PC9saXN0aXRlbT4KPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNVU0UgMTMuMjwvcGFy
YT48L2xpc3RpdGVtPiAtLT4KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PGxpc3RpdGVtPjxwYXJhPm9wZW5TVVNFIDQyLjE8L3BhcmE+PC9saXN0aXRlbT4KPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8bGlzdGl0ZW0+PHBhcmE+b3BlblNVU0Ug
NDIuMjwvcGFyYT48L2xpc3RpdGVtPgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPC9p
dGVtaXplZGxpc3Q+Cj4+IMKgwqDCoMKgwqDCoMKgwqAgPC9wYXJhPgo+Pgo+PiAtLSAKPj4g
Mi43LjQKPgoK

