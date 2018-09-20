Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9640CE00BB7; Wed, 19 Sep 2018 23:30:44 -0700 (PDT)
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
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Sep 2018 23:30:43 PDT
Received: from m13-56.163.com (m13-56.163.com [220.181.13.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8020E00BAA
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 23:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=rCusf
	a/NreDFTerfyLWs4X4qP0YYq7vGYXuR+z2wmm4=; b=RIHNVT8Bm5npFK4CRdSh5
	ki78Ax5f5KZv2Efe2h8gFaydjRE/9JiNv4ewhmyAYYfBYjBu2suJYwvgWnbBz/zg
	AlqXR1Ydxc5+0V7dR7PM+BzSKTx8CRc/ALYodw3Lx724qPv7dgZvEkV1GWIi+Z0H
	WMHRoqRPm9WymNLCLKnqXE=
Received: from 13824125580$163.com ( [221.4.213.95] ) by
	ajax-webmail-wmsvr56 (Coremail) ; Thu, 20 Sep 2018 14:15:26 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Thu, 20 Sep 2018 14:15:26 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: +jwvF2Zvb3Rlcl9odG09NDI5OjYx
MIME-Version: 1.0
Message-ID: <65839221.8839.165f59e72fc.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: OMGowAB3f6P+OqNboW+aAA--.48336W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbipR-HQlUMMqPa9QABsZ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: why must add the "mesa" dependent on bbfiles which already has a "libmali.so" for mali gpu based system?
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
X-List-Received-Date: Thu, 20 Sep 2018 06:30:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_130223_1427172819.1537424126715"

------=_Part_130223_1427172819.1537424126715
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgZm9sa3M6CgoKICAgb24gbXkgIHlvY3RvIHByb2JqZWN0IGlmIHRoZSBtZXNhIGRlcGVucyBy
ZW1vdmVkIGZyb20gdGhlIHJlY2lwZSwgdGhlIGNvbXBpbGUgY2FudCBnbyB0aHJvdWdoLCBpIGRv
bnQga25vdyB3aHkgIGJlY2F1c2UgaSBoYXZlIGFscmVhZHkgaGFzIGEgIm9wZW5nbCIgaW1wbGVt
ZW50YXRpb24gYnkKbGliTWFsaS5zbyBsaWJyYXJ5LgoKCnNvLCBjYW4geW91IHRlbGwgbWUgd2h5
PyB0aGFua3MgZm9yIHlvdXIgc3VwcG9ydC4g

------=_Part_130223_1427172819.1537424126715
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgZm9sa3M6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj4mbmJzcDsgJm5ic3A7b24gbXkmbmJzcDsgeW9jdG8gcHJvYmplY3QgaWYgdGhlIG1lc2EgZGVw
ZW5zIHJlbW92ZWQgZnJvbSB0aGUgcmVjaXBlLCB0aGUgY29tcGlsZSBjYW50IGdvIHRocm91Z2gs
IGkgZG9udCBrbm93IHdoeSZuYnNwOyBiZWNhdXNlIGkgaGF2ZSBhbHJlYWR5IGhhcyBhICJvcGVu
Z2wiIGltcGxlbWVudGF0aW9uIGJ5PC9kaXY+PGRpdj5saWJNYWxpLnNvIGxpYnJhcnkuPC9kaXY+
PGRpdj48YnI+PC9kaXY+PGRpdj5zbywgY2FuIHlvdSB0ZWxsIG1lIHdoeT8gdGhhbmtzIGZvciB5
b3VyIHN1cHBvcnQuJm5ic3A7PC9kaXY+PC9kaXY+PGJyPjxicj48c3BhbiB0aXRsZT0ibmV0ZWFz
ZWZvb3RlciI+PHA+PGJyLz4mbmJzcDs8L3A+PC9zcGFuPg==

------=_Part_130223_1427172819.1537424126715--
