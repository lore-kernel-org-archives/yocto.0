Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 610584C80815
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 16:30:40 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Nov 2010 14:30:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,175,1288594800"; d="scan'208";a="625174638"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 09 Nov 2010 14:29:54 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Tue, 9 Nov 2010 14:29:54 -0800
Received: from orsmsx501.amr.corp.intel.com ([10.22.226.209]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi; Tue, 9 Nov 2010
	14:29:53 -0800
From: "Stewart, David C" <david.c.stewart@intel.com>
To: "'Alex.deVries@windriver.com'" <Alex.deVries@windriver.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Date: Tue, 9 Nov 2010 14:29:52 -0800
Thread-Topic: [yocto] Running builds under strace
Thread-Index: AcuAWytChvSWw8msR+OYRmdSts6tggAAoPQM
Message-ID: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BBC51144@orsmsx501.amr.corp.intel.com>
In-Reply-To: <ED29F0AE-CCDF-48FC-AB38-E84BCF789086@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Running builds under strace
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
X-List-Received-Date: Tue, 09 Nov 2010 22:30:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is quite helpful, as we have been discussing this exact topic this wee=
k.=20

Maybe capture this in Bugzilla? (Not at my computer at the moment or would =
help). Thanks again.=20

Davest
Sent from my Blackberry

----- Original Message -----
From: Alex deVries [mailto:alex.devries@windriver.com]
Sent: Tuesday, November 09, 2010 02:10 PM=0A=
To: Yocto Project <yocto@yoctoproject.org>
Subject: [yocto] Running builds under strace


I'm working on swabber support, and as part of that need to enable running =
builds in strace.  The code for this is in josh's poky-contrib.

For anyone else who is looking at this, various packages failed to build wi=
th -jN (with N>1).  My theory is that running these builds under strace cha=
nges the build timing and exposes existing parallel build problems that don=
't normally show themselves.

To address this, I had to modify various recipes to set PARALLEL_MAKE =3D "=
" for various packages.

The following packages had to be modified:
#	modified:   meta/recipes-connectivity/openssl/openssl.inc
#	modified:   meta/recipes-core/eglibc/eglibc_2.12.bb
#	modified:   meta/recipes-core/glib-2.0/glib-2.0_2.24.1.bb
#	modified:   meta/recipes-core/libxml/libxml2.inc
#	modified:   meta/recipes-core/readline/readline.inc
#	modified:   meta/recipes-core/util-linux/util-linux.inc
#	modified:   meta/recipes-devtools/binutils/binutils.inc
#	modified:   meta/recipes-devtools/bison/bison_2.4.2.bb
#	modified:   meta/recipes-devtools/cmake/cmake.inc
#	modified:   meta/recipes-devtools/elfutils/elfutils_0.148.bb
#	modified:   meta/recipes-devtools/gcc/gcc-common.inc
#	modified:   meta/recipes-devtools/m4/m4_1.4.13.bb
#	modified:   meta/recipes-devtools/opkg/opkg.inc
#	modified:   meta/recipes-devtools/pkgconfig/pkgconfig.inc
#	modified:   meta/recipes-devtools/prelink/prelink_git.bb
#	modified:   meta/recipes-devtools/qemu/qemu.inc
#	modified:   meta/recipes-devtools/qemu/qemu_0.12.4.bb
#	modified:   meta/recipes-devtools/quilt/quilt.inc
#	modified:   meta/recipes-devtools/rpm/rpm_5.1.10.bb
#	modified:   meta/recipes-devtools/tcltk/tcl_8.5.8.bb
#	modified:   meta/recipes-support/beecrypt/beecrypt_4.1.2.bb
#	modified:   meta/recipes-support/curl/curl_7.21.0.bb
#	modified:   meta/recipes-support/gmp/gmp.inc
#	modified:   meta/recipes-support/libmpc/libmpc_0.8.2.bb
#	modified:   meta/recipes-support/libxslt/libxslt_1.1.26.bb
#	modified:   meta/recipes-support/lzo/lzo_2.03.bb
#	modified:   meta/recipes-support/popt/popt_1.16.bb
#

The only really concerning ones were eglibc and gcc.  We can't set PARALLEL=
_MAKE=3D"" for these as these are very large, and builds would be very slow=
.  Packages like popt don't matter as much, you don't save that much time b=
y building them with -j16.

Josh and I are trying to figure out how to address these.

Swabber support is coming soon!

- A
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

