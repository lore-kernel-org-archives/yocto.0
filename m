Return-Path: <ouyangxuan10@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B565EE00C9C; Sat, 10 Aug 2019 00:35:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ouyangxuan10[at]163.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 911 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Aug 2019 00:35:44 PDT
Received: from m13-31.163.com (m13-31.163.com [220.181.13.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A6B2E00A5C
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 00:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=HoslM
	NiPETy9RzspQ4sD++XCtOSYJGgspHCjWLcqbQc=; b=GIjWG3h1KITSXN9My3IGq
	tzZtA6paYM5I8ek9YaJomNUMYX5plwXha7Oi4m6I4scyAy3kRfgeXmBQolneKQO6
	OtBGPvhab6WZb2h8bVTa9URNDu766h/1jFsGKdulI43z0onCrerobjiTYYF+m83c
	oNXPQ+tX61YpbENz3DQMRw=
Received: from ouyangxuan10$163.com ( [106.120.127.15] ) by
	ajax-webmail-wmsvr31 (Coremail) ; Sat, 10 Aug 2019 15:20:30 +0800 (CST)
X-Originating-IP: [106.120.127.15]
Date: Sat, 10 Aug 2019 15:20:30 +0800 (CST)
From: www <ouyangxuan10@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
	Copyright (c) 2002-2019 www.mailtech.cn 163com
X-CM-CTRLDATA: Vpk8B2Zvb3Rlcl9odG09MTQwMDo1Ng==
MIME-Version: 1.0
Message-ID: <b9d05c.477a.16c7a667413.Coremail.ouyangxuan10@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: H8GowADnKqI+cE5d8gvOAA--.14983W
X-CM-SenderInfo: prx1t0pj0xt0irq6il2tof0z/1tbiLh4N2lSIjMDq4gAAs-
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: ask a question about filesystem in yocto
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
X-List-Received-Date: Sat, 10 Aug 2019 07:35:46 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_71260_473889476.1565421630483"

------=_Part_71260_473889476.1565421630483
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

RGVhciBhbGwsCgoKSSdtIG5ldyBsZWFybmVyIGFuZCB1c2VyIG9mIHlvY3RvLiBXaGVuIEkgdXNl
ZCBpdCwgSSBlbmNvdW50ZXJlZCBhIHByb2JsZW0uIEkgZG9uJ3Qga25vdyBob3cgdG8gcmVzb2x2
ZSBpdCwgc28gSSBhc2sgZm9yIGhlbHAuCnRoZSBwcm9ibGVtIGlzIGhvdyBjYW4gSSBjcmVhdGUg
YSBuZXcgcGFydGl0aW9uIG9uIHlvY3RvPyBpZiBJIGhhdmUgYSBwYWNrYWdlIG5hbWVkIHdlYnVp
LCBpdCBjYW4gYmUgZ2VuZXJhdGUgc2V2ZXJhbCBleGVjdXRlIGZpbGVzIGFuZCBjb25maWd1cmF0
aW9uIGZpbGVzLCB0aGUgZXhlY3V0ZSBmaWxlcyB3aWxsIGJlIGluc3RhbGwgaW50byBmaWxlc3lz
dGVtLCBzdWNoIGFzICIvdXNyL2JpbiIsIGFuZCBiZSBwYWNrZWQgdG8gcm9mcy4gYnV0IEkgZG9u
J3Qgd2FudCBwYWNrIHRoZSBjb25maWd1cmF0aW9uIGZpbGVzICB0byByb2ZzLCBhbmQgSSB3YW50
IGNyZWF0ZSBhIG5ldyBpbWFnZSBhbmQgdGhlIGltYWdlIHdpbGwgYmUgYSBwYXJ0aXRpb24gb2Yg
dGhlIGdsb2JhbCBpbWFnZSwgYW5kIHBhY2sgdGhlIGNvbmZpZ3VyYXRpb24gZmlsZSB0byBpdCwg
d2hlbiB0aGUgc3lzdGVtIHN0YXJ0IHJ1bm5pbmcsIGl0IGNhbiBiZSAgc2VwYXJhdGUgICAgbW91
bnQgdG8gdGhlIGZpbGVzeXN0ZW0uCgoKV2hlbiBwYWNrIHRvIHJvZnMgaW1hZ2UsIEkgZG9uJ3Qg
a25vdyBob3cgdG8gc2VwYXJhdGUgdGhlIGV4ZWN1dGUgZmlsZSBhbmQgY29uZmlndXJhdGlvbiBm
aWxlIGluIHRoZSB3ZWJ1aSBwYWNrYWdlIGFuZCBwYWNrIHRvIGRpZmZlcmVudCBwYXJ0LiBDYW4g
c29tZW9uZSBoZWxwIG1lIHRvIHRlbGwgbWUgaG93IHRvIHNvbHZlIHRoaXMgcHJvYmxlbT8KCgpJ
IGFtIGxvb2tpbmcgZm9yd2FyZCB0byB5b3VyIHJlcGx5LgoKCnRoYW5rc6OsCkJ5cm9u

------=_Part_71260_473889476.1565421630483
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+RGVhciBhbGwsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5JJ20gbmV3IGxlYXJuZXIgYW5kIHVzZXIgb2YgeW9jdG8uIFdoZW4gSSB1c2VkIGl0LCBJIGVu
Y291bnRlcmVkIGEgcHJvYmxlbS4gSSBkb24ndCBrbm93IGhvdyB0byByZXNvbHZlIGl0LCBzbyBJ
IGFzayBmb3IgaGVscC48L2Rpdj48ZGl2PnRoZSBwcm9ibGVtIGlzIGhvdyBjYW4gSSBjcmVhdGUg
YSBuZXcgcGFydGl0aW9uIG9uIHlvY3RvPyBpZiBJIGhhdmUgYSBwYWNrYWdlIG5hbWVkIHdlYnVp
LCBpdCBjYW4gYmUgZ2VuZXJhdGUgc2V2ZXJhbCBleGVjdXRlIGZpbGVzIGFuZCBjb25maWd1cmF0
aW9uIGZpbGVzLCB0aGUgZXhlY3V0ZSBmaWxlcyB3aWxsIGJlIGluc3RhbGwgaW50byBmaWxlc3lz
dGVtLCBzdWNoIGFzICIvdXNyL2JpbiIsIGFuZCBiZSBwYWNrZWQgdG8gcm9mcy4gYnV0IEkgZG9u
J3Qgd2FudCBwYWNrIHRoZSBjb25maWd1cmF0aW9uIGZpbGVzJm5ic3A7IHRvIHJvZnMsIGFuZCBJ
IHdhbnQgY3JlYXRlIGEgbmV3IGltYWdlIGFuZCB0aGUgaW1hZ2Ugd2lsbCBiZSBhIHBhcnRpdGlv
biBvZiB0aGUgZ2xvYmFsIGltYWdlLCBhbmQgcGFjayB0aGUgY29uZmlndXJhdGlvbiBmaWxlIHRv
IGl0LCB3aGVuIHRoZSBzeXN0ZW0gc3RhcnQgcnVubmluZywgaXQgY2FuIGJlJm5ic3A7Jm5ic3A7
PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYig2NywgMTQ4LCAyNTUpOyBjb2xvcjog
cmdiKDI1NSwgMjU1LCAyNTUpOyBmb250LWZhbWlseTogQXJpYWwsICZxdW90O1BpbmdGYW5nIFND
JnF1b3Q7LCAmcXVvdDtIaXJhZ2lubyBTYW5zIEdCJnF1b3Q7LCBTVEhlaXRpLCAmcXVvdDtNaWNy
b3NvZnQgWWFIZWkmcXVvdDssICZxdW90O1dlblF1YW5ZaSBNaWNybyBIZWkmcXVvdDssIHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTNweDsiPnNlcGFyYXRlPC9zcGFuPiZuYnNwOyAmbmJzcDsgbW91
bnQgdG8gdGhlIGZpbGVzeXN0ZW0uPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5XaGVuIHBhY2sg
dG8gcm9mcyBpbWFnZSwgSSBkb24ndCBrbm93IGhvdyB0byBzZXBhcmF0ZSB0aGUgZXhlY3V0ZSBm
aWxlIGFuZCBjb25maWd1cmF0aW9uIGZpbGUgaW4gdGhlIHdlYnVpIHBhY2thZ2UgYW5kIHBhY2sg
dG8gZGlmZmVyZW50IHBhcnQuJm5ic3A7Q2FuIHNvbWVvbmUgaGVscCBtZSB0byB0ZWxsIG1lIGhv
dyB0byBzb2x2ZSB0aGlzIHByb2JsZW0/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGFtIGxv
b2tpbmcgZm9yd2FyZCB0byB5b3VyIHJlcGx5LjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+dGhh
bmtzo6w8L2Rpdj48ZGl2PkJ5cm9uPC9kaXY+PC9kaXY+PGJyPjxicj48c3BhbiB0aXRsZT0ibmV0
ZWFzZWZvb3RlciI+PHA+Jm5ic3A7PC9wPjwvc3Bhbj4=

------=_Part_71260_473889476.1565421630483--
