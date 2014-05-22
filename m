Return-Path: <huangxx_2155@qq.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E366AE00B87; Wed, 21 May 2014 22:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,FROM_EXCESS_BASE64,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (huangxx_2155[at]qq.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [103.7.28.238 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
	*  0.1 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 May 2014 22:23:03 PDT
Received: from smtpbg64.qq.com (unknown [103.7.28.238])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 226D0E00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 22:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201307;
	t=1400736180; bh=VmqUBNRhCilQ4+RkOi0P5k2U7IZ99cKWYcpRy9cgW6k=;
	h=X-QQ-FEAT:X-QQ-SSF:X-HAS-ATTACH:X-QQ-BUSINESS-ORIGIN:
	X-Originating-IP:X-QQ-STYLE:X-QQ-mid:From:To:Subject:Mime-Version:Content-Type:Content-Transfer-Encoding:Date:
	X-Priority:Message-ID:X-QQ-MIME:X-Mailer:X-QQ-Mailer:
	X-QQ-SENDSIZE;
	b=GfrdflOUHxfdUjM1n5zhJSYRUqbADjae735XTv2tKsI7pvPxNlLjPGWqhpbSzG3p4
	H58qphadW3HMH1/8ETF48cZbS0SYaj5CBV2VAF/+HazaE2jXaTa/LJtYEklsRReJqD
	MA/fCU70rgYssfgXWF9SgmOBDimYPfU48kQP/wqI=
X-QQ-FEAT: aavjYZ2X1aCFT5zeuXSKR/WiCNKMCF3HtFLUztenj0yE/PVYvZTHfWbino6xQ
	19bfFAQQ04lRSpMPiiYhkDdqcXBa1lNyC55pgLJGXGdgdbkL5aQFHV+lQi/iXlonmd3pVzq
	ZB4VthNRNgCLDKtVcgapR6qsW5Ru
X-QQ-SSF: 00000000000000F000000000000000Z
X-HAS-ATTACH: no
X-QQ-BUSINESS-ORIGIN: 2
X-Originating-IP: 137.189.2.220
X-QQ-STYLE: 
X-QQ-mid: webmail87t1400736112t8397386
From: "=?ISO-8859-1?B?RWR3YXJkIEhVQU5H?=" <huangxx_2155@qq.com>
To: "=?ISO-8859-1?B?eW9jdG8=?=" <yocto@yoctoproject.org>
Mime-Version: 1.0
Date: Thu, 22 May 2014 13:21:51 +0800
X-Priority: 3
Message-ID: <tencent_40ADD2EC601FE8FC7A642122@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
X-QQ-SENDSIZE: 520
Subject: How to generate adt-installer with special lib*.so in the sysroot, like opencv?
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
X-List-Received-Date: Thu, 22 May 2014 05:23:07 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_537D8970_09348A88_5A17D153"
Content-Transfer-Encoding: 8Bit

------=_NextPart_537D8970_09348A88_5A17D153
Content-Type: text/plain;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

RGVhciBhbGwsDQogIEhpIHRoZXJlLCBJJ20gYSBzdHVkZW50IG5ldyB0byBZb2N0byBhbmQg
T3BlbmVtYmVkZGVkLCBzbyB0aGlzIHF1ZXN0aW9uIG1heSBiZSBhIHN0dXBpZCBxdWVzdGlv
biwgYnV0IGkgaGF2ZSByZWFkIHRoZSBhZHQtbWFudWFsIGJ1dCBkaWQgbm90IGZpbmQgYSBk
aXJlY3Qgc29sdXRpb24uDQogIEkndmUgc3VjZXNzZnVsbHkgY29uZmlndXJlIHRoZSBiYmxh
eWVycy5jb25mIGFuZCBsb2NhbC5jb25mIHRvIGJ1aWxkIGEgY29yZS1pbWFnZS1zYXRvIHdp
dGggb3BlbmN2IGxpYnJhcnksIGFuZCB0aGUgRWNsaXBzZSBBRFQgcGx1Z2luIHdvcmtzIHBl
cmZlY3RseSBvbiBteSBsYXB0b3AsIHdpdGggb3BlbmN2IGxpYnJhcnkuDQogIE5vdywgSSBu
ZWVkIHRvIGhhdmUgYW5vdGhlciBjb21wdXRlciBpbnN0YWxsZWQgdGhlIEFEVCBhbmQgdHJ5
IHRvIGRldmVsb3Agb24gdGhhdCBjb21wdXRlciwgYnV0IHRoZSBhZHQtaW5zdGFsbGVyIGdl
bmVyYXRlZCB1c2luZyAnYml0YmFrZSBhZHQtaW5zdGFsbGVyJyBvbiBteSBsYXB0b3AgZG9l
cyBub3QgaW5zdGFsbCB0aGUgdG9vbGNoYWluIG9yIHRoZSBzeXNyb290IHdpdGggb3BlbmN2
IGxpYnJhcnksIGhvdyBkbyBpIGNvbmZpZ3VyZSBpdCB0byBkbyBzbyAodGhhdCBpcywgdG8g
aW5zdGFsbCB0aGUgc3lzcm9vdCBleGFjdGx5IHRoZSBzYW1lIGFzIGluIHRoZSBsYXB0b3Ag
SSBidWlsZCB0aGUgbGludXgtaW1hZ2UpPw0KDQoNCkkganVzdCB1c2UgDQokIGJpdGJha2Ug
Y29yZS1pbWFnZS1zYXRvDQokIGJpdGJha2UgbWV0YS1pZGUtc3VwcG9ydA0KJCBiaXRiYWtl
IGFkdC1pbnN0YWxsZXIgDQp0byBnZXQgYW4gYWR0LWluYXRhbGxlciB0YXJiYWxsLg0KVGhl
biBpIHVzZSBhIFVTQiBkcml2ZSB0byB0cmFuc2ZlciB0aGUgYWR0LWluc3RhbGxlciB0YXIg
YmFsbCB0byBhbm90aGVyIGNvbXB1dGVyLCBhbmQgcnVuIGFkdF9pbnN0YWxsZXIgc2NyaXB0
Lg0KTWF5YmUgdGhlcmUgc29tZXRoaW5nIHNwZWNpYWwgaSBkaWQgbm90IGRvLCB3b3VsZCB5
b3UgcGxlYXNlIGhlbHAgbWUgb3V0Lj8NCg0KDQpCZXN0IHJlZ2FyZHMNCi0tLS0tLS0tLS0t
LS0tLS0tLQ0KRWR3YXJkIFpJTE9ORyBIVUFORw0KQkVuZ0BDU0UgZGVwYXJ0bWVudCwgRmFj
dWx0eSBvZiBFbmdpbmVlcmluZywgQ1VISw0KaHR0cDovL2FwcHNydi5jc2UuY3Voay5lZHUu
aGsvfnpsaHVhbmcy

------=_NextPart_537D8970_09348A88_5A17D153
Content-Type: text/html;
	charset="ISO-8859-1"
Content-Transfer-Encoding: base64

PGRpdj5EZWFyIGFsbCw8L2Rpdj48ZGl2PiZuYnNwOyBIaSB0aGVyZSwgSSdtIGEgc3R1ZGVu
dCBuZXcgdG8gWW9jdG8gYW5kIE9wZW5lbWJlZGRlZCwgc28gdGhpcyBxdWVzdGlvbiBtYXkg
YmUgYSBzdHVwaWQgcXVlc3Rpb24sIGJ1dCBpIGhhdmUgcmVhZCB0aGUgYWR0LW1hbnVhbCBi
dXQgZGlkIG5vdCBmaW5kIGEgZGlyZWN0IHNvbHV0aW9uLjwvZGl2PjxkaXY+Jm5ic3A7IEkn
dmUgc3VjZXNzZnVsbHkgY29uZmlndXJlIHRoZSBiYmxheWVycy5jb25mIGFuZCBsb2NhbC5j
b25mIHRvIGJ1aWxkIGEgY29yZS1pbWFnZS1zYXRvIHdpdGggb3BlbmN2IGxpYnJhcnksIGE8
c3BhbiBzdHlsZT0ibGluZS1oZWlnaHQ6IDEuNTsiPm5kIHRoZSBFY2xpcHNlIEFEVCBwbHVn
aW4gd29ya3MgcGVyZmVjdGx5IG9uIG15IGxhcHRvcCwgd2l0aCBvcGVuY3YgbGlicmFyeS48
L3NwYW4+PC9kaXY+PGRpdj4mbmJzcDsgTm93LCBJIG5lZWQgdG8gaGF2ZSBhbm90aGVyIGNv
bXB1dGVyIGluc3RhbGxlZCB0aGUgQURUIGFuZCB0cnkgdG8gZGV2ZWxvcCBvbiB0aGF0IGNv
bXB1dGVyLCBidXQgdGhlIGFkdC1pbnN0YWxsZXIgZ2VuZXJhdGVkIHVzaW5nICdiaXRiYWtl
IGFkdC1pbnN0YWxsZXInIG9uIG15IGxhcHRvcCBkb2VzIG5vdCBpbnN0YWxsIHRoZSB0b29s
Y2hhaW4gb3IgdGhlIHN5c3Jvb3Qgd2l0aCBvcGVuY3YgbGlicmFyeSwgaG93IGRvIGkgY29u
ZmlndXJlIGl0IHRvIGRvIHNvICh0aGF0IGlzLCB0byBpbnN0YWxsIHRoZSBzeXNyb290IGV4
YWN0bHkgdGhlIHNhbWUgYXMgaW4gdGhlIGxhcHRvcCBJIGJ1aWxkIHRoZSBsaW51eC1pbWFn
ZSk/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGp1c3QgdXNlJm5ic3A7PC9kaXY+PGRp
dj4kIGJpdGJha2UgY29yZS1pbWFnZS1zYXRvPC9kaXY+PGRpdj4kIGJpdGJha2UgbWV0YS1p
ZGUtc3VwcG9ydDwvZGl2PjxkaXY+JCBiaXRiYWtlIGFkdC1pbnN0YWxsZXImbmJzcDs8L2Rp
dj48ZGl2PnRvIGdldCBhbiBhZHQtaW5hdGFsbGVyIHRhcmJhbGwuPC9kaXY+PGRpdj5UaGVu
IGkgdXNlIGEgVVNCIGRyaXZlIHRvIHRyYW5zZmVyIHRoZSBhZHQtaW5zdGFsbGVyIHRhciBi
YWxsIHRvIGFub3RoZXIgY29tcHV0ZXIsIGFuZCBydW4gYWR0X2luc3RhbGxlciBzY3JpcHQu
PC9kaXY+PGRpdj5NYXliZSB0aGVyZSBzb21ldGhpbmcgc3BlY2lhbCBpIGRpZCBub3QgZG8s
IHdvdWxkIHlvdSBwbGVhc2UgaGVscCBtZSBvdXQuPzwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+QmVzdCByZWdhcmRzPC9kaXY+PGRpdj48ZGl2IHN0eWxlPSJjb2xvcjojOTA5MDkwO2Zv
bnQtZmFtaWx5OkFyaWFsIE5hcnJvdztmb250LXNpemU6MTJweCI+LS0tLS0tLS0tLS0tLS0t
LS0tPC9kaXY+PGRpdiBzdHlsZT0iZm9udC1zaXplOjE0cHg7Zm9udC1mYW1pbHk6VmVyZGFu
YTtjb2xvcjojMDAwOyI+PGRpdj5FZHdhcmQgWklMT05HIEhVQU5HPC9kaXY+PGRpdj5CRW5n
QENTRSBkZXBhcnRtZW50LCBGYWN1bHR5IG9mIEVuZ2luZWVyaW5nLCBDVUhLPC9kaXY+PGRp
dj5odHRwOi8vYXBwc3J2LmNzZS5jdWhrLmVkdS5oay9+emxodWFuZzI8L2Rpdj48L2Rpdj48
L2Rpdj48ZGl2PiZuYnNwOzwvZGl2Pg==

------=_NextPart_537D8970_09348A88_5A17D153--
