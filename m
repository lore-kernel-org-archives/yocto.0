Return-Path: <huanmateme@163.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41904E0089B; Sun, 23 Nov 2014 20:49:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (huanmateme[at]163.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Sun, 23 Nov 2014 20:49:47 PST
Received: from m13-77.163.com (m13-77.163.com [220.181.13.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BF6CE00863
	for <yocto@yoctoproject.org>; Sun, 23 Nov 2014 20:49:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=diEKQ
	qsOhgj/aGm4U4xgXk6RXDQHKLaYyMZs7cLBMJM=; b=GN2/6WWisuOpiWT5UxMKc
	FC3FJ1k/UzDAZ9Tf4ybX+EzdsSNpramuLtNgr7Y+VSBoz7lJj0wnQAMRrAwL8Pp2
	ySxYp3dLM+TwwLrl8XAC5k1BURvAEZ+fUCPNDaPq8xz3nCmbbfuRhh+2Xpg2pMpP
	EyTpl6hPn6GSrp1bc8R0TI=
Received: from huanmateme$163.com ( [123.117.39.251] ) by
	ajax-webmail-wmsvr77 (Coremail) ; Mon, 24 Nov 2014 12:34:31 +0800 (CST)
X-Originating-IP: [123.117.39.251]
Date: Mon, 24 Nov 2014 12:34:31 +0800 (CST)
From: Biao  <huanmateme@163.com>
To: "Tom Zanussi" <tom.zanussi@intel.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20140915(28949.6690) Copyright (c) 2002-2014 www.mailtech.cn 163com
In-Reply-To: <1416770590.29940.4.camel@picadillo>
References: <33c36dfd.5d02.149dd26d066.Coremail.huanmateme@163.com>
	<1416770590.29940.4.camel@picadillo>
MIME-Version: 1.0
Message-ID: <b5e0969.c3cd.149e0145e72.Coremail.huanmateme@163.com>
X-CM-TRANSID: TcGowECpfkJYtXJU6m4FAA--.4021W
X-CM-SenderInfo: xkxd0z5dwhzvi6rwjhhfrp/xtbBSQhOgFD+S5E7GQABsY
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: yocto@yoctoproject.org
Subject: Re: Running "yocto-bsp create .." in the source directory(poky) brings up an error. "poky directory vs build directory"
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
X-List-Received-Date: Mon, 24 Nov 2014 04:49:57 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_214528_1215413155.1416803671666"

------=_Part_214528_1215413155.1416803671666
Content-Type: text/plain; charset=GBK
Content-Transfer-Encoding: base64

CkF0IDIwMTQtMTEtMjQgMDM6MjM6MTAsICJUb20gWmFudXNzaSIgPHRvbS56YW51c3NpQGludGVs
LmNvbT4gd3JvdGU6Cj5IaSwKPgo+T24gU3VuLCAyMDE0LTExLTIzIGF0IDIyOjU1ICswODAwLCBC
aWFvIHdyb3RlOgo+PiBIaSBhbGwsCj4+IEkgYW0gZG9pbmcgZXhjaXNlcyBmb2xsb3dpbmcgdGhp
cyBzZWN0aW9uCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gaHR0cDovL3d3dy55b2N0b3Byb2plY3Qub3Jn
L2RvY3MvMS43L2JzcC1ndWlkZS9ic3AtZ3VpZGUuaHRtbCNjcmVhdGluZy1hLW5ldy1ic3AtbGF5
ZXItdXNpbmctdGhlLXlvY3RvLWJzcC1zY3JpcHQKPj4gMS42LjIuIENyZWF0aW5nIGEgbmV3IEJT
UCBMYXllciBVc2luZyB0aGUgeW9jdG8tYnNwIFNjcmlwdAo+PiAuLi4KPj4gICQgeW9jdG8tYnNw
IGNyZWF0ZSBteWFybSBxZW11Cj4+IC4uLi4KPj4gQnkgZGVmYXVsdCwgdGhlIHNjcmlwdCBjcmVh
dGVzIHRoZSBuZXcgQlNQIExheWVyIGluIHRoZSBjdXJyZW50Cj4+IHdvcmtpbmcgZGlyZWN0b3J5
IG9mIHRoZSAgU291cmNlIERpcmVjdG9yeSAsIHdoaWNoIGlzICBwb2t5ICBpbiB0aGlzCj4+IGNh
c2UuIAo+PiAuLi4uCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+PiBUbyBteSB1bmRlcnN0YW5kLCBpdCBtZWFu
cyBhZnRlciAic291cmNlIG9lLWluaXQtYnVpbGQtZW52IG15YnVpbGQiLCBpCj4+IHNob3VsZCBj
aGFuZ2UgdG8gdGhlIHBva3kgZGlyZWN0b3J5IHRvIHJ1biB0aGUgInlvY3RvLWJzcCBjcmVhdGUg
Li4uIgo+PiBjb21tYW5kLAo+Cj5ZZXMsIHRoZSBkb2N1bWVudGF0aW9uIGlzIG1pc2xlYWRpbmcg
LSB5b2N0by1ic3AgYXNzdW1lcyB5b3UncmUgaW4gdGhlCj5idWlsZCBkaXJlY3RvcnkgYWZ0ZXIg
eW91J3ZlIHNvdXJjZWQgb2UtaW5pdC1idWlsZC1lbnYsIGFuZCBub3QgdGhlIHBva3kKPmRpci4K
PgoKPlRvbQoKCkkgc2VlLCB0aGFua3MgZm9yIHlvdSBoZWxwLCBUb20uCgoKSmVycnkKPgo+PiBo
b3dldmVyLCBpIGdvdCBhbiBlcnJvciAgCj4+ICIgRG8geW91IG5lZWQgYSBuZXcgbWFjaGluZSBi
cmFuY2ggZm9yIHRoaXMgQlNQICh0aGUgYWx0ZXJuYXRpdmUgaXMgdG8KPj4gcmUtdXNlIGFuIGV4
aXN0aW5nIGJyYW5jaCk/IFt5L25dIFtkZWZhdWx0OiB5XSAKPj4gVGhlIEJCUEFUSCB2YXJpYWJs
ZSBpcyBub3Qgc2V0IGFuZCBiaXRiYWtlIGRpZCBub3QgZmluZCBhCj4+IGNvbmYvYmJsYXllcnMu
Y29uZiBmaWxlIGluIHRoZSBleHBlY3RlZCBsb2NhdGlvbi4KPj4gTWF5YmUgeW91IGFjY2lkZW50
YWxseSBpbnZva2VkIGJpdGJha2UgZnJvbSB0aGUgd3JvbmcgZGlyZWN0b3J5Pwo+PiBDb3VsZG4n
dCBmaW5kIEJCTEFZRVJTIGluIGJpdGJha2UgLWUgb3V0cHV0LCBleGl0aW5nLiIgCj4+IEl0IHNl
ZW1zIGl0IGlzIGFza2luZyBtZSB0byBydW4gInlvY3RvLWJzcCBjcmVhdGUgLi4uIiBpbiB0aGUg
YnVpbGQKPj4gZGlyZWN0b3J5Cj4+IAo+PiAKPj4gV2hpY2ggb25lIGlzIGNvcnJlY3Q/IERvIHdl
IGhhdmUgYSB3cm9uZyBkb2N1bWVudD8KPj4gCj4+IAo+PiBUaGFua3MsCj4+IEplcnJ5IAo+PiAK
Pj4gCj4KPgo=

------=_Part_214528_1215413155.1416803671666
Content-Type: text/html; charset=GBK
Content-Transfer-Encoding: base64

PGRpdiBzdHlsZT0ibGluZS1oZWlnaHQ6MS43O2NvbG9yOiMwMDAwMDA7Zm9udC1zaXplOjE0cHg7
Zm9udC1mYW1pbHk6QXJpYWwiPjxwcmU+PGJyPkF0IDIwMTQtMTEtMjQgMDM6MjM6MTAsICJUb20g
WmFudXNzaSIgJmx0O3RvbS56YW51c3NpQGludGVsLmNvbSZndDsgd3JvdGU6CiZndDtIaSwKJmd0
OwomZ3Q7T24gU3VuLCAyMDE0LTExLTIzIGF0IDIyOjU1ICswODAwLCBCaWFvIHdyb3RlOgomZ3Q7
Jmd0OyBIaSBhbGwsCiZndDsmZ3Q7IEkgYW0gZG9pbmcgZXhjaXNlcyBmb2xsb3dpbmcgdGhpcyBz
ZWN0aW9uCiZndDsmZ3Q7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KJmd0OyZndDsgaHR0cDovL3d3dy55b2N0b3By
b2plY3Qub3JnL2RvY3MvMS43L2JzcC1ndWlkZS9ic3AtZ3VpZGUuaHRtbCNjcmVhdGluZy1hLW5l
dy1ic3AtbGF5ZXItdXNpbmctdGhlLXlvY3RvLWJzcC1zY3JpcHQKJmd0OyZndDsgMS42LjIuIENy
ZWF0aW5nIGEgbmV3IEJTUCBMYXllciBVc2luZyB0aGUgeW9jdG8tYnNwIFNjcmlwdAomZ3Q7Jmd0
OyAuLi4KJmd0OyZndDsgICQgeW9jdG8tYnNwIGNyZWF0ZSBteWFybSBxZW11CiZndDsmZ3Q7IC4u
Li4KJmd0OyZndDsgQnkgZGVmYXVsdCwgdGhlIHNjcmlwdCBjcmVhdGVzIHRoZSBuZXcgQlNQIExh
eWVyIGluIHRoZSBjdXJyZW50CiZndDsmZ3Q7IHdvcmtpbmcgZGlyZWN0b3J5IG9mIHRoZSAgU291
cmNlIERpcmVjdG9yeSAsIHdoaWNoIGlzICBwb2t5ICBpbiB0aGlzCiZndDsmZ3Q7IGNhc2UuIAom
Z3Q7Jmd0OyAuLi4uCiZndDsmZ3Q7IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQomZ3Q7Jmd0OyBUbyBteSB1bmRlcnN0
YW5kLCBpdCBtZWFucyBhZnRlciAic291cmNlIG9lLWluaXQtYnVpbGQtZW52IG15YnVpbGQiLCBp
CiZndDsmZ3Q7IHNob3VsZCBjaGFuZ2UgdG8gdGhlIHBva3kgZGlyZWN0b3J5IHRvIHJ1biB0aGUg
InlvY3RvLWJzcCBjcmVhdGUgLi4uIgomZ3Q7Jmd0OyBjb21tYW5kLAomZ3Q7CiZndDtZZXMsIHRo
ZSBkb2N1bWVudGF0aW9uIGlzIG1pc2xlYWRpbmcgLSB5b2N0by1ic3AgYXNzdW1lcyB5b3UncmUg
aW4gdGhlCiZndDtidWlsZCBkaXJlY3RvcnkgYWZ0ZXIgeW91J3ZlIHNvdXJjZWQgb2UtaW5pdC1i
dWlsZC1lbnYsIGFuZCBub3QgdGhlIHBva3kKJmd0O2Rpci4KJmd0Owo8ZGl2PiZndDtUb208L2Rp
dj48ZGl2Pjxicj48L2Rpdj48ZGl2Pkkgc2VlLCB0aGFua3MgZm9yIHlvdSBoZWxwLCBUb20uPC9k
aXY+PGRpdj48YnI+PC9kaXY+PGRpdj5KZXJyeTwvZGl2PiZndDsKJmd0OyZndDsgaG93ZXZlciwg
aSBnb3QgYW4gZXJyb3IgIAomZ3Q7Jmd0OyAiIERvIHlvdSBuZWVkIGEgbmV3IG1hY2hpbmUgYnJh
bmNoIGZvciB0aGlzIEJTUCAodGhlIGFsdGVybmF0aXZlIGlzIHRvCiZndDsmZ3Q7IHJlLXVzZSBh
biBleGlzdGluZyBicmFuY2gpPyBbeS9uXSBbZGVmYXVsdDogeV0gCiZndDsmZ3Q7IFRoZSBCQlBB
VEggdmFyaWFibGUgaXMgbm90IHNldCBhbmQgYml0YmFrZSBkaWQgbm90IGZpbmQgYQomZ3Q7Jmd0
OyBjb25mL2JibGF5ZXJzLmNvbmYgZmlsZSBpbiB0aGUgZXhwZWN0ZWQgbG9jYXRpb24uCiZndDsm
Z3Q7IE1heWJlIHlvdSBhY2NpZGVudGFsbHkgaW52b2tlZCBiaXRiYWtlIGZyb20gdGhlIHdyb25n
IGRpcmVjdG9yeT8KJmd0OyZndDsgQ291bGRuJ3QgZmluZCBCQkxBWUVSUyBpbiBiaXRiYWtlIC1l
IG91dHB1dCwgZXhpdGluZy4iIAomZ3Q7Jmd0OyBJdCBzZWVtcyBpdCBpcyBhc2tpbmcgbWUgdG8g
cnVuICJ5b2N0by1ic3AgY3JlYXRlIC4uLiIgaW4gdGhlIGJ1aWxkCiZndDsmZ3Q7IGRpcmVjdG9y
eQomZ3Q7Jmd0OyAKJmd0OyZndDsgCiZndDsmZ3Q7IFdoaWNoIG9uZSBpcyBjb3JyZWN0PyBEbyB3
ZSBoYXZlIGEgd3JvbmcgZG9jdW1lbnQ/CiZndDsmZ3Q7IAomZ3Q7Jmd0OyAKJmd0OyZndDsgVGhh
bmtzLAomZ3Q7Jmd0OyBKZXJyeSAKJmd0OyZndDsgCiZndDsmZ3Q7IAomZ3Q7CiZndDsKPC9wcmU+
PC9kaXY+

------=_Part_214528_1215413155.1416803671666--
