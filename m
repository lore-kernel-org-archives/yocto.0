Return-Path: <jim.schimpf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21948E008AE; Tue, 27 Oct 2015 02:30:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, MALFORMED_FREEMAIL, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jim.schimpf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [206.46.173.17 listed in list.dnswl.org]
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.9 MALFORMED_FREEMAIL Bad headers on message from free email service
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 3601 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Oct 2015 02:30:24 PDT
Received: from vms173017pub.verizon.net (vms173017pub.verizon.net
	[206.46.173.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 030B9E007E4
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 02:30:24 -0700 (PDT)
Received: from [192.168.1.127] ([72.95.202.94]) by vms173017.mailsrvcs.net
	(Oracle Communications Messaging Server 7.0.5.32.0 64bit (built Jul 16
	2014)) with ESMTPA id <0NWV00ACGEA19I40@vms173017.mailsrvcs.net> for
	yocto@yoctoproject.org; Tue, 27 Oct 2015 03:30:07 -0500 (CDT)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.1 cv=EdU1O6SC c=1 sm=1 tr=0	a=YefDLJMs9yLlf3WwVz5XUA==:117
	a=pGLkceISAAAA:8 a=oR5dmqMzAAAA:8	a=IkcTkHD0fZMA:10 a=5lJygRwiOn0A:10
	a=NEAV23lmAAAA:8 a=mDV3o1hIAAAA:8	a=rirn6MUGAAAA:8
	a=JBBZ5juyStEWnc7LHrAA:9 a=QEXdDO2ut3YA:10	a=zcvfvmk1Zg4A:10
From: jim Schimpf <jim.schimpf@gmail.com>
Message-id: <6FA90B68-FBDB-4C93-A57B-3954B5774536@gmail.com>
Date: Tue, 27 Oct 2015 04:30:01 -0400
To: yocto@yoctoproject.org
MIME-version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Mailer: Apple Mail (2.2104)
Subject: Another recipe problem.
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
X-List-Received-Date: Tue, 27 Oct 2015 09:30:28 -0000
Content-type: text/plain; charset=utf-8
Content-transfer-encoding: quoted-printable

Hi,

	This recipe makes gets to do_install and fails. The failure is:

| cp eliot /usr/local/bin/
| cp: cannot create regular file '/usr/local/bin/eliot': Permission =
denied   <=E2=80=94=E2=80=94PROBLEM
| make[1]: *** [install] Error 1
| make[1]: Leaving directory =
`/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/=
elliot/1.0-r0/git/src'
| make: *** [install] Error 2
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at =
/home/jim/yocto/poky/BB1/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/e=
lliot/1.0-r0/temp/log.do_install.5834)
ERROR: Task 2 =
(/home/jim/yocto/poky/meta-local/recipes-IOT/elliot/elliot.bb, =
do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 404 tasks of which 403 didn't need to be =
rerun and 1 failed.
No currently running tasks (390 of 409)

The recipe is:

# -----------------------------------------------------
# Header Meta data
SUMMARY =3D "Internet control tool"
DESCRIPTION =3D "Allows easy control of IOT devices wiht a custom built =
language\
It allows easy extension for all sorts of controls"
AUTHOR =3D "Christophe de Dinechin"
HOMEPAGE =3D "https://c3d/github.io/eliot/"
LICENSE =3D "GPL-2.0"
LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D037a8d95ad2212b21ca9d82e49dc36be"
PR =3D "r0"

# -----------------------------------------------------
# Source data
SRCREV =3D "6f93d62c181adb2d09de2a2f7209e75d444a9af1"
SRC_URI =3D =
"git://github.com/c3d/eliot.git;user=3Djschimpf-pandora;protocol=3Dhttps"
inherit autotools gettext=20

S =3D "${WORKDIR}/git=E2=80=9D

The make file (which builds the executable in git/src is below : There =
are a number of Makefile.<system>  config files like Makefile.config, =
Makefile..mingw or Makefile.macosx. Should I add another with specifics =
for Yocto ?  Also what would be the path to the Yocto /usr/bin ?

=
#*************************************************************************=
*****
# Makefile                                                       ELIOT =
project=20
=
#*************************************************************************=
*****
#
#  File Description:
#
#    Makefile for the Extensible Language for the Internet of Things
#
#
#
#
#
#
#
#
=
#*************************************************************************=
*****
# This program is released under the GNU General Public License.
# See http://www.gnu.org/copyleft/gpl.html and Matthew 25:22 for details
#  (C) 2000-2015 Christophe de Dinechin <christophe@taodyne.com>
#  (C) 2010-2015 Taodyne SAS
=
#*************************************************************************=
*****

# Set to 'none' to disable LLVM
COMPILER=3Dnone
#COMPILER=3Dllvm

PREFIX=3D/usr/local/
PREFIX_BIN=3D$(PREFIX)bin/				<=E2=80=94 =
Problem line
PREFIX_LIB=3D$(PREFIX)lib/eliot/

# List of modules to build
MODULES=3Dbasics io math text remote time-functions temperature
MODULES_SOURCES=3D$(MODULES:%=3D%-module.cpp)
MODULES_HEADERS=3D$(MODULES:%=3D%-module.h)

# List of source files to process
SOURCES     =3D					\
	main.cpp				\
	tree.cpp				\
	action.cpp				\
	options.cpp				\
	scanner.cpp				\
	parser.cpp				\
	flight_recorder.cpp			\
	errors.cpp				\
	gc.cpp					\
	syntax.cpp				\
	renderer.cpp				\
	context.cpp				\
	runtime.cpp				\
	bytecode.cpp				\
	interpreter.cpp				\
	opcodes.cpp				\
	cdecls.cpp				\
	serializer.cpp				\
        traces_base.cpp                         \
	winglob.cpp				\
	$(MODULES_SOURCES)			\
	$(SOURCES_$(COMPILER))

SOURCES_llvm =3D					\
	compiler.cpp				\
	compiler-llvm.cpp			\
	compiler-gc.cpp				\
	types.cpp				\
	args.cpp				\
	expred.cpp				\
	parms.cpp				\
	unit.cpp				\

PRODUCT=3Deliot$(EXE)

include $(BROOT)Makefile.config

# Name of 'llvm-config' to use (e.g. llvm-config-2.9)
LLVM_CONFIG=3Dllvm-config

LLVM_VERSION=3D$(LLVM_VERSION_$(COMPILER))
LLVM_FLAGS=3D$(LLVM_FLAGS_$(COMPILER))
LLVM_LIBS=3D$(LLVM_LIBS_$(COMPILER))
LLVM_LDFLAGS=3D$(LLVM_LDFLAGS_$(COMPILER))

# When LLVM is enabled, we get those
LLVM_VERSION_llvm=3D$(shell $(LLVM_CONFIG) --version | sed -e =
s/[.a-z-]//g)
LLVM_FLAGS_llvm=3D$(shell $(LLVM_CONFIG) --cppflags | sed -e =
s/-DNDEBUG//g) \
		  -DLLVM_VERSION=3D$(LLVM_VERSION)
LLVM_LIBS_llvm=3D$(shell $(LLVM_CONFIG) --libs)
LLVM_LDFLAGS_llvm=3D$(shell $(LLVM_CONFIG) --ldflags) =
$(LDFLAGS_llvm$(LLVM_VERSION))

# When LLVM is not enabled
LLVM_FLAGS_none=3D-DINTERPRETER_ONLY

CPPFLAGS+=3D$(LLVM_FLAGS) -I . -I include =
$(CPPFLAGS_llvm$(LLVM_VERSION))
LDFLAGS=3D$(LLVM_LIBS) $(LLVM_LDFLAGS)
CPPFLAGS_llvm31=3D-Wno-unused-local-typedefs
CPPFLAGS_llvm30=3D-Wno-unused-local-typedefs
CPPFLAGS_llvm350=3D-std=3Dc++11
CPPFLAGS_llvm360=3D-std=3Dc++11
LDFLAGS_llvm350=3D-lz -lncurses
LDFLAGS_llvm360=3D-lz -lncurses

CPPFLAGS+=3D	-DELIOT_BIN=3D'"'$(PREFIX_BIN)'"'	\
		-DELIOT_LIB=3D'"'$(PREFIX_LIB)'"'

install: all
	cp $(PRODUCT) $(PREFIX_BIN)
	mkdir -p $(PREFIX_LIB)
	cp builtins.eliot eliot.syntax C.syntax *.stylesheet =
$(PREFIX_LIB)

test:
	cd ../tests; ./alltests
hello: show_$(COMPILER)_version
show_llvm_version:
	@echo Building with LLVM version $(LLVM_VERSION)
show_none_version:
	@echo Building in interpreter-only mode


opt_tests opt-tests:
	cd ../tests;		\
	./alltests -r O0;	\
	./alltests -r O1;	\
	./alltests -r O2;	\
	./alltests -r O3


# Module-related rules
clean: modules-clean

modules-clean:
	rm -f $(MODULES_SOURCES) $(MODULES_HEADERS)

interp-%:
	$(MAKE) COMPILER=3Dnone $*
ionly-%:
	$(MAKE) COMPILER=3Dnone $*


%-module.cpp: %.tbl %-module.h Makefile
	@echo Generating $@ from $<
	./generate-module-body $* > $@

%-module.h: %.tbl Makefile
	@echo Generating $@ from $<
	./generate-module-header $* >  $@

Thanks for the help

=E2=80=94jim schimpf




