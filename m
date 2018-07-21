Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF2CDE0121C; Fri, 20 Jul 2018 22:03:45 -0700 (PDT)
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
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Fri, 20 Jul 2018 22:03:44 PDT
Received: from m13-81.163.com (m13-81.163.com [220.181.13.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEA87E00C1B
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 22:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=4xVkM
	SAMwgKYnW3O5PGnXLt80u7lIakl+6DF26mtJ8A=; b=SaaJLy4yMlJzfyoMOpKwq
	NTVLe02XsCX5Ycjfkn/QJF7QZ6JcqN3ZygoNVjdc3+fGAMEHVr+Ue5KxVakLiNGw
	l0GAHJQS5528IFQBJiSMJgHkaD1v3IjKqfgVKjYUQnRrPvnKrU+2xX3+KOWnE3j7
	AmWc/eMEmAJt9NucWfJGBo=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr81 (Coremail) ; Sat, 21 Jul 2018 12:48:39 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Sat, 21 Jul 2018 12:48:39 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: 0awdrmZvb3Rlcl9odG09MTU2ODo2MQ==
MIME-Version: 1.0
Message-ID: <53b38a65.2c07.164bb2b111f.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: UcGowAAXFv4nu1JbNyhMAA--.3536W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiTRKKQlc7D5bhdAACs1
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: why compile "xserver-xorg" package on wayland projects?
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
X-List-Received-Date: Sat, 21 Jul 2018 05:03:45 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_42137_1967066935.1532148519199"

------=_Part_42137_1967066935.1532148519199
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgZm9sa3M6CiAgICBpIGFtIHdvcmtpbmcgb24gcHJvamVjdCB3aXRoICJESVNUUk9fRkVBVFVS
RSIgc2V0IHRvICJ3YXlhbG5kIiwgIGR1cmluZyB0aGUgY29tcGlsZSBwcm9jZWR1cmUsICBpIHNh
dyB0aGUgeHNlcnZlciBwYWthZ2Ugd2FzIGNvbXBpbGVkLCB3aGljaCB3b3VsZCBjb21wbGFpbiBj
b21waWxlIGVycm9yIGFuZCBzdG9wIHRoZSBwcm9jZXNzLgoKCmkgdHJ5IHRvIGRlYnVnIHRoZSBk
ZXBlbmRjaXksIGl0IHNlZW1zIHRoZSAid2VzdG9uIiBwYWNrYWdlIGJyaW5nIHRoZSB4b3JnLXNl
cnZlciAscGFja2FnZSBpbiAsIHNvIGkgdHJ5IHRvIGNoYW5nZSB0aGUgZGVmYXVsdCBiYiBmaWxl
IG9mIHBva3kgCnBva3kvbWV0YS9yZWNpcGVzLWdyYXBoaWNzL3dheWxhbmQvd2VzdG9uXzIuMC4w
LmJiCmFuZCBjb21tZW50IHRoZSBmb2xsb3dpbmcgbGluZQojUkRFUEVORFNfJHtQTn0teHdheWxh
bmQgKz0gInhzZXJ2ZXIteG9yZy14d2F5bGFuZCIKaXQgc2VlbXMgd29yay4KaSBkb250IGtub3cg
dGhlIHJlYXNvbiBhbmQgd2FudCB0byBrbm93IGlmIGFueSBlbGVnYW50IHdheSB0byBkZWFsdCB3
aXRoIHRoaXMgcHJvbGJlbXM/CgoKdGhhbmtzIGZvciB5b3VyIHN1cHBseS4KCgpOT1RFOiBsaW51
eC10aW5hOiBjb21waWxpbmcgZnJvbSBleHRlcm5hbCBzb3VyY2UgdHJlZSAvaG9tZS9jYW96aWxv
bmcvV29ya1NwYWNlL2dsaWJjL3JlcG8vbGljaGVlL2xpbnV4LTQuNApDdXJyZW50bHkgIDIgcnVu
bmluZyB0YXNrcyAoMjUzOCBvZiA0NDgzKSAgNTYlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwKMDogbGludXgtdGluYS00LjQuODktcjAgZG9fY29t
cGlsZSAtIDBzIChwaWQgMTU1MCkKMTogeHNlcnZlci14b3JnLTJfMS4xOS4zLXIwIGRvX2NvbmZp
Z3VyZSAtIDBzIChwaWQgMTU3OCk=

------=_Part_42137_1967066935.1532148519199
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgZm9sa3M6PC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7
IGkgYW0gd29ya2luZyBvbiBwcm9qZWN0IHdpdGggIkRJU1RST19GRUFUVVJFIiBzZXQgdG8gIndh
eWFsbmQiLCAmbmJzcDtkdXJpbmcgdGhlIGNvbXBpbGUgcHJvY2VkdXJlLCAmbmJzcDtpIHNhdyB0
aGUgeHNlcnZlciBwYWthZ2Ugd2FzIGNvbXBpbGVkLCB3aGljaCB3b3VsZCBjb21wbGFpbiBjb21w
aWxlIGVycm9yIGFuZCBzdG9wIHRoZSBwcm9jZXNzLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+
aSB0cnkgdG8gZGVidWcgdGhlIGRlcGVuZGNpeSwgaXQgc2VlbXMgdGhlICJ3ZXN0b24iIHBhY2th
Z2UgYnJpbmcgdGhlIHhvcmctc2VydmVyICxwYWNrYWdlIGluICwgc28gaSB0cnkgdG8gY2hhbmdl
IHRoZSBkZWZhdWx0IGJiIGZpbGUgb2YgcG9reSZuYnNwOzwvZGl2PjxkaXY+cG9reS9tZXRhL3Jl
Y2lwZXMtZ3JhcGhpY3Mvd2F5bGFuZC93ZXN0b25fMi4wLjAuYmI8L2Rpdj48ZGl2PmFuZCBjb21t
ZW50IHRoZSBmb2xsb3dpbmcgbGluZTwvZGl2PjxkaXY+I1JERVBFTkRTXyR7UE59LXh3YXlsYW5k
ICs9ICJ4c2VydmVyLXhvcmcteHdheWxhbmQiPC9kaXY+PGRpdj5pdCBzZWVtcyB3b3JrLjwvZGl2
PjxkaXY+aSBkb250IGtub3cgdGhlIHJlYXNvbiBhbmQgd2FudCB0byBrbm93IGlmIGFueSBlbGVn
YW50IHdheSB0byBkZWFsdCB3aXRoIHRoaXMgcHJvbGJlbXM/PC9kaXY+PGRpdj48YnI+PC9kaXY+
PGRpdj50aGFua3MgZm9yIHlvdXIgc3VwcGx5LjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+PGRp
dj5OT1RFOiBsaW51eC10aW5hOiBjb21waWxpbmcgZnJvbSBleHRlcm5hbCBzb3VyY2UgdHJlZSAv
aG9tZS9jYW96aWxvbmcvV29ya1NwYWNlL2dsaWJjL3JlcG8vbGljaGVlL2xpbnV4LTQuNDwvZGl2
PjxkaXY+Q3VycmVudGx5ICZuYnNwOzIgcnVubmluZyB0YXNrcyAoMjUzOCBvZiA0NDgzKSAmbmJz
cDs1NiUgfCMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjICZuYnNwOyAmbmJzcDsg
Jm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAm
bmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZu
YnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5i
c3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJzcDsgJm5ic3A7ICZuYnNwOyAmbmJz
cDsgJm5ic3A7fDwvZGl2PjxkaXY+MDogbGludXgtdGluYS00LjQuODktcjAgZG9fY29tcGlsZSAt
IDBzIChwaWQgMTU1MCk8L2Rpdj48ZGl2PjxzcGFuIHN0eWxlPSJjb2xvcjogcmdiKDI1NSwgMCwg
MCk7Ij4xOiB4c2VydmVyLXhvcmctMl8xLjE5LjMtcjAgZG9fY29uZmlndXJlIC0gMHMgKHBpZCAx
NTc4KTwvc3Bhbj48L2Rpdj48L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNl
Zm9vdGVyIj48cD48YnIvPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_42137_1967066935.1532148519199--
