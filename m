Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63ABDE008AE; Tue, 27 Oct 2015 02:38:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9C25E007E4
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 02:38:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 27 Oct 2015 02:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,204,1444719600"; d="scan'208";a="804128031"
Received: from fcheverx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.27])
	by orsmga001.jf.intel.com with ESMTP; 27 Oct 2015 02:38:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jim Schimpf <jim.schimpf@gmail.com>
Date: Tue, 27 Oct 2015 09:38:20 +0000
Message-ID: <3478454.zLQQZIkqJz@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <6FA90B68-FBDB-4C93-A57B-3954B5774536@gmail.com>
References: <6FA90B68-FBDB-4C93-A57B-3954B5774536@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Another recipe problem.
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
X-List-Received-Date: Tue, 27 Oct 2015 09:38:26 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Hi Jim,

On Tuesday 27 October 2015 04:30:01 jim Schimpf wrote:
> Hi,
>=20
> =09This recipe makes gets to do_install and fails. The failure is:
> | cp eliot /usr/local/bin/
> | cp: cannot create regular file '/usr/local/bin/eliot': Permission d=
enied =20
> | <=E2=80=94=E2=80=94PROBLEM make[1]: *** [install] Error 1
> | make[1]: Leaving directory
> | `/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-g=
nueabi
> | /elliot/1.0-r0/git/src' make: *** [install] Error 2
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> | /home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gn=
ueabi/
> | elliot/1.0-r0/temp/log.do_install.5834)
> ERROR: Task 2 (/home/jim/yocto/poky/meta-local/recipes-IOT/elliot/ell=
iot.bb,
> do_install) failed with exit code '1' NOTE: Tasks Summary: Attempted =
404
> tasks of which 403 didn't need to be rerun and 1 failed. No currently=

> running tasks (390 of 409)
>=20
> The recipe is:
>=20
> # -----------------------------------------------------
> # Header Meta data
> SUMMARY =3D "Internet control tool"
> DESCRIPTION =3D "Allows easy control of IOT devices wiht a custom bui=
lt
> language\ It allows easy extension for all sorts of controls"
> AUTHOR =3D "Christophe de Dinechin"
> HOMEPAGE =3D "https://c3d/github.io/eliot/"
> LICENSE =3D "GPL-2.0"
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D037a8d95ad2212b21ca9d82e49=
dc36be"
> PR =3D "r0"
>=20
> # -----------------------------------------------------
> # Source data
> SRCREV =3D "6f93d62c181adb2d09de2a2f7209e75d444a9af1"
> SRC_URI =3D
> "git://github.com/c3d/eliot.git;user=3Djschimpf-pandora;protocol=3Dht=
tps"
> inherit autotools gettext
>=20
> S =3D "${WORKDIR}/git=E2=80=9D
>=20
> The make file (which builds the executable in git/src is below : Ther=
e are a
> number of Makefile.<system>  config files like Makefile.config,
> Makefile..mingw or Makefile.macosx. Should I add another with specifi=
cs for
> Yocto ?  Also what would be the path to the Yocto /usr/bin ?
>=20
> #********************************************************************=
*******
> *** # Makefile                                                       =
ELIOT
> project
> #********************************************************************=
******
> **** #
> #  File Description:
> #
> #    Makefile for the Extensible Language for the Internet of Things
> #
> #
> #
> #
> #
> #
> #
> #
> #********************************************************************=
*******
> *** # This program is released under the GNU General Public License.
> # See http://www.gnu.org/copyleft/gpl.html and Matthew 25:22 for deta=
ils
> #  (C) 2000-2015 Christophe de Dinechin <christophe@taodyne.com>
> #  (C) 2010-2015 Taodyne SAS
> #********************************************************************=
*******
> ***
>=20
> # Set to 'none' to disable LLVM
> COMPILER=3Dnone
> #COMPILER=3Dllvm
>=20
> PREFIX=3D/usr/local/
> PREFIX_BIN=3D$(PREFIX)bin/=09=09=09=09<=E2=80=94 Problem line
> PREFIX_LIB=3D$(PREFIX)lib/eliot/
>=20
> # List of modules to build
> MODULES=3Dbasics io math text remote time-functions temperature
> MODULES_SOURCES=3D$(MODULES:%=3D%-module.cpp)
> MODULES_HEADERS=3D$(MODULES:%=3D%-module.h)
>=20
> # List of source files to process
> SOURCES     =3D=09=09=09=09=09\
> =09main.cpp=09=09=09=09\
> =09tree.cpp=09=09=09=09\
> =09action.cpp=09=09=09=09\
> =09options.cpp=09=09=09=09\
> =09scanner.cpp=09=09=09=09\
> =09parser.cpp=09=09=09=09\
> =09flight_recorder.cpp=09=09=09\
> =09errors.cpp=09=09=09=09\
> =09gc.cpp=09=09=09=09=09\
> =09syntax.cpp=09=09=09=09\
> =09renderer.cpp=09=09=09=09\
> =09context.cpp=09=09=09=09\
> =09runtime.cpp=09=09=09=09\
> =09bytecode.cpp=09=09=09=09\
> =09interpreter.cpp=09=09=09=09\
> =09opcodes.cpp=09=09=09=09\
> =09cdecls.cpp=09=09=09=09\
> =09serializer.cpp=09=09=09=09\
>         traces_base.cpp                         \
> =09winglob.cpp=09=09=09=09\
> =09$(MODULES_SOURCES)=09=09=09\
> =09$(SOURCES_$(COMPILER))
>=20
> SOURCES_llvm =3D=09=09=09=09=09\
> =09compiler.cpp=09=09=09=09\
> =09compiler-llvm.cpp=09=09=09\
> =09compiler-gc.cpp=09=09=09=09\
> =09types.cpp=09=09=09=09\
> =09args.cpp=09=09=09=09\
> =09expred.cpp=09=09=09=09\
> =09parms.cpp=09=09=09=09\
> =09unit.cpp=09=09=09=09\
>=20
> PRODUCT=3Deliot$(EXE)
>=20
> include $(BROOT)Makefile.config
>=20
> # Name of 'llvm-config' to use (e.g. llvm-config-2.9)
> LLVM_CONFIG=3Dllvm-config
>=20
> LLVM_VERSION=3D$(LLVM_VERSION_$(COMPILER))
> LLVM_FLAGS=3D$(LLVM_FLAGS_$(COMPILER))
> LLVM_LIBS=3D$(LLVM_LIBS_$(COMPILER))
> LLVM_LDFLAGS=3D$(LLVM_LDFLAGS_$(COMPILER))
>=20
> # When LLVM is enabled, we get those
> LLVM_VERSION_llvm=3D$(shell $(LLVM_CONFIG) --version | sed -e s/[.a-z=
-]//g)
> LLVM_FLAGS_llvm=3D$(shell $(LLVM_CONFIG) --cppflags | sed -e s/-DNDEB=
UG//g) \
> =09=09  -DLLVM_VERSION=3D$(LLVM_VERSION)
> LLVM_LIBS_llvm=3D$(shell $(LLVM_CONFIG) --libs)
> LLVM_LDFLAGS_llvm=3D$(shell $(LLVM_CONFIG) --ldflags)
> $(LDFLAGS_llvm$(LLVM_VERSION))
>=20
> # When LLVM is not enabled
> LLVM_FLAGS_none=3D-DINTERPRETER_ONLY
>=20
> CPPFLAGS+=3D$(LLVM_FLAGS) -I . -I include $(CPPFLAGS_llvm$(LLVM_VERSI=
ON))
> LDFLAGS=3D$(LLVM_LIBS) $(LLVM_LDFLAGS)
> CPPFLAGS_llvm31=3D-Wno-unused-local-typedefs
> CPPFLAGS_llvm30=3D-Wno-unused-local-typedefs
> CPPFLAGS_llvm350=3D-std=3Dc++11
> CPPFLAGS_llvm360=3D-std=3Dc++11
> LDFLAGS_llvm350=3D-lz -lncurses
> LDFLAGS_llvm360=3D-lz -lncurses
>=20
> CPPFLAGS+=3D=09-DELIOT_BIN=3D'"'$(PREFIX_BIN)'"'=09\
> =09=09-DELIOT_LIB=3D'"'$(PREFIX_LIB)'"'
>=20
> install: all
> =09cp $(PRODUCT) $(PREFIX_BIN)
> =09mkdir -p $(PREFIX_LIB)
> =09cp builtins.eliot eliot.syntax C.syntax *.stylesheet $(PREFIX_LIB)=

>=20
> test:
> =09cd ../tests; ./alltests
> hello: show_$(COMPILER)_version
> show_llvm_version:
> =09@echo Building with LLVM version $(LLVM_VERSION)
> show_none_version:
> =09@echo Building in interpreter-only mode
>=20
>=20
> opt_tests opt-tests:
> =09cd ../tests;=09=09\
> =09./alltests -r O0;=09\
> =09./alltests -r O1;=09\
> =09./alltests -r O2;=09\
> =09./alltests -r O3
>=20
>=20
> # Module-related rules
> clean: modules-clean
>=20
> modules-clean:
> =09rm -f $(MODULES_SOURCES) $(MODULES_HEADERS)
>=20
> interp-%:
> =09$(MAKE) COMPILER=3Dnone $*
> ionly-%:
> =09$(MAKE) COMPILER=3Dnone $*
>=20
>=20
> %-module.cpp: %.tbl %-module.h Makefile
> =09@echo Generating $@ from $<
> =09./generate-module-body $* > $@
>=20
> %-module.h: %.tbl Makefile
> =09@echo Generating $@ from $<
> =09./generate-module-header $* >  $@
>=20

Two things:

1) You need to pass in PREFIX as ${prefix} so that it ends up as /usr a=
nd not=20
/usr/local. You'd do this by doing something like:

EXTRA_OEMAKE +=3D "PREFIX=3D'${prefix}'"

2) The "install" target in that makefile needs patching so it supports =
an=20
additional install path variable (typically named "DESTDIR") which you =
would=20
pass in through EXTRA_OEMAKE, taking the value of '${D}'. I guess by no=
w=20
you're familiar with patching files from recipes?

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

