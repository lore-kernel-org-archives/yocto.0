Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C48DE008D2; Fri, 15 Sep 2017 10:22:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4956E0078E
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 10:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1505496160; bh=ztrj7QrR7h4GQtE8H2IGMSAjvDiU44+cB4+3
	dBOcooI=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:
	X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=Dg8mmKSryAW8/h/Ozb0ZcPv
	1htKeToP5+o+/60BQNRHrIkpFHOjyZGLWUEAwlPH37B1aeH3U6kldCBdrMaGSsPogi+
	McHh9iKK9I8k302bipZir4f/qf0GlVqtvwxXJ3RBzL25VhKpJ5Wc32k5Qa3V8ni4urW
	OXlsHmXPrnWw4jl98mzqkHJAxghAYdqpDGJ5VfBALDvn1uN2oH9+0lelu0OLt5qUKHM
	fkgetJiJ5i7m67Z0eeXd2tr3+yzVahxl2i5kD6tJwUfuQvOdz6xCmpdZ/QH541+aJ1c
	N/mDYYETizXg7PC0viK6uxYWnYD4xX8eOt0VvKCYs3u8h8ly81g==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=B594iLfw3G4qG5lFSMoUyRzBqD6J1aByfJnaYJLSCPfHcAdUgTvnKN8a2ciyG9DjkY+d8+BlkpfOO2enFQSBz6Zlrdl73PL8cBVHc6VOwh2aJeVsUewXLBeLaum8BOWLjGwD8D69qqayT6MaX7/fo0e7FtGNQg3NXS5SfMwoNUPioaLKu76uMsXPaofUHEWsDWF+vMfXjucPzBoL+wiMaA4WmyZPMukwJyqWWULFfWhRQqhjfBKl7l80YqhFD0Vn+8rM/2weh3oyYj9BV9gIBaBKbyb81o+ytPO528KTWYP34jslY0b+Q55jWAUOhRaBXxPUVUZ+iHObTQuyePqC4A==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [108.228.233.89] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dsuK6-000F0H-Mx; Fri, 15 Sep 2017 13:22:39 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <F134F05EDC574B48AC0E09D6006F7C02@PAULD>
	<CAMKF1srh8uxO1qKPjA=oBKfb2M8o+Wd=A8pqFmsVv7VhnipDBw@mail.gmail.com>
In-Reply-To: <CAMKF1srh8uxO1qKPjA=oBKfb2M8o+Wd=A8pqFmsVv7VhnipDBw@mail.gmail.com>
Date: Fri, 15 Sep 2017 10:22:36 -0700
Message-ID: <9F797701FA4342EFA9E6F0313F0A00F2@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdMuKn+1a50CUXCnTfqXx/YGWGiPDgAGeh8Q
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688e9a464be1a3624cfca604a2557b2864c350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 108.228.233.89
Cc: yocto@yoctoproject.org
Subject: Re: Morty to Pyro upgrade
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
X-List-Received-Date: Fri, 15 Sep 2017 17:22:43 -0000
X-Groupsio-MsgNum: 37914
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_01CF_01D32E0C.8D4C4EF0"

------=_NextPart_000_01CF_01D32E0C.8D4C4EF0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> From: Khem Raj [mailto:raj.khem@gmail.com]=20
>=20
> On Thu, Sep 14, 2017 at 11:15 PM, Paul D. DeRocco
> <pderocco@ix.netcom.com> wrote:
> > I just upgraded to Pyro, and now I get several Python errors in
> > sstate_sign_package(), complaining there is no module named=20
> > oe.gpg_sign.
> >
> > I reused the Morty sstate-cache. Is that legal, or do I=20
> > need to nuke it and start over?
>=20
> its too optimistic to use sstate across releases and I dont=20
> think abi is guaranteed

Nuking sstate-cache didn't change anything. I've attached the full =
console output from my x86 build. My RPi build produces similar errors.

This is on a freshly installed Ubuntu 16.04 system. I installed Pyro =
from git, added meta-intel pyro branch from git, and added =
meta-openembedded pyro branch from their git. So everything should be =
current.

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com

------=_NextPart_000_01CF_01D32E0C.8D4C4EF0
Content-Type: text/plain;
	name="errs.txt"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="errs.txt"

pauld@BUILD:~/yocto-pyro/buildchr32$ bitbake -k core-image-chroma
NOTE: Started PRServer with DBfile: /home/pauld/yocto-pyro/buildchr32/cache=
/prserv.sqlite3, IP: 127.0.0.1, PORT: 35827, PID: 30575
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu: file not f=
ound except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-addptable2i=
mage: file not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-gen-tapdevs=
: file not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-ifup: file =
not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-ifdown: fil=
e not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry oe-find-native-sysr=
oot: file not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-extract-sdk=
: file not found except in DL_DIR
WARNING: ../poky/meta/recipes-devtools/qemu/nativesdk-qemu-helper_1.0.bb: G=
etting checksum for nativesdk-qemu-helper SRC_URI entry runqemu-export-root=
fs: file not found except in DL_DIR
Parsing recipes: 100% |##########################################| Time: 0:=
00:49
Parsing of 1893 .bb files complete (0 cached, 1893 parsed). 2645 targets, 1=
41 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.34.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "ubuntu-16.04"
TARGET_SYS        =3D "i686-poky-linux"
MACHINE           =3D "chroma32-bsp"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.3.2"
TUNE_FEATURES     =3D "m32 core2"
TARGET_FPU        =3D ""
meta             =20
meta-poky        =20
meta-yocto-bsp    =3D "pyro:072430b9b3a78b318b66371c36e2986d2ed5cba4"
meta-intel        =3D "pyro:16aea09d224f3ed2021623d17c3e807f4b8ff18d"
meta-networking  =20
meta-oe          =20
meta-python       =3D "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
meta-chroma32-bsp=20
meta-chroma       =3D "pyro:072430b9b3a78b318b66371c36e2986d2ed5cba4"

Initialising tasks: 100% |#######################################| Time: 0:=
00:05
NOTE: Executing SetScene Tasks
ERROR: packagegroup-core-ssh-openssh-1.0-r1 do_populate_lic_setscene: Error=
 executing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:uninative_changeinterp(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/uninative.bbclass', lineno:=
 109, function: uninative_changeinterp
     0105:
     0106:python uninative_changeinterp () {
     0107:    import subprocess
     0108:    import stat
 *** 0109:    import oe.qa
     0110:
     0111:    if not (bb.data.inherits_class('native', d) or bb.data.inheri=
ts_class('crosssdk', d) or bb.data.inherits_class('cross', d)):
     0112:        return
     0113:
Exception: ImportError: No module named 'oe.qa'

WARNING: Logfile for failed setscene task is /home/pauld/yocto-pyro/buildch=
r32/tmp/work/all-poky-linux/packagegroup-core-ssh-openssh/1.0-r1/temp/log.d=
o_populate_lic_setscene.30703
WARNING: Setscene task (../poky/meta/recipes-core/packagegroups/packagegrou=
p-core-ssh-openssh.bb:do_populate_lic_setscene) failed with exit code '1' -=
 real task will be run instead
ERROR: packagegroup-core-eclipse-debug-1.0-r0 do_populate_lic_setscene: Err=
or executing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:uninative_changeinterp(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/uninative.bbclass', lineno:=
 109, function: uninative_changeinterp
     0105:
     0106:python uninative_changeinterp () {
     0107:    import subprocess
     0108:    import stat
 *** 0109:    import oe.qa
     0110:
     0111:    if not (bb.data.inherits_class('native', d) or bb.data.inheri=
ts_class('crosssdk', d) or bb.data.inherits_class('cross', d)):
     0112:        return
     0113:
Exception: ImportError: No module named 'oe.qa'

WARNING: Logfile for failed setscene task is /home/pauld/yocto-pyro/buildch=
r32/tmp/work/all-poky-linux/packagegroup-core-eclipse-debug/1.0-r0/temp/log=
.do_populate_lic_setscene.30708
WARNING: Setscene task (../poky/meta/recipes-core/packagegroups/packagegrou=
p-core-eclipse-debug.bb:do_populate_lic_setscene) failed with exit code '1'=
 - real task will be run instead
NOTE: Executing RunQueue Tasks
ERROR: quilt-native-0.65-r0 do_patch: Error executing a python function in =
exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:patch_do_patch(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/patch.bbclass', lineno: 76,=
 function: patch_do_patch
     0072:
     0073:should_apply[vardepsexclude] =3D "DATE SRCDATE"
     0074:
     0075:python patch_do_patch() {
 *** 0076:    import oe.patch
     0077:
     0078:    patchsetmap =3D {
     0079:        "patch": oe.patch.PatchTree,
     0080:        "quilt": oe.patch.QuiltTree,
Exception: ImportError: No module named 'oe.patch'

ERROR: quilt-native-0.65-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/x86_64-linux/quilt-native/0.65-r0/temp/log.do_patch.30772
ERROR: Task (../poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_pa=
tch) failed with exit code '1'
WARNING: libgcc-6.3.0-r0 do_populate_lic: libgcc: No generic license file e=
xists for: GPL-3.0-with-GCC-exception in any provider
WARNING: libgcc-6.3.0-r0 do_populate_lic: Could not copy license file ../po=
ky/meta/files/common-licenses/GPL-3.0 to /home/pauld/yocto-pyro/buildchr32/=
tmp/work/core2-32-poky-linux/libgcc/6.3.0-r0/license-destdir/libgcc/generic=
_GPLv3: [Errno 2] No such file or directory: '../poky/meta/files/common-lic=
enses/GPL-3.0'
WARNING: gcc-cross-i686-6.3.0-r0 do_populate_lic: gcc-cross-i686: No generi=
c license file exists for: GPL-3.0-with-GCC-exception in any provider
WARNING: gcc-cross-i686-6.3.0-r0 do_populate_lic: Could not copy license fi=
le ../poky/meta/files/common-licenses/GPL-3.0 to /home/pauld/yocto-pyro/bui=
ldchr32/tmp/work/x86_64-linux/gcc-cross-i686/6.3.0-r0/license-destdir/gcc-c=
ross-i686/generic_GPLv3: [Errno 2] No such file or directory: '../poky/meta=
/files/common-licenses/GPL-3.0'
WARNING: gcc-runtime-6.3.0-r0 do_populate_lic: gcc-runtime: No generic lice=
nse file exists for: GPL-3.0-with-GCC-exception in any provider
WARNING: libgcc-initial-6.3.0-r0 do_populate_lic: libgcc-initial: No generi=
c license file exists for: GPL-3.0-with-GCC-exception in any provider
WARNING: gcc-cross-initial-i686-6.3.0-r0 do_populate_lic: gcc-cross-initial=
-i686: No generic license file exists for: GPL-3.0-with-GCC-exception in an=
y provider
WARNING: gcc-cross-initial-i686-6.3.0-r0 do_populate_lic: Could not copy li=
cense file ../poky/meta/files/common-licenses/GPL-3.0 to /home/pauld/yocto-=
pyro/buildchr32/tmp/work/x86_64-linux/gcc-cross-initial-i686/6.3.0-r0/licen=
se-destdir/gcc-cross-initial-i686/generic_GPLv3: [Errno 2] No such file or =
directory: '../poky/meta/files/common-licenses/GPL-3.0'
ERROR: gcc-cross-i686-6.3.0-r0 do_populate_lic: Error executing a python fu=
nction in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: gcc-cross-i686-6.3.0-r0 do_populate_lic: Function failed: sstate_sig=
n_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/x86_64-linux/gcc-cross-i686/6.3.0-r0/temp/log.do_populate_lic.3314
ERROR: Task (../poky/meta/recipes-devtools/gcc/gcc-cross_6.3.bb:do_populate=
_lic) failed with exit code '1'
ERROR: libgcc-6.3.0-r0 do_populate_lic: Error executing a python function i=
n exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: libgcc-6.3.0-r0 do_populate_lic: Function failed: sstate_sign_packag=
e
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/core2-32-poky-linux/libgcc/6.3.0-r0/temp/log.do_populate_lic.3294
ERROR: Task (../poky/meta/recipes-devtools/gcc/libgcc_6.3.bb:do_populate_li=
c) failed with exit code '1'
ERROR: gcc-runtime-6.3.0-r0 do_populate_lic: Error executing a python funct=
ion in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: gcc-runtime-6.3.0-r0 do_populate_lic: Function failed: sstate_sign_p=
ackage
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/core2-32-poky-linux/gcc-runtime/6.3.0-r0/temp/log.do_populate_lic.3316
ERROR: Task (../poky/meta/recipes-devtools/gcc/gcc-runtime_6.3.bb:do_popula=
te_lic) failed with exit code '1'
ERROR: libgcc-initial-6.3.0-r0 do_populate_lic: Error executing a python fu=
nction in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: libgcc-initial-6.3.0-r0 do_populate_lic: Function failed: sstate_sig=
n_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/core2-32-poky-linux/libgcc-initial/6.3.0-r0/temp/log.do_populate_lic.3=
343
ERROR: gcc-cross-initial-i686-6.3.0-r0 do_populate_lic: Error executing a p=
ython function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: gcc-cross-initial-i686-6.3.0-r0 do_populate_lic: Function failed: ss=
tate_sign_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/x86_64-linux/gcc-cross-initial-i686/6.3.0-r0/temp/log.do_populate_lic.=
3363
ERROR: Task (../poky/meta/recipes-devtools/gcc/libgcc-initial_6.3.bb:do_pop=
ulate_lic) failed with exit code '1'
ERROR: Task (../poky/meta/recipes-devtools/gcc/gcc-cross-initial_6.3.bb:do_=
populate_lic) failed with exit code '1'
WARNING: glibc-locale-2.25-r0 do_populate_lic: Could not copy license file =
../poky/meta/files/common-licenses/GPL-2.0 to /home/pauld/yocto-pyro/buildc=
hr32/tmp/work/core2-32-poky-linux/glibc-locale/2.25-r0/license-destdir/glib=
c-locale/generic_GPLv2: [Errno 2] No such file or directory: '../poky/meta/=
files/common-licenses/GPL-2.0'
WARNING: glibc-locale-2.25-r0 do_populate_lic: Could not copy license file =
../poky/meta/files/common-licenses/LGPL-2.1 to /home/pauld/yocto-pyro/build=
chr32/tmp/work/core2-32-poky-linux/glibc-locale/2.25-r0/license-destdir/gli=
bc-locale/generic_LGPLv2.1: [Errno 2] No such file or directory: '../poky/m=
eta/files/common-licenses/LGPL-2.1'
WARNING: glibc-locale-2.25-r0 do_populate_lic: Could not copy license file =
/home/pauld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-locale=
/2.25-r0/glibc-2.25/../poky/meta/files/common-licenses/LGPL-2.1 to /home/pa=
uld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-locale/2.25-r0=
/license-destdir/glibc-locale/LGPL-2.1: [Errno 2] No such file or directory=
: '/home/pauld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-loc=
ale/2.25-r0/glibc-2.25/../poky/meta/files/common-licenses/LGPL-2.1'
WARNING: glibc-locale-2.25-r0 do_populate_lic: Could not copy license file =
/home/pauld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-locale=
/2.25-r0/glibc-2.25/../poky/meta/files/common-licenses/GPL-2.0 to /home/pau=
ld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-locale/2.25-r0/=
license-destdir/glibc-locale/GPL-2.0: [Errno 2] No such file or directory: =
'/home/pauld/yocto-pyro/buildchr32/tmp/work/core2-32-poky-linux/glibc-local=
e/2.25-r0/glibc-2.25/../poky/meta/files/common-licenses/GPL-2.0'
ERROR: glibc-locale-2.25-r0 do_populate_lic: QA Issue: glibc-locale: LIC_FI=
LES_CHKSUM points to an invalid file: /home/pauld/yocto-pyro/buildchr32/tmp=
/work/core2-32-poky-linux/glibc-locale/2.25-r0/glibc-2.25/../poky/meta/file=
s/common-licenses/GPL-2.0 [license-checksum]
ERROR: glibc-locale-2.25-r0 do_populate_lic: QA Issue: glibc-locale: LIC_FI=
LES_CHKSUM points to an invalid file: /home/pauld/yocto-pyro/buildchr32/tmp=
/work/core2-32-poky-linux/glibc-locale/2.25-r0/glibc-2.25/../poky/meta/file=
s/common-licenses/LGPL-2.1 [license-checksum]
WARNING: packagegroup-core-eclipse-debug-1.0-r0 do_populate_lic: packagegro=
up-core-eclipse-debug: No generic license file exists for: MIT in any provi=
der
WARNING: packagegroup-core-ssh-openssh-1.0-r1 do_populate_lic: packagegroup=
-core-ssh-openssh: No generic license file exists for: MIT in any provider
ERROR: glibc-locale-2.25-r0 do_populate_lic: Error executing a python funct=
ion in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: glibc-locale-2.25-r0 do_populate_lic: Function failed: sstate_sign_p=
ackage
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/core2-32-poky-linux/glibc-locale/2.25-r0/temp/log.do_populate_lic.3456
ERROR: Task (../poky/meta/recipes-core/glibc/glibc-locale_2.25.bb:do_popula=
te_lic) failed with exit code '1'
WARNING: packagegroup-base-1.0-r83 do_populate_lic: packagegroup-base: No g=
eneric license file exists for: MIT in any provider
WARNING: packagegroup-core-boot-1.0-r17 do_populate_lic: packagegroup-core-=
boot: No generic license file exists for: MIT in any provider
ERROR: packagegroup-core-eclipse-debug-1.0-r0 do_populate_lic: Error execut=
ing a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: packagegroup-core-eclipse-debug-1.0-r0 do_populate_lic: Function fai=
led: sstate_sign_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/all-poky-linux/packagegroup-core-eclipse-debug/1.0-r0/temp/log.do_popu=
late_lic.3474
ERROR: packagegroup-core-ssh-openssh-1.0-r1 do_populate_lic: Error executin=
g a python function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: packagegroup-core-ssh-openssh-1.0-r1 do_populate_lic: Function faile=
d: sstate_sign_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/all-poky-linux/packagegroup-core-ssh-openssh/1.0-r1/temp/log.do_popula=
te_lic.3480
ERROR: Task (../poky/meta/recipes-core/packagegroups/packagegroup-core-ssh-=
openssh.bb:do_populate_lic) failed with exit code '1'
ERROR: Task (../poky/meta/recipes-core/packagegroups/packagegroup-core-ecli=
pse-debug.bb:do_populate_lic) failed with exit code '1'
ERROR: packagegroup-base-1.0-r83 do_populate_lic: Error executing a python =
function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: packagegroup-base-1.0-r83 do_populate_lic: Function failed: sstate_s=
ign_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/chroma32_bsp-poky-linux/packagegroup-base/1.0-r83/temp/log.do_populate=
_lic.3481
ERROR: Task (../poky/meta/recipes-core/packagegroups/packagegroup-base.bb:d=
o_populate_lic) failed with exit code '1'
ERROR: packagegroup-core-boot-1.0-r17 do_populate_lic: Error executing a py=
thon function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was=
:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:sstate_sign_package(d)
     0003:
File: '/home/pauld/yocto-pyro/poky/meta/classes/sstate.bbclass', lineno: 73=
8, function: sstate_sign_package
     0734:	mv -f $TFILE ${SSTATE_PKG}
     0735:}
     0736:
     0737:python sstate_sign_package () {
 *** 0738:    from oe.gpg_sign import get_signer
     0739:
     0740:    if d.getVar('SSTATE_SIG_KEY'):
     0741:        signer =3D get_signer(d, 'local')
     0742:        sstate_pkg =3D d.getVar('SSTATE_PKG')
Exception: ImportError: No module named 'oe.gpg_sign'

ERROR: packagegroup-core-boot-1.0-r17 do_populate_lic: Function failed: sst=
ate_sign_package
ERROR: Logfile of failure stored in: /home/pauld/yocto-pyro/buildchr32/tmp/=
work/chroma32_bsp-poky-linux/packagegroup-core-boot/1.0-r17/temp/log.do_pop=
ulate_lic.3489
ERROR: Task (../poky/meta/recipes-core/packagegroups/packagegroup-core-boot=
.bb:do_populate_lic) failed with exit code '1'
NOTE: Tasks Summary: Attempted 604 tasks of which 0 didn't need to be rerun=
 and 11 failed.

Summary: 11 tasks failed:
  ../poky/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_patch
  ../poky/meta/recipes-devtools/gcc/gcc-cross_6.3.bb:do_populate_lic
  ../poky/meta/recipes-devtools/gcc/libgcc_6.3.bb:do_populate_lic
  ../poky/meta/recipes-devtools/gcc/gcc-runtime_6.3.bb:do_populate_lic
  ../poky/meta/recipes-devtools/gcc/libgcc-initial_6.3.bb:do_populate_lic
  ../poky/meta/recipes-devtools/gcc/gcc-cross-initial_6.3.bb:do_populate_li=
c
  ../poky/meta/recipes-core/glibc/glibc-locale_2.25.bb:do_populate_lic
  ../poky/meta/recipes-core/packagegroups/packagegroup-core-ssh-openssh.bb:=
do_populate_lic
  ../poky/meta/recipes-core/packagegroups/packagegroup-core-eclipse-debug.b=
b:do_populate_lic
  ../poky/meta/recipes-core/packagegroups/packagegroup-base.bb:do_populate_=
lic
  ../poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb:do_popu=
late_lic
Summary: There were 24 WARNING messages shown.
Summary: There were 26 ERROR messages shown, returning a non-zero exit code=
.

------=_NextPart_000_01CF_01D32E0C.8D4C4EF0--
