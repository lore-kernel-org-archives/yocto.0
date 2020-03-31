Received: from m157-178.yeah.net (m157-178.yeah.net [123.58.178.157])
 by mx.groups.io with SMTP id smtpd.web12.832.1585618846200896224
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Mar 2020 18:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yeah.net header.s=s110527 header.b=B39iCoQb;
 spf=pass (domain: yeah.net, ip: 123.58.178.157, mailfrom: nus1998@yeah.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=Vjj6k
	Rpfm8Q0pp9tmAO9k8RiDK3k6QbDitsiQVYXCPY=; b=B39iCoQbz3mCrQayxPoup
	dQnHlA9R0PTdBrHNtQuD4F1WYtZRfLRdj1kF5cuLD9LoumVJDZF1UQqnxoxfBW9C
	CZwS1LiMqRjXAV9hGhJzp2kEvl58evO7Pbt077vxTCegkLDDojN3jRI6a7URC9UR
	21xJC3iDZvL28+B4096O3A=
Received: from nus1998$yeah.net ( [121.35.184.240] ) by ajax-webmail-app8
 (Coremail) ; Tue, 31 Mar 2020 09:40:40 +0800 (CST)
X-Originating-IP: [121.35.184.240]
Date: Tue, 31 Mar 2020 09:40:40 +0800 (CST)
X-CM-HeaderCharset: UTF-8
From: "nus1998" <nus1998@yeah.net>
To: yocto@lists.yoctoproject.org
Subject: duplicate files in tmp
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.10 build 20190724(ac680a23)
 Copyright (c) 2002-2020 www.mailtech.cn yeah
MIME-Version: 1.0
Message-ID: <5f89ccfc.1f85d2.1712e3f6b72.Coremail.nus1998@yeah.net>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: OVUQrADH2+mZn4JelXMDAA--.22823W
X-CM-SenderInfo: 5qxvimyzy65vtdko0vbw/1tbiDg-3MFszTRGoDQABsW
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Content-Type: multipart/alternative; 
	boundary="----=_Part_7966698_1184218047.1585618840433"

------=_Part_7966698_1184218047.1585618840433
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: base64

SGkgQWxsLAoKCkknbSBuZXdiaWUgdG8geW9jdG8sIGN1cnJlbnRseSBJIHVzZSBpbXgtbGludXgt
emV1cyBhcyB0aGUgZGV2ZWxvcCBlbnZpcm9ubWVudC4KCgoKV2hlbiBJIGJpdGJha2VkIHRoZSBz
eXN0ZW0sIEkgZm91bmQgdGhlcmUgYXJlIGEgbG90IG9mIGR1cGxpY2F0ZSBmaWxlcyBpbiA8YnVp
bGQ+L3RtcCwgZm9yIGV4YW1wbGUsIHRoZXJlIGlzIGEgZGlyZWN0b3J5IG5hbWVkICJyZWNpcGUt
c3lzcm9vdC1uYXRpdmUiIGluIGV2ZXJ5IHBhY2thZ2UsIHdoaWNoIGRpcmVjdG9yeSBpcyBzZXJ2
ZXJhbCBodW5kcmVkcyBvZiBNQiBpbiBzaXplLiBJJ20gY29uZnVzZWQgdGhhdCB3aHkgZG9uJ3Qg
dXNlIGxpbmsgZmlsZSB0eXBlIHRvIGluc3RlYWQgb2YgZHVwbGljYXRlIGNvcGllcywgd2hpY2gg
Y2FuIHNhdmUgdGVucyBvZiBHQiBzaXplLiBJIGtub3cgdGhhdCBkaXNrIGNhcGFjaXR5IHNob3Vs
ZCBub3QgYmUgYSBjb25jZXJuIGJ1dCBpdCdzIGFsd2F5cyB3ZWxjb21lIHRvIGhhdmUgYSBzbWFs
bCBzaXplIHByb2plY3QuCgoKQi5SLgpOdXMK

------=_Part_7966698_1184218047.1585618840433
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SGkgQWxsLDwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+SSdt
IG5ld2JpZSB0byB5b2N0bywgY3VycmVudGx5IEkgdXNlIDxhIGhyZWY9Imh0dHBzOi8vc291cmNl
LmNvZGVhdXJvcmEub3JnL2V4dGVybmFsL2lteC9pbXgtbWFuaWZlc3QvbG9nLz9oPWlteC1saW51
eC16ZXVzIj5pbXgtbGludXgtemV1czwvYT4gYXMgdGhlIGRldmVsb3AgZW52aXJvbm1lbnQuIDxi
cj48L2Rpdj48ZGl2IHN0eWxlPSJtYXJnaW46MDsiPjxicj48L2Rpdj48ZGl2IHN0eWxlPSJtYXJn
aW46MDsiPldoZW4gSSBiaXRiYWtlZCB0aGUgc3lzdGVtLCBJIGZvdW5kIHRoZXJlIGFyZSBhIGxv
dCBvZiBkdXBsaWNhdGUgZmlsZXMgaW4gJmx0O2J1aWxkJmd0Oy90bXAsIGZvciBleGFtcGxlLCB0
aGVyZSBpcyBhIGRpcmVjdG9yeSBuYW1lZCAicmVjaXBlLXN5c3Jvb3QtbmF0aXZlIiBpbiBldmVy
eSBwYWNrYWdlLCB3aGljaCBkaXJlY3RvcnkgaXMgc2VydmVyYWwgaHVuZHJlZHMgb2YgTUIgaW4g
c2l6ZS4gSSdtIGNvbmZ1c2VkIHRoYXQgd2h5IGRvbid0IHVzZSBsaW5rIGZpbGUgdHlwZSB0byBp
bnN0ZWFkIG9mIGR1cGxpY2F0ZSBjb3BpZXMsIHdoaWNoIGNhbiBzYXZlIHRlbnMgb2YgR0Igc2l6
ZS4gSSBrbm93IHRoYXQgZGlzayBjYXBhY2l0eSBzaG91bGQgbm90IGJlIGEgY29uY2VybiBidXQg
aXQncyBhbHdheXMgd2VsY29tZSB0byBoYXZlIGEgc21hbGwgc2l6ZSBwcm9qZWN0LjwvZGl2Pjxk
aXYgc3R5bGU9Im1hcmdpbjowOyI+PGJyPjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+Qi5S
LjwvZGl2PjxkaXYgc3R5bGU9Im1hcmdpbjowOyI+TnVzPGJyPjwvZGl2PjwvZGl2Pg==

------=_Part_7966698_1184218047.1585618840433--
