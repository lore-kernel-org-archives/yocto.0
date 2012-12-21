Return-Path: <huanmateme@163.com>
Received: from m13-38.163.com (unknown [220.181.13.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2A1BE002AB
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 23:04:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Received:Date:From:To:Subject:Content-Type:
	MIME-Version:Message-ID; bh=XMoKrdT/1NXV0YYWAAY4Lh+1KXmNw9zUdSIe
	xod+Kb4=; b=Yq1iZXpSTyC757HTA0PnchFHjPXdL8D5x1jH5Oxp2jenQ5Ux2tDH
	RfhKQAOYYwNjdva5KmN7Wg7bDEG59p/xhrOuj+USBnY/RDxkrnJCTvFTqIFYKOPV
	Xtw/Ax82RiABFdj4vYlamFW/WFU9f2Lyl2jv89OZKnxuW9fyju6pEZ8=
Received: from huanmateme$163.com ( [61.148.56.138] ) by
	ajax-webmail-wmsvr38 (Coremail) ; Fri, 21 Dec 2012 15:04:10 +0800 (CST)
X-Originating-IP: [61.148.56.138]
Date: Fri, 21 Dec 2012 15:04:10 +0800 (CST)
From: Biao <huanmateme@163.com>
To: yocto <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20121210(21001.5125.5051) Copyright (c) 2002-2012 www.mailtech.cn
	163com
MIME-Version: 1.0
Message-ID: <58bab01.81f6.13bbc46bc65.Coremail.huanmateme@163.com>
X-CM-TRANSID: JsGowGDZf0HrCdRQ564SAA--.34313W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbB0AqMgE9o6UJzZQAAsM
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Tasks must be python executable or both python and shell executable?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 21 Dec 2012 07:04:41 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_123148_160201569.1356073450597"

------=_Part_123148_160201569.1356073450597
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGkgQWxsLAoKClRoZXJlIGlzIGEgZGVzY3JpcHRpb24gaW4gdGhlIG1hbnVhbCBvZiB0aGUgYml0
YmFrZSwKIzEgIkluIEJpdEJha2UsIGVhY2ggc3RlcCB0aGF0IG5lZWRzIHRvIGJlIHJ1biBmb3Ig
YSBnaXZlbiAuYmIgaXMga25vd24gYXMgYSB0YXNrLiBUaGVyZSBpcyBhIGNvbW1hbmQgYWRkdGFz
ayB0byBhZGQgbmV3IHRhc2tzIChtdXN0IGJlIGEgZGVmaW5lZCBQeXRob24gZXhlY3V0YWJsZSBt
ZXRhZGF0YSBhbmQgbXVzdCBzdGFydCB3aXRoIKGwZG9fobEpIGFuZCBkZXNjcmliZSBpbnRlcnRh
c2sgZGVwZW5kZW5jaWVzLiIKIzIgQnV0IGkgc2F3IGEgbG90IG9mIHRhc2tzIGlzIHNoZWxsIGV4
ZWN1dGFibGUuIAojMSBhbmQgIzIgc2VlbSBjb250cmFkaWN0IHdpdGggZWFjaCBvdGhlciwgd2hh
dCBpcyB0aGUgcmVhbCBzdG9yeT8KCgpUaGFua3MsCkJpYW8=

------=_Part_123148_160201569.1356073450597
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6YXJpYWwiPjxkaXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiAnVGltZXMg
TmV3IFJvbWFuJzsgZm9udC1zaXplOiAxNnB4OyBsaW5lLWhlaWdodDogbm9ybWFsOyAiPkhpIEFs
bCw8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICdUaW1lcyBOZXcg
Um9tYW4nOyBmb250LXNpemU6IDE2cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7ICI+PGJyPjwvc3Bh
bj48L2Rpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICdUaW1lcyBOZXcgUm9tYW4nOyBmb250
LXNpemU6IDE2cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7ICI+PGRpdj5UaGVyZSBpcyBhIGRlc2Ny
aXB0aW9uIGluIHRoZSBtYW51YWwgb2YgdGhlIGJpdGJha2UsPC9kaXY+IzEgIkluIEJpdEJha2Us
IGVhY2ggc3RlcCB0aGF0IG5lZWRzIHRvIGJlIHJ1biBmb3IgYSBnaXZlbiAuYmIgaXMga25vd24g
YXMgYSB0YXNrLiBUaGVyZSBpcyBhIGNvbW1hbmQmbmJzcDs8L3NwYW4+PGNvZGUgY2xhc3M9Imxp
dGVyYWwiIHN0eWxlPSJmb250LXNpemU6IDEzcHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7ICI+YWRk
dGFzazwvY29kZT48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICdUaW1lcyBOZXcgUm9tYW4nOyBm
b250LXNpemU6IDE2cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7ICI+Jm5ic3A7dG8gYWRkIG5ldyB0
YXNrcyAobXVzdCBiZSBhIGRlZmluZWQgUHl0aG9uIGV4ZWN1dGFibGUgbWV0YWRhdGEgYW5kIG11
c3Qgc3RhcnQgd2l0aCZuYnNwOzwvc3Bhbj48c3BhbiBjbGFzcz0icXVvdGUiIHN0eWxlPSJmb250
LXNpemU6IDE2cHg7IGZvbnQtZmFtaWx5OiAnVGltZXMgTmV3IFJvbWFuJzsgbGluZS1oZWlnaHQ6
IG5vcm1hbDsgIj6hsDxzcGFuIGNsYXNzPSJxdW90ZSI+ZG9fPC9zcGFuPqGxPC9zcGFuPjxzcGFu
IHN0eWxlPSJmb250LWZhbWlseTogJ1RpbWVzIE5ldyBSb21hbic7IGZvbnQtc2l6ZTogMTZweDsg
bGluZS1oZWlnaHQ6IG5vcm1hbDsgIj4pIGFuZCBkZXNjcmliZSBpbnRlcnRhc2sgZGVwZW5kZW5j
aWVzLiI8L3NwYW4+PGRpdj48c3BhbiBzdHlsZT0iZm9udC1mYW1pbHk6ICdUaW1lcyBOZXcgUm9t
YW4nOyBmb250LXNpemU6IDE2cHg7IGxpbmUtaGVpZ2h0OiBub3JtYWw7ICI+IzIgQnV0IGkgc2F3
IGEgbG90IG9mIHRhc2tzIGlzIHNoZWxsIGV4ZWN1dGFibGUuJm5ic3A7PC9zcGFuPjwvZGl2Pjxk
aXY+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiAnVGltZXMgTmV3IFJvbWFuJzsgZm9udC1zaXpl
OiAxNnB4OyBsaW5lLWhlaWdodDogbm9ybWFsOyAiPiMxIGFuZCAjMiBzZWVtIGNvbnRyYWRpY3Qg
d2l0aCBlYWNoIG90aGVyLCB3aGF0IGlzIHRoZSByZWFsIHN0b3J5Pzwvc3Bhbj48L2Rpdj48ZGl2
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTogJ1RpbWVzIE5ldyBSb21hbic7IGZvbnQtc2l6ZTog
MTZweDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgIj48YnI+PC9zcGFuPjwvZGl2PjxkaXY+PHNwYW4g
c3R5bGU9ImZvbnQtZmFtaWx5OiAnVGltZXMgTmV3IFJvbWFuJzsgZm9udC1zaXplOiAxNnB4OyBs
aW5lLWhlaWdodDogbm9ybWFsOyAiPlRoYW5rcyw8L3NwYW4+PC9kaXY+PGRpdj48c3BhbiBzdHls
ZT0iZm9udC1mYW1pbHk6ICdUaW1lcyBOZXcgUm9tYW4nOyBmb250LXNpemU6IDE2cHg7IGxpbmUt
aGVpZ2h0OiBub3JtYWw7ICI+Qmlhbzwvc3Bhbj48L2Rpdj48L2Rpdj4=

------=_Part_123148_160201569.1356073450597--
