Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30E44E00B7D; Mon, 23 Jul 2018 05:02:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_DIGITS,
	FROM_LOCAL_HEX, HTML_MESSAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FROM_LOCAL_DIGITS From: localpart has long digit
	sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (13824125580[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from m13-43.163.com (m13-43.163.com [220.181.13.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2CC5E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 05:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=GSEqj
	gHVSKMtOFsFZhh3SK2G8Vx1+egDR+NmJRW0Vr4=; b=efoXXwQUMmbiHnGtmzAga
	xNZIYTwCYQ/R7F+/oQ7b9JO/m9M0ppY5AQ6wx4ceF/7uctO6wQm/9mxAhwthmTE7
	ARVGw2CwfQqYv4rKejaup3aQioPm82d55WMyNFxda4+4LVQwbYEplTQv4n3UYr+V
	3Mm+904Uf3TVB9Y5w8Du20=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr43 (Coremail) ; Mon, 23 Jul 2018 20:02:49 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Mon, 23 Jul 2018 20:02:49 +0800 (CST)
From: tugouxp  <13824125580@163.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
In-Reply-To: <CAJTo0LbvWjx-H84LSoecJwRxpNuPU-TaWd5YcLa+p4=UtjJw3A@mail.gmail.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
	<CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
	<3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
	<CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
	<7c2d86c9.c4ae.164c6df4642.Coremail.13824125580@163.com>
	<CAJTo0LbvWjx-H84LSoecJwRxpNuPU-TaWd5YcLa+p4=UtjJw3A@mail.gmail.com>
X-CM-CTRLDATA: QC5ZTGZvb3Rlcl9odG09MTEzMTo2MQ==
MIME-Version: 1.0
Message-ID: <651763aa.c913.164c7054669.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: K8GowAAnjvnpw1VbDDtOAA--.43883W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiHg2MQlSIb6xdewABsl
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "Unable to find header curl/curlbuild.h" error on porting
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
X-List-Received-Date: Mon, 23 Jul 2018 12:02:54 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_189195_414017496.1532347369063"

------=_Part_189195_414017496.1532347369063
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgYnVydG9uOgoKCiAgIHRoYW5rIHlvdSwganVzdCBhcyB5b3Ugc2F5LCBpIHJlbW92ZSBpdC4K
CgpidXQsIGRpZCB0aGlzIG9wZXJhdGlvbiBhZmZlY3QgdGhlIGZ1bmN0aW9uIG9mIHRoZSBjdXJs
PyBvciBpdCBkb2VzIG5vdCBtYXR0ZXI/CgoKdGhhbmtzICEKCgoKCgoKCgpBdCAyMDE4LTA3LTIz
IDE5OjM3OjQzLCAiQnVydG9uLCBSb3NzIiA8cm9zcy5idXJ0b25AaW50ZWwuY29tPiB3cm90ZToK
Pk9uIDIzIEp1bHkgMjAxOCBhdCAxMjoyMSwgdHVnb3V4cCA8MTM4MjQxMjU1ODBAMTYzLmNvbT4g
d3JvdGU6Cj4+IGhpIGJ1cnRvbjoKPj4gICBzb3JyeSBmb3IgdGhhdC4gOi18Cj4+Cj4+IGkgc3Rp
bGwgY2FudCBnZXQgd2hhdCB5b3Ugc2FpZCwgZm9yZ2l2ZSBtZSBmb3IgbXkgZm9vbGlzaCBvbiB0
aGF0LCAgY2FuIHlvdQo+PiBzaG93IG1lIGhvdyB0byBkbyB0aGlzPyAgdGhhbmtzIGZvciB5b3Vy
IGtpbmRseSBoZWxwLgo+Cj5GaW5kIHRoZSBjdXJsIHJlY2lwZSwgb3BlbiBpdCBpbiBhbiBlZGl0
b3IuICBUaGV5J2xsIGJlIGEgYmxvY2sgb2YKPmNvZGUgd2hpY2ggY2FsbHMgb2VfbXVsdGlsaWJf
aGVhZGVyLCBkZWxldGUgaXQgYWxsLgo+Cj5BdCB0aGUgZW5kIG9mIHRoZSBkYXkgdGhpcyBpcyBh
IGJyb2tlbiB1cGdyYWRlIGFuZCBpcyBlaXRoZXIgc29tZXRoaW5nCj55b3UsIGEgY29sbGVhZ3Vl
LCBvciBhIHN1cHBsaWVyIGRpZC4gIElmIGEgc3VwcGxpZXIgZGlkIGl0IHRoZW4gdGhleQo+YnJv
a2UgaXQsIGFuZCB5b3Ugc2hvdWxkIHRlbGwgdGhlbS4KPgo+Um9zcwo=

------=_Part_189195_414017496.1532347369063
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgYnVydG9uOjwvZGl2PjxkaXY+PGJyPjwvZGl2Pjxk
aXY+Jm5ic3A7ICZuYnNwO3RoYW5rIHlvdSwganVzdCBhcyB5b3Ugc2F5LCBpIHJlbW92ZSBpdC48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PmJ1dCwgZGlkIHRoaXMgb3BlcmF0aW9uIGFmZmVjdCB0
aGUgZnVuY3Rpb24gb2YgdGhlIGN1cmw/IG9yIGl0IGRvZXMgbm90IG1hdHRlcj88L2Rpdj48ZGl2
Pjxicj48L2Rpdj48ZGl2PnRoYW5rcyAhPC9kaXY+PGJyPjxicj48YnI+PGJyPjxkaXYgc3R5bGU9
InBvc2l0aW9uOnJlbGF0aXZlO3pvb206MSI+PC9kaXY+PGRpdiBpZD0iZGl2TmV0ZWFzZU1haWxD
YXJkIj48L2Rpdj48YnI+PHByZT48YnI+QXQgMjAxOC0wNy0yMyAxOTozNzo0MywgIkJ1cnRvbiwg
Um9zcyIgJmx0O3Jvc3MuYnVydG9uQGludGVsLmNvbSZndDsgd3JvdGU6CiZndDtPbiAyMyBKdWx5
IDIwMTggYXQgMTI6MjEsIHR1Z291eHAgJmx0OzEzODI0MTI1NTgwQDE2My5jb20mZ3Q7IHdyb3Rl
OgomZ3Q7Jmd0OyBoaSBidXJ0b246CiZndDsmZ3Q7ICAgc29ycnkgZm9yIHRoYXQuIDotfAomZ3Q7
Jmd0OwomZ3Q7Jmd0OyBpIHN0aWxsIGNhbnQgZ2V0IHdoYXQgeW91IHNhaWQsIGZvcmdpdmUgbWUg
Zm9yIG15IGZvb2xpc2ggb24gdGhhdCwgIGNhbiB5b3UKJmd0OyZndDsgc2hvdyBtZSBob3cgdG8g
ZG8gdGhpcz8gIHRoYW5rcyBmb3IgeW91ciBraW5kbHkgaGVscC4KJmd0OwomZ3Q7RmluZCB0aGUg
Y3VybCByZWNpcGUsIG9wZW4gaXQgaW4gYW4gZWRpdG9yLiAgVGhleSdsbCBiZSBhIGJsb2NrIG9m
CiZndDtjb2RlIHdoaWNoIGNhbGxzIG9lX211bHRpbGliX2hlYWRlciwgZGVsZXRlIGl0IGFsbC4K
Jmd0OwomZ3Q7QXQgdGhlIGVuZCBvZiB0aGUgZGF5IHRoaXMgaXMgYSBicm9rZW4gdXBncmFkZSBh
bmQgaXMgZWl0aGVyIHNvbWV0aGluZwomZ3Q7eW91LCBhIGNvbGxlYWd1ZSwgb3IgYSBzdXBwbGll
ciBkaWQuICBJZiBhIHN1cHBsaWVyIGRpZCBpdCB0aGVuIHRoZXkKJmd0O2Jyb2tlIGl0LCBhbmQg
eW91IHNob3VsZCB0ZWxsIHRoZW0uCiZndDsKJmd0O1Jvc3MKPC9wcmU+PC9kaXY+PGJyPjxicj48
c3BhbiB0aXRsZT0ibmV0ZWFzZWZvb3RlciI+PHA+PGJyLz4mbmJzcDs8L3A+PC9zcGFuPg==

------=_Part_189195_414017496.1532347369063--
