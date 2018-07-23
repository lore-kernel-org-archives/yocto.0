Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37F5EE00BB5; Mon, 23 Jul 2018 04:21:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BDBBE00AC5
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 04:21:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=bq2bv
	TlkR1HVvrLFSmjRLxTfXQdYU7Skne+6WvdCSEA=; b=gQ107NbIJiQKC0G+1S3CP
	rzFEabF5b9H4/jOSGnQjcy7rvGF2UVa3nVDBtPiLQQXFvprhF5LvDjV902qoU+RA
	vKUFNj93dtdnuPe08zgLKEkDATA8pWCsk0zvklcmK6G0a1Ul6zS6fmokbazDquLN
	A9c4HBdZsH+RbcDt70/OVM=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr43 (Coremail) ; Mon, 23 Jul 2018 19:21:18 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Mon, 23 Jul 2018 19:21:18 +0800 (CST)
From: tugouxp  <13824125580@163.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
In-Reply-To: <CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
References: <3fcef217.a96b.164c6616b92.Coremail.13824125580@163.com>
	<CAJTo0LYL1eMn_-UceCKC9iKXw55DHAtW-QXQe6_3mTxEOHitWg@mail.gmail.com>
	<3c97b7e9.c148.164c6c42e67.Coremail.13824125580@163.com>
	<CAJTo0LayFeK4Vx4VJqqVVKXuBsvxJhtq1NQhq3wG4jm7-ojjxw@mail.gmail.com>
X-CM-CTRLDATA: /EPdLGZvb3Rlcl9odG09MTAyNDo2MQ==
MIME-Version: 1.0
Message-ID: <7c2d86c9.c4ae.164c6df4642.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: K8GowAA3n_ouulVbVDROAA--.52110W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/xtbBRROMQlPAB6T1iQACsW
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
X-List-Received-Date: Mon, 23 Jul 2018 11:21:26 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_185034_1576763788.1532344878658"

------=_Part_185034_1576763788.1532344878658
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgYnVydG9uOgogIHNvcnJ5IGZvciB0aGF0LiA6LXwKCgppIHN0aWxsIGNhbnQgZ2V0IHdoYXQg
eW91IHNhaWQsIGZvcmdpdmUgbWUgZm9yIG15IGZvb2xpc2ggb24gdGhhdCwgIGNhbiB5b3Ugc2hv
dyBtZSBob3cgdG8gZG8gdGhpcz8gIHRoYW5rcyBmb3IgeW91ciBraW5kbHkgaGVscC4KCgoKCgoK
CgpBdCAyMDE4LTA3LTIzIDE4OjU5OjMyLCAiQnVydG9uLCBSb3NzIiA8cm9zcy5idXJ0b25AaW50
ZWwuY29tPiB3cm90ZToKPlBsZWFzZSByZW1lbWJlciB0byBDQyB0aGUgbGlzdCB0byB0aGF0IGV2
ZXJ5b25lIGNhbiBzZWUuCj4KPk9uIDIzIEp1bHkgMjAxOCBhdCAxMTo1MSwgdHVnb3V4cCA8MTM4
MjQxMjU1ODBAMTYzLmNvbT4gd3JvdGU6Cj4+IGhpIGJ1cnRvbjoKPj4gICB0aGFua3MgZm9yIHlv
dXIgYW5zd2VyLiBzbyAgaG93IHRvIGRlYWx0IHdpdGggdGhpcywgc2VlbXMgdHdvIHNlbGVjdGlv
bi4KPj4KPj4gMS4gcmV2ZXJ0IHRoZSB2ZXJzaW9uIG9mIGN1cmwKPj4gMi4gcmVtb3ZlIKGwb2Vf
bXVsdGlsaWJfaGVhZGVyobEKPj4KPj4gaSBhbSBhIGZyZXNoIG1hbiBvbiB5b2N0bywgc28gaG93
IHRvIGFjaGlldmUgdGhlIDJuZCBzY2hlbWU/Cj4KPkluIHRoZSByZWNpcGUgdGhlcmUgaXMgYSBk
b19pbnN0YWxsX2FwcGVuZCBibG9jayB3aGljaCBjYWxscwo+b2VfbXVsdGlpbGJfaGVhZGVyLCBk
ZWxldGUgaXQuCj4KPlJvc3MK

------=_Part_185034_1576763788.1532344878658
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgYnVydG9uOjwvZGl2PjxkaXY+Jm5ic3A7IHNvcnJ5
IGZvciB0aGF0LiA6LXw8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pmkgc3RpbGwgY2FudCBnZXQg
d2hhdCB5b3Ugc2FpZCwgZm9yZ2l2ZSBtZSBmb3IgbXkgZm9vbGlzaCBvbiB0aGF0LCAmbmJzcDtj
YW4geW91IHNob3cgbWUgaG93IHRvIGRvIHRoaXM/ICZuYnNwO3RoYW5rcyBmb3IgeW91ciBraW5k
bHkgaGVscC48L2Rpdj48YnI+PGJyPjxicj48YnI+PGRpdiBzdHlsZT0icG9zaXRpb246cmVsYXRp
dmU7em9vbToxIj48L2Rpdj48ZGl2IGlkPSJkaXZOZXRlYXNlTWFpbENhcmQiPjwvZGl2Pjxicj48
cHJlPjxicj5BdCAyMDE4LTA3LTIzIDE4OjU5OjMyLCAiQnVydG9uLCBSb3NzIiAmbHQ7cm9zcy5i
dXJ0b25AaW50ZWwuY29tJmd0OyB3cm90ZToKJmd0O1BsZWFzZSByZW1lbWJlciB0byBDQyB0aGUg
bGlzdCB0byB0aGF0IGV2ZXJ5b25lIGNhbiBzZWUuCiZndDsKJmd0O09uIDIzIEp1bHkgMjAxOCBh
dCAxMTo1MSwgdHVnb3V4cCAmbHQ7MTM4MjQxMjU1ODBAMTYzLmNvbSZndDsgd3JvdGU6CiZndDsm
Z3Q7IGhpIGJ1cnRvbjoKJmd0OyZndDsgICB0aGFua3MgZm9yIHlvdXIgYW5zd2VyLiBzbyAgaG93
IHRvIGRlYWx0IHdpdGggdGhpcywgc2VlbXMgdHdvIHNlbGVjdGlvbi4KJmd0OyZndDsKJmd0OyZn
dDsgMS4gcmV2ZXJ0IHRoZSB2ZXJzaW9uIG9mIGN1cmwKJmd0OyZndDsgMi4gcmVtb3ZlIKGwb2Vf
bXVsdGlsaWJfaGVhZGVyobEKJmd0OyZndDsKJmd0OyZndDsgaSBhbSBhIGZyZXNoIG1hbiBvbiB5
b2N0bywgc28gaG93IHRvIGFjaGlldmUgdGhlIDJuZCBzY2hlbWU/CiZndDsKJmd0O0luIHRoZSBy
ZWNpcGUgdGhlcmUgaXMgYSBkb19pbnN0YWxsX2FwcGVuZCBibG9jayB3aGljaCBjYWxscwomZ3Q7
b2VfbXVsdGlpbGJfaGVhZGVyLCBkZWxldGUgaXQuCiZndDsKJmd0O1Jvc3MKPC9wcmU+PC9kaXY+
PGJyPjxicj48c3BhbiB0aXRsZT0ibmV0ZWFzZWZvb3RlciI+PHA+PGJyLz4mbmJzcDs8L3A+PC9z
cGFuPg==

------=_Part_185034_1576763788.1532344878658--
