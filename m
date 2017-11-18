Return-Path: <cddatemp@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4526DE00D42; Fri, 17 Nov 2017 21:50:12 -0800 (PST)
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
X-Greylist: delayed 907 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Nov 2017 21:50:09 PST
Received: from m13-17.163.com (m13-17.163.com [220.181.13.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B27E00CFF
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 21:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=NMz0b
	Aws8FlqZzOBlsqUqKMNkZQ5uWVr/LxLwcWLC9k=; b=ZoCxUN9hNEZjwMg2aVreF
	whU7QmxI91BuXAoUDkvwakpISLkvCqZirIYIxrwxmVehvwVq6Oj7ORtXwt8LoWX3
	o6OLWc1z0kRscQcwDKUPOM+qwC5D5gG2ci3XtBxVaIpTNGhqD7oNSL02VOMTTSdx
	nAHGpULwGyTnRHmaTbQyos=
Received: from cddatemp$163.com ( [123.185.215.187] ) by
	ajax-webmail-wmsvr17 (Coremail) ; Sat, 18 Nov 2017 13:34:59 +0800 (CST)
X-Originating-IP: [123.185.215.187]
Date: Sat, 18 Nov 2017 13:34:59 +0800 (CST)
From: x <cddatemp@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2017 www.mailtech.cn 163com
X-CM-CTRLDATA: xiZ90GZvb3Rlcl9odG09MTIyNTo1Ng==
MIME-Version: 1.0
Message-ID: <2df7c4ec.2716.15fcd9f71f1.Coremail.cddatemp@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: EcGowAC3yPmDxg9aeJUJAA--.59468W
X-CM-SenderInfo: pfggt3xhpsqiywtou0bp/1tbiuwOUdFO-6T+r7wAAsm
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Question on the U-Boot recipe
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
X-List-Received-Date: Sat, 18 Nov 2017 05:50:12 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_36310_1042347997.1510983299568"

------=_Part_36310_1042347997.1510983299568
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGVsbG8KCgpJIHVzZSB0aGUgcm9ja28gYnJhbmNoIHRvIGNvbXBpbGUgYSByb290ZnMgZm9yIG15
IGFsbHdpbm5lciBBMjAgYm9hcmQuCldoZW4gYnVpbGQgdS1ib290LCBpdCBuZWVkcyB0byBjb21w
aWxlIGEgbGliZmR0IFB5dGhvbiBtb2R1bGUsIHdoaWNoIHNob3dzIGFzIGJlbG93OgoKCiAgICAq
KiogYmlubWFuIG5lZWRzIHRoZSBQeXRob24gbGliZmR0IGxpYnJhcnkuCiAgICAqKiogRWl0aGVy
IGluc3RhbGwgaXQgb24geW91ciBzeXN0ZW0sIG9yIHRyeToKICAgICoqKgogICAgKioqIHN1ZG8g
YXB0LWdldCBpbnN0YWxsIHN3aWcgbGlicHl0aG9uLWRldgogICAgKioqCiAgICAqKiogdG8gaGF2
ZSBVLUJvb3QgYnVpbGQgaXRzIG93biB2ZXJzaW9uLgoKClNvIEkgYWRkICdERVBFTkRTICs9ICJz
d2lnLW5hdGl2ZSInIHRvIHRoZSByZWNpcGUuCkFmdGVyIHRoYXQsIGl0IHNob3cgdGhhdDoKCgog
ICAgdW5hYmxlIHRvIGV4ZWN1dGUgJ3g4Nl82NC1saW51eC1nbnUtZ2NjJzogTm8gc3VjaCBmaWxl
IG9yIGRpcmVjdG9yeQoKCkl0IGxvb2sgbGlrZSB0aGF0IGxpYmZkdCBzaG91bGQgYmUgY29tcGls
ZWQgYXMgYSBuYXRpdmUgbGlicmFyeS4KU28gSSBtYWtlIGEgc29mdCBsaW5rIG5hbWVkIHg4Nl82
NC1saW51eC1nbnUtZ2NjIHRvIC91c3IvYmluL2djYywgYW5kIHRoZW4gaXQncyBPSyB0byBidWls
ZCB1LWJvb3QuCgoKSG93IHRvIGNvcnJlY3QgdGhpcyBwcm9ibGVtIGluIGEgZ29vZCBtYW5uZXI/
CgoKQmVzdCByZWdhcmRzCmNkZGF0ZW1wCgoKCg==

------=_Part_36310_1042347997.1510983299568
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGVsbG88L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pkkg
dXNlIHRoZSByb2NrbyBicmFuY2ggdG8gY29tcGlsZSBhIHJvb3RmcyBmb3IgbXkgYWxsd2lubmVy
IEEyMCBib2FyZC48L2Rpdj48ZGl2PldoZW4gYnVpbGQgdS1ib290LCBpdCBuZWVkcyB0byBjb21w
aWxlJm5ic3A7YSBsaWJmZHQgUHl0aG9uIG1vZHVsZSwgd2hpY2ggc2hvd3MgYXMgYmVsb3c6PC9k
aXY+PGRpdj48YnI+PC9kaXY+PGRpdj48ZGl2PiZuYnNwOyAmbmJzcDsgKioqIGJpbm1hbiBuZWVk
cyB0aGUgUHl0aG9uIGxpYmZkdCBsaWJyYXJ5LjwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyAqKiog
RWl0aGVyIGluc3RhbGwgaXQgb24geW91ciBzeXN0ZW0sIG9yIHRyeTo8L2Rpdj48ZGl2PiZuYnNw
OyAmbmJzcDsgKioqPC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7ICoqKiBzdWRvIGFwdC1nZXQgaW5z
dGFsbCBzd2lnIGxpYnB5dGhvbi1kZXY8L2Rpdj48ZGl2PiZuYnNwOyAmbmJzcDsgKioqPC9kaXY+
PGRpdj4mbmJzcDsgJm5ic3A7ICoqKiB0byBoYXZlIFUtQm9vdCBidWlsZCBpdHMgb3duIHZlcnNp
b24uPC9kaXY+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5TbyBJIGFkZCAnREVQRU5EUyArPSAi
c3dpZy1uYXRpdmUiJyB0byB0aGUgcmVjaXBlLjwvZGl2PjxkaXY+QWZ0ZXIgdGhhdCwgaXQgc2hv
dyB0aGF0OjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyB1bmFibGUgdG8g
ZXhlY3V0ZSAneDg2XzY0LWxpbnV4LWdudS1nY2MnOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5
PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JdCBsb29rIGxpa2UgdGhhdCBsaWJmZHQgc2hvdWxk
IGJlIGNvbXBpbGVkIGFzIGEgbmF0aXZlIGxpYnJhcnkuPC9kaXY+PGRpdj5TbyBJIG1ha2UgYSBz
b2Z0IGxpbmsgbmFtZWQgeDg2XzY0LWxpbnV4LWdudS1nY2MgdG8gL3Vzci9iaW4vZ2NjLCBhbmQg
dGhlbiBpdCdzIE9LIHRvIGJ1aWxkIHUtYm9vdC48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pkhv
dyB0byBjb3JyZWN0IHRoaXMgcHJvYmxlbSBpbiBhIGdvb2QgbWFubmVyPzwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+QmVzdCByZWdhcmRzPC9kaXY+PGRpdj5jZGRhdGVtcDwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+PGJyPjwvZGl2PjwvZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vm
b290ZXIiPjxwPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_36310_1042347997.1510983299568--
