Return-Path: <shane.wang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FDB5E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 06:54:10 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 28 Dec 2011 06:54:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90244873"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 28 Dec 2011 06:54:08 -0800
Received: from pgsmsx102.gar.corp.intel.com (10.221.44.80) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 28 Dec 2011 22:54:08 +0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	PGSMSX102.gar.corp.intel.com (10.221.44.80) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 28 Dec 2011 22:54:07 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.199]) by
	SHSMSX101.ccr.corp.intel.com ([169.254.1.38]) with mapi id
	14.01.0355.002; Wed, 28 Dec 2011 22:54:06 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>
Thread-Topic: [PATCH 1/2] Fix Makefiles
Thread-Index: AczFcIrDeX6yCFTrSjepWZsFVBsI+g==
Date: Wed, 28 Dec 2011 14:54:05 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC011724@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 1/2] Fix Makefiles
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
X-List-Received-Date: Wed, 28 Dec 2011 14:54:10 -0000
X-Groupsio-MsgNum: 4006
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_3AB6CE7F274E534CAFD089D127A8A1FC011724SHSMSX102ccrcorpi_"

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011724SHSMSX102ccrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This patch is to remove DESTDIR in docdir.
Otherwise, when users install by running `make install DESTDIR=3D/alternate=
/directory' specified in the file INSTALL, the doc will go into /alternate/=
directory/alternate/directory, which is not expected.

Signed-off-by: Shane Wang <shane.wang@intel.com>

diff -r 30b597e4e70d Makefile.am
--- a/Makefile.am	Wed Dec 28 15:38:35 2011 +0800
+++ b/Makefile.am	Wed Dec 28 15:39:25 2011 +0800
@@ -7,7 +7,7 @@
 pkgconfigdir =3D $(libdir)/pkgconfig
 pkgconfig_DATA =3D libomxil-bellagio.pc
=20
-docdir =3D $(DESTDIR)$(prefix)/share/doc/@PACKAGE@
+docdir =3D $(prefix)/share/doc/@PACKAGE@
 doc_DATA =3D README \
 	   ChangeLog \
 	   TODO

--
Shane

http://www.yoctoproject.org/=20
It's not an embedded Linux distribution -
It creates a custom one for you.

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011724SHSMSX102ccrcorpi_
Content-Type: application/octet-stream; name="makefile-docdir-fix.patch"
Content-Description: makefile-docdir-fix.patch
Content-Disposition: attachment; filename="makefile-docdir-fix.patch";
	size=658; creation-date="Wed, 28 Dec 2011 14:33:30 GMT";
	modification-date="Wed, 28 Dec 2011 14:34:28 GMT"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBpcyB0byByZW1vdmUgREVTVERJUiBpbiBkb2NkaXIuCk90aGVyd2lzZSwgd2hl
biB1c2VycyBpbnN0YWxsIGJ5IHJ1bm5pbmcgYG1ha2UgaW5zdGFsbCBERVNURElSPS9hbHRlcm5h
dGUvZGlyZWN0b3J5JyBzcGVjaWZpZWQgaW4gdGhlIGZpbGUgSU5TVEFMTCwgdGhlIGRvYyB3aWxs
IGdvIGludG8gL2FsdGVybmF0ZS9kaXJlY3RvcnkvYWx0ZXJuYXRlL2RpcmVjdG9yeSwgd2hpY2gg
aXMgbm90IGV4cGVjdGVkLgoKU2lnbmVkLW9mZi1ieTogU2hhbmUgV2FuZyA8c2hhbmUud2FuZ0Bp
bnRlbC5jb20+CgpkaWZmIC1yIDMwYjU5N2U0ZTcwZCBNYWtlZmlsZS5hbQotLS0gYS9NYWtlZmls
ZS5hbQlXZWQgRGVjIDI4IDE1OjM4OjM1IDIwMTEgKzA4MDAKKysrIGIvTWFrZWZpbGUuYW0JV2Vk
IERlYyAyOCAxNTozOToyNSAyMDExICswODAwCkBAIC03LDcgKzcsNyBAQAogcGtnY29uZmlnZGly
ID0gJChsaWJkaXIpL3BrZ2NvbmZpZwogcGtnY29uZmlnX0RBVEEgPSBsaWJvbXhpbC1iZWxsYWdp
by5wYwogCi1kb2NkaXIgPSAkKERFU1RESVIpJChwcmVmaXgpL3NoYXJlL2RvYy9AUEFDS0FHRUAK
K2RvY2RpciA9ICQocHJlZml4KS9zaGFyZS9kb2MvQFBBQ0tBR0VACiBkb2NfREFUQSA9IFJFQURN
RSBcCiAJICAgQ2hhbmdlTG9nIFwKIAkgICBUT0RPCg==

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011724SHSMSX102ccrcorpi_--
