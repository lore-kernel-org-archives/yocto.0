Return-Path: <cddatemp@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B47CE00D48; Mon, 20 Nov 2017 04:07:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cddatemp[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from m13-15.163.com (m13-15.163.com [220.181.13.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7793FE00D23
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 04:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=5cvtA
	RLJjOGrittnVyUwJTLnev80lYfgEqirPAVXOg4=; b=cpaGRFT7Q7SLGV2IWVGYA
	CA6xkxXjYo0TjNo02xRL5XWnSqjvzfqmiZeAd6toLkSxuKX84zKRPYEOt9n+WgyL
	JE38nFXwPU9j5dpa9yB3r69P+Q8PxkHopV7hpW4msLPNG8sUxt1TOB9/10qQMe/b
	K8P65FRuLD/MzTyJdrsfjA=
Received: from cddatemp$163.com ( [123.185.215.222] ) by
	ajax-webmail-wmsvr15 (Coremail) ; Mon, 20 Nov 2017 20:07:49 +0800 (CST)
X-Originating-IP: [123.185.215.222]
Date: Mon, 20 Nov 2017 20:07:49 +0800 (CST)
From: cddatemp  <cddatemp@163.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2017 www.mailtech.cn 163com
In-Reply-To: <CAJTo0LZUwFBBNDW3Whew-DjwV1frffRknAPOGsSZfZj=6tuRkQ@mail.gmail.com>
References: <5644f58b.9cec.15fd93414cf.Coremail.cddatemp@163.com>
	<CAJTo0LZUwFBBNDW3Whew-DjwV1frffRknAPOGsSZfZj=6tuRkQ@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <2ff8d5c6.9fa8.15fd953d1ab.Coremail.cddatemp@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: D8GowAAXLYiVxRJaRkAKAA--.19966W
X-CM-SenderInfo: pfggt3xhpsqiywtou0bp/1tbisAWWdFUMBNbloQABsZ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to build a native python extension
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
X-List-Received-Date: Mon, 20 Nov 2017 12:07:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_149722_853961719.1511179669930"

------=_Part_149722_853961719.1511179669930
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

QXQgMjAxNy0xMS0yMCAxOTozNTozMSwgIkJ1cnRvbiwgUm9zcyIgPHJvc3MuYnVydG9uQGludGVs
LmNvbT4gd3JvdGU6Cgppbmhlcml0IG5hdGl2ZSB0byBtYWtlIHRoZSByZWNpcGUgbmF0aXZlLgoK
Ckl0IHJlYWxseSBoZWxwLCB3aGVuIG15IHJlY2lwZSBpcyBqdXN0IGEgaGVsbG93b3JsZCBweXRo
b24gZXh0ZW5zaW9uLgpVbmZvcnR1bmF0ZWx5LCB0aGlzIHJlY2lwZSBpcyB1LWJvb3QuCkl0IHdp
bGwgY29tcGlsZSBhIG5hdGl2ZSBweXRob24gZXh0ZW5zaW9uIG5hbWVkICJsaWJmZHQiLCB0aGVu
IHVzZSBpdCB0byBjb21waWxlIHUtYm9vdC4KU28gSSBjYW5ub3QgYWRkICJpbmhlcml0IG5hdGl2
ZSIgdG8gdGhlIHUtYm9vdCByZWNpcGUuCgoKCgpSb3NzCgoKT24gMjAgTm92ZW1iZXIgMjAxNyBh
dCAxMTozMywgY2RkYXRlbXAgPGNkZGF0ZW1wQDE2My5jb20+IHdyb3RlOgoKSGksCgoKSSBhZGQg
ImluaGVyaXQgZGlzdHV0aWxzIiBpbiBteSByZWNpcGUuCkl0IHdpbGwgbWFrZSBteSByZWNpcGUg
ZGVwZW5kcyBvbiAicHl0aG9uLW5hdGl2ZSIgYW5kICJweXRob24iLgpGaW5hbGx5IGl0IHVzZSBh
cm0tZ2NjIHRvIGJ1aWxkIHRoZSBweXRob24gZXh0ZW5zaW9uLgpCdXQgSSB3YW50IHRvIHVzZSB4
ODYtZ2NjIHRvIGJ1aWxkIGEgbmF0aXZlIHB5dGhvbiBleHRlbnNpb24uCkhvdyB0byBkbyB0aGlz
PwoKCkJlc3QgUmVnYXJkcwpjZGRhdGVtcAoKLS0KX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KeW9jdG8gbWFpbGluZyBsaXN0CnlvY3RvQHlvY3RvcHJvamVj
dC5vcmcKaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvCgoKCg==

------=_Part_149722_853961719.1511179669930
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPkF0IDIwMTctMTEtMjAgMTk6MzU6MzEsICJCdXJ0b24sIFJvc3Mi
ICZsdDtyb3NzLmJ1cnRvbkBpbnRlbC5jb20mZ3Q7IHdyb3RlOjxicj4gPGJsb2NrcXVvdGUgaWQ9
ImlzUmVwbHlDb250ZW50IiBzdHlsZT0iUEFERElORy1MRUZUOiAxZXg7IE1BUkdJTjogMHB4IDBw
eCAwcHggMC44ZXg7IEJPUkRFUi1MRUZUOiAjY2NjIDFweCBzb2xpZCI+PGRpdiBkaXI9Imx0ciI+
aW5oZXJpdCBuYXRpdmUgdG8gbWFrZSB0aGUgcmVjaXBlIG5hdGl2ZS48L2Rpdj48ZGl2IGRpcj0i
bHRyIj48YnI+PC9kaXY+PC9ibG9ja3F1b3RlPjxkaXY+PC9kaXY+PGRpdj5JdCByZWFsbHkgaGVs
cCwgd2hlbiBteSByZWNpcGUgaXMganVzdCBhIGhlbGxvd29ybGQgcHl0aG9uIGV4dGVuc2lvbi48
L2Rpdj48ZGl2PlVuZm9ydHVuYXRlbHksIHRoaXMgcmVjaXBlIGlzIHUtYm9vdC48L2Rpdj48ZGl2
Pkl0IHdpbGwgY29tcGlsZSBhIG5hdGl2ZSBweXRob24gZXh0ZW5zaW9uIG5hbWVkICJsaWJmZHQi
LCB0aGVuIHVzZSBpdCB0byBjb21waWxlIHUtYm9vdC48L2Rpdj48ZGl2PlNvIEkgY2Fubm90IGFk
ZCAiaW5oZXJpdCBuYXRpdmUiIHRvIHRoZSB1LWJvb3QgcmVjaXBlLjwvZGl2PjxkaXY+PGJyPjwv
ZGl2PjxibG9ja3F1b3RlIHN0eWxlPSJQQURESU5HLUxFRlQ6IDFleDsgTUFSR0lOOiAwcHggMHB4
IDBweCAwLjhleDsgQk9SREVSLUxFRlQ6ICNjY2MgMXB4IHNvbGlkIj48ZGl2IGRpcj0ibHRyIj48
ZGl2Pjxicj48L2Rpdj48ZGl2PlJvc3M8L2Rpdj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9leHRy
YSI+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3RlIj5PbiAyMCBOb3ZlbWJlciAyMDE3IGF0IDEx
OjMzLCBjZGRhdGVtcCA8c3BhbiBkaXI9Imx0ciI+Jmx0OzxhIGhyZWY9Im1haWx0bzpjZGRhdGVt
cEAxNjMuY29tIiB0YXJnZXQ9Il9ibGFuayI+Y2RkYXRlbXBAMTYzLmNvbTwvYT4mZ3Q7PC9zcGFu
PiB3cm90ZTo8YnI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2lu
OjAgMCAwIC44ZXg7Ym9yZGVyLWxlZnQ6MXB4ICNjY2Mgc29saWQ7cGFkZGluZy1sZWZ0OjFleCI+
PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGksPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGFk
ZCAiaW5oZXJpdCBkaXN0dXRpbHMiIGluIG15IHJlY2lwZS48L2Rpdj48ZGl2Pkl0IHdpbGwgbWFr
ZSBteSByZWNpcGUgZGVwZW5kcyBvbiAicHl0aG9uLW5hdGl2ZSIgYW5kICJweXRob24iLjwvZGl2
PjxkaXY+RmluYWxseSBpdCB1c2UgYXJtLWdjYyB0byBidWlsZCB0aGUgcHl0aG9uIGV4dGVuc2lv
bi48L2Rpdj48ZGl2PkJ1dCBJIHdhbnQgdG8gdXNlIHg4Ni1nY2MgdG8gYnVpbGQgYSBuYXRpdmUg
cHl0aG9uIGV4dGVuc2lvbi48L2Rpdj48ZGl2PkhvdyB0byBkbyB0aGlzPzwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+QmVzdCBSZWdhcmRzPC9kaXY+PHNwYW4gY2xhc3M9IkhPRW5aYiI+PGZvbnQg
Y29sb3I9IiM4ODg4ODgiPjxkaXY+Y2RkYXRlbXA8L2Rpdj48L2ZvbnQ+PC9zcGFuPjwvZGl2Pjxi
cj4tLTxicj4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fPHdicj48L3dicj5fX19fX19f
X19fX19fX19fXzxicj4KeW9jdG8gbWFpbGluZyBsaXN0PGJyPgo8YSBocmVmPSJtYWlsdG86eW9j
dG9AeW9jdG9wcm9qZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+CjxhIGhy
ZWY9Imh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0byIgcmVsPSJu
b3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3QuPHdi
cj48L3dicj5vcmcvbGlzdGluZm8veW9jdG88L2E+PGJyPgo8YnI+PC9ibG9ja3F1b3RlPjwvZGl2
Pjxicj48L2Rpdj4KPC9ibG9ja3F1b3RlPjwvZGl2Pg==

------=_Part_149722_853961719.1511179669930--
