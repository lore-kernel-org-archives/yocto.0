Return-Path: <meier.dennis@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7171E00BDF; Thu, 12 Jun 2014 08:50:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.40 listed in list.dnswl.org]
X-Greylist: delayed 134 seconds by postgrey-1.32 at yocto-www;
	Thu, 12 Jun 2014 08:49:55 PDT
Received: from gecko.sbs.de (gecko.sbs.de [194.138.37.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E69B7E00BB1
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 08:49:55 -0700 (PDT)
Received: from mail2.sbs.de (localhost [127.0.0.1])
	by gecko.sbs.de (8.14.3/8.14.3) with ESMTP id s5CFldLk018165
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 17:47:39 +0200
Received: from DEFTHW99ERGMSX.ww902.siemens.net
	(defthw99ergmsx.ww902.siemens.net [139.22.70.132])
	by mail2.sbs.de (8.14.3/8.14.3) with ESMTP id s5CFldFa023389
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 17:47:39 +0200
Received: from DENBGAT9ER6MSX.ww902.siemens.net (139.22.70.92) by
	DEFTHW99ERGMSX.ww902.siemens.net (139.22.70.132) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Thu, 12 Jun 2014 17:47:38 +0200
Received: from DEFTHW99EI0MSX.ww902.siemens.net ([169.254.5.157]) by
	DENBGAT9ER6MSX.ww902.siemens.net ([139.22.70.92]) with mapi id
	14.03.0181.006; Thu, 12 Jun 2014 17:47:37 +0200
From: "Meier, Dennis" <meier.dennis@siemens.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] populate_sdk_base: add auto-completion in setup
Thread-Index: Ac+GVaIg/QQ6B6BuRz+ei29F/hHodQ==
Date: Thu, 12 Jun 2014 15:47:37 +0000
Message-ID: <6F22A92316C68C42A591A48A6291DA9DD941E2@DEFTHW99EI0MSX.ww902.siemens.net>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.25]
MIME-Version: 1.0
Cc: "Bach, Pascal" <pascal.bach@siemens.com>, "Meier,
	Roger" <r.meier@siemens.com>
Subject: [PATCH] populate_sdk_base: add auto-completion in setup
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
X-List-Received-Date: Thu, 12 Jun 2014 15:50:00 -0000
X-Groupsio-MsgNum: 20128
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_6F22A92316C68C42A591A48A6291DA9DD941E2DEFTHW99EI0MSXww9_"

--_002_6F22A92316C68C42A591A48A6291DA9DD941E2DEFTHW99EI0MSXww9_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto-Community,

It's really easy to add auto completion in the SDK setup scripts
with BASH's "read -e -p". I attached a short patch that does this.
Makes life very comfortable ;-).

I already asked Paul Eggleton on IRC about the change, and our only concern
is that it could break the script in other shells than BASH. However, since
the script already starts with #!/bin/bash hopefully isn't a real problem.

Any thoughts? I would love to see this in an upcoming release.

Regards,
Dennis





--_002_6F22A92316C68C42A591A48A6291DA9DD941E2DEFTHW99EI0MSXww9_
Content-Type: application/octet-stream;
	name="0001-populate_sdk_base-add-auto-completion-in-setup.patch"
Content-Description: 0001-populate_sdk_base-add-auto-completion-in-setup.patch
Content-Disposition: attachment;
	filename="0001-populate_sdk_base-add-auto-completion-in-setup.patch";
	size=1372; creation-date="Thu, 12 Jun 2014 15:46:53 GMT";
	modification-date="Thu, 12 Jun 2014 15:39:09 GMT"
Content-Transfer-Encoding: base64

RnJvbSA0ZWNhOGIxNTI2MDY1OTQ1MDBhMWRlZTQ0NTVlNWYwMWFhZTQ5ZDk1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBEZW5uaXMgTWVpZXIgPG1laWVyLmRlbm5pc0BzaWVtZW5zLmNv
bT4KRGF0ZTogVGh1LCAxMiBKdW4gMjAxNCAxNjo0NzoyMyArMDIwMApTdWJqZWN0OiBbUEFUQ0hd
IHBvcHVsYXRlX3Nka19iYXNlOiBhZGQgYXV0by1jb21wbGV0aW9uIGluIHNldHVwCgpJdCdzIHJl
YWxseSBlYXN5IHRvIGFkZCBhdXRvIGNvbXBsZXRpb24gaW4gdGhlIFNESyBzZXR1cCBzY3JpcHRz
CndpdGggQkFTSCdzIHJlYWQgLWUgLXAuIE1ha2VzIGxpZmUgdmVyeSBjb21mb3J0YWJsZSA7LSku
CgpJIGFscmVhZHkgYXNrZWQgUGF1bCBFZ2dsZXRvbiBvbiBJUkMgYWJvdXQgdGhlIGNoYW5nZSwg
YW5kIG91ciBvbmx5IGNvbmNlcm4KaXMgdGhhdCBpdCBjb3VsZCBicmVhayB0aGUgc2NyaXB0IGlu
IG90aGVyIHNoZWxscyB0aGFuIEJBU0guIEhvd2V2ZXIsIHNpbmNlCnRoZSBzY3JpcHQgYWxyZWFk
eSBzdGFydHMgd2l0aCAjIS9iaW4vYmFzaCB0aGlzIHNob3VsZG4ndCBiZSBhIHByb2JsZW0uCiAK
QW55IHRob3VnaHRzPyBJIHdvdWxkIGxvdmUgdG8gc2VlIHRoaXMgaW4gYW4gdXBjb21pbmcgcmVs
ZWFzZS4KClJlZ2FyZHMsCkRlbm5pcwoKLS0tCiBtZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2Jh
c2UuYmJjbGFzcyB8ICAgIDMgKy0tCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2VzL3BvcHVsYXRlX3Nka19iYXNl
LmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2Jhc2UuYmJjbGFzcwppbmRleCAx
MGQwNGVkLi5hOGVmNjBiIDEwMDY0NAotLS0gYS9tZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2Jh
c2UuYmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvcG9wdWxhdGVfc2RrX2Jhc2UuYmJjbGFzcwpA
QCAtMTczLDkgKzE3Myw4IEBAIGlmIFsgJHZlcmJvc2UgPSAxIF0gOyB0aGVuCiAJc2V0IC14CiBm
aQogCi1wcmludGYgIkVudGVyIHRhcmdldCBkaXJlY3RvcnkgZm9yIFNESyAoZGVmYXVsdDogJERF
RkFVTFRfSU5TVEFMTF9ESVIpOiAiCiBpZiBbICIkdGFyZ2V0X3Nka19kaXIiID0gIiIgXTsgdGhl
bgotCXJlYWQgdGFyZ2V0X3Nka19kaXIKKwlyZWFkIC1lIC1wICJFbnRlciB0YXJnZXQgZGlyZWN0
b3J5IGZvciBTREsgKGRlZmF1bHQ6ICRERUZBVUxUX0lOU1RBTExfRElSKTogIiB0YXJnZXRfc2Rr
X2RpcgogCVsgIiR0YXJnZXRfc2RrX2RpciIgPSAiIiBdICYmIHRhcmdldF9zZGtfZGlyPSRERUZB
VUxUX0lOU1RBTExfRElSCiBlbHNlCiAJZWNobyAiJHRhcmdldF9zZGtfZGlyIgotLSAKMS43LjEw
LjQKCg==

--_002_6F22A92316C68C42A591A48A6291DA9DD941E2DEFTHW99EI0MSXww9_--
