Return-Path: <Paul.Ourada@Covidien.com>
Received: from mx01no.tycohealthcare.com (mx01no.tycohealthcare.com
	[216.75.208.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id B06A64C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 09:41:42 -0500 (CDT)
X-IronPort-AV: E=Sophos;i="4.67,228,1309752000"; d="scan'208";a="273168664"
Received: from unknown (HELO tamans-bh01.thcg.net) ([10.80.3.106])
	by mx01no.tycohealthcare.com with ESMTP; 19 Jul 2011 10:41:12 -0400
Received: from TAMANS-BE04.thcg.net ([10.80.3.121]) by tamans-bh01.thcg.net
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Tue, 19 Jul 2011 10:41:12 -0400
X-MimeOLE: Produced By Microsoft Exchange V6.5
MIME-Version: 1.0
Date: Tue, 19 Jul 2011 10:41:10 -0400
Message-ID: <2A069A8019B2DF43BD330EE490B1EF527F2A16@TAMANS-BE04.thcg.net>
In-Reply-To: <E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
thread-topic: Trying to create OpenDDS recipe
thread-index: AcxGHeyEAfvw+c5tSYO+b4o8R7mEBgAASq4Q
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org><1311052872-10569-2-git-send-email-galak@kernel.crashing.org><CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com><4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>
	<E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
Cc: "Yocto discussion list" <yocto@yoctoproject.org>
X-OriginalArrivalTime: 19 Jul 2011 14:41:12.0482 (UTC)
	FILETIME=[E7DD8020:01CC4621]
Subject: Trying to create OpenDDS recipe
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
X-List-Received-Date: Tue, 19 Jul 2011 14:41:43 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I hope this is the correct place to post this. If not, please let me
know.

I'm trying to create a recipe for OpenDDS. The recipe works so far as
fetching, unpacking, and configuration. Or it seems to. :) Part of the
configuration piece is that it also pulls down ACE+TAO real-time CORBA.
This part works fine as well.

I set S as follows to match the unpacking directories enforced by the
tar file:

S =3D ${WORKINGDIR}/DDS

The package comes with a configuration script pre-built, and it expects
to be told where glibc is. So, I write do_configure as follows:

EXTRA_OECONF =3D "-glibc=3D${STAGING_DIR}/${MACHINE}/usr"

do_configure() {
    ${S}/configure ${EXTRA_OECONF}
}

The problem that I run into is during compilation. I write the following
for do_compile()

do_compile() {
    oenote ${STAGING_DIR}
    cd ${S} && make
}

This works right up until there is a compile error in ACE+TAO. Of
course, I build the entire DDS package, including ACE+TAO, with no
hiccups in Ubuntu, so I understand that this is a
cross-compile/environment issue.

The compile error is that it cannot find features.h, which is clearly in
${STAGING_LIBDIR}/${MACHINE}/usr/include. The compile command which is
being executed is as follows (this is going to be ugly, let me know if
there's a better way to include this, such as a pastebin somewhere):

| make[1]: Entering directory
`/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE
_wrappers/TAO/TAO_IDL'
|=20
| GNUmakefile:
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/TAO/TAO_IDL/GNUmakefile.TAO_IDL_EXE MAKEFLAGS=3Dw
|=20
| i586-poky-linux-g++ -march=3Di586
--sysroot=3D/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86
-fvisibility=3Dhidden -fvisibility-inlines-hidden -W -Wall =
-Wpointer-arith
-ggdb -pipe -D_REENTRANT -DACE_HAS_AIO_CALLS -D_GNU_SOURCE
-I/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/AC
E_wrappers -DACE_HAS_EXCEPTIONS -DACE_NO_INLINE -I../.. -Iinclude
-Ibe_include -Ife -I.. -DTAO_IDL_PREPROCESSOR=3D\"i586-poky-linux-g++
-march=3Di586 =
--sysroot=3D/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux86\"
-c -o .obj/driver/drv_preproc.o driver/drv_preproc.cpp
| <command-line>:0:22: warning: missing terminating " character
| In file included from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config-linux-common.h:30:0,
|                  from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config-linux.h:14,
|                  from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config.h:1,
|                  from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config-macros.h:24,
|                  from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config-lite.h:24,
|                  from
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/os_include/os_limits.h:21,
|                  from include/idl_defines.h:70,
|                  from driver/drv_preproc.cpp:70:
|
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE_
wrappers/ace/config-posix.h:7:20: fatal error: unistd.h: No such file or
directory
| compilation terminated.
| make[1]: *** [.obj/driver/drv_preproc.o] Error 1
| make[1]: Leaving directory
`/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/ACE
_wrappers/TAO/TAO_IDL'
| make: *** [TAO_IDL_EXE] Error 2
| ERROR: Function 'do_compile' failed (see
/opt/yocto/poky-5.0.1-build/tmp/work/i586-poky-linux/opendds-2.3-r0/temp
/log.do_compile.17412 for further information)
NOTE: package opendds-2.3-r0: task do_compile: Failed
ERROR: Task 5
(/opt/yocto/poky-bernard-5.0.1/meta/recipes-middleware/opendds/opendds_2
.3.bb, do_compile) failed with exit code '1'

The thing that is puzzling me is that --sysroot seems to be pointing in
the general direction of ${STAGING_DIR} and so the include directive,
#include <features.h> should be good. I have checked, and features.h is
in the /usr/include subdirectory there.

Does anyone have a clue they could lend me?

Thanks,

Paul E. Ourada
Sr. Principal Software Engineer
Covidien, Energy-based Devices
5920 Longbow Drive
Boulder, CO 80301
paul.ourada@covidien.com
www.covidien.com
Main: 303-530-2300
Ofc: 303-581-6940
Fax: 303-581-6741


