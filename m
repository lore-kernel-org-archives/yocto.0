Received: from forward501j.mail.yandex.net (forward501j.mail.yandex.net [5.45.198.251])
 by mx.groups.io with SMTP id smtpd.web11.1187.1631029876720316411
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 08:51:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yandex.com header.s=mail header.b=E4OXHZvk;
 spf=pass (domain: yandex.com, ip: 5.45.198.251, mailfrom: deco33000@yandex.com)
Received: from iva3-863a678c0048.qloud-c.yandex.net (iva3-863a678c0048.qloud-c.yandex.net [IPv6:2a02:6b8:c0c:380:0:640:863a:678c])
	by forward501j.mail.yandex.net (Yandex) with ESMTP id 76D85623359
	for <yocto@lists.yoctoproject.org>; Tue,  7 Sep 2021 18:51:13 +0300 (MSK)
Received: from 2a02:6b8:c0c:299:0:640:ad25:6f95 (2a02:6b8:c0c:299:0:640:ad25:6f95 [2a02:6b8:c0c:299:0:640:ad25:6f95])
	by iva3-863a678c0048.qloud-c.yandex.net (mxback/Yandex) with HTTP id CpRcTo0E1a61-pCECAGsA;
	Tue, 07 Sep 2021 18:51:13 +0300
To: undisclosed-recipients:;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail; t=1631029873;
	bh=rR5yci0D0XNI+PQquRLeV5OtY7cK805F4gVesLYMc5E=;
	h=Message-Id:Cc:Subject:Date:References:In-Reply-To:From;
	b=E4OXHZvkZhEGDLIVbaDNO6Jina7QVedCoscZM6v/g8FHfHsfTCFZtsoIKbng0hu/1
	 dYzTZuttqrs9LUU4pnIZ/icCBvGthtaAG2YBwNJMYgN8+Ev2YpMekfDB1cpNm0kymd
	 ibL+m+tKf8gcdkyDwJD6kSIGgINpyGXGzpvtXkP0=
Authentication-Results: iva3-863a678c0048.qloud-c.yandex.net; dkim=pass header.i=@yandex.com
Received: by iva1-ad256f95df1b.qloud-c.yandex.net with HTTP;
	Tue, 07 Sep 2021 18:51:12 +0300
From: "KL" <deco33000@yandex.com>
Envelope-From: deco33000@yandex.ru
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
In-Reply-To: <CAAnfSTukyWDu3Y=_bpWr4Jc-fM9byem0nKwcoBD28zovXP6X0Q@mail.gmail.com>
References: <1004181630942804@mail.yandex.com> <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net>
	 <CAMKF1soTdYqd10biiQ0iDa74kAkwJRW94ouKJ-xGxVAQFTXnng@mail.gmail.com> <5553891631010112@vla3-6a5326aeb4ee.qloud-c.yandex.net> <CAAnfSTukyWDu3Y=_bpWr4Jc-fM9byem0nKwcoBD28zovXP6X0Q@mail.gmail.com>
Subject: Re: [yocto] Debating best tool to use
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Tue, 07 Sep 2021 17:51:12 +0200
Message-Id: <34591631029872@iva1-ad256f95df1b.qloud-c.yandex.net>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

VGhhdCBpcyBleGFjdGx5IHdoYXQgSSB0aG91Z2h0IGFuZCB3aHkgSSBpbnNpc3RlZCB0aGF0IG11
Y2guPGRpdj48YnIgLz48L2Rpdj48ZGl2Pkkgd2lsbCBzdGVwIGJhY2sgYW5kIGNvbnN0cmljdCB0
byBteSBhcHAsIGFuZCBub3QgdGhlIHdob2xlIE9TLjwvZGl2PjxkaXY+PGJyIC8+PC9kaXY+PGRp
dj5UaGFua3MhPGJyIC8+PGJyIC8+LS0gPGJyIC8+PGJyIC8+PC9kaXY+MTc6MzgsIDcgU2VwdGVt
YmVyIDIwMjEsIFJvc3MgQnVydG9uICZsdDtyb3NzQGJ1cnRvbmluaS5jb20mZ3Q7OjxiciAvPjxi
bG9ja3F1b3RlIGNsYXNzPSIyMTBlN2E4NDhlOGZjYjQ1d21pLXF1b3RlIj48cD5PbiBUdWUsIDcg
U2VwdCAyMDIxIGF0IDExOjIyLCBLTCAmbHQ7PGEgaHJlZj0ibWFpbHRvOmRlY28zMzAwMEB5YW5k
ZXguY29tIj5kZWNvMzMwMDBAeWFuZGV4LmNvbTwvYT4mZ3Q7IHdyb3RlOjxiciAvPjwvcD48Ymxv
Y2txdW90ZSBjbGFzcz0iMjEwZTdhODQ4ZThmY2I0NXdtaS1xdW90ZSI+wqBUaGFua3MgZG9lcyB0
aGF0IG1lYW4gdGhhdCBJIGNhbiByZXNoYXBlIHRoZSB3aG9sZSAiZXZlcnl0aGluZyBpcyBhIGZp
bGUiIHVuZGVyIHVuaXg/PGJyIC8+PGJyIC8+wqBJIGRvbid0IHdhbnQgL2V0YyAvdmFyIC91c3Ig
KGFuZCBhbnkgb3RoZXIgcHJlbWFkZSBzdHJ1Y3R1cmUgeW91IGZpbmQgaW4gZXZlcnkgbGludXgg
ZGlzdHJvLi4uKSBidXQgbWFuYWdlIGl0IGRpZmZlcmVudGx5IHZpYSBvdXIgZGIuPGJyIC8+PGJy
IC8+wqBZb3UgY29uZmlybSB0aGF0IGRvYWJsZT88YnIgLz48L2Jsb2NrcXVvdGU+PHA+PGJyIC8+
RG9hYmxlPyBZZXMsIGV2ZXJ5dGhpbmcgaXMgb3BlbiBzb3VyY2UuPGJyIC8+PGJyIC8+U2Vuc2li
bGU/ICBOb3QgcmVhbGx5LiAgSSdtIG5vdCBzdXJlIHlvdSd2ZSBjb25zaWRlcmVkIHRoZSBzY2Fs
ZSBvZjxiciAvPndoYXQgeW91J3JlIGFza2luZy4gRm9yIGV4YW1wbGUsIC9ldGMvcGFzc3dkIGFu
ZCAvZXRjL2hvc3RzIGFyZSBkZWVwbHk8YnIgLz50aWVkIGludG8gbGFyZ2UgYW1vdW50cyBvZiBz
b2Z0d2FyZS48YnIgLz48YnIgLz5Zb3UgY2FuIG1ha2UgKnlvdXIqIHNvZnR3YXJlIHVzZSB3aGF0
ZXZlciBjb25maWd1cmF0aW9uIGRhdGFiYXNlIHlvdTxiciAvPndhbnQsIGJ1dCB5b3UnbGwgaGF2
ZSBhIGxvdCBvZiB3b3JrIHRvIGRvIGlmIHlvdSB3YW50IHRvIG1vdmUgdGhlIHVzZXI8YnIgLz5k
YXRhYmFzZSBvciBETlMgcmVzb2x2ZXIgaW5mb3JtYXRpb24gb3V0IG9mIC9ldGMuPGJyIC8+PGJy
IC8+Um9zczxiciAvPjwvcD48L2Jsb2NrcXVvdGU+
