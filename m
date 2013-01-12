Return-Path: <cazfi74@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AD2AE00527
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2013 01:09:09 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id l6so2198272vcl.9
	for <yocto@yoctoproject.org>; Sat, 12 Jan 2013 01:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dIngvx1t8zyEQrHr+0m1K+ft7GlWwsM6y6fPY3vjcdw=;
	b=saY8/6w+xmvFLJ5bUlwNJVaAdtgWYKWa5J3+2ptLr7ua4o+NJtAEH3YAMbjdvxlOYh
	9udlkiJKq5tFLKXWcAKM8LbJCeB1HMDfB68ZH1DKDNVfFD79BiJkqVg73Up8Gn2QoiYd
	U83xId/O8UIAZrp+gDiGzfIxlyAkQnz6gZHRYIfPkxFt8M+7AYldXtPVhuU7CJ3BubFY
	4UrMu9eXaFzh6k74EXrbT31cJm7/+uPClntAP6qsKt7RIajq8e5Rla9cx5a9uVBTi/VO
	ppfG9j6Lbn6Sez69JXOP8oL0i+gOMZrgyeKfsY7h9zJo04jVsCWd86p6t03fP/LRPyLQ
	CYTw==
MIME-Version: 1.0
Received: by 10.52.98.134 with SMTP id ei6mr84036535vdb.114.1357981748883;
	Sat, 12 Jan 2013 01:09:08 -0800 (PST)
Received: by 10.58.80.2 with HTTP; Sat, 12 Jan 2013 01:09:08 -0800 (PST)
Date: Sat, 12 Jan 2013 11:09:08 +0200
Message-ID: <CAF6bG8dKsTb2sGfTTDuk4zJ3+4RYbkk+qpeDo=HkOLLj6f_vMw@mail.gmail.com>
From: Marko Lindqvist <cazfi74@gmail.com>
To: yocto@yoctoproject.org, Constantin Musca <constantinx.musca@intel.com>
Subject: [PATCH] matchbox-wm: Fix build with automake-1.13
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 12 Jan 2013 09:09:09 -0000
X-Groupsio-MsgNum: 11484
Content-Type: multipart/mixed; boundary=20cf307d0426c0f2a204d313c349

--20cf307d0426c0f2a204d313c349
Content-Type: text/plain; charset=UTF-8

 Automake-1.13 fix to matchbox-wm git attached.


 - ML

--20cf307d0426c0f2a204d313c349
Content-Type: application/octet-stream; 
	name="0001-configure.ac-fix-autoreconf-with-automake-1.13.patch"
Content-Disposition: attachment; 
	filename="0001-configure.ac-fix-autoreconf-with-automake-1.13.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hbuj78rf0

RnJvbSAxZmExMjQyOWM2NGE0NWJkM2NmMDk1YTIxZjYxYTlmY2UxODUxYWJiIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJrbyBMaW5kcXZpc3QgPGNhemZpNzRAZ21haWwuY29tPgpE
YXRlOiBTYXQsIDEyIEphbiAyMDEzIDEwOjU2OjE4ICswMjAwClN1YmplY3Q6IFtQQVRDSF0gY29u
ZmlndXJlLmFjOiBmaXggYXV0b3JlY29uZiB3aXRoIGF1dG9tYWtlLTEuMTMKClJlcGxhY2UgbG9u
ZyBvYnNvbGV0ZSBBTV9DT05GSUdfSEVBREVSIHdpdGggcHJvcGVyIEFDX0NPTkZJR19IRUFERVJT
LgphdXRvbWFrZS0xLjEzIGVycm9ycyBvdXQgdXBvbiBzZWVpbmcgZm9ybWVyLgoKU2lnbmVkLW9m
Zi1ieTogTWFya28gTGluZHF2aXN0IDxjYXpmaTc0QGdtYWlsLmNvbT4KLS0tCiBjb25maWd1cmUu
YWMgfCAgICAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKCmRpZmYgLS1naXQgYS9jb25maWd1cmUuYWMgYi9jb25maWd1cmUuYWMKaW5kZXggNjdhZTBl
Ni4uMzhhZGQ1ZiAxMDA2NDQKLS0tIGEvY29uZmlndXJlLmFjCisrKyBiL2NvbmZpZ3VyZS5hYwpA
QCAtNCw3ICs0LDcgQEAgQUNfQ09ORklHX1NSQ0RJUihbc3JjL3dtLmNdKQogCiBBTV9JTklUX0FV
VE9NQUtFKCkKIEFNX01BSU5UQUlORVJfTU9ERQotQU1fQ09ORklHX0hFQURFUihbY29uZmlnLmhd
KQorQUNfQ09ORklHX0hFQURFUlMoW2NvbmZpZy5oXSkKIAogIyBDaGVja3MgZm9yIHByb2dyYW1z
LgogQUNfUFJPR19DQwotLSAKMS43LjEwLjQKCg==

--20cf307d0426c0f2a204d313c349--
