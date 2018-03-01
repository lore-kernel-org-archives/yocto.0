Return-Path: <qinlaigui@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B066FE00EBF; Thu,  1 Mar 2018 05:44:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (qinlaigui[at]126.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1873 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 Mar 2018 05:44:24 PST
Received: from m15-52.126.com (m15-52.126.com [220.181.15.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45E55E00DCA
	for <yocto@yoctoproject.org>; Thu,  1 Mar 2018 05:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=3xQ22
	eroI1Bd2lYJHmmB+26RssBS9jme/DUmmp0XfXg=; b=QSff+h18T6RGVtOFpEyxT
	nqO03WvAyG6ThSmTnRork8qnTZ8Y8TKQ9Q+zQN3zqDaZQrRLv/+dnkKPrHinhM0p
	23UBGGcNRkpllUEJEilQsQiCAWCN43YuqaUPVvcUlwMzeoQieiRu6ehmBhWNSrbD
	NlkdA0t5TK5R3rMlD2XYb8=
Received: from qinlaigui$126.com ( [222.65.127.254] ) by
	ajax-webmail-wmsvr52 (Coremail) ; Thu, 1 Mar 2018 21:12:57 +0800 (CST)
X-Originating-IP: [222.65.127.254]
Date: Thu, 1 Mar 2018 21:12:57 +0800 (CST)
From: "Laigui Qin" <qinlaigui@126.com>
To: "Alexander Kanavin" <alexander.kanavin@linux.intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 126com
In-Reply-To: <b23ebcac-8b34-69c8-98ec-d0f839aca71c@linux.intel.com>
References: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
	<798b595e-d2d2-ac15-84c9-1c21d2050ceb@yahoo.de>
	<552c44f.9421.161d276e79a.Coremail.qinlaigui@126.com>
	<b23ebcac-8b34-69c8-98ec-d0f839aca71c@linux.intel.com>
X-CM-CTRLDATA: LQs8YmZvb3Rlcl9odG09MTM5Njo1Ng==
MIME-Version: 1.0
Message-ID: <104577bf.a183.161e1b1be34.Coremail.qinlaigui@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NMqowACn+mla_JdahiygAA--.10360W
X-CM-SenderInfo: xtlqztpljxxqqrswhudrp/1tbiIRf7pVpD46oUgAABst
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto@yoctoproject.org
Subject: Re: [Meta-Raspberrypi] Yocto apt sources.list for Raspberry Pi
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
X-List-Received-Date: Thu, 01 Mar 2018 13:44:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_151138_1061672492.1519909977652"

------=_Part_151138_1061672492.1519909977652
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGkgQWxleCwKCgpUaGFua3MgZm9yIHRoZSBleHBsYW5hdGlvbi4gSXQgbWFrZXMgbXVjaCBtb3Jl
IHNlbnNlIGZvciB0aGUgZGlmZmVyZW5jZS4KCgpCUiwKTWlrZQoKCgpBdCAyMDE4LTAzLTAxIDAw
OjAyOjM2LCAiQWxleGFuZGVyIEthbmF2aW4iIDxhbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRl
bC5jb20+IHdyb3RlOgo+T24gMDIvMjYvMjAxOCAwNDoxNCBQTSwgTGFpZ3VpIFFpbiB3cm90ZToK
Pj4gSSB3b3VsZCBsaWtlIHRvIHRoaW5rIHRoZXJlIGlzIGEgd2VsbCBtYWludGFpbmVkIFlvY3Rv
L1Bva3kgcmVwb3NpdG9yeSAKPj4gc29tZXdoZXJlIGluIHRoZSB3b3JsZCBsaWtlIHRoZSBkZWJp
YW4vUmFzcGJpYW4gZGViIHNvdXJjZSB0byBsZXZlcmFnZSAKPj4gKGJ1aWxkIGFuZCBtYWludGFp
biBteSBvd24gcmVwbyBpcyBub3QgbXkgcHVycG9zZS4pIExvb2tzIGxpa2UgdGhlcmUgaXMgCj4+
IG5vdCBzdWNoIHJlcG8gYXZhaWxhYmxlLi4uCj4KPlBsZWFzZSBjb25zaWRlciB0aGF0IFlvY3Rv
IGlzIG5vdCBhIGRpc3RyaWJ1dGlvbi4gSXQncyBhIHRvb2xraXQgZm9yIAo+Y3JlYXRpbmcgZGlz
dHJpYnV0aW9ucyBhaW1lZCBhdCBlbWJlZGRlZCB1c2UgY2FzZXMuIFdoaWxlIFBva3kgaXMgYSAK
PnJlZmVyZW5jZSBkaXN0cm8gY3JlYXRlZCB1c2luZyBZb2N0byBjb21wb25lbnRzLCBpdCBoYXMg
YSBmYWlybHkgbGltaXRlZCAKPnNldCBvZiBzdXBwb3J0ZWQgaGFyZHdhcmUsIHdoaWNoIGlzIG1v
c3RseSB2YXJpb3VzIFFFTVUgZW11bGF0b3IgCj5tYWNoaW5lcy4gQWxtb3N0IGFueW9uZSBlbHNl
IHdpbGwgaGF2ZSBhIGRpZmZlcmVudCBtYWNoaW5lLCBkaWZmZXJlbnQgCj5kaXN0cmlidXRpb24g
ZmVhdHVyZXMsIGFuZCB2YXJpb3VzIG90aGVyIGN1c3RvbWl6YXRpb25zLiBTbyBhbnkgYXR0ZW1w
dCAKPnRvIHByb3ZpZGUgYW4gJ29mZmljYWwnIHBhY2thZ2UgZmVlZCBmcm9tIFlvY3RvIGl0c2Vs
ZiB3aWxsIGp1c3QgY2F1c2UgCj5jb25mdXNpb24gYW5kIGJyZWFrYWdlLCBhbmQgd2lsbCB0aWUg
dXAgdGhlIGxpbWl0ZWQgbWFucG93ZXIgd2UgaGF2ZSAKPmV2ZW4gbW9yZS4KPgo+Cj5BbGV4Cg==

------=_Part_151138_1061672492.1519909977652
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGkgQWxleCw8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PlRoYW5rcyBmb3IgdGhlIGV4cGxhbmF0aW9uLiBJdCBtYWtlcyBtdWNoIG1vcmUgc2Vuc2UgZm9y
IHRoZSBkaWZmZXJlbmNlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+QlIsPC9kaXY+PGRpdj5N
aWtlPC9kaXY+PGRpdiBzdHlsZT0icG9zaXRpb246cmVsYXRpdmU7em9vbToxIj48L2Rpdj48ZGl2
IGlkPSJkaXZOZXRlYXNlTWFpbENhcmQiPjwvZGl2Pjxicj48cHJlPjxicj5BdCAyMDE4LTAzLTAx
IDAwOjAyOjM2LCAiQWxleGFuZGVyIEthbmF2aW4iICZsdDthbGV4YW5kZXIua2FuYXZpbkBsaW51
eC5pbnRlbC5jb20mZ3Q7IHdyb3RlOgomZ3Q7T24gMDIvMjYvMjAxOCAwNDoxNCBQTSwgTGFpZ3Vp
IFFpbiB3cm90ZToKJmd0OyZndDsgSSB3b3VsZCBsaWtlIHRvIHRoaW5rIHRoZXJlIGlzIGEgd2Vs
bCBtYWludGFpbmVkIFlvY3RvL1Bva3kgcmVwb3NpdG9yeSAKJmd0OyZndDsgc29tZXdoZXJlIGlu
IHRoZSB3b3JsZCBsaWtlIHRoZSBkZWJpYW4vUmFzcGJpYW4gZGViIHNvdXJjZSB0byBsZXZlcmFn
ZSAKJmd0OyZndDsgKGJ1aWxkIGFuZCBtYWludGFpbiBteSBvd24gcmVwbyBpcyBub3QgbXkgcHVy
cG9zZS4pIExvb2tzIGxpa2UgdGhlcmUgaXMgCiZndDsmZ3Q7IG5vdCBzdWNoIHJlcG8gYXZhaWxh
YmxlLi4uCiZndDsKJmd0O1BsZWFzZSBjb25zaWRlciB0aGF0IFlvY3RvIGlzIG5vdCBhIGRpc3Ry
aWJ1dGlvbi4gSXQncyBhIHRvb2xraXQgZm9yIAomZ3Q7Y3JlYXRpbmcgZGlzdHJpYnV0aW9ucyBh
aW1lZCBhdCBlbWJlZGRlZCB1c2UgY2FzZXMuIFdoaWxlIFBva3kgaXMgYSAKJmd0O3JlZmVyZW5j
ZSBkaXN0cm8gY3JlYXRlZCB1c2luZyBZb2N0byBjb21wb25lbnRzLCBpdCBoYXMgYSBmYWlybHkg
bGltaXRlZCAKJmd0O3NldCBvZiBzdXBwb3J0ZWQgaGFyZHdhcmUsIHdoaWNoIGlzIG1vc3RseSB2
YXJpb3VzIFFFTVUgZW11bGF0b3IgCiZndDttYWNoaW5lcy4gQWxtb3N0IGFueW9uZSBlbHNlIHdp
bGwgaGF2ZSBhIGRpZmZlcmVudCBtYWNoaW5lLCBkaWZmZXJlbnQgCiZndDtkaXN0cmlidXRpb24g
ZmVhdHVyZXMsIGFuZCB2YXJpb3VzIG90aGVyIGN1c3RvbWl6YXRpb25zLiBTbyBhbnkgYXR0ZW1w
dCAKJmd0O3RvIHByb3ZpZGUgYW4gJ29mZmljYWwnIHBhY2thZ2UgZmVlZCBmcm9tIFlvY3RvIGl0
c2VsZiB3aWxsIGp1c3QgY2F1c2UgCiZndDtjb25mdXNpb24gYW5kIGJyZWFrYWdlLCBhbmQgd2ls
bCB0aWUgdXAgdGhlIGxpbWl0ZWQgbWFucG93ZXIgd2UgaGF2ZSAKJmd0O2V2ZW4gbW9yZS4KJmd0
OwomZ3Q7CiZndDtBbGV4CjwvcHJlPjwvZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vm
b290ZXIiPjxwPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_151138_1061672492.1519909977652--
