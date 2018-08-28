Return-Path: <lbxhust@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18C20E00519; Tue, 28 Aug 2018 05:58:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (lbxhust[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from m13-113.163.com (m13-113.163.com [220.181.13.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE97E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 05:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=khOWx
	Wy/N6CsqNT0c49lqS79g6mIuL2IE6nZbFdtAys=; b=al7JXoyZVwbUWoBtwDvHR
	IQxZknvqqfBmNyQp2czqFGsZ73qPOOjVbwtMRi2IADjIBAcWVSGutxfu80a48GuZ
	Lh27CI8uHgyYyO2v/I5/6/1CtfFhcJXpm1TOJYSmy5zPH3DVd1iB0zjFx6JbI5HO
	Bl/w7C7W1OpFVB40z4K42o=
Received: from lbxhust$163.com ( [42.120.75.129] ) by ajax-webmail-wmsvr113
	(Coremail) ; Tue, 28 Aug 2018 20:58:50 +0800 (CST)
X-Originating-IP: [42.120.75.129]
Date: Tue, 28 Aug 2018 20:58:50 +0800 (CST)
From: benxi <lbxhust@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: 04QSuWZvb3Rlcl9odG09MTI2Mjo1Ng==
MIME-Version: 1.0
Message-ID: <4ff2f2e4.11869.165809d8294.Coremail.lbxhust@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ccGowACnUtoKR4VbbUKKAA--.52935W
X-CM-SenderInfo: xoe0x3lvw6il2tof0z/1tbiJwKw5FXln4kiWQABst
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Does yocto support android build tools?
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
X-List-Received-Date: Tue, 28 Aug 2018 12:58:55 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_270437_1844467460.1535461130900"

------=_Part_270437_1844467460.1535461130900
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

SGVsbG8gRXZlcnlvbmUsCiAgICBJJ20gdHJ5aW5nIHRvIGludHJvZHVjZSBhbiBhbmRyb2lkIHBh
Y2thZ2UgdG8gbXkgaW1hZ2UuIEFzIEkga25vdywgYW5kcm9pZCB1c2VzIGl0cyBvd24gYnVpbGQg
ZGV2ZWxvcG1lbnQga2l0LCBhbmQgdXNlcyBBbmRyb2lkLm1rIGFuZCBBbmRyb2lkLmJwIHJhdGhl
ciB0aGFuIHRyYWRpdGlvbmFsIG1ha2VmaWxlcy4gCiAgICBJJ20gY3VyaW91cyBhYm91dCBpZiB5
b2N0byBzdXBwb3J0cyBzdWNoIG1lY2hhbmlzbS4gRG8gSSBoYXZlIHRvIHJlcGxhY2UgQW5kcm9p
ZC5tayBhbmQgQW5kcm9pZC5icCB3aXRoIE1ha2VmaWxlcz8gIAoKCiAgICBUaGUgZm9sbG93aW5n
IGxpbmsgc2F5cyB0aGF0IHlvY3RvIG1heSBiZSBjb21wYXRpYmxlIHdpdGggYW5kcm9pZCBwYWNr
YWdlcy4gSSd2ZSBnb29nbGVkIGEgbG90IGJ1dCBJIGRpZG4ndCBnZXQgYW55IHRpcC4KICAgIGh0
dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20vcXVlc3Rpb25zLzQwNzU5NTk3L3doYXQtaXMtYW5kcm9p
ZC1jb21wYXQtYnVpbGQtYXJ0aWZhY3RzLW9mLXBva3ktaW4teW9jdG8KCgogICAgU28sIGJlZm9y
ZSByZXdyaXRpbmcgYWxsIHRoZSBtYWtlZmlsZXMsIEkgd291bGQgcmF0aGVyIGFzazogaXMgdGhl
cmUgYW55IGJldHRlciB3YXkgdG8gc29sdmUgdGhlIHByb2JsZW0/

------=_Part_270437_1844467460.1535461130900
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+SGVsbG8gRXZlcnlvbmUsPC9kaXY+PGRpdj4mbmJzcDsg
Jm5ic3A7IEknbSB0cnlpbmcgdG8gaW50cm9kdWNlIGFuIGFuZHJvaWQgcGFja2FnZSB0byBteSBp
bWFnZS4gQXMgSSBrbm93LCBhbmRyb2lkIHVzZXMgaXRzIG93biBidWlsZCBkZXZlbG9wbWVudCBr
aXQsIGFuZCB1c2VzIEFuZHJvaWQubWsgYW5kIEFuZHJvaWQuYnAgcmF0aGVyIHRoYW4gdHJhZGl0
aW9uYWwgbWFrZWZpbGVzLiZuYnNwOzwvZGl2PjxkaXY+Jm5ic3A7ICZuYnNwOyBJJ20gY3VyaW91
cyBhYm91dCBpZiB5b2N0byBzdXBwb3J0cyBzdWNoIG1lY2hhbmlzbS4gRG8gSSBoYXZlIHRvIHJl
cGxhY2UgQW5kcm9pZC5tayBhbmQgQW5kcm9pZC5icCB3aXRoIE1ha2VmaWxlcz8mbmJzcDsmbmJz
cDs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PiZuYnNwOyAmbmJzcDsgVGhlIGZvbGxvd2luZyBs
aW5rIHNheXMgdGhhdCB5b2N0byBtYXkgYmUmbmJzcDs8c3BhbiBzdHlsZT0iY29sb3I6IHJnYigz
NiwgMzksIDQxKTsgZm9udC1mYW1pbHk6IEFyaWFsLCAmcXVvdDtIZWx2ZXRpY2EgTmV1ZSZxdW90
OywgSGVsdmV0aWNhLCBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE1cHg7Ij5jb21wYXRpYmxlIHdp
dGggYW5kcm9pZCBwYWNrYWdlcy4gSSd2ZSBnb29nbGVkIGEgbG90IGJ1dCBJIGRpZG4ndCBnZXQg
YW55IHRpcC48L3NwYW4+PC9kaXY+PGRpdj4mbmJzcDsgJm5ic3A7IDxhIGhyZWY9Imh0dHBzOi8v
c3RhY2tvdmVyZmxvdy5jb20vcXVlc3Rpb25zLzQwNzU5NTk3L3doYXQtaXMtYW5kcm9pZC1jb21w
YXQtYnVpbGQtYXJ0aWZhY3RzLW9mLXBva3ktaW4teW9jdG8iIF9zcmM9Imh0dHBzOi8vc3RhY2tv
dmVyZmxvdy5jb20vcXVlc3Rpb25zLzQwNzU5NTk3L3doYXQtaXMtYW5kcm9pZC1jb21wYXQtYnVp
bGQtYXJ0aWZhY3RzLW9mLXBva3ktaW4teW9jdG8iPmh0dHBzOi8vc3RhY2tvdmVyZmxvdy5jb20v
cXVlc3Rpb25zLzQwNzU5NTk3L3doYXQtaXMtYW5kcm9pZC1jb21wYXQtYnVpbGQtYXJ0aWZhY3Rz
LW9mLXBva3ktaW4teW9jdG88L2E+IDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+Jm5ic3A7ICZu
YnNwOyBTbywgYmVmb3JlIHJld3JpdGluZyBhbGwgdGhlIG1ha2VmaWxlcywgSSB3b3VsZCByYXRo
ZXIgYXNrOiBpcyB0aGVyZSBhbnkgYmV0dGVyIHdheSB0byBzb2x2ZSB0aGUgcHJvYmxlbT88L2Rp
dj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRlYXNlZm9vdGVyIj48cD4mbmJzcDs8L3A+
PC9zcGFuPg==

------=_Part_270437_1844467460.1535461130900--
