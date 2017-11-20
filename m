Return-Path: <cddatemp@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9743CE00D2C; Mon, 20 Nov 2017 03:06:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82BE1E00D23
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=LekPi
	+5pz1VANkoDF8kjOjmmPp0mOoTKueDcDdh0z6I=; b=gEZQ4uSeHPMu+Wei53Tc6
	M+TR8TE2mWWmOHXNf2E1hOZA/MLo3YL2o2xJTJJOfnBUKg93f8roTAh6nuyIuvA8
	euOyRj+ynqbrpclDR1MlvJVNSGelBla2OMfIPQwmc1alBcnMXkxUpMSpjBVW/Iii
	Al8HlHD0Q74v3SK0NrdNok=
Received: from cddatemp$163.com ( [123.185.215.210] ) by
	ajax-webmail-wmsvr15 (Coremail) ; Mon, 20 Nov 2017 19:06:40 +0800 (CST)
X-Originating-IP: [123.185.215.210]
Date: Mon, 20 Nov 2017 19:06:40 +0800 (CST)
From: cddatemp  <cddatemp@163.com>
To: "Amit Gondaliya" <amit.gondaliya@einfochips.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20160729(86883.8884) Copyright (c) 2002-2017 www.mailtech.cn 163com
In-Reply-To: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
References: <HK2PR02MB115589BB4412D154E57FAF93FE220@HK2PR02MB1155.apcprd02.prod.outlook.com>
MIME-Version: 1.0
Message-ID: <771e4475.9ac8.15fd91bd280.Coremail.cddatemp@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: D8GowABHXYhAtxJaYjkKAA--.2228W
X-CM-SenderInfo: pfggt3xhpsqiywtou0bp/1tbiuw+WdFO-6VhAiQABsD
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build Issue in pyro 2.3
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
X-List-Received-Date: Mon, 20 Nov 2017 11:06:49 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_145190_1009369771.1511176000128"

------=_Part_145190_1009369771.1511176000128
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

QXQgMjAxNy0xMS0yMCAxODoxODo0MiwgIkFtaXQgR29uZGFsaXlhIiA8YW1pdC5nb25kYWxpeWFA
ZWluZm9jaGlwcy5jb20+IHdyb3RlOgo+IEhlbGxvLAo+Cj4gSSBhbSBjb25maWd1cmluZyBvbmUg
IHBhY2thZ2UgIlgiIHRoYXQgaXMgZGVwZW5kZWQgb24gb3RoZXIgIHBhY2thZ2UgIlkiLgo+Cj4g
dGhlICJZIiBwYWNrYWdlIGlzIHN1Y2Nlc3NmdWxseSBidWlsZCBhbmQgSSBhbSBhYmxlIHRvIGZp
bmQgaXQgaW50byB0aGUgYmVsb3cgcGF0aC4KPgo+IDx3b3Jrc3BhY2U+dG1wL3dvcmsvY29ydGV4
YThoZi1uZW9uLXBva3ktbGludXgtZ251ZWFiaS8iWSIvMC4xLjAtcjEvcmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlL3Vzci9iaW4KPgo+IEFzIHBlciBteSB1bmRlcnN0YW5kaW5nIGlmIHRoZSBwYWNrYWdl
ICJYIiBpcyBkZXBlbmRlZCBvbiB0aGUgcGFja2FnZSAiWSIgCj4gdGhlbiBhbGwgdGhlIGNvbXBv
bmVudHMgb2YgdGhlIHBhY2thZ2UgIlkiIHNob3VsZCBiZSBjb3BpZWQgaW50byB0aGUgcGF0aCAi
cmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4iIG9mIHRoZSBwYWNrYWdlICJYIi4KPgoKCklm
ICJZIiBpcyAiWS1uYXRpdmUiLCB0aGVuIGl0IHNob3VsZCBiZSBpbiAicmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlIi4KSWYgaXQgaXMganVzdCAiWSIsIHRoZW4gaXQgc2hvdWxkIGJlIGluICJyZWNpcGUt
c3lzcm9vdCIuCgoKPiBCdXQgSSBhbSBub3QgYWJsZSB0byBmaW5kIHRoZSBkZXBlbmRlZCBwYWNr
YWdlICJZIiBpbnRvIHRoZSByZWNpcGUtc3lzcm9vdC1uYXRpdmUgb2YgdGhlIFBhY2thZ2UgIlgi
Lgo+Cj4gSWYgSSBteSB1bmRlcnN0YW5kaW5nIGlzIGZhbHNlIGxldCBtZSBrbm93IHRoZSBjb3Jy
ZWN0IHdheSB0byBkbyB0aGlzLgo+IEFzIEkgYW0gbm90IGFibGUgdG8gZmluZCB0aGUgcGFja2Fn
ZSAiWSIgaW50byB0aGUgZGlyICJyZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2JpbiIgb2YgcGFj
a2FnZSAiWCIKPgo+IHRoYW5rcwo+IEFtaXQgRy4KPgo+IEJlc3QgUmVnYXJkcywKPiBBbWl0IEdv
bmRhbGl5YQoK

------=_Part_145190_1009369771.1511176000128
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxkaXY+QXQgMjAxNy0xMS0yMCAxODoxODo0MiwgIkFtaXQgR29u
ZGFsaXlhIiAmbHQ7YW1pdC5nb25kYWxpeWFAZWluZm9jaGlwcy5jb20mZ3Q7IHdyb3RlOjwvZGl2
PjxkaXY+Jmd0OyBIZWxsbyw8L2Rpdj48ZGl2PiZndDs8L2Rpdj48ZGl2PiZndDsgSSBhbSBjb25m
aWd1cmluZyBvbmUgJm5ic3A7cGFja2FnZSAiWCIgdGhhdCBpcyBkZXBlbmRlZCBvbiBvdGhlciAm
bmJzcDtwYWNrYWdlICJZIi48L2Rpdj48ZGl2PiZndDs8L2Rpdj48ZGl2PiZndDsgdGhlICJZIiBw
YWNrYWdlIGlzIHN1Y2Nlc3NmdWxseSBidWlsZCBhbmQgSSBhbSBhYmxlIHRvIGZpbmQgaXQgaW50
byB0aGUgYmVsb3cgcGF0aC48L2Rpdj48ZGl2PiZndDs8L2Rpdj48ZGl2PiZndDsgJmx0O3dvcmtz
cGFjZSZndDt0bXAvd29yay9jb3J0ZXhhOGhmLW5lb24tcG9reS1saW51eC1nbnVlYWJpLyJZIi8w
LjEuMC1yMS9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2JpbjwvZGl2PjxkaXY+Jmd0OzwvZGl2
PjxkaXY+Jmd0OyBBcyBwZXIgbXkgdW5kZXJzdGFuZGluZyBpZiB0aGUgcGFja2FnZSAiWCIgaXMg
ZGVwZW5kZWQgb24gdGhlIHBhY2thZ2UgIlkiJm5ic3A7PC9kaXY+PGRpdj4mZ3Q7IHRoZW4gYWxs
IHRoZSBjb21wb25lbnRzIG9mIHRoZSBwYWNrYWdlICJZIiBzaG91bGQgYmUgY29waWVkIGludG8g
dGhlIHBhdGggInJlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluIiBvZiB0aGUgcGFja2FnZSAi
WCIuPC9kaXY+PGRpdj4mZ3Q7PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JZiAiWSIgaXMgIlkt
bmF0aXZlIiwgdGhlbiBpdCBzaG91bGQgYmUgaW4gInJlY2lwZS1zeXNyb290LW5hdGl2ZSIuPC9k
aXY+PGRpdj5JZiBpdCBpcyBqdXN0ICJZIiwgdGhlbiBpdCBzaG91bGQgYmUgaW4gInJlY2lwZS1z
eXNyb290Ii48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PiZndDsgQnV0IEkgYW0gbm90IGFibGUg
dG8gZmluZCB0aGUgZGVwZW5kZWQgcGFja2FnZSAiWSIgaW50byB0aGUgcmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlIG9mIHRoZSBQYWNrYWdlICJYIi48L2Rpdj48ZGl2PiZndDs8L2Rpdj48ZGl2PiZndDsg
SWYgSSBteSB1bmRlcnN0YW5kaW5nIGlzIGZhbHNlIGxldCBtZSBrbm93IHRoZSBjb3JyZWN0IHdh
eSB0byBkbyB0aGlzLjwvZGl2PjxkaXY+Jmd0OyBBcyBJIGFtIG5vdCBhYmxlIHRvIGZpbmQgdGhl
IHBhY2thZ2UgIlkiIGludG8gdGhlIGRpciAicmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW4i
IG9mIHBhY2thZ2UgIlgiPC9kaXY+PGRpdj4mZ3Q7PC9kaXY+PGRpdj4mZ3Q7IHRoYW5rczwvZGl2
PjxkaXY+Jmd0OyBBbWl0IEcuPC9kaXY+PGRpdj4mZ3Q7PC9kaXY+PGRpdj4mZ3Q7IEJlc3QgUmVn
YXJkcyw8L2Rpdj48ZGl2PiZndDsgQW1pdCBHb25kYWxpeWE8L2Rpdj48ZGl2Pjxicj48L2Rpdj48
c3R5bGUgdHlwZT0idGV4dC9jc3MiIHN0eWxlPSJkaXNwbGF5Om5vbmU7Ij48IS0tIFAge21hcmdp
bi10b3A6MDttYXJnaW4tYm90dG9tOjA7fSAtLT48L3N0eWxlPjwvZGl2Pg==

------=_Part_145190_1009369771.1511176000128--
