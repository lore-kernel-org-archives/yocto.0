Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E836E00B20; Thu,  1 May 2014 12:05:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
X-Greylist: delayed 74 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 May 2014 12:05:30 PDT
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8CF8E00B8C
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 12:05:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 May 2014 12:03:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,966,1389772800"; d="scan'208";a="533275481"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2014 12:03:40 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
	ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 May 2014 12:03:40 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX114.amr.corp.intel.com ([169.254.8.17]) with mapi id
	14.03.0123.003; Thu, 1 May 2014 12:03:40 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/2] meta-darwin on dylan branch
Thread-Index: AQHPZXAPhl8owFkq0kOkPmA62349Bg==
Date: Thu, 1 May 2014 19:03:39 +0000
Message-ID: <470950EC-4779-4EB8-9EDF-938AB38DD50C@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.19]
MIME-Version: 1.0
Subject: [PATCH 1/2] meta-darwin on dylan branch
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
X-List-Received-Date: Thu, 01 May 2014 19:05:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <29B75C6CE3038D4880EBE6B7D65752C1@intel.com>
Content-Transfer-Encoding: quoted-printable

commit 980fb673e887f321d6b417b3aecbb380fa2561d3
Author: james woodyatt <james.woodyatt@intel.com>
Date:   Thu May 1 11:57:05 2014 -0700

    Properly configure util-linux when ncurses is configured =97with-libter=
m=3Dtinfo.
   =20
    Amend oecore.patch to modify the util-linux recipe so that it applies a=
 patch
    to the fdisk/Makemodule.am file to add -ltinfo to the linker command li=
ne when
    HAVE_TINFO and HAVE_NCURSES are both defined.

diff --git a/oecore.patch b/oecore.patch
index 333b715..7371244 100644
--- a/oecore.patch
+++ b/oecore.patch
@@ -3242,3 +3242,33 @@ index b1d2612..1ba0d12 100644
 +
 +BBCLASSEXTEND =3D "nativesdk"
 \ No newline at end of file
+diff --git a/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.pat=
ch b/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.patch
+new file mode 100644
+index 0000000..df196b5
+--- /dev/null
++++ b/meta/recipes-core/util-linux/util-linux/cfdisk-makemodule.patch
+@@ -0,0 +1,12 @@
++--- util-linux-2.22.2.orig/fdisks/Makemodule.am	2014-04-30 17:02:21.46900=
0162 -0700
+++++ util-linux-2.22.2/fdisks/Makemodule.am	2014-04-30 17:02:55.390999973 =
-0700
++@@ -78,6 +78,9 @@
++ cfdisk_LDADD +=3D -lslang
++ else
++ if HAVE_NCURSES
+++if HAVE_TINFO
+++cfdisk_LDADD +=3D -ltinfo
+++endif
++ cfdisk_LDADD +=3D @NCURSES_LIBS@
++ endif
++ endif
+diff --git a/meta/recipes-core/util-linux/util-linux_2.22.2.bb b/meta/reci=
pes-core/util-linux/util-linux_2.22.2.bb
+index 43a55a6..5553411 100644
+--- a/meta/recipes-core/util-linux/util-linux_2.22.2.bb
++++ b/meta/recipes-core/util-linux/util-linux_2.22.2.bb
+@@ -8,6 +8,7 @@ SRC_URI +=3D "file://util-linux-ng-replace-siginterrupt.pa=
tch \
+             file://configure-sbindir.patch \
+             file://fix-configure.patch \
+             file://mbsalign-license.patch \
++            file://cfdisk-makemodule.patch \
+ "
+=20
+ SRC_URI[md5sum] =3D "3e379b4d8b9693948d751c154614c73e"

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


