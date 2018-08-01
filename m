Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65293E00CDE; Wed,  1 Aug 2018 03:27:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_DIGITS,
	FROM_LOCAL_HEX, 
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FROM_LOCAL_DIGITS From: localpart has long digit
	sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (13824125580[at]163.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [220.181.13.128 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 904 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Aug 2018 03:27:16 PDT
Received: from m13-128.163.com (m13-128.163.com [220.181.13.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55186E00CC9
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 03:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=VaY9L
	iv4+Wpk4In8g9W1rY/lQWJssQ/FaZT9+yFNJzI=; b=eSFFlP5kyME/Fysp7+6Mp
	lcO7pnWMc5f/j1kLNz4MyojpaWqYHeS0VNxAk2Lt67IWzMmP6Q3l8APaxlvSnrED
	58YMHPlG6IrqcTHNYex7vWx7R+NN0mK/R0lhATgokgIF0HPhELRR3FddzKPThhbj
	IW/HBVlmyvY81P0KpA2fMs=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr128 (Coremail) ; Wed, 1 Aug 2018 18:11:52 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Wed, 1 Aug 2018 18:11:52 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: cYsAS2Zvb3Rlcl9odG09OTUxOjYx
MIME-Version: 1.0
Message-ID: <52c61bca.b741.164f4f8eeea.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gMGowACXcVhoh2Fbar9YAA--.21995W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiHgiVQlSIcFIHJwAAsf
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Is there any way to remove some package frome IMAGE_INSTALL conditionally in local.conf?
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
X-List-Received-Date: Wed, 01 Aug 2018 10:27:19 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_173398_810959382.1533118312170"

------=_Part_173398_810959382.1533118312170
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgZm9sa3M6CgoKICAgaSBtZWV0IGFuIHByb2JsZW0gdGhhdCBuZWVkIGtlZXAgVENMSUJDIGJv
dGggd29yayBpbiAibXVzbCIgYW5kICJnbGliYyIgZW52aXJvbm1lbnQgLCBidXQgYSB1c2VyLWRl
ZmluZWQgcGFja2FnZSBjYW50IHdvcmsgd2l0aCAiZ2xpYmMiLCBzbyBpIG5lZWQgdG8gcmVtb3Rl
IHRoZW0gaW4gdGhlICJJTUFHRV9JTlNUQUxMIiB2YXJpYWJsZSwKYnV0IGkgZG9uYHQgd2FudCB0
byBvZmZlciBhIHNlcGVyYXRlICJpbWFnZSouYmIiIGZpbGVzIGZvciB0aGlzIHJlYXNvbiBiZWNh
dXNlIGl0IG1heSBiZSBjYXVzZSB0aGUgY3VzdG9tZXIgbWlzdW5kZXJzdGFuZCwgc28gaSBoYXZl
IGEgdGhvdWdodCB0byBqdWRnZSB0aGUgIlRDTElCQyIgYW5kIGRvIHRoZSByZW1vdmUgb3BlcmF0
aW9uIGR1cmluZyBiaXRiYWtlIHJ1bnRpbWUgaW4gbG9jYWwuY29uZgpsaWtlIHRoaXMgaW4gbG9j
YWwuY29uZgoKCiAgaWYgVENMSUJDID09IGdsaWJjCiAgICAgIElNQUdFX0lOU1RBTExfcmVtb3Zl
PSJwYWNrYWdlMSBwYWNrYWdlMiIKCiBlbHNlCiAgICAgZG8gbm90aGluZwogIGVuZGlmCgoKc28s
IGhvdyB0aGUgYWJvdmUgcHNldWRvIGNvZGUgYmUgaW1wbGVtZW50ZWQgaW4gYml0YmFrZSBjb25m
aWcgZmlsZXM/CnRoYW5rcyBmb3IgeW91ciBzdXBwb3J0Lg==

------=_Part_173398_810959382.1533118312170
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgZm9sa3M6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj4mbmJzcDsgJm5ic3A7aSBtZWV0IGFuIHByb2JsZW0gdGhhdCBuZWVkIGtlZXAgVENMSUJDIGJv
dGggd29yayBpbiAibXVzbCIgYW5kICJnbGliYyIgZW52aXJvbm1lbnQgLCBidXQgYSB1c2VyLWRl
ZmluZWQgcGFja2FnZSBjYW50IHdvcmsgd2l0aCAiZ2xpYmMiLCBzbyBpIG5lZWQgdG8gcmVtb3Rl
IHRoZW0gaW4gdGhlICJJTUFHRV9JTlNUQUxMIiB2YXJpYWJsZSw8L2Rpdj48ZGl2PmJ1dCBpIGRv
bmB0IHdhbnQgdG8gb2ZmZXIgYSBzZXBlcmF0ZSAiaW1hZ2UqLmJiIiBmaWxlcyBmb3IgdGhpcyBy
ZWFzb24gYmVjYXVzZSBpdCBtYXkgYmUgY2F1c2UgdGhlIGN1c3RvbWVyIG1pc3VuZGVyc3RhbmQs
IHNvIGkgaGF2ZSBhIHRob3VnaHQgdG8ganVkZ2UgdGhlICJUQ0xJQkMiIGFuZCBkbyB0aGUgcmVt
b3ZlIG9wZXJhdGlvbiBkdXJpbmcgYml0YmFrZSBydW50aW1lIGluIGxvY2FsLmNvbmY8L2Rpdj48
ZGl2Pmxpa2UgdGhpcyBpbiBsb2NhbC5jb25mPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj4mbmJz
cDsgaWYgVENMSUJDID09IGdsaWJjPC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7ICZuYnNwOyBJTUFH
RV9JTlNUQUxMX3JlbW92ZT0icGFja2FnZTEgcGFja2FnZTIiPGJyPjwvZGl2PjxkaXY+Jm5ic3A7
ZWxzZTwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyAmbmJzcDtkbyBub3RoaW5nPC9kaXY+PGRpdj4m
bmJzcDsgZW5kaWY8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PnNvLCBob3cgdGhlIGFib3ZlIHBz
ZXVkbyBjb2RlIGJlIGltcGxlbWVudGVkIGluIGJpdGJha2UgY29uZmlnIGZpbGVzPzwvZGl2Pjxk
aXY+dGhhbmtzIGZvciB5b3VyIHN1cHBvcnQuPC9kaXY+PC9kaXY+PGJyPjxicj48c3BhbiB0aXRs
ZT0ibmV0ZWFzZWZvb3RlciI+PHA+PGJyLz4mbmJzcDs8L3A+PC9zcGFuPg==

------=_Part_173398_810959382.1533118312170--
