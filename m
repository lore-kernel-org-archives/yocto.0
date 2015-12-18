Return-Path: <groovy@mail.ru>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15485E00B83; Fri, 18 Dec 2015 05:47:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLYTO,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (groovy[at]mail.ru)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.69.140.244 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 1.0 FREEMAIL_REPLYTO Reply-To/From or Reply-To/body contain different
	*      freemails
X-Greylist: delayed 11495 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Dec 2015 05:47:01 PST
Received: from f348.i.mail.ru (f348.i.mail.ru [217.69.140.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95DEBE00321
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 05:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail2; 
	h=References:In-Reply-To:Content-Type:Message-ID:Reply-To:Date:MIME-Version:Subject:Cc:To:From;
	bh=gIqs+cPTUMskSBnuxgvBncLf8/7nnvIADgJrpK/hn8c=; 
	b=j6UEpiZwIEQOfgtH5Rb4jZowQ7Ij/RB4m/TO7aytFjx/y0P1pPdLU/4g1wrs8yBht+nKep93Z67LfByR4K9wGCcHNEqCaMcInINs86NfxFXPpfgz0yJRtn1pW9l+GLVal/G5pZlJ/e2WYIUA9oYhwS6UyhBUUY8bjOgsQnpEP+o=;
Received: from [93.120.193.123] (ident=mail)
	by f348.i.mail.ru with local (envelope-from <groovy@mail.ru>)
	id 1a9vN5-0002yd-9E; Fri, 18 Dec 2015 16:46:59 +0300
Received: from [93.120.193.123] by e.mail.ru with HTTP;
	Fri, 18 Dec 2015 16:46:59 +0300
From: =?UTF-8?B?0JXQstCz0LXQvdC40Lkg0JDRgdGC0LDRhNGM0LXQsg==?= <groovy@mail.ru>
To: =?UTF-8?B?TWFydGluIEphbnNh?= <martin.jansa@gmail.com>
MIME-Version: 1.0
X-Mailer: Mail.Ru Mailer 1.0
X-Originating-IP: [93.120.193.123]
Date: Fri, 18 Dec 2015 16:46:59 +0300
X-Priority: 3 (Normal)
Message-ID: <1450446419.675586648@f348.i.mail.ru>
X-Mras: Ok
X-Spam: undefined
In-Reply-To: <20151218130721.GH2563@jama>
References: <1450434924.569396788@f354.i.mail.ru> <20151218130721.GH2563@jama>
Cc: yocto@yoctoproject.org
Subject: Re: Different *.so content in recipe and rootfs
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: =?UTF-8?B?0JXQstCz0LXQvdC40Lkg0JDRgdGC0LDRhNGM0LXQsg==?=
	<groovy@mail.ru>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 Dec 2015 13:47:08 -0000
Content-Type: multipart/alternative;
	boundary="--ALT--FIrSSQplDl8OpR82tByNSY9yph1hYXr31450446419"

----ALT--FIrSSQplDl8OpR82tByNSY9yph1hYXr31450446419
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: base64

IFllcywgSSBoYXZlIGJ1aWxkc3RhdHMsIGltYWdlLW1rbGlicywgaW1hZ2UtcHJlbGluawoKCgo+
0J/Rj9GC0L3QuNGG0LAsIDE4INC00LXQutCw0LHRgNGPIDIwMTUsIDE0OjA3ICswMTowMCDQvtGC
IE1hcnRpbiBKYW5zYSA8bWFydGluLmphbnNhQGdtYWlsLmNvbT46Cj4KPk9uIEZyaSwgRGVjIDE4
LCAyMDE1IGF0IDAxOjM1OjI0UE0gKzAzMDAsINCV0LLQs9C10L3QuNC5INCQ0YHRgtCw0YTRjNC1
0LIgd3JvdGU6Cj4+ICBIaSwKPj4gCj4+IFlvY3RvIDIuMAo+PiAKPj4gSSBoYXZlIGEgcmVjaXBl
IHF0YmFzZS4KPj4gCj4+IFJFQ0lQRSBTSURFOgo+PiBGaWxlIC9wYWNrYWdlcy1zcGxpdC9xdGJh
c2UvdXNyL2xpYi9saWJRdDVDb3JlLnNvLjUuNS4xCj4+IFNpemU6IDUxODY3NjAKPj4gVGltZTog
MDE6MjEKPj4gwqAKPj4gUk9PVEZTIFNJREU6Cj4+IEZpbGUgL3Vzci9saWIvbGliUXQ1Q29yZS5z
by41LjUuMQo+PiBTaXplOiA1MjA2MDgwCj4+IFRpbWU6IDAxOjIxCj4KPkRvIHlvdSBoYXBwZW4g
dG8gaGF2ZSBwcmVsaW5rIGVuYWJsZWQgZm9yIHlvdXIgaW1hZ2U/Cj4KPj4gVGhlIFNESyBjb25z
dHJ1Y3RlZCBieSAtYyBwb3B1bGF0ZV9zZGsgaGFzIHNhbWUgdmVyc2lvbiBvZiBmaWxlIGFzIGEg
cmVjaXBlIHNpZGUgaGFzLgo+PiBBY3R1YWxseSBJIGhhdmUgbm8gZmlsZSB3aXRoIHNpemUgNTIw
MDY4MCBhbnl3aGVyZSBpbiBteSAvdG1wIGRpci4gVGhlIG9ubHkgcGxhY2UgaXQgZXhpc3RzIC0g
cm9vdGZzIGltYWdlLsKgCj4+IMKgCj4+IEkgaGF2ZSBtYW55IHN1Y2ggZGlmZmVyZW5jaWVzLCBp
bmNsdWRpbmcgbGliYy4KPj4gCj4+IFRoZSBpbWFnZSB3b3Jrcy4gUXQgd29ya3MuIExvY2FsIGRl
YnVnZ2luZyBpbiBhIGRldmljZSBjb25zb2xlIHdvcmtzLgo+PiBSZW1vdGUgZGVidWdnaW5nIGZh
aWxzLiBUaGUgZGVidWdnZXIgc2F5cyBJIGhhdmUgZGlmZmVyZW50IHZlcnNpb25zIG9mIGxpYnMg
aW4gbXkgU0RLJ3Mgc3lzcm9vdCBhbmQgdGhlIGRldmljZS4KPj4gCj4+IElmIEkgdmlldyB0aGUg
ZmlsZXMgaW4gTUMncyB2aWV3ZXIgLSBpdCBzaG93cyB0aGUgc2FtZSBmdW5jdGlvbiBuYW1lcywg
YnV0IGRpZmZlcmVudCBhZGRyZXNzZXMuCj4+IAo+PiBJZiBJIHB1dCB0aGUgZmlsZSBsaWJRdDVD
b3JlLnNvLjUuNS4xwqBmcm9tIHRoZSByZWNpcGUgdG8gcm9vdGZzIG1hbnVhbGx5IC0gaW1hZ2Ug
c3RpbGwgd29ya3MuIFJlbW90ZSBkZWJ1Z2dlciByZXBvcnRzIG5vIGVycm9ycy4KPj4gCj4+IEJ1
dCBJIHN0aWxsIHdhbnQgdG8gY2xlYXIgb3V0IHdoYXQncyBnb2luZyBvbiBhbmQgaG93IHRvIG1h
a2UgZGVidWdnYWJsZSBpbWFnZSB3Lm8uIGhhbmQgbWFuaXB1bGF0aW9ucy4KPj4gCj4+IEJUVyBJ
IGRpZCBhIGZ1bGwgcmVidWlsZCBvZiB0aGUgaW1hZ2UuIE5vIHN1Y2Nlc3MsIGxpYnMgYXJlIHN0
aWxsIGRpZmZlcmVudAo+PiAKPj4gQW55IGhlbHAgaXMgYXBwcmVjaWF0ZWQuCj4+IAo+PiBFdWdl
bmUKPgo+PiAtLSAKPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4geW9jdG8gbWFpbGluZyBsaXN0Cj4+ICB5b2N0b0B5b2N0b3Byb2plY3Qub3JnCj4+
ICBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8KPgo+Cj4tLSAK
Pk1hcnRpbiAnSmFNYScgSmFuc2EgICAgIGphYmJlcjogIE1hcnRpbi5KYW5zYUBnbWFpbC5jb20K
Cg==

----ALT--FIrSSQplDl8OpR82tByNSY9yph1hYXr31450446419
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

CjxIVE1MPjxCT0RZPlllcywgSSBoYXZlIGJ1aWxkc3RhdHMsIGltYWdlLW1rbGlicywgaW1hZ2Ut
cHJlbGluazxicj48cHJlIHN0eWxlPSJtYXJnaW4tdG9wOiAwcHg7IHBhZGRpbmc6IDVweDsgYm9y
ZGVyOiAwcHg7IGZvbnQtc2l6ZTogMTNweDsgb3ZlcmZsb3c6IGF1dG87IHdpZHRoOiBhdXRvOyBt
YXgtaGVpZ2h0OiA2MDBweDsgZm9udC1mYW1pbHk6IENvbnNvbGFzLCBNZW5sbywgTW9uYWNvLCAn
THVjaWRhIENvbnNvbGUnLCAnTGliZXJhdGlvbiBNb25vJywgJ0RlamFWdSBTYW5zIE1vbm8nLCAn
Qml0c3RyZWFtIFZlcmEgU2FucyBNb25vJywgJ0NvdXJpZXIgTmV3JywgbW9ub3NwYWNlLCBzYW5z
LXNlcmlmOyB3b3JkLXdyYXA6IG5vcm1hbDsgY29sb3I6ICMyMjI0MjY7IGJhY2tncm91bmQtY29s
b3I6ICNlZWVlZWU7IiBkYXRhLW1jZS1zdHlsZT0ibWFyZ2luLXRvcDogMHB4OyBwYWRkaW5nOiA1
cHg7IGJvcmRlcjogMHB4OyBmb250LXNpemU6IDEzcHg7IG92ZXJmbG93OiBhdXRvOyB3aWR0aDog
YXV0bzsgbWF4LWhlaWdodDogNjAwcHg7IGZvbnQtZmFtaWx5OiBDb25zb2xhcywgTWVubG8sIE1v
bmFjbywgJ0x1Y2lkYSBDb25zb2xlJywgJ0xpYmVyYXRpb24gTW9ubycsICdEZWphVnUgU2FucyBN
b25vJywgJ0JpdHN0cmVhbSBWZXJhIFNhbnMgTW9ubycsICdDb3VyaWVyIE5ldycsIG1vbm9zcGFj
ZSwgc2Fucy1zZXJpZjsgd29yZC13cmFwOiBub3JtYWw7IGNvbG9yOiAjMjIyNDI2OyBiYWNrZ3Jv
dW5kLWNvbG9yOiAjZWVlZWVlOyI+PGNvZGUgc3R5bGU9Im1hcmdpbjogMHB4OyBwYWRkaW5nOiAw
cHg7IGJvcmRlcjogMHB4OyBmb250LWZhbWlseTogQ29uc29sYXMsIE1lbmxvLCBNb25hY28sICdM
dWNpZGEgQ29uc29sZScsICdMaWJlcmF0aW9uIE1vbm8nLCAnRGVqYVZ1IFNhbnMgTW9ubycsICdC
aXRzdHJlYW0gVmVyYSBTYW5zIE1vbm8nLCAnQ291cmllciBOZXcnLCBtb25vc3BhY2UsIHNhbnMt
c2VyaWY7IHdoaXRlLXNwYWNlOiBpbmhlcml0OyIgZGF0YS1tY2Utc3R5bGU9Im1hcmdpbjogMHB4
OyBwYWRkaW5nOiAwcHg7IGJvcmRlcjogMHB4OyBmb250LWZhbWlseTogQ29uc29sYXMsIE1lbmxv
LCBNb25hY28sICdMdWNpZGEgQ29uc29sZScsICdMaWJlcmF0aW9uIE1vbm8nLCAnRGVqYVZ1IFNh
bnMgTW9ubycsICdCaXRzdHJlYW0gVmVyYSBTYW5zIE1vbm8nLCAnQ291cmllciBOZXcnLCBtb25v
c3BhY2UsIHNhbnMtc2VyaWY7IHdoaXRlLXNwYWNlOiBpbmhlcml0OyI+PGJyPjwvY29kZT48L3By
ZT48YnI+PGJyPjxibG9ja3F1b3RlIHN0eWxlPSJib3JkZXItbGVmdDoxcHggc29saWQgIzA4NTdB
NjsgbWFyZ2luOjEwcHg7IHBhZGRpbmc6MCAwIDAgMTBweDsiPgoJ0J/Rj9GC0L3QuNGG0LAsIDE4
INC00LXQutCw0LHRgNGPIDIwMTUsIDE0OjA3ICswMTowMCDQvtGCIE1hcnRpbiBKYW5zYSAmbHQ7
bWFydGluLmphbnNhQGdtYWlsLmNvbSZndDs6PGJyPgoJPGJyPgoJPGRpdiBpZD0iIj4KCQoKCgog
ICAgCgoKCgoKCgoKCgoKCQoJCgoKCQoJCgkKCgkKCgkKCQoKCQoKCQoJCgoKCjxkaXYgY2xhc3M9
ImpzLWhlbHBlciBqcy1yZWFkbXNnLW1zZyI+Cgk8c3R5bGUgdHlwZT0idGV4dC9jc3MiPjwvc3R5
bGU+CiAJPGRpdj4KCQk8YmFzZSB0YXJnZXQ9Il9zZWxmIiBocmVmPSJodHRwczovL2UubWFpbC5y
dS8iPgoJCQogICAgICAgICAgICA8ZGl2IGlkPSJzdHlsZV8xNDUwNDQzODkwMDAwMDAwMDExM19C
T0RZIj5PbiBGcmksIERlYyAxOCwgMjAxNSBhdCAwMTozNToyNFBNICswMzAwLCDQldCy0LPQtdC9
0LjQuSDQkNGB0YLQsNGE0YzQtdCyIHdyb3RlOjxicj4KJmd0OyAgSGksPGJyPgomZ3Q7IDxicj4K
Jmd0OyBZb2N0byAyLjA8YnI+CiZndDsgPGJyPgomZ3Q7IEkgaGF2ZSBhIHJlY2lwZSBxdGJhc2Uu
PGJyPgomZ3Q7IDxicj4KJmd0OyBSRUNJUEUgU0lERTo8YnI+CiZndDsgRmlsZSAvcGFja2FnZXMt
c3BsaXQvcXRiYXNlL3Vzci9saWIvbGliUXQ1Q29yZS5zby41LjUuMTxicj4KJmd0OyBTaXplOiA1
MTg2NzYwPGJyPgomZ3Q7IFRpbWU6IDAxOjIxPGJyPgomZ3Q7ICZuYnNwOzxicj4KJmd0OyBST09U
RlMgU0lERTo8YnI+CiZndDsgRmlsZSAvdXNyL2xpYi9saWJRdDVDb3JlLnNvLjUuNS4xPGJyPgom
Z3Q7IFNpemU6IDUyMDYwODA8YnI+CiZndDsgVGltZTogMDE6MjE8YnI+Cjxicj4KRG8geW91IGhh
cHBlbiB0byBoYXZlIHByZWxpbmsgZW5hYmxlZCBmb3IgeW91ciBpbWFnZT88YnI+Cjxicj4KJmd0
OyBUaGUgU0RLIGNvbnN0cnVjdGVkIGJ5IC1jIHBvcHVsYXRlX3NkayBoYXMgc2FtZSB2ZXJzaW9u
IG9mIGZpbGUgYXMgYSByZWNpcGUgc2lkZSBoYXMuPGJyPgomZ3Q7IEFjdHVhbGx5IEkgaGF2ZSBu
byBmaWxlIHdpdGggc2l6ZSA1MjAwNjgwIGFueXdoZXJlIGluIG15IC90bXAgZGlyLiBUaGUgb25s
eSBwbGFjZSBpdCBleGlzdHMgLSByb290ZnMgaW1hZ2UuJm5ic3A7PGJyPgomZ3Q7ICZuYnNwOzxi
cj4KJmd0OyBJIGhhdmUgbWFueSBzdWNoIGRpZmZlcmVuY2llcywgaW5jbHVkaW5nIGxpYmMuPGJy
PgomZ3Q7IDxicj4KJmd0OyBUaGUgaW1hZ2Ugd29ya3MuIFF0IHdvcmtzLiBMb2NhbCBkZWJ1Z2dp
bmcgaW4gYSBkZXZpY2UgY29uc29sZSB3b3Jrcy48YnI+CiZndDsgUmVtb3RlIGRlYnVnZ2luZyBm
YWlscy4gVGhlIGRlYnVnZ2VyIHNheXMgSSBoYXZlIGRpZmZlcmVudCB2ZXJzaW9ucyBvZiBsaWJz
IGluIG15IFNESydzIHN5c3Jvb3QgYW5kIHRoZSBkZXZpY2UuPGJyPgomZ3Q7IDxicj4KJmd0OyBJ
ZiBJIHZpZXcgdGhlIGZpbGVzIGluIE1DJ3Mgdmlld2VyIC0gaXQgc2hvd3MgdGhlIHNhbWUgZnVu
Y3Rpb24gbmFtZXMsIGJ1dCBkaWZmZXJlbnQgYWRkcmVzc2VzLjxicj4KJmd0OyA8YnI+CiZndDsg
SWYgSSBwdXQgdGhlIGZpbGUgbGliUXQ1Q29yZS5zby41LjUuMSZuYnNwO2Zyb20gdGhlIHJlY2lw
ZSB0byByb290ZnMgbWFudWFsbHkgLSBpbWFnZSBzdGlsbCB3b3Jrcy4gUmVtb3RlIGRlYnVnZ2Vy
IHJlcG9ydHMgbm8gZXJyb3JzLjxicj4KJmd0OyA8YnI+CiZndDsgQnV0IEkgc3RpbGwgd2FudCB0
byBjbGVhciBvdXQgd2hhdCdzIGdvaW5nIG9uIGFuZCBob3cgdG8gbWFrZSBkZWJ1Z2dhYmxlIGlt
YWdlIHcuby4gaGFuZCBtYW5pcHVsYXRpb25zLjxicj4KJmd0OyA8YnI+CiZndDsgQlRXIEkgZGlk
IGEgZnVsbCByZWJ1aWxkIG9mIHRoZSBpbWFnZS4gTm8gc3VjY2VzcywgbGlicyBhcmUgc3RpbGwg
ZGlmZmVyZW50PGJyPgomZ3Q7IDxicj4KJmd0OyBBbnkgaGVscCBpcyBhcHByZWNpYXRlZC48YnI+
CiZndDsgPGJyPgomZ3Q7IEV1Z2VuZTxicj4KPGJyPgomZ3Q7IC0tIDxicj4KJmd0OyBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4KJmd0OyB5b2N0byBt
YWlsaW5nIGxpc3Q8YnI+CiZndDsgPGEgaHJlZj0iL2NvbXBvc2U/VG89eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+CiZndDsgPGEgaHJlZj0iaHR0
cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvIiB0YXJnZXQ9Il9ibGFu
ayI+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvPC9hPjxicj4K
PGJyPgo8YnI+Ci0tIDxicj4KTWFydGluICdKYU1hJyBKYW5zYSAgICAgamFiYmVyOiA8YSBocmVm
PSIvY29tcG9zZT9Ubz1NYXJ0aW4uSmFuc2FAZ21haWwuY29tIj5NYXJ0aW4uSmFuc2FAZ21haWwu
Y29tPC9hPjxicj4KPC9kaXY+CiAgICAgICAgICAgIAogICAgICAgIAoJCTxiYXNlIHRhcmdldD0i
X3NlbGYiIGhyZWY9Imh0dHBzOi8vZS5tYWlsLnJ1LyI+Cgk8L2Rpdj4KCgkKPC9kaXY+CgoKPC9k
aXY+CjwvYmxvY2txdW90ZT4KPGJyPjwvQk9EWT48L0hUTUw+Cg==

----ALT--FIrSSQplDl8OpR82tByNSY9yph1hYXr31450446419--
