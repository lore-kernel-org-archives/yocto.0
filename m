Received: from m154-177.yeah.net (m154-177.yeah.net [123.58.178.154])
 by mx.groups.io with SMTP id smtpd.web10.9192.1586749867476171018
 for <yocto@lists.yoctoproject.org>;
 Sun, 12 Apr 2020 20:51:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yeah.net header.s=s110527 header.b=eaYOmVz1;
 spf=pass (domain: yeah.net, ip: 123.58.178.154, mailfrom: nus1998@yeah.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=sacpm
	hwLpLVqbRtH4sINIL5dg9azYN9v1tIjh6KIqN0=; b=eaYOmVz1GFjEIh0G3TamI
	ED0DAjiE8i2wFnbKojLyZrrZl2N/AxEYKGsYUfLSvtb3jny+KcZbDs+b2CfhRCcW
	Ogj8DY7OysWZFRmTk4qmmAUCsHkslAVvlgFYSZGFz2N1ckNPmNyFU2A1Jqe8TDMm
	xdJ3NwIl236l6KhNy67dJc=
Received: from nus1998$yeah.net ( [14.153.79.244] ) by ajax-webmail-app5
 (Coremail) ; Mon, 13 Apr 2020 11:51:02 +0800 (CST)
X-Originating-IP: [14.153.79.244]
Date: Mon, 13 Apr 2020 11:51:02 +0800 (CST)
X-CM-HeaderCharset: UTF-8
From: "nus1998" <nus1998@yeah.net>
To: yocto@lists.yoctoproject.org
Subject: What is the recommended method to patch a recipe?
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn yeah
MIME-Version: 1.0
Message-ID: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: NlUQrAAH0cin4ZNeEE8AAA--.4285W
X-CM-SenderInfo: 5qxvimyzy65vtdko0vbw/1tbiDxwEMFnxXdImLgACsK
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Content-Type: multipart/alternative; 
	boundary="----=_Part_56027_914847631.1586749862783"

------=_Part_56027_914847631.1586749862783
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGkgQWxsLAoKCkkgZ29vZ2xlZCBzb21lIHRvcGljcyBvbiBob3cgdG8gcGF0Y2ggYSByZWNpcGUs
IG1vc3Qgb2YgdGhlbSByZWNvbW1lbmQgdG8gZ2VuZXJhdGUgYSBjb3JyZXNwb25kaW5nIDxmb28+
LmJiYXBwZW5kIHRvIGFwcGx5IHRoZSBwYXRjaCwgSSB3b25kZXIgaWYgdGhlcmUgaXMgYWxyZWFk
eSBhIGJiYXBwZW5kIGZpbGUsIHNoYWxsIEkgbW9kaWZ5IHRoZSBiYmFwcGVuZCBmaWxlIGRpcmVj
dGx5LCBvciBjcmVhdGUgYW5vdGhlciBsYXllciB0byBvdmVyd3JpdGUgdGhlIGJiYXBwZW5kIGZp
bGUgKGFuZCBpbmNsdWRpbmcgdGhlIHBhdGNocyBpbiBvcmlnaW5hbCBiYmFwcGVuZCBmaWxlKT8K
CgpUaGFua3MgaW4gYWR2YW5jZQpOdXMK

------=_Part_56027_914847631.1586749862783
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGkgQWxsLDwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SSBn
b29nbGVkIHNvbWUgdG9waWNzIG9uIGhvdyB0byBwYXRjaCBhIHJlY2lwZSwgbW9zdCBvZiB0aGVt
IHJlY29tbWVuZCB0byBnZW5lcmF0ZSBhIGNvcnJlc3BvbmRpbmcgJmx0O2ZvbyZndDsuYmJhcHBl
bmQgdG8gYXBwbHkgdGhlIHBhdGNoLCBJIHdvbmRlciBpZiB0aGVyZSBpcyBhbHJlYWR5IGEgYmJh
cHBlbmQgZmlsZSwgc2hhbGwgSSBtb2RpZnkgdGhlIGJiYXBwZW5kIGZpbGUgZGlyZWN0bHksIG9y
IGNyZWF0ZSBhbm90aGVyIGxheWVyIHRvIG92ZXJ3cml0ZSB0aGUgYmJhcHBlbmQgZmlsZSAoYW5k
IGluY2x1ZGluZyB0aGUgcGF0Y2hzIGluIG9yaWdpbmFsIGJiYXBwZW5kIGZpbGUpPzwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+VGhh
bmtzIGluIGFkdmFuY2U8L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW46MDsiPk51czxicj48L2Rpdj48
L2Rpdj4=

------=_Part_56027_914847631.1586749862783--
