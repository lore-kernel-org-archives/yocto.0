Return-Path: <shane.wang@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95553E01276
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 06:55:17 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 Dec 2011 06:55:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="90245204"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by azsmga001.ch.intel.com with ESMTP; 28 Dec 2011 06:55:16 -0800
Received: from pgsmsx104.gar.corp.intel.com (10.221.44.91) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 28 Dec 2011 22:55:15 +0800
Received: from shsmsx151.ccr.corp.intel.com (10.239.6.50) by
	PGSMSX104.gar.corp.intel.com (10.221.44.91) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Wed, 28 Dec 2011 22:55:15 +0800
Received: from shsmsx102.ccr.corp.intel.com ([169.254.2.199]) by
	SHSMSX151.ccr.corp.intel.com ([169.254.3.223]) with mapi id
	14.01.0355.002; Wed, 28 Dec 2011 22:55:14 +0800
From: "Wang, Shane" <shane.wang@intel.com>
To: "omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>
Thread-Topic: [PATCH 2/2] Fix Makefiles
Thread-Index: AczFcLNqPGA7L87uRF21WXStdZKfEA==
Date: Wed, 28 Dec 2011 14:55:13 +0000
Message-ID: <3AB6CE7F274E534CAFD089D127A8A1FC011736@SHSMSX102.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [PATCH 2/2] Fix Makefiles
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
X-List-Received-Date: Wed, 28 Dec 2011 14:55:17 -0000
X-Groupsio-MsgNum: 4007
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_3AB6CE7F274E534CAFD089D127A8A1FC011736SHSMSX102ccrcorpi_"

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011736SHSMSX102ccrcorpi_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This patch is to make libomxil Makefile support "make -jN".
The omxregister_bellagio stuffs depend on libomxil_bellagio library.

Signed-off-by: Shane Wang <shane.wang@intel.com>

diff -r f59d077d3dd5 Makefile.am
--- a/src/Makefile.am	Wed Dec 28 10:54:36 2011 +0800
+++ b/src/Makefile.am	Wed Dec 28 10:55:46 2011 +0800
@@ -7,6 +7,7 @@
 omxregister_bellagio_SOURCES =3D omxregister.c common.c common.h
 omxregister_bellagio_CFLAGS =3D -DOMXILCOMPONENTSPATH=3D\"$(plugindir)/\" =
\
 			      -I$(top_srcdir)/include
+omxregister_bellagio_LDADD =3D $(lib_LTLIBRARIES)
 omxregister_bellagio_LDFLAGS =3D -lomxil-bellagio -L$(builddir)
=20
 lib_LTLIBRARIES =3D libomxil-bellagio.la


--
Shane

http://www.yoctoproject.org/=20
It's not an embedded Linux distribution -
It creates a custom one for you.

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011736SHSMSX102ccrcorpi_
Content-Type: application/octet-stream; name="parallel-make.patch"
Content-Description: parallel-make.patch
Content-Disposition: attachment; filename="parallel-make.patch"; size=660;
	creation-date="Wed, 28 Dec 2011 14:33:30 GMT";
	modification-date="Wed, 28 Dec 2011 14:34:39 GMT"
Content-Transfer-Encoding: base64

VGhpcyBwYXRjaCBpcyB0byBtYWtlIGxpYm9teGlsIE1ha2VmaWxlIHN1cHBvcnQgIm1ha2UgLWpO
Ii4KVGhlIG9teHJlZ2lzdGVyX2JlbGxhZ2lvIHN0dWZmcyBkZXBlbmQgb24gbGlib214aWxfYmVs
bGFnaW8gbGlicmFyeS4KClNpZ25lZC1vZmYtYnk6IFNoYW5lIFdhbmcgPHNoYW5lLndhbmdAaW50
ZWwuY29tPgoKZGlmZiAtciBmNTlkMDc3ZDNkZDUgTWFrZWZpbGUuYW0KLS0tIGEvc3JjL01ha2Vm
aWxlLmFtCVdlZCBEZWMgMjggMTA6NTQ6MzYgMjAxMSArMDgwMAorKysgYi9zcmMvTWFrZWZpbGUu
YW0JV2VkIERlYyAyOCAxMDo1NTo0NiAyMDExICswODAwCkBAIC03LDYgKzcsNyBAQAogb214cmVn
aXN0ZXJfYmVsbGFnaW9fU09VUkNFUyA9IG9teHJlZ2lzdGVyLmMgY29tbW9uLmMgY29tbW9uLmgK
IG9teHJlZ2lzdGVyX2JlbGxhZ2lvX0NGTEFHUyA9IC1ET01YSUxDT01QT05FTlRTUEFUSD1cIiQo
cGx1Z2luZGlyKS9cIiBcCiAJCQkgICAgICAtSSQodG9wX3NyY2RpcikvaW5jbHVkZQorb214cmVn
aXN0ZXJfYmVsbGFnaW9fTERBREQgPSAkKGxpYl9MVExJQlJBUklFUykKIG9teHJlZ2lzdGVyX2Jl
bGxhZ2lvX0xERkxBR1MgPSAtbG9teGlsLWJlbGxhZ2lvIC1MJChidWlsZGRpcikKIAogbGliX0xU
TElCUkFSSUVTID0gbGlib214aWwtYmVsbGFnaW8ubGEK

--_002_3AB6CE7F274E534CAFD089D127A8A1FC011736SHSMSX102ccrcorpi_--
