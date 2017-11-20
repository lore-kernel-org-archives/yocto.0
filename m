Return-Path: <cddatemp@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 379AAE00D2C; Mon, 20 Nov 2017 03:33:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51CEEE00D00
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=pTAo6
	6AoPm+0426Kix5qto2xe/h+Gi+2/mQ6rkHYrlA=; b=m91uvGHswl52rg+lIcYlN
	i4D8FlVhSFuedYvdw2wt5DZTkddoe+RvxbE/+9+TpKuFzAymw/b3VdGX8TgZA2km
	zVcRAzPJnP9hNxwNCKy+M8vPA/6NqwJhFpIv6x9Uvh4iudLACP3ijfsEH/EkIL/o
	pTeUvy3tbcpcu73zgN46Ns=
Received: from cddatemp$163.com ( [123.185.214.77] ) by ajax-webmail-wmsvr15
	(Coremail) ; Mon, 20 Nov 2017 19:33:09 +0800 (CST)
X-Originating-IP: [123.185.214.77]
Date: Mon, 20 Nov 2017 19:33:09 +0800 (CST)
From: cddatemp <cddatemp@163.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2017 www.mailtech.cn 163com
MIME-Version: 1.0
Message-ID: <5644f58b.9cec.15fd93414cf.Coremail.cddatemp@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: D8GowABnfYh2vRJafjwKAA--.2237W
X-CM-SenderInfo: pfggt3xhpsqiywtou0bp/1tbiux+WdFO-6VhD+wABsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: How to build a native python extension
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
X-List-Received-Date: Mon, 20 Nov 2017 11:33:35 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_147201_1729714499.1511177589967"

------=_Part_147201_1729714499.1511177589967
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGksCgoKSSBhZGQgImluaGVyaXQgZGlzdHV0aWxzIiBpbiBteSByZWNpcGUuCkl0IHdpbGwgbWFr
ZSBteSByZWNpcGUgZGVwZW5kcyBvbiAicHl0aG9uLW5hdGl2ZSIgYW5kICJweXRob24iLgpGaW5h
bGx5IGl0IHVzZSBhcm0tZ2NjIHRvIGJ1aWxkIHRoZSBweXRob24gZXh0ZW5zaW9uLgpCdXQgSSB3
YW50IHRvIHVzZSB4ODYtZ2NjIHRvIGJ1aWxkIGEgbmF0aXZlIHB5dGhvbiBleHRlbnNpb24uCkhv
dyB0byBkbyB0aGlzPwoKCkJlc3QgUmVnYXJkcwpjZGRhdGVtcA==

------=_Part_147201_1729714499.1511177589967
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGksPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGFk
ZCAiaW5oZXJpdCBkaXN0dXRpbHMiIGluIG15IHJlY2lwZS48L2Rpdj48ZGl2Pkl0IHdpbGwgbWFr
ZSBteSByZWNpcGUgZGVwZW5kcyBvbiAicHl0aG9uLW5hdGl2ZSIgYW5kICJweXRob24iLjwvZGl2
PjxkaXY+RmluYWxseSBpdCB1c2UgYXJtLWdjYyB0byBidWlsZCB0aGUgcHl0aG9uIGV4dGVuc2lv
bi48L2Rpdj48ZGl2PkJ1dCBJIHdhbnQgdG8gdXNlIHg4Ni1nY2MgdG8gYnVpbGQgYSBuYXRpdmUg
cHl0aG9uIGV4dGVuc2lvbi48L2Rpdj48ZGl2PkhvdyB0byBkbyB0aGlzPzwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+QmVzdCBSZWdhcmRzPC9kaXY+PGRpdj5jZGRhdGVtcDwvZGl2PjwvZGl2Pg==

------=_Part_147201_1729714499.1511177589967--
