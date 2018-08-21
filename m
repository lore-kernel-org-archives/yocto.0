Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D708EE00A6B; Tue, 21 Aug 2018 03:15:10 -0700 (PDT)
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
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Aug 2018 03:15:09 PDT
Received: from m13-8.163.com (m13-8.163.com [220.181.13.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD8EE009D4
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 03:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=DQ+ZS
	yzJFrzR0wtCwiSeaZdxCI1m7plurkW7/xjYC58=; b=UaHyFB6SAXHyTaY56a1gZ
	2i66WvZ1GE8YHowEuZJSgJG0YyV7kUk87qw7OoQOO0xV5HhWYxg7zCWuT268LtFx
	vD/xdBUhH6HMVUL5eMfhuwWsaArGJ1OeT33ZTmIbdpyVy40Dsjf5UnNO3nFGBso5
	at6uMl5F4y6MII3kEYBMUQ=
Received: from 13824125580$163.com ( [221.4.213.95] ) by ajax-webmail-wmsvr8
	(Coremail) ; Tue, 21 Aug 2018 18:00:01 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Tue, 21 Aug 2018 18:00:01 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: zLDMXmZvb3Rlcl9odG09MzQwOjYx
MIME-Version: 1.0
Message-ID: <74ae9335.9209.1655bed4668.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: CMGowADnPbyh4ntbQ8RUAA--.31700W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiYwGpQlaD0NnZnQAAsR
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to understand the "PACKAGECONFIG_class-nativesdk " and "PACKAGECONFIG_class-target" ?
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
X-List-Received-Date: Tue, 21 Aug 2018 10:15:10 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_139157_1049318427.1534845601384"

------=_Part_139157_1049318427.1534845601384
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aG93IHRvIHVuZGVyc3RhbmQgdGhlIHR3bzoKIlBBQ0tBR0VDT05GSUdfY2xhc3NfdGFyZ2V0ClBB
Q0tBR0VDT05GSUdfY2xhc3MtbmF0aXZlc2RrICIKc2VtYW50aWNzIGluIGJiIGZpbGVzPyBpIGRp
ZCBub3QgZm91bmQgYW55IGV4cGxhbmF0aW9uIG9uIHRoZSBvZmZpY2lhbCBkb2N1bWVudCwgIHNv
LCBwbGVhc2UgaGVscCBtZSAsdGhhbmtzICEKCg==

------=_Part_139157_1049318427.1534845601384
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aG93IHRvIHVuZGVyc3RhbmQgdGhlIHR3bzo8L2Rpdj48
ZGl2PiJQQUNLQUdFQ09ORklHX2NsYXNzX3RhcmdldDwvZGl2PjxkaXY+UEFDS0FHRUNPTkZJR19j
bGFzcy1uYXRpdmVzZGsgIjwvZGl2PjxkaXY+c2VtYW50aWNzIGluIGJiIGZpbGVzPyBpIGRpZCBu
b3QgZm91bmQgYW55IGV4cGxhbmF0aW9uIG9uIHRoZSBvZmZpY2lhbCBkb2N1bWVudCwgJm5ic3A7
c28sIHBsZWFzZSBoZWxwIG1lICx0aGFua3MgITwvZGl2PjxkaXY+PGJyPjwvZGl2PjwvZGl2Pjxi
cj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vmb290ZXIiPjxwPjxici8+Jm5ic3A7PC9wPjwvc3Bh
bj4=

------=_Part_139157_1049318427.1534845601384--
