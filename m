Received: from m158-178.yeah.net (m158-178.yeah.net [123.58.178.158])
 by mx.groups.io with SMTP id smtpd.web12.1435.1587972217279796099
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Apr 2020 00:23:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yeah.net header.s=s110527 header.b=CD6gWCWX;
 spf=pass (domain: yeah.net, ip: 123.58.178.158, mailfrom: nus1998@yeah.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=s3zO9
	K/fxMIF1UiRzwpjygaSo9JDR7IJjKBbegHeSdM=; b=CD6gWCWXnH5o90qKd3zUb
	wWlD7EnMDG72zLnmTHWEZr6zJwaIcbI3/Dt3LATGf8ryA4E9nN0vADfuMMXcG7GP
	hR+JF1ZV9VzDF75SMbaS2Cih84/zKYNR3O382SC2Xze8ynWeWyVARWPSDJL2XL+c
	LZdk3bFxwmYQwJEmT6dOb4=
Received: from nus1998$yeah.net ( [113.118.112.154] ) by ajax-webmail-app9
 (Coremail) ; Mon, 27 Apr 2020 15:23:29 +0800 (CST)
X-Originating-IP: [113.118.112.154]
Date: Mon, 27 Apr 2020 15:23:29 +0800 (CST)
X-CM-HeaderCharset: UTF-8
From: "nus1998" <nus1998@yeah.net>
To: yocto@lists.yoctoproject.org
Subject: dpkg doesn't work
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn yeah
MIME-Version: 1.0
Message-ID: <50dd5404.10cb5.171ba84fa01.Coremail.nus1998@yeah.net>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: OlUQrAC3v29yiKZep1oBAA--.7236W
X-CM-SenderInfo: 5qxvimyzy65vtdko0vbw/1tbiDxITMFnxXhvjYAACsS
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Content-Type: multipart/alternative; 
	boundary="----=_Part_250844_1719170969.1587972209153"

------=_Part_250844_1719170969.1587972209153
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGkgQWxsLAoKCkknbSBydW5uaW5nIGlteC1saW51eC16ZXVzIDUuNC4zXzEuMC4wIG9uIGkuTVg2
IHNhYnJlc2QgYm9hcmQgYnV0IEkgdGhpbmsgdGhpcyBpc3N1ZSBtaWdodCBiZSBIVyBpbmRlcGVu
ZGVudC4KCgpJIHNldCBQQUNLQUdFX0NMQVNTRVMgPz0gJ3BhY2thZ2VfZGViJyBpbiBteSBsb2Nh
bC5jb25mIGZpbGUgYW5kIHRoZSBkZWIgcGFja2FnZXMgYXJlIGdlbmVyYXRlZCBpbiBlYWNoIHBh
Y2thZ2UuIGhvd2V2ZXIsIGluIHJvb3RmcywgYWxsIHRoZSAvdXNyL2Jpbi9kcGtnKiBhcmUgMCBi
eXRlcyBleGNlcHQgZHBrZy1kZWIgYW5kIGRwa2ctc3BsaXQsIHRodXMgSSBjYW4ndCB1c2UgZHBr
ZyBvciBhcHQtZ2V0IHRvIGluc3RhbGwgZGViIHBhY2thZ2UuIGRvZXNuJ3QgYW55Ym9keSBrbm93
IGhvdyB0byBzZXQgaXQgdXAgdG8gaW5zdGFsbCBkZWIgcGFja2FnZSBvbiB0YXJnZXQgYm9hcmQ/
CgoKQi5SLgpOdXMK

------=_Part_250844_1719170969.1587972209153
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGkgQWxsLDwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SSdt
IHJ1bm5pbmcgaW14LWxpbnV4LXpldXMgNS40LjNfMS4wLjAgb24gaS5NWDYgc2FicmVzZCBib2Fy
ZCBidXQgSSB0aGluayB0aGlzIGlzc3VlIG1pZ2h0IGJlIEhXIGluZGVwZW5kZW50LjwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SSBz
ZXQgUEFDS0FHRV9DTEFTU0VTID89ICdwYWNrYWdlX2RlYicgaW4gbXkgbG9jYWwuY29uZiBmaWxl
IGFuZCB0aGUgZGViIHBhY2thZ2VzIGFyZSBnZW5lcmF0ZWQgaW4gZWFjaCBwYWNrYWdlLiBob3dl
dmVyLCBpbiByb290ZnMsIGFsbCB0aGUgL3Vzci9iaW4vZHBrZyogYXJlIDAgYnl0ZXMgZXhjZXB0
IGRwa2ctZGViIGFuZCBkcGtnLXNwbGl0LCB0aHVzIEkgY2FuJ3QgdXNlIGRwa2cgb3IgYXB0LWdl
dCB0byBpbnN0YWxsIGRlYiBwYWNrYWdlLiBkb2Vzbid0IGFueWJvZHkga25vdyBob3cgdG8gc2V0
IGl0IHVwIHRvIGluc3RhbGwgZGViIHBhY2thZ2Ugb24gdGFyZ2V0IGJvYXJkPzwvZGl2PjxkaXYg
c3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+Qi5SLjwv
ZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+TnVzPGJyPjwvZGl2PjwvZGl2Pg==

------=_Part_250844_1719170969.1587972209153--
