Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE6FAE00A44; Thu,  1 May 2014 12:04:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC50E009EB
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 12:04:52 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2014 12:03:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,966,1389772800"; d="scan'208";a="426489163"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2014 12:03:42 -0700
Received: from orsmsx116.amr.corp.intel.com (10.22.240.14) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 May 2014 12:03:42 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX116.amr.corp.intel.com ([169.254.9.48]) with mapi id
	14.03.0123.003; Thu, 1 May 2014 12:03:42 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 2/2] meta-darwin on dylan branch
Thread-Index: AQHPZXAQS8kJ4/mK4kmLLPY8DNPSVQ==
Date: Thu, 1 May 2014 19:03:41 +0000
Message-ID: <882B2198-C1C5-4239-86D5-6FE7F36D75CB@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.19]
MIME-Version: 1.0
Subject: [PATCH 2/2] meta-darwin on dylan branch
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
X-List-Received-Date: Thu, 01 May 2014 19:04:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <ACCA4905715F9642B31C968E1AF43E1F@intel.com>
Content-Transfer-Encoding: quoted-printable

commit 4c50f7bd62a675dd1f034bc6730f833c6dca0c19
Author: james woodyatt <james.woodyatt@intel.com>
Date:   Thu May 1 11:57:41 2014 -0700

    Remove usage of =91new typename=92 constructors in ld64 part of odcctoo=
ls2 package.

diff --git a/recipes-devtools/odcctools/files/ld64-typename.patch b/recipes=
-devtools/odcctools/files/ld64-typename.patch
new file mode 100644
index 0000000..ef5d95d
--- /dev/null
+++ b/recipes-devtools/odcctools/files/ld64-typename.patch
@@ -0,0 +1,69 @@
+diff -r -U 3 apple-x86-odcctools-758.159.orig/ld64/src/ld.cpp apple-x86-od=
cctools-758.159/ld64/src/ld.cpp
+--- apple-x86-odcctools-758.159.orig/ld64/src/ld.cpp	2014-04-30 12:05:13.1=
06000001 -0700
++++ apple-x86-odcctools-758.159/ld64/src/ld.cpp	2014-04-30 12:06:19.221000=
001 -0700
+@@ -2914,49 +2914,49 @@
+ 	switch (fArchitecture) {
+ 		case CPU_TYPE_POWERPC:
+ 			if ( mach_o::relocatable::Reader<ppc>::validFile(p) )
+-				return this->addObject(new typename mach_o::relocatable::Reader<ppc>:=
:Reader(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrd=
inal), info, len);
++				return this->addObject(new mach_o::relocatable::Reader<ppc>::Reader(p=
, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), in=
fo, len);
+ 			else if ( mach_o::dylib::Reader<ppc>::validFile(p, info.options.fBundl=
eLoader) )
+-				return this->addDylib(new typename mach_o::dylib::Reader<ppc>::Reader=
(p, len, info.path, info.options, fOptions.readerOptions(), fNextInputOrdin=
al), info, len);
++				return this->addDylib(new mach_o::dylib::Reader<ppc>::Reader(p, len, =
info.path, info.options, fOptions.readerOptions(), fNextInputOrdinal), info=
, len);
+ 			else if ( archive::Reader<ppc>::validFile(p, len) )
+-				return this->addArchive(new typename archive::Reader<ppc>::Reader(p, =
len, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal),=
 info, len);
++				return this->addArchive(new archive::Reader<ppc>::Reader(p, len, info=
.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), info, le=
n);
+ 			break;
+ 		case CPU_TYPE_POWERPC64:
+ 			if ( mach_o::relocatable::Reader<ppc64>::validFile(p) )
+-				return this->addObject(new typename mach_o::relocatable::Reader<ppc64=
>::Reader(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputO=
rdinal), info, len);
++				return this->addObject(new mach_o::relocatable::Reader<ppc64>::Reader=
(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), =
info, len);
+ 			else if ( mach_o::dylib::Reader<ppc64>::validFile(p, info.options.fBun=
dleLoader) )
+-				return this->addDylib(new typename mach_o::dylib::Reader<ppc64>::Read=
er(p, len, info.path, info.options, fOptions.readerOptions(), fNextInputOrd=
inal), info, len);
++				return this->addDylib(new mach_o::dylib::Reader<ppc64>::Reader(p, len=
, info.path, info.options, fOptions.readerOptions(), fNextInputOrdinal), in=
fo, len);
+ 			else if ( archive::Reader<ppc64>::validFile(p, len) )
+-				return this->addArchive(new typename archive::Reader<ppc64>::Reader(p=
, len, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal=
), info, len);
++				return this->addArchive(new archive::Reader<ppc64>::Reader(p, len, in=
fo.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), info, =
len);
+ 			break;
+ 		case CPU_TYPE_I386:
+ 			if ( mach_o::relocatable::Reader<x86>::validFile(p) )
+-				return this->addObject(new typename mach_o::relocatable::Reader<x86>:=
:Reader(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrd=
inal), info, len);
++				return this->addObject(new mach_o::relocatable::Reader<x86>::Reader(p=
, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), in=
fo, len);
+ 			else if ( mach_o::dylib::Reader<x86>::validFile(p, info.options.fBundl=
eLoader) )
+-				return this->addDylib(new typename mach_o::dylib::Reader<x86>::Reader=
(p, len, info.path, info.options, fOptions.readerOptions(), fNextInputOrdin=
al), info, len);
++				return this->addDylib(new mach_o::dylib::Reader<x86>::Reader(p, len, =
info.path, info.options, fOptions.readerOptions(), fNextInputOrdinal), info=
, len);
+ 			else if ( archive::Reader<x86>::validFile(p, len) )
+-				return this->addArchive(new typename archive::Reader<x86>::Reader(p, =
len, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal),=
 info, len);
++				return this->addArchive(new archive::Reader<x86>::Reader(p, len, info=
.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), info, le=
n);
+ 			break;
+ 		case CPU_TYPE_X86_64:
+ 			if ( mach_o::relocatable::Reader<x86_64>::validFile(p) )
+-				return this->addObject(new typename mach_o::relocatable::Reader<x86_6=
4>::Reader(p, info.path, info.modTime, fOptions.readerOptions(), fNextInput=
Ordinal), info, len);
++				return this->addObject(new mach_o::relocatable::Reader<x86_64>::Reade=
r(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal),=
 info, len);
+ 			else if ( mach_o::dylib::Reader<x86_64>::validFile(p, info.options.fBu=
ndleLoader) )
+-				return this->addDylib(new typename mach_o::dylib::Reader<x86_64>::Rea=
der(p, len, info.path, info.options, fOptions.readerOptions(), fNextInputOr=
dinal), info, len);
++				return this->addDylib(new mach_o::dylib::Reader<x86_64>::Reader(p, le=
n, info.path, info.options, fOptions.readerOptions(), fNextInputOrdinal), i=
nfo, len);
+ 			else if ( archive::Reader<x86_64>::validFile(p, len) )
+-				return this->addArchive(new typename archive::Reader<x86_64>::Reader(=
p, len, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdina=
l), info, len);
++				return this->addArchive(new archive::Reader<x86_64>::Reader(p, len, i=
nfo.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), info,=
 len);
+ 		case CPU_TYPE_ARM:
+ 			if ( mach_o::relocatable::Reader<arm>::validFile(p) )
+-				return this->addObject(new typename mach_o::relocatable::Reader<arm>:=
:Reader(p, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrd=
inal), info, len);
++				return this->addObject(new mach_o::relocatable::Reader<arm>::Reader(p=
, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), in=
fo, len);
+ 			else if ( mach_o::dylib::Reader<arm>::validFile(p, info.options.fBundl=
eLoader) )
+-				return this->addDylib(new typename mach_o::dylib::Reader<arm>::Reader=
(p, len, info.path, info.options, fOptions.readerOptions(), fNextInputOrdin=
al), info, len);
++				return this->addDylib(new mach_o::dylib::Reader<arm>::Reader(p, len, =
info.path, info.options, fOptions.readerOptions(), fNextInputOrdinal), info=
, len);
+ 			else if ( archive::Reader<arm>::validFile(p, len) )
+-				return this->addArchive(new typename archive::Reader<arm>::Reader(p, =
len, info.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal),=
 info, len);
++				return this->addArchive(new archive::Reader<arm>::Reader(p, len, info=
.path, info.modTime, fOptions.readerOptions(), fNextInputOrdinal), info, le=
n);
+ 			break;
+ 			break;
+ 	}
+=20
+ #if LTO_SUPPORT
+ 	if ( lto::Reader::validFile(p, len, fArchitecture) ) {
+-		return this->addObject(new typename lto::Reader(p, len, info.path, info=
.modTime, fOptions.readerOptions(), fArchitecture), info, len);
++		return this->addObject(new lto::Reader(p, len, info.path, info.modTime,=
 fOptions.readerOptions(), fArchitecture), info, len);
+ 	}
+ 	else if ( !lto::Reader::loaded() && (p[0] =3D=3D 'B') && (p[1] =3D=3D 'C=
')  ) {
+ 		throw "could not process object file.  Looks like an llvm bitcode objec=
t file, but libLTO.dylib could not be loaded";
diff --git a/recipes-devtools/odcctools/odcctools2-crosssdk_758.159.bb b/re=
cipes-devtools/odcctools/odcctools2-crosssdk_758.159.bb
index 3c13e59..6c15d8c 100644
--- a/recipes-devtools/odcctools/odcctools2-crosssdk_758.159.bb
+++ b/recipes-devtools/odcctools/odcctools2-crosssdk_758.159.bb
@@ -4,7 +4,8 @@ SRC_URI =3D "file://apple-x86-odcctools_758.159-0flosoft11.=
tar.gz \
            file://fix-758.patch \
            file://vm_types_h.patch \
            file://as.patch \
-           file://arch_c.patch "
+           file://arch_c.patch \
+           file://ld64-typename.patch"
 LICENSE =3D "ApplePSLicense-2.0"
=20
 S =3D "${WORKDIR}/apple-x86-odcctools-758.159"

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


