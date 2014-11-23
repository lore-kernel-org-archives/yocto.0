Return-Path: <huanmateme@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 210CFE00861; Sun, 23 Nov 2014 07:11:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	XPRIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (huanmateme[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 XPRIO Has X-Priority header
X-Greylist: delayed 905 seconds by postgrey-1.32 at yocto-www;
	Sun, 23 Nov 2014 07:10:59 PST
Received: from m13-104.163.com (m13-104.163.com [220.181.13.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB4FE00832
	for <yocto@yoctoproject.org>; Sun, 23 Nov 2014 07:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=2Tlip
	35jQIKcEZeJ4D3bnRJ2wDrqhtsIzqE+UrpnO0o=; b=ZPX2muFLJawGlKlhnaSRJ
	a96goMGANzTIygCm6joIorJYgmRohOPWj5qbZPhttgCD7xwa5hXX2EX8hrTFULIY
	vClXULXn+H61BNE2POGlUhB2E61xcmj/llvRtfPKpnyydEDSqLDkvtt6Ou8tuE+w
	zl/tg4tIEn73lZohDu6Bkc=
Received: from huanmateme$163.com ( [123.117.93.36] ) by
	ajax-webmail-wmsvr104 (Coremail) ; Sun, 23 Nov 2014 22:55:48 +0800 (CST)
X-Originating-IP: [123.117.93.36]
Date: Sun, 23 Nov 2014 22:55:48 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20140915(28949.6690) Copyright (c) 2002-2014 www.mailtech.cn 163com
MIME-Version: 1.0
Message-ID: <33c36dfd.5d02.149dd26d066.Coremail.huanmateme@163.com>
X-CM-TRANSID: aMGowEA5iUB19XFUHAsFAA--.1725W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/1tbiUQVNgFEAJ7QMNgAAsh
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Running "yocto-bsp create .." in the source directory(poky) brings up an error. "poky directory vs build directory"
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
X-List-Received-Date: Sun, 23 Nov 2014 15:11:06 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_106683_1126063107.1416754548838"

------=_Part_106683_1126063107.1416754548838
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGkgYWxsLApJIGFtIGRvaW5nIGV4Y2lzZXMgZm9sbG93aW5nIHRoaXMgc2VjdGlvbgotLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzEuNy9ic3AtZ3VpZGUvYnNw
LWd1aWRlLmh0bWwjY3JlYXRpbmctYS1uZXctYnNwLWxheWVyLXVzaW5nLXRoZS15b2N0by1ic3At
c2NyaXB0CjEuNi4yLiBDcmVhdGluZyBhIG5ldyBCU1AgTGF5ZXIgVXNpbmcgdGhlIHlvY3RvLWJz
cCBTY3JpcHQKLi4uCiAkIHlvY3RvLWJzcCBjcmVhdGUgbXlhcm0gcWVtdQouLi4uCkJ5IGRlZmF1
bHQsIHRoZSBzY3JpcHQgY3JlYXRlcyB0aGUgbmV3IEJTUCBMYXllciBpbiB0aGUgY3VycmVudCB3
b3JraW5nIGRpcmVjdG9yeSBvZiB0aGUgIFNvdXJjZSBEaXJlY3RvcnkgLCB3aGljaCBpcyAgcG9r
eSAgaW4gdGhpcyBjYXNlLiAKLi4uLgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KVG8gbXkgdW5kZXJzdGFuZCwgaXQg
bWVhbnMgYWZ0ZXIgInNvdXJjZSBvZS1pbml0LWJ1aWxkLWVudiBteWJ1aWxkIiwgaSBzaG91bGQg
Y2hhbmdlIHRvIHRoZSBwb2t5IGRpcmVjdG9yeSB0byBydW4gdGhlICJ5b2N0by1ic3AgY3JlYXRl
IC4uLiIgY29tbWFuZCwKaG93ZXZlciwgaSBnb3QgYW4gZXJyb3IgIAoiIERvIHlvdSBuZWVkIGEg
bmV3IG1hY2hpbmUgYnJhbmNoIGZvciB0aGlzIEJTUCAodGhlIGFsdGVybmF0aXZlIGlzIHRvIHJl
LXVzZSBhbiBleGlzdGluZyBicmFuY2gpPyBbeS9uXSBbZGVmYXVsdDogeV0gClRoZSBCQlBBVEgg
dmFyaWFibGUgaXMgbm90IHNldCBhbmQgYml0YmFrZSBkaWQgbm90IGZpbmQgYSBjb25mL2JibGF5
ZXJzLmNvbmYgZmlsZSBpbiB0aGUgZXhwZWN0ZWQgbG9jYXRpb24uCk1heWJlIHlvdSBhY2NpZGVu
dGFsbHkgaW52b2tlZCBiaXRiYWtlIGZyb20gdGhlIHdyb25nIGRpcmVjdG9yeT8KQ291bGRuJ3Qg
ZmluZCBCQkxBWUVSUyBpbiBiaXRiYWtlIC1lIG91dHB1dCwgZXhpdGluZy4iIApJdCBzZWVtcyBp
dCBpcyBhc2tpbmcgbWUgdG8gcnVuICJ5b2N0by1ic3AgY3JlYXRlIC4uLiIgaW4gdGhlIGJ1aWxk
IGRpcmVjdG9yeQoKCldoaWNoIG9uZSBpcyBjb3JyZWN0PyBEbyB3ZSBoYXZlIGEgd3JvbmcgZG9j
dW1lbnQ/CgoKVGhhbmtzLApKZXJyeSAKCg==

------=_Part_106683_1126063107.1416754548838
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGkgYWxsLDwvZGl2PjxkaXY+SSBhbSBkb2luZyBleGNp
c2VzIGZvbGxvd2luZyB0aGlzIHNlY3Rpb248L2Rpdj48ZGl2Pi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08L2Rpdj48
ZGl2Pmh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzEuNy9ic3AtZ3VpZGUvYnNwLWd1
aWRlLmh0bWwjY3JlYXRpbmctYS1uZXctYnNwLWxheWVyLXVzaW5nLXRoZS15b2N0by1ic3Atc2Ny
aXB0PC9kaXY+PGRpdj4xLjYuMi4gQ3JlYXRpbmcgYSBuZXcgQlNQIExheWVyIFVzaW5nIHRoZSB5
b2N0by1ic3AgU2NyaXB0PC9kaXY+PGRpdj4uLi48L2Rpdj48ZGl2PjxwcmUgY2xhc3M9ImxpdGVy
YWxsYXlvdXQiIHN0eWxlPSJvdmVyZmxvdzogYXV0bzsgY29sb3I6IHJnYig1MSwgNTEsIDUxKTsg
bGluZS1oZWlnaHQ6IG5vcm1hbDsiPiAkIHlvY3RvLWJzcCBjcmVhdGUgbXlhcm0gcWVtdTwvcHJl
PjxwcmUgY2xhc3M9ImxpdGVyYWxsYXlvdXQiIHN0eWxlPSJvdmVyZmxvdzogYXV0bzsgY29sb3I6
IHJnYig1MSwgNTEsIDUxKTsgbGluZS1oZWlnaHQ6IG5vcm1hbDsiPi4uLi48L3ByZT48L2Rpdj48
ZGl2PkJ5IGRlZmF1bHQsIHRoZSBzY3JpcHQgY3JlYXRlcyB0aGUgbmV3IEJTUCBMYXllciBpbiB0
aGUgY3VycmVudCB3b3JraW5nIGRpcmVjdG9yeSBvZiB0aGUgJm5ic3A7U291cmNlIERpcmVjdG9y
eSAsIHdoaWNoIGlzICZuYnNwO3Bva3kgJm5ic3A7aW4gdGhpcyBjYXNlLiZuYnNwOzwvZGl2Pjxk
aXY+Li4uLjwvZGl2PjxkaXY+LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tPC9kaXY+PGRpdj5UbyBteSB1bmRlcnN0YW5k
LCBpdCBtZWFucyBhZnRlciAic291cmNlIG9lLWluaXQtYnVpbGQtZW52IG15YnVpbGQiLCBpIHNo
b3VsZCBjaGFuZ2UgdG8gdGhlIHBva3kgZGlyZWN0b3J5IHRvIHJ1biB0aGUgInlvY3RvLWJzcCBj
cmVhdGUgLi4uIiBjb21tYW5kLDwvZGl2PjxkaXY+aG93ZXZlciwgaSBnb3QgYW4gZXJyb3IgJm5i
c3A7PC9kaXY+PGRpdj4iIERvIHlvdSBuZWVkIGEgbmV3IG1hY2hpbmUgYnJhbmNoIGZvciB0aGlz
IEJTUCAodGhlIGFsdGVybmF0aXZlIGlzIHRvIHJlLXVzZSBhbiBleGlzdGluZyBicmFuY2gpPyBb
eS9uXSBbZGVmYXVsdDogeV0mbmJzcDs8L2Rpdj48ZGl2PlRoZSBCQlBBVEggdmFyaWFibGUgaXMg
bm90IHNldCBhbmQgYml0YmFrZSBkaWQgbm90IGZpbmQgYSBjb25mL2JibGF5ZXJzLmNvbmYgZmls
ZSBpbiB0aGUgZXhwZWN0ZWQgbG9jYXRpb24uPC9kaXY+PGRpdj5NYXliZSB5b3UgYWNjaWRlbnRh
bGx5IGludm9rZWQgYml0YmFrZSBmcm9tIHRoZSB3cm9uZyBkaXJlY3Rvcnk/PC9kaXY+PGRpdj5D
b3VsZG4ndCBmaW5kIEJCTEFZRVJTIGluIGJpdGJha2UgLWUgb3V0cHV0LCBleGl0aW5nLiImbmJz
cDs8L2Rpdj48ZGl2Pkl0IHNlZW1zIGl0IGlzIGFza2luZyBtZSB0byBydW4gInlvY3RvLWJzcCBj
cmVhdGUgLi4uIiBpbiB0aGUgYnVpbGQgZGlyZWN0b3J5PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5XaGljaCBvbmUgaXMgY29ycmVjdD8gRG8gd2UgaGF2ZSBhIHdyb25nIGRvY3VtZW50PzwvZGl2
PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzLDwvZGl2PjxkaXY+SmVycnkmbmJzcDs8L2Rpdj48
ZGl2Pjxicj48L2Rpdj48L2Rpdj4=

------=_Part_106683_1126063107.1416754548838--
