Return-Path: <pierrelucbuhler@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C92E1E00CBD; Mon, 24 Jun 2019 11:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pierrelucbuhler[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.174 listed in list.dnswl.org]
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 222A3E00CB9
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 11:48:50 -0700 (PDT)
Received: by mail-qk1-f174.google.com with SMTP id a27so10560470qkk.5
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2019 11:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:mime-version:from:to:subject:importance:date;
	bh=fXrR5JO+BbpziqojopxrrsWuzbkc+uQ4fMyI7mkvTdg=;
	b=otAhcFfXQkOp43RnyQQ55I21wKlbUYZswwX++yOCz+kHwjlxDFMMl5ZxUyIr2oZQoa
	jJimKlL7iu2an3FdheDoOG3UlXcOE5bO8+xSaI24eFKOJarTAJm8pLGGOisPoplWUQhX
	Aetu7MT4JVqQmtSOw5VP991Cl6TgKo50zutiqA2+aorVKDLd/5NyvxIkj1smfn8Fz2LV
	DUAA8RJXoJA8DTJfPMBza1V5aVWX39RMLkzY5ZaVapUVkGZx0YkpPqtllWvvs791gvm4
	FN7JRUYq2hBFkQwOme24EfPjUvo3JyAj+GaVy0sWG+wfL1Wq60gf81xEfZQ2Rx57gCn1
	+Hww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:mime-version:from:to:subject
	:importance:date;
	bh=fXrR5JO+BbpziqojopxrrsWuzbkc+uQ4fMyI7mkvTdg=;
	b=TvEZDBgtDaAeZPleNsBDiQqX49r1e7mUeqferCwi1AznidUuFTL7JaD02m0rN4UsyU
	uXeLLjlCxWgB4A8v0SIwpkesbFLuAPcTim1LsurZ8Xj86YOH6EUNU+s+p4Z//Y6YXk4Q
	S7JHCTMPwB8XieSPqvyn6wG6NPgniuFeDH2fRT0zF20MfZb5o//HNXPh3rtSZ/uY0PQz
	ICXRQ+ebIGEIonFgl7XhEpqMkCO9+iWM6wFzKRv7YKf+HLf79ClHjMiUodOpSwoWfINl
	2J6zEbzt+5g1Fysde9JYmo/Yw4z5HAlX2zKQek6jyVZfkU20cfl6vPlcqQHbunGhjLkr
	a09w==
X-Gm-Message-State: APjAAAWA7nVAPLV/1lYu4yOLld/RwyFF4SyE43toBq7tERRtQRuVYNyM
	NuA4AAxTYCq5a4V2Y8/B4TGy9M24
X-Google-Smtp-Source: APXvYqzqGfDWLosYoEtn6oqDhIpYoBrSYeVoUno+hDqg8It2iD+D343OLRsXee3V3owDlqeQChC6+A==
X-Received: by 2002:a37:805:: with SMTP id 5mr16880646qki.385.1561402129915;
	Mon, 24 Jun 2019 11:48:49 -0700 (PDT)
Received: from lbuhlerpl (104-200-86-250.mc.derytele.com. [104.200.86.250])
	by smtp.gmail.com with ESMTPSA id
	o71sm5647837qke.18.2019.06.24.11.48.48 for <yocto@yoctoproject.org>
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 24 Jun 2019 11:48:49 -0700 (PDT)
Message-ID: <5d111b11.1c69fb81.bbbda.d4fc@mx.google.com>
MIME-Version: 1.0
From: <pierrelucbuhler@gmail.com>
To: "=?utf-8?Q?yocto@yoctoproject.org?=" <yocto@yoctoproject.org>
Importance: Normal
Date: Mon, 24 Jun 2019 18:06:45 +0000
Subject: Are native packages dependencies listed in license.manifest?
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
X-List-Received-Date: Mon, 24 Jun 2019 18:48:51 -0000
Content-Type: multipart/alternative;
	boundary="_7E5C67DA-4E04-49D8-BF70-AD99FF9097A4_"

--_7E5C67DA-4E04-49D8-BF70-AD99FF9097A4_
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

SGksDQoNCknigJltIGN1cnJlbnRseSB3b3JraW5nIHRvIHJlbW92ZSBhbGwgR1BMdjMgcGFja2Fn
ZXMgaW5jbHVkZWQgaW4gbXkgaW1hZ2UuDQoNCkkgd2FzIHVzaW5nIHRoZSBsaWNlbnNlIG1hbmlm
ZXN0IGZpbGUgdG8gbGlzdCB0aGUgcmVtYWluaW5nIEdQTHYzIHBhY2thZ2VzIHRvIHJlbW92ZS4N
Cg0KV2hpbGUgSSB3YXMgdHJ5aW5nIHRvIHJlbW92ZSBnZGJtLCBJIGVjb3VudGVyZWQgc29tZSBu
YXRpdmUgZGVwZW5kZW5jaWVzLg0KDQpXaGVuIEkgbG9va2VkIGF0IHRoZSBsaWNlbnNlLm1hbmlm
ZXN0IGZpbGUsIGdkYm0gd2FzIHN0aWxsIGxpc3RlZC4NCg0KU28gSSB3YXMgYXNraW5nIG15c2Vs
ZiBpZiBJIHN0aWxsIGhhZCBwYWNrYWdlcyB0aGF0IGRlcGVuZHMvaW5jbHVkZXMgZ2RibSBoaWRk
ZW4gc29tZXdoZXJlIG9yIGl04oCZcyBiZWNhdXNlIHRoZSBsaWNlbnNlLm1hbmlmZXN0IGFsc28g
bGlzdCBwYWNrYWdlcyB1c2VkIG9uIHRoZSBidWlsZCBob3N0IGV2ZW4gaWYgdGhleSBhcmUgbm90
IGluY2x1ZGVkIGluIHRoZSBpbWFnZS4NCg0KRm9yIGV4YW1wbGUsIGlmIGN1cmwtbmF0aXZlIGlz
IHVzZWQgaW4gYSByZWNpcGUgd2lsbCBjdXJsIGJlIGxpc3RlZCBpbiBsaWNlbnNlLm1hbmlmZXN0
IGV2ZW4gaWYgY3VybCBpcyBub3QgaW4gdGhlIGltYWdlPw0KDQoNCg0KDQpTbyBpbiBvdGhlciB3
b3JkcywgZG9lcyBsaWNlbnNlLm1hbmlmZXN0IGFsc28gaW5jbHVkZXMgbmF0aXZlIHBhY2thZ2Vz
IG9yIGl0IG9ubHkgbGlzdHMgdGhlIHBhY2thZ2VzIHRoYXQgbWFrZSB1cCB0aGUgaW1hZ2UgKGlu
Y2x1ZGVkIGluIHRoZSBpbWFnZSk/DQoNCg0KDQoNClRoYW5rcyBmb3IgdGhlIHN1cHBvcnQsDQoN
Cg0KDQoNClBMQg==

--_7E5C67DA-4E04-49D8-BF70-AD99FF9097A4_
Content-Transfer-Encoding: base64
Content-Type: text/html; charset="utf-8"

CjxodG1sPgo8aGVhZD4KPG1ldGEgbmFtZT0iZ2VuZXJhdG9yIiBjb250ZW50PSJXaW5kb3dzIE1h
aWwgMTcuNS45NjAwLjIyMDEzIj4KPHN0eWxlIGRhdGEtZXh0ZXJuYWxzdHlsZT0idHJ1ZSI+PCEt
LQpwLk1zb0xpc3RQYXJhZ3JhcGgsIGxpLk1zb0xpc3RQYXJhZ3JhcGgsIGRpdi5Nc29MaXN0UGFy
YWdyYXBoIHsKbWFyZ2luLXRvcDowaW47Cm1hcmdpbi1yaWdodDowaW47Cm1hcmdpbi1ib3R0b206
MGluOwptYXJnaW4tbGVmdDouNWluOwptYXJnaW4tYm90dG9tOi4wMDAxcHQ7Cn0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbCB7Cm1hcmdpbjowaW47Cm1hcmdpbi1ib3R0
b206LjAwMDFwdDsKfQpwLk1zb0xpc3RQYXJhZ3JhcGhDeFNwRmlyc3QsIGxpLk1zb0xpc3RQYXJh
Z3JhcGhDeFNwRmlyc3QsIGRpdi5Nc29MaXN0UGFyYWdyYXBoQ3hTcEZpcnN0LCAKcC5Nc29MaXN0
UGFyYWdyYXBoQ3hTcE1pZGRsZSwgbGkuTXNvTGlzdFBhcmFncmFwaEN4U3BNaWRkbGUsIGRpdi5N
c29MaXN0UGFyYWdyYXBoQ3hTcE1pZGRsZSwgCnAuTXNvTGlzdFBhcmFncmFwaEN4U3BMYXN0LCBs
aS5Nc29MaXN0UGFyYWdyYXBoQ3hTcExhc3QsIGRpdi5Nc29MaXN0UGFyYWdyYXBoQ3hTcExhc3Qg
ewptYXJnaW4tdG9wOjBpbjsKbWFyZ2luLXJpZ2h0OjBpbjsKbWFyZ2luLWJvdHRvbTowaW47Cm1h
cmdpbi1sZWZ0Oi41aW47Cm1hcmdpbi1ib3R0b206LjAwMDFwdDsKbGluZS1oZWlnaHQ6MTE1JTsK
fQotLT48L3N0eWxlPjwvaGVhZD4KPGJvZHkgZGlyPSJsdHIiPgo8ZGl2IGRhdGEtZXh0ZXJuYWxz
dHlsZT0iZmFsc2UiIGRpcj0ibHRyIiBzdHlsZT0iZm9udC1mYW1pbHk6ICdDYWxpYnJpJywgJ1Nl
Z29lIFVJJywgJ01laXJ5bycsICdNaWNyb3NvZnQgWWFIZWkgVUknLCAnTWljcm9zb2Z0IEpoZW5n
SGVpIFVJJywgJ01hbGd1biBHb3RoaWMnLCAnc2Fucy1zZXJpZic7Zm9udC1zaXplOjEycHQ7Ij4K
CjxkaXY+SGksPC9kaXY+PGRpdj5J4oCZbSBjdXJyZW50bHkgd29ya2luZyB0byByZW1vdmUgYWxs
IEdQTHYzIHBhY2thZ2VzJm5ic3A7aW5jbHVkZWQgaW4mbmJzcDtteSBpbWFnZS48L2Rpdj48ZGl2
Pkkgd2FzIHVzaW5nIHRoZSBsaWNlbnNlIG1hbmlmZXN0IGZpbGUgdG8gbGlzdCB0aGUgcmVtYWlu
aW5nIEdQTHYzIHBhY2thZ2VzIHRvIHJlbW92ZS48L2Rpdj48ZGl2PldoaWxlIEkgd2FzIHRyeWlu
ZyB0byByZW1vdmUgZ2RibSwgSSBlY291bnRlcmVkIHNvbWUgbmF0aXZlIGRlcGVuZGVuY2llcy48
L2Rpdj48ZGl2PldoZW4gSSBsb29rZWQgYXQgdGhlIGxpY2Vuc2UubWFuaWZlc3QgZmlsZSwgZ2Ri
bSB3YXMgc3RpbGwmbmJzcDtsaXN0ZWQuPC9kaXY+PGRpdj5TbyBJIHdhcyBhc2tpbmcgbXlzZWxm
Jm5ic3A7aWYgSSBzdGlsbCBoYWQgcGFja2FnZXMgdGhhdCBkZXBlbmRzL2luY2x1ZGVzJm5ic3A7
Z2RibSBoaWRkZW4gc29tZXdoZXJlJm5ic3A7b3IgaXTigJlzIGJlY2F1c2UgdGhlIGxpY2Vuc2Uu
bWFuaWZlc3QgYWxzbyBsaXN0Jm5ic3A7cGFja2FnZXMgdXNlZCBvbiB0aGUgYnVpbGQmbmJzcDto
b3N0Jm5ic3A7ZXZlbiBpZiB0aGV5IGFyZSZuYnNwO25vdCBpbmNsdWRlZCBpbiB0aGUgaW1hZ2Uu
PC9kaXY+PGRpdj5Gb3IgZXhhbXBsZSwgaWYgY3VybC1uYXRpdmUgaXMgdXNlZCBpbiBhIHJlY2lw
ZSB3aWxsIGN1cmwgYmUgbGlzdGVkIGluIGxpY2Vuc2UubWFuaWZlc3QgZXZlbiBpZiBjdXJsIGlz
IG5vdCBpbiB0aGUgaW1hZ2U/PC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5TbyBpbiBvdGhlciB3
b3JkcywmbmJzcDtkb2VzJm5ic3A7bGljZW5zZS5tYW5pZmVzdCBhbHNvIGluY2x1ZGVzJm5ic3A7
bmF0aXZlIHBhY2thZ2VzJm5ic3A7b3IgaXQgb25seSZuYnNwO2xpc3RzIHRoZSZuYnNwO3BhY2th
Z2VzIHRoYXQgbWFrZSB1cCB0aGUgaW1hZ2UgKGluY2x1ZGVkIGluIHRoZSBpbWFnZSk/PC9kaXY+
PGRpdj48YnI+PC9kaXY+PGRpdj5UaGFua3MgZm9yIHRoZSBzdXBwb3J0LDwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+UExCPC9kaXY+PGRpdj48YnI+PC9kaXY+CgoKCgoKPC9kaXY+CjwvYm9keT4K
PC9odG1sPgo=

--_7E5C67DA-4E04-49D8-BF70-AD99FF9097A4_--
