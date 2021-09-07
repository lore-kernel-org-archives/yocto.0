Received: from forward500p.mail.yandex.net (forward500p.mail.yandex.net [77.88.28.110])
 by mx.groups.io with SMTP id smtpd.web11.34136.1631010117661051659
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 03:21:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yandex.com header.s=mail header.b=RRg8Smjk;
 spf=pass (domain: yandex.com, ip: 77.88.28.110, mailfrom: deco33000@yandex.com)
Received: from vla1-395bc165982e.qloud-c.yandex.net (vla1-395bc165982e.qloud-c.yandex.net [IPv6:2a02:6b8:c0d:179c:0:640:395b:c165])
	by forward500p.mail.yandex.net (Yandex) with ESMTP id 4F95FF01CA3
	for <yocto@lists.yoctoproject.org>; Tue,  7 Sep 2021 13:21:53 +0300 (MSK)
Received: from 2a02:6b8:c15:350f:0:640:6a53:26ae (2a02:6b8:c15:350f:0:640:6a53:26ae [2a02:6b8:c15:350f:0:640:6a53:26ae])
	by vla1-395bc165982e.qloud-c.yandex.net (mxback/Yandex) with HTTP id pLMDVN0D1Gk1-LqDmOsYI;
	Tue, 07 Sep 2021 13:21:52 +0300
To: undisclosed-recipients:;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail; t=1631010112;
	bh=N4SN2VRougLshUigtz7Uu01r79S6zftLGRK8hL8pmqM=;
	h=Message-Id:Cc:Subject:Date:References:In-Reply-To:From;
	b=RRg8SmjkHlZKGbg+xPrr61P7JeK8zZp/HmIKdjb22txN+WlfPB3eDv1RqrwucVDTY
	 jolna/BzI/kIpIqCWv0HXOg+RN44f04gZDpGL5LGKttxpDe+vTqzzdG2b18oztmhyN
	 BiCM/7JswOAx13XJUR3hfU39MiS7Wrd/fKXjJWqg=
Authentication-Results: vla1-395bc165982e.qloud-c.yandex.net; dkim=pass header.i=@yandex.com
Received: by vla3-6a5326aeb4ee.qloud-c.yandex.net with HTTP;
	Tue, 07 Sep 2021 13:21:52 +0300
From: "KL" <deco33000@yandex.com>
Envelope-From: deco33000@yandex.ru
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
In-Reply-To: <CAMKF1soTdYqd10biiQ0iDa74kAkwJRW94ouKJ-xGxVAQFTXnng@mail.gmail.com>
References: <1004181630942804@mail.yandex.com> <14250171630944633@sas8-bb4816e87b9b.qloud-c.yandex.net> <CAMKF1soTdYqd10biiQ0iDa74kAkwJRW94ouKJ-xGxVAQFTXnng@mail.gmail.com>
Subject: Re: [yocto] Debating best tool to use
MIME-Version: 1.0
X-Mailer: Yamail [ http://yandex.ru ] 5.0
Date: Tue, 07 Sep 2021 12:21:52 +0200
Message-Id: <5553891631010112@vla3-6a5326aeb4ee.qloud-c.yandex.net>
Content-Transfer-Encoding: base64
Content-Type: text/html; charset=utf-8

PGJyIC8+VGhhbmtzIGRvZXMgdGhhdCBtZWFuIHRoYXQgSSBjYW4gcmVzaGFwZSB0aGUgd2hvbGUg
ImV2ZXJ5dGhpbmcgaXMgYSBmaWxlIiB1bmRlciB1bml4PzxkaXY+PGJyIC8+PC9kaXY+PGRpdj5J
IGRvbid0IHdhbnQgL2V0YyAvdmFyIC91c3IgKGFuZCBhbnkgb3RoZXIgcHJlbWFkZSBzdHJ1Y3R1
cmUgeW91IGZpbmQgaW4gZXZlcnkgbGludXggZGlzdHJvLi4uKSBidXQgbWFuYWdlIGl0IGRpZmZl
cmVudGx5IHZpYSBvdXIgZGIuPC9kaXY+PGRpdj48YnIgLz48L2Rpdj48ZGl2PllvdSBjb25maXJt
IHRoYXQgZG9hYmxlPzxiciAvPi0tIDxiciAvPjxiciAvPjwvZGl2PjIyOjAzLCA2IFNlcHRlbWJl
ciAyMDIxLCBLaGVtIFJhaiAmbHQ7cmFqLmtoZW1AZ21haWwuY29tJmd0Ozo8YnIgLz48YmxvY2tx
dW90ZSBjbGFzcz0iMjEwZTdhODQ4ZThmY2I0NXdtaS1xdW90ZSI+PHA+T24gTW9uLCBTZXAgNiwg
MjAyMSBhdCA5OjEwIEFNIEtMICZsdDs8YSBocmVmPSJtYWlsdG86ZGVjbzMzMDAwQHlhbmRleC5j
b20iPmRlY28zMzAwMEB5YW5kZXguY29tPC9hPiZndDsgd3JvdGU6PGJyIC8+PC9wPjxibG9ja3F1
b3RlIGNsYXNzPSIyMTBlN2E4NDhlOGZjYjQ1d21pLXF1b3RlIj48YnIgLz48YnIgLz7CoEhpLDxi
ciAvPjxiciAvPsKgSSBwbGFuIHRvIGhhdmUgYSBtaW5pbWFsIGVtYmVkZGVkIHN5c3RlbSB3aXRo
IEJULCB3aWZpLCBubyBndWksIHRvIGhvc3QgbXkgYXBwbGljYXRpb24gd2l0aCBteSBvd24gd2Vi
c2VydmVyLjxiciAvPjxiciAvPsKgTXkgd2Vic2VydmVyK2FwcCBhcmUgcmVzcG9uc2libGUgdG8g
bWFuYWdlIHRoZSBPUyAoc28gSSBkb24ndCB3YW50IGFueXRoaW5nIGVsc2UgdG8gZG8gaXQpLiBU
aGV5IHJlY2VpdmUgbmV3IHByb2dyYW1zIGFuZCBsb2FkIHRoZW0gYWNjb3JkaW5nIHRvIG15IHJ1
bGVzICh0aGF0IGlzIG91ciBtYW5hZ2VyIGF0IHdvcmspLjxiciAvPjxiciAvPsKgSSB3b3VsZCBs
aWtlIHRvIGF2b2lkIHRoZSBwbGFndWUgb2YgbXVsdGlwbGUgY29uZmlndXJhdGlvbiBmaWxlcyBw
dXQgZXZlcnl3aGVyZSBpbiBmaWxlcyAobGlrZSBub3cgaW4gZGlmZmVyZW50IHByb2ZpbGUgZGly
ZWN0b3JpZXMuLi4pLCBidXQgaW5zdGVhZCBoYXZlIG15IGN1c3RvbSBtYW5hZ2VyIGhhbmRsZSBB
TEwgdGhlIGRpZmZlcmVudCBzZXR0aW5ncyBmb3IgdGhlIE9TIChjZW50cmFsaXplZCBwb2ludCku
PGJyIC8+PGJyIC8+wqBXZSwgYXQgdGhlIG9mZmljZSwgY29tcGlsZSBhbmQgbWFpbnRhaW4gdGhl
IGRpZmZlcmVudCBzb2Z0d2FyZSBuZWVkZWQgYW5kIHNlbmQgdGhlbSBieSB3aWZpLjxiciAvPjxi
ciAvPsKgSSB3YW50IHRoYXQgT1MgdG8gYmUgYnVpbHQgb24gdG9wIG9mIExpbnV4LjxiciAvPjxi
ciAvPsKgV291bGQgWW9jdG8gZW5hYmxlIG1lIHRvIGRvIHRoYXQ/IElzIGl0IHRoZSBiZXN0IHRv
b2wgZm9yIHRoYXQ/PGJyIC8+PC9ibG9ja3F1b3RlPjxwPjxiciAvPlllcywgaXQgbGV0cyB5b3Ug
YnVpbGQgY3VzdG9tIExpbnV4IGRpc3RyaWJ1dGlvbiBhbmQgZWFzZXMgdGhlIHdheSB0bzxiciAv
PmFkZCBuZWVkZWQgY3VzdG9taXphdGlvbiB0aGF0IG9uZSBtaWdodCByZXF1aXJlLjxiciAvPjxi
ciAvPjwvcD48YmxvY2txdW90ZSBjbGFzcz0iMjEwZTdhODQ4ZThmY2I0NXdtaS1xdW90ZSI+PGJy
IC8+wqBUaGFua3MsPGJyIC8+PGJyIC8+PGJyIC8+wqAtLTxiciAvPsKgTUtMPGJyIC8+PGJyIC8+
PGJyIC8+wqA8YnIgLz48YnIgLz48L2Jsb2NrcXVvdGU+PC9ibG9ja3F1b3RlPg==
