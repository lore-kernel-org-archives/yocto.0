Return-Path: <13824125580@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C52FCE00A1A; Mon, 22 Oct 2018 03:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_LOCAL_DIGITS,
	FROM_LOCAL_HEX, HTML_MESSAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FROM_LOCAL_DIGITS From: localpart has long digit sequence
	*  0.0 FROM_LOCAL_HEX From: localpart has long hexadecimal sequence
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (13824125580[at]163.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Oct 2018 03:49:25 PDT
Received: from m13-8.163.com (m13-8.163.com [220.181.13.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 841C1E00826
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2018 03:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=axTjI
	+KKTwtvLJk8ioOt8zRdcqGPVjpPSYIUh9lFvMQ=; b=dB/smyulFFfVvf2MpvBjN
	4kK7r5vsLgzRg6GtFVi/3lSNTY08rzt73Idjxwo/pB2KNpZScMLhGoBzJTRSa/nT
	PWEUL3fUtLmGBvNO9WojDfzFv4RhwzHJYethyU3N3BSYKI3RXbAGPz6DfxOKCb32
	rZbcTRvvNt3Qjpn6ZQtNFs=
Received: from 13824125580$163.com ( [221.4.213.95] ) by ajax-webmail-wmsvr8
	(Coremail) ; Mon, 22 Oct 2018 18:34:12 +0800 (CST)
X-Originating-IP: [221.4.213.95]
Date: Mon, 22 Oct 2018 18:34:12 +0800 (CST)
From: tugouxp <13824125580@163.com>
To: yocto@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2018 www.mailtech.cn 163com
X-CM-CTRLDATA: 1d3if2Zvb3Rlcl9odG09ODMwOjYx
MIME-Version: 1.0
Message-ID: <43b1340b.c213.1669b56db12.Coremail.13824125580@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: CMGowAAXJ3+lp81bsRWXAA--.28260W
X-CM-SenderInfo: bprtmjyurskkiyq6il2tof0z/1tbiTQfnQlc7FjWa4wACsb
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to get the depedents ipk packge list of the target packge?
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
X-List-Received-Date: Mon, 22 Oct 2018 10:49:27 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_186556_327263949.1540204452625"

------=_Part_186556_327263949.1540204452625
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

aGkgZm9sa3M6CgoKICBpIGFtIHRyeWluZyB0byBpbnN0YWxsICBhIGh1Z2UgcGFja2FnZXMgKGNo
cm9taXVtKSBvbiB0aGUgdGFyZ2V0IHBsYWdmb3JtLCB3aGF0IHB1enpsZSBtZSBpcyB0aGF0IHRo
ZXJlIGFyZSB0b25zIG9mIGRlcGVuZHMgcmVsYXRpb25zIGJldHdlZW4gdGFyZ2V0IHBhY2thZ2Vz
IGFuZCB0aGlyZC1wYXJ0eS4Kd2hlbiBpIGV4ZWN1dGUgdGhlCgogIm9wa2cgaW5zdGFsbCAgIC4v
eHh4eHguaXBrICAtLWZvcmNlLWRlcGVuZHMiCmFsb3VnaCB0aGUgdGFyZ2V0IGlwayBjYW4gYmUg
aW5zdGFsbGVkIHN1Y2Nlc3NseSAgd2l0aCAiLS1mcm9jZS1kZXBlbmRzIiB0byBpZ25vcmUgdGhl
IGRlcGVuZHMsIGJ1dCBpdCBjYW50IGJlIGV4ZWN1dGVkIG5vcm1hbHkgZm9yIGxhY2sgb2YgbGli
cmFyaWVzLgppIGhhdmUgZGVhbHQgd2l0aCBtYW55IG1hbnkgIiouaXBrIiAsIGJ1dCBzdGlsbCBu
byBlbmQgdXAuCnNvICwgaXMgdGhlcmUgYW55IHdheSB0byBnZXQgdGhlIHRvdGFsIGRlcGVuZHMg
cGFja2FnZSBsaXN0IHdpdGgganVzdCBhIHNpbmdsZSBjb21tYW5kPwoKCnRoYW5rcyBmb3IgeW91
ciBraW5kbHkgc3VwcG9ydCEKCg==

------=_Part_186556_327263949.1540204452625
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+aGkgZm9sa3M6PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj4mbmJzcDsgaSBhbSB0cnlpbmcgdG8gaW5zdGFsbCZuYnNwOyBhIGh1Z2UgcGFja2FnZXMgKGNo
cm9taXVtKSBvbiB0aGUgdGFyZ2V0IHBsYWdmb3JtLCB3aGF0IHB1enpsZSBtZSBpcyB0aGF0IHRo
ZXJlIGFyZSB0b25zIG9mIGRlcGVuZHMgcmVsYXRpb25zIGJldHdlZW4gdGFyZ2V0IHBhY2thZ2Vz
IGFuZCB0aGlyZC1wYXJ0eS48L2Rpdj48ZGl2PndoZW4gaSBleGVjdXRlIHRoZSA8YnI+PC9kaXY+
PGRpdj4mbmJzcDsib3BrZyBpbnN0YWxsJm5ic3A7Jm5ic3A7IC4veHh4eHguaXBrJm5ic3A7IC0t
Zm9yY2UtZGVwZW5kcyI8L2Rpdj48ZGl2PmFsb3VnaCB0aGUgdGFyZ2V0IGlwayBjYW4gYmUgaW5z
dGFsbGVkIHN1Y2Nlc3NseSZuYnNwOyB3aXRoICItLWZyb2NlLWRlcGVuZHMiIHRvIGlnbm9yZSB0
aGUgZGVwZW5kcywgYnV0IGl0IGNhbnQgYmUgZXhlY3V0ZWQgbm9ybWFseSBmb3IgbGFjayBvZiBs
aWJyYXJpZXMuPC9kaXY+PGRpdj5pIGhhdmUgZGVhbHQgd2l0aCBtYW55IG1hbnkgIiouaXBrIiAs
IGJ1dCBzdGlsbCBubyBlbmQgdXAuPC9kaXY+PGRpdj5zbyAsIGlzIHRoZXJlIGFueSB3YXkgdG8g
Z2V0IHRoZSB0b3RhbCBkZXBlbmRzIHBhY2thZ2UgbGlzdCB3aXRoIGp1c3QgYSBzaW5nbGUgY29t
bWFuZD88L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PnRoYW5rcyBmb3IgeW91ciBraW5kbHkgc3Vw
cG9ydCE8L2Rpdj48ZGl2Pjxicj48L2Rpdj48L2Rpdj48YnI+PGJyPjxzcGFuIHRpdGxlPSJuZXRl
YXNlZm9vdGVyIj48cD48YnIvPiZuYnNwOzwvcD48L3NwYW4+

------=_Part_186556_327263949.1540204452625--
