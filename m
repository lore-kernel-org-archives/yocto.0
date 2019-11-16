Return-Path: <ouyangxuan10@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2E7E00E01; Fri, 15 Nov 2019 19:07:54 -0800 (PST)
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
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Nov 2019 19:07:50 PST
Received: from m13-86.163.com (m13-86.163.com [220.181.13.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A92E00D99
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 19:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=OtBD8
	ewZgrT44iz5OP2Xki4O4wUVU2Ukxol3rBQbm9E=; b=WV2mSqpPOXcBSZu2J9n2B
	H+6M1OJCj8KLi/C/JTmNejAngo3Qza4xxrQ+ahht9keLXAPeBrFFQDxjl9wZLZpH
	SlUMNix/y1gsM5S5v9G/8wN16qY6S+PbZrdEXuqWoluSKhgfLA0AiTzHqdhqaYe8
	H0tyUKQZnQWT4g8h7GN/6A=
Received: from ouyangxuan10$163.com ( [106.120.127.15] ) by
	ajax-webmail-wmsvr86 (Coremail) ; Sat, 16 Nov 2019 10:52:32 +0800 (CST)
X-Originating-IP: [106.120.127.15]
Date: Sat, 16 Nov 2019 10:52:32 +0800 (CST)
From: www <ouyangxuan10@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
	Copyright (c) 2002-2019 www.mailtech.cn 163com
X-CM-CTRLDATA: jOT4wWZvb3Rlcl9odG09MzY4OjU2
MIME-Version: 1.0
Message-ID: <6f2e7261.2256.16e722057bc.Coremail.ouyangxuan10@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: VsGowABndnZwZM9d7kUyAQ--.64761W
X-CM-SenderInfo: prx1t0pj0xt0irq6il2tof0z/1tbiLhhu2lSIlUwPQQADsK
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to compile a task every time?
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
X-List-Received-Date: Sat, 16 Nov 2019 03:07:54 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_34402_1517120498.1573872752572"

------=_Part_34402_1517120498.1573872752572
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

RGVhciBhbGwsCgoKSSB3YW50IHRvIGFkZCBhIKGwQlVJTERfVElNRaGxIHZhcmlhYmxlIHRvIGlt
YWdlLCBzbyBJIG5lZWQgdG8gY29tcGlsZSBhIHRhc2sgZXZlcnkgdGltZSwgZXZlbiBpZiB0aGUg
cGFja2FnZSBoYXMgbm8gbW9kaWZpY2F0aW9uLiBXaG8gY2FuIHRlbGwgbWUsIGhvdyBjYW4gSSBz
ZXQgaXQgdG8gdGhlIHBhY2thZ2U/IHRoYW5rcy4KCgp0aGFua3MsCkJ5cm9u

------=_Part_34402_1517120498.1573872752572
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+RGVhciBhbGwsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5JIHdhbnQgdG8gYWRkIGEgobBCVUlMRF9USU1FobEgdmFyaWFibGUgdG8gaW1hZ2UsIHNvIEkg
bmVlZCB0byBjb21waWxlIGEgdGFzayBldmVyeSB0aW1lLCBldmVuIGlmIHRoZSBwYWNrYWdlIGhh
cyBubyBtb2RpZmljYXRpb24uJm5ic3A7V2hvIGNhbiB0ZWxsIG1lLCBob3cgY2FuIEkgc2V0IGl0
IHRvIHRoZSBwYWNrYWdlPyB0aGFua3MuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj50aGFua3Ms
PC9kaXY+PGRpdj5CeXJvbjwvZGl2PjwvZGl2Pjxicj48YnI+PHNwYW4gdGl0bGU9Im5ldGVhc2Vm
b290ZXIiPjxwPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_34402_1517120498.1573872752572--
