Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0193E00A25; Thu, 19 Jan 2017 08:03:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40460E00839
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 08:03:45 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id c206so84505459wme.0
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 08:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0qv4vwVNAee2pyAsTQ0T7DI7N8ihO64C2s6dAQlnNRc=;
	b=UM+JEWKVre+TlnBccDtFqR7w+sl27gtknXb2IXuz3FJTcHCfsAuISlJKg6Nzu3mc07
	vz/ifGn4cDA9bQDSrB5RuNgcT/kRsdMAeS/gtTiJh7usSgY26AwsJUL99BbW2SyTgO3s
	C48A8y5jkLif+2cU7r7sx30QAKujaenyFPZ4K0yBrMgw6kNHYlzXh0bujS4yYuiYASQN
	Emt1lleiEoUoCqlb/Khl9nofAdA54OJnUGOedKxcRYHJZSSXYfioLEO5wCnIkR5RN/lr
	UgOTkMz8cmMQ8/2Vlnwo92IzWa8pHg5xYPfqauOW/Jdyynxw0oKzEdt2OqE8qtoyAg+g
	e6mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0qv4vwVNAee2pyAsTQ0T7DI7N8ihO64C2s6dAQlnNRc=;
	b=dyMxfZAVOFZ5koc4yuKxuiOPHsdAlbM02UmJEGlAK8Ko+ckm6gKjHLJFnv1Pud/huG
	7d6Gz5RL4hgmRQ4DKjlL8VW0VA1AUJWuOOXC/aDZ/Op9cuPyoZ+O3WKN/qcx/GIn0ynZ
	Tgk44VJiS7nPkOKeNFXDHDcKwll/tjnsheQHxdvdhNsjB8k34PGcRrqNB336NDEithRn
	mjBXKxZY0bjQG9tjh8CMFCZkIpeApSguqlsbaFGPgAg35Imu4rMJUTTbuTv2LD30XZzT
	QDPYClCZu0KhklQ3iPbKOg3coAj8HL1pT/sH1wZnz4CWWLj2tTwP5swk9zo0HrCMgYZX
	tdTA==
X-Gm-Message-State: AIkVDXL0YWv0ObtWkpFQpCZzgP7AM6pQTcdFTqegUFqiYahJvGkeahMDZnhumTGDIrjTTYXjZUko85/FuOkj6A==
X-Received: by 10.28.9.148 with SMTP id 142mr788212wmj.24.1484841824906; Thu,
	19 Jan 2017 08:03:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.230.88 with HTTP; Thu, 19 Jan 2017 08:03:14 -0800 (PST)
In-Reply-To: <fd9a97fabe9dcd9bf8938aa7b790b4f7@mail.gmail.com>
References: <fd9a97fabe9dcd9bf8938aa7b790b4f7@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Thu, 19 Jan 2017 17:03:14 +0100
Message-ID: <CAGiJk9f_iwPMoTOd2WbGakw5c+zuLbpzWnBAPehignD_rY9ToQ@mail.gmail.com>
To: Terry Farnham <terry.farnham@quanergy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Flatbuffers
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
X-List-Received-Date: Thu, 19 Jan 2017 16:03:49 -0000
X-Groupsio-MsgNum: 33986
Content-Type: multipart/mixed; boundary=001a1144302c859c7f054674ad73

--001a1144302c859c7f054674ad73
Content-Type: text/plain; charset=UTF-8

2017-01-19 1:35 GMT+01:00 Terry Farnham <terry.farnham@quanergy.com>:
> Curious if anyone has ever built googles flatbuffers for embedded and
> whether or not they might share their recipe?
>

Hi,

you could try a patch for meta-oe that is added as attachment.
The recipes compile but I had no time to runtest them yet.


-- 
Regards
Samuel

--001a1144302c859c7f054674ad73
Content-Type: text/x-diff; charset=US-ASCII; 
	name="0001-flatbuffers-Added-initial-recipe.patch"
Content-Disposition: attachment; 
	filename="0001-flatbuffers-Added-initial-recipe.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_iy4kc1lt0

RnJvbSA4NjUzYjEyMTY1NTgzN2VjYjg4OTJlN2E1Zjc0M2YyOGM5NjYzMGE3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTYW11ZWwgU3RpcnR6ZWwgPHMuc3RpcnR6ZWxAZ29vZ2xlbWFp
bC5jb20+CkRhdGU6IFRodSwgMTkgSmFuIDIwMTcgMTE6Mzc6MjYgKzAxMDAKU3ViamVjdDogW1BB
VENIXSBmbGF0YnVmZmVyczogQWRkZWQgaW5pdGlhbCByZWNpcGUKClNpZ25lZC1vZmYtYnk6IFNh
bXVlbCBTdGlydHplbCA8cy5zdGlydHplbEBnb29nbGVtYWlsLmNvbT4KLS0tCiAuLi4vZmxhdGJ1
ZmZlcnMvZmxhdGJ1ZmZlcnMtbmF0aXZlXzEuNS4wLmJiICAgICAgICAgICAgICAgfCAgNSArKysr
KwogbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRidWZmZXJzL2ZsYXRidWZmZXJzLmluYyAg
ICAgIHwgMTUgKysrKysrKysrKysrKysrCiBtZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvZmxhdGJ1
ZmZlcnMvZmxhdGJ1ZmZlcnNfMS41LjAuYmIgfCAgOSArKysrKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgMjkgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEtb2UvcmVjaXBlcy1k
ZXZ0b29scy9mbGF0YnVmZmVycy9mbGF0YnVmZmVycy1uYXRpdmVfMS41LjAuYmIKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBtZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvZmxhdGJ1ZmZlcnMvZmxhdGJ1ZmZl
cnMuaW5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRi
dWZmZXJzL2ZsYXRidWZmZXJzXzEuNS4wLmJiCgpkaWZmIC0tZ2l0IGEvbWV0YS1vZS9yZWNpcGVz
LWRldnRvb2xzL2ZsYXRidWZmZXJzL2ZsYXRidWZmZXJzLW5hdGl2ZV8xLjUuMC5iYiBiL21ldGEt
b2UvcmVjaXBlcy1kZXZ0b29scy9mbGF0YnVmZmVycy9mbGF0YnVmZmVycy1uYXRpdmVfMS41LjAu
YmIKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uMmY3Y2Y1OQotLS0gL2Rldi9u
dWxsCisrKyBiL21ldGEtb2UvcmVjaXBlcy1kZXZ0b29scy9mbGF0YnVmZmVycy9mbGF0YnVmZmVy
cy1uYXRpdmVfMS41LjAuYmIKQEAgLTAsMCArMSw1IEBACityZXF1aXJlIGZsYXRidWZmZXJzLmlu
YworCitpbmhlcml0IGNtYWtlIG5hdGl2ZQorCitDWFhGTEFHUyArPSAiLS1zdGQ9YysrMTEiCmRp
ZmYgLS1naXQgYS9tZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvZmxhdGJ1ZmZlcnMvZmxhdGJ1ZmZl
cnMuaW5jIGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRidWZmZXJzL2ZsYXRidWZmZXJz
LmluYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi41YTg0ZWIyCi0tLSAvZGV2
L251bGwKKysrIGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRidWZmZXJzL2ZsYXRidWZm
ZXJzLmluYwpAQCAtMCwwICsxLDE1IEBACitTVU1NQVJZID0gIkZsYXRidWZmZXJzIC0gc3RydWN0
dXJlZCBkYXRhIHNlcmlhbGlzYXRpb24gbWVjaGFuaXNtIgorREVTQ1JJUFRJT04gPSAiRmxhdGJ1
ZmZlcnMgYXJlIGEgd2F5IG9mIGVuY29kaW5nIHN0cnVjdHVyZWQgZGF0YSBpbiBhbiBcCitlZmZp
Y2llbnQgeWV0IGV4dGVuc2libGUgZm9ybWF0IHNpbWlsYXIgdG8gUHJvdG9jb2wgQnVmZmVycy4i
CitIT01FUEFHRSA9ICJodHRwczovL2dvb2dsZS5naXRodWIuY29tL2ZsYXRidWZmZXJzIgorU0VD
VElPTiA9ICJjb25zb2xlL3Rvb2xzIgorTElDRU5TRSA9ICJBcGFjaGUtMi4wIgorCitMSUNfRklM
RVNfQ0hLU1VNID0gImZpbGU6Ly9MSUNFTlNFLnR4dDttZDU9YTg3M2M1NjQ1YzE4NGQ1MWUwZjli
MzRlMWQ3Y2Y1NTkiCisKK1NSQ1JFViA9ICJiMjliYTRjNzBjN2I4ZWY0MTVlMzc4MDk1NzRhYzc0
YTliZjBiNjMyIgorCitQViA9ICIxLjUuMCtnaXQke1NSQ1BWfSIKKworU1JDX1VSSSA9ICJnaXQ6
Ly9naXRodWIuY29tL2dvb2dsZS9mbGF0YnVmZmVycy5naXQiCitTID0gIiR7V09SS0RJUn0vZ2l0
IgpkaWZmIC0tZ2l0IGEvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRidWZmZXJzL2ZsYXRi
dWZmZXJzXzEuNS4wLmJiIGIvbWV0YS1vZS9yZWNpcGVzLWRldnRvb2xzL2ZsYXRidWZmZXJzL2Zs
YXRidWZmZXJzXzEuNS4wLmJiCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLjQ3
NmZkMzcKLS0tIC9kZXYvbnVsbAorKysgYi9tZXRhLW9lL3JlY2lwZXMtZGV2dG9vbHMvZmxhdGJ1
ZmZlcnMvZmxhdGJ1ZmZlcnNfMS41LjAuYmIKQEAgLTAsMCArMSw5IEBACityZXF1aXJlIGZsYXRi
dWZmZXJzLmluYworCitERVBFTkRTICs9ICJmbGF0YnVmZmVycy1uYXRpdmUiCitpbmhlcml0IGNt
YWtlCisKK0VYVFJBX09FQ01BS0UgKz0gIi1ERkxBVEJVRkZFUlNfRkxBVENfRVhFQ1VUQUJMRT0k
e1NUQUdJTkdfQklORElSX05BVElWRX0vZmxhdGMgXAorICAgICAgICAgICAgICAgICAgLURGTEFU
QlVGRkVSU19CVUlMRF9TSEFSRURMSUI6Ym9vbD1PTiIKKworQ1hYRkxBR1MgKz0gIi0tc3RkPWMr
KzExIgotLSAKMS45LjEKCg==

--001a1144302c859c7f054674ad73--
