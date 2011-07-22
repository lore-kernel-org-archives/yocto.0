Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62B964C800A1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 03:37:47 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mrbap0) with ESMTP (Nemesis)
	id 0M2ndG-1RcpGJ41n4-00s1hP; Fri, 22 Jul 2011 10:37:46 +0200
Date: Fri, 22 Jul 2011 10:37:45 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: yocto@yoctoproject.org
Message-ID: <20110722083745.GA13064@localhost.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:T68/BIpbluPqDLYlhAQGNaRTRvnQlKgYGeQYl6Rqhcd
	uW5GHUMl1vURrbSriTwdQDg4DahNl9N17JKJqg3+KD8/3uH0Fp
	pWIqEJQ+oE+EzZmA0pV1TIpbNwiVLsNxEpjTSP1DGno/31LtjV
	krhdbtzkB/VV0IJN+3cNA1uuFZA+GsjqHa5BfuguuU0ePrJLhD
	WN3C5Nsb0UNB285gs2kaOZz1y5n64EpTlDM49KY9cU=
Subject: Bitbaking python fails
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
X-List-Received-Date: Fri, 22 Jul 2011 08:37:48 -0000
X-Groupsio-MsgNum: 2051
Content-Type: multipart/mixed; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Building python for poky bernard fails for me with the following error:

...
...
Looking in tk80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
Looking in tcl80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
*** WARNING: renaming "gdbm" since importing it failed: libgdbm.so.3:
cannot open shared object file: No such file or directory
/bin/sh: line 1: 12830 Illegal instruction     (core dumped)
LD_LIBRARY_PATH=/home/ahaupt/yocto-git/build/tmp/work/core2-poky-
linux/python-2.6.6-nk1.2/Python-2.6.6:/home/ahaupt/yocto-git/build
/tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib:/home/ahaupt
/yocto-git/build/tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib64
CC='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
-mtune=generic -mfpmath=sse
--sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc'
LDSHARED='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
-mtune=generic -mfpmath=sse
--sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc
-shared' LDFLAGS='-Wl,-O1  -Wl,--as-needed'
OPT='-fexpensive-optimizations -fomit-frame-pointer
-frename-registers -O2 -ggdb -feliminate-unused-debug-types'
/home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/usr/bin/python
-E ./setup.py -q build
make: *** [sharedmods] Error 132
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see
/home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/
python-2.6.6-nk1.2/temp/log.do_compile.12751
for further information)

Does this sound familiar to anyone? libgdbm.so.3 exists in
/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib and points to
libgdbm.so.3.0.0

My target machine is atom-pc and my build host is Fedora 13 in a
VirtualBox machine.

regards,

Andre


--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="log.do_compile"
Content-Transfer-Encoding: quoted-printable

NOTE: make HOSTPGEN=3D/home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/=
usr/bin/pgen HOSTPYTHON=3D/home/ahaupt/yocto-git/build/tmp/sysroots/i686-li=
nux/usr/bin/python STAGING_LIBDIR=3D/home/ahaupt/yocto-git/build/tmp/sysroo=
ts/atom-pc/usr/lib STAGING_INCDIR=3D/home/ahaupt/yocto-git/build/tmp/sysroo=
ts/atom-pc/usr/include BUILD_SYS=3Di686-linux HOST_SYS=3Di586-poky-linux OP=
T=3D -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 =
-ggdb -feliminate-unused-debug-types libpython2.6.so
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc -c=
  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -gg=
db -feliminate-unused-debug-types -fexpensive-optimizations -fomit-frame-po=
inter -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. -IIn=
clude -I./Include  -fPIC -DPy_BUILD_CORE -DPYTHONPATH=3D'":plat-linux2:lib-=
tk:lib-old"' \
		-DPREFIX=3D'"/usr"' \
		-DEXEC_PREFIX=3D'"/usr"' \
		-DVERSION=3D'"2.6"' \
		-DVPATH=3D'""' \
		-o Modules/getpath.o ./Modules/getpath.c
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc -c=
  -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 -gg=
db -feliminate-unused-debug-types -fexpensive-optimizations -fomit-frame-po=
inter -frename-registers -O2 -ggdb -feliminate-unused-debug-types  -I. -IIn=
clude -I./Include  -fPIC -DPy_BUILD_CORE -DSVNVERSION=3D"\"`LC_ALL=3DC svnv=
ersion .`\"" -o Modules/getbuildinfo.o ./Modules/getbuildinfo.c
if test libpython2.6.so.1.0 !=3D libpython2.6.so; then \
		ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -m=
fpmath=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc =
-shared -Wl,-O1  -Wl,--as-needed -Wl,-hlibpython2.6.so.1.0 -o libpython2.6.=
so.1.0 Modules/getbuildinfo.o Parser/acceler.o Parser/grammar1.o Parser/lis=
tnode.o Parser/node.o Parser/parser.o Parser/parsetok.o Parser/bitset.o Par=
ser/metagrammar.o Parser/firstsets.o Parser/grammar.o Parser/pgen.o Parser/=
myreadline.o Parser/tokenizer.o Objects/abstract.o Objects/boolobject.o Obj=
ects/bufferobject.o Objects/bytes_methods.o Objects/bytearrayobject.o Objec=
ts/cellobject.o Objects/classobject.o Objects/cobject.o Objects/codeobject.=
o Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o Object=
s/exceptions.o Objects/genobject.o Objects/fileobject.o Objects/floatobject=
.o Objects/frameobject.o Objects/funcobject.o Objects/intobject.o Objects/i=
terobject.o Objects/listobject.o Objects/longobject.o Objects/dictobject.o =
Objects/methodobject.o Objects/moduleobject.o Objects/object.o Objects/obma=
lloc.o Objects/rangeobject.o Objects/setobject.o Objects/sliceobject.o Obje=
cts/stringobject.o Objects/structseq.o Objects/tupleobject.o Objects/typeob=
ject.o Objects/weakrefobject.o Objects/unicodeobject.o Objects/unicodectype=
.o Python/_warnings.o Python/Python-ast.o Python/asdl.o Python/ast.o Python=
/bltinmodule.o Python/ceval.o Python/compile.o Python/codecs.o Python/error=
s.o Python/frozen.o Python/frozenmain.o Python/future.o Python/getargs.o Py=
thon/getcompiler.o Python/getcopyright.o Python/getmtime.o Python/getplatfo=
rm.o Python/getversion.o Python/graminit.o Python/import.o Python/importdl.=
o Python/marshal.o Python/modsupport.o Python/mystrtoul.o Python/mysnprintf=
.o Python/peephole.o Python/pyarena.o Python/pyfpe.o Python/pymath.o Python=
/pystate.o Python/pythonrun.o Python/structmember.o Python/symtable.o Pytho=
n/sysmodule.o Python/traceback.o Python/getopt.o Python/pystrcmp.o Python/p=
ystrtod.o Python/formatter_unicode.o Python/formatter_string.o Python/dynlo=
ad_shlib.o   Python/thread.o Modules/config.o Modules/getpath.o Modules/mai=
n.o Modules/gcmodule.o  Modules/threadmodule.o  Modules/signalmodule.o  Mod=
ules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o  Modules/_sr=
e.o  Modules/_codecsmodule.o  Modules/zipimport.o  Modules/symtablemodule.o=
  Modules/xxsubtype.o   -lpthread -ldl  -lpthread -lutil  -lm ; \
		ln -f libpython2.6.so.1.0 libpython2.6.so; \
	else \
		ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -m=
fpmath=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc =
-shared -Wl,-O1  -Wl,--as-needed -o libpython2.6.so Modules/getbuildinfo.o =
Parser/acceler.o Parser/grammar1.o Parser/listnode.o Parser/node.o Parser/p=
arser.o Parser/parsetok.o Parser/bitset.o Parser/metagrammar.o Parser/first=
sets.o Parser/grammar.o Parser/pgen.o Parser/myreadline.o Parser/tokenizer.=
o Objects/abstract.o Objects/boolobject.o Objects/bufferobject.o Objects/by=
tes_methods.o Objects/bytearrayobject.o Objects/cellobject.o Objects/classo=
bject.o Objects/cobject.o Objects/codeobject.o Objects/complexobject.o Obje=
cts/descrobject.o Objects/enumobject.o Objects/exceptions.o Objects/genobje=
ct.o Objects/fileobject.o Objects/floatobject.o Objects/frameobject.o Objec=
ts/funcobject.o Objects/intobject.o Objects/iterobject.o Objects/listobject=
.o Objects/longobject.o Objects/dictobject.o Objects/methodobject.o Objects=
/moduleobject.o Objects/object.o Objects/obmalloc.o Objects/rangeobject.o O=
bjects/setobject.o Objects/sliceobject.o Objects/stringobject.o Objects/str=
uctseq.o Objects/tupleobject.o Objects/typeobject.o Objects/weakrefobject.o=
 Objects/unicodeobject.o Objects/unicodectype.o Python/_warnings.o Python/P=
ython-ast.o Python/asdl.o Python/ast.o Python/bltinmodule.o Python/ceval.o =
Python/compile.o Python/codecs.o Python/errors.o Python/frozen.o Python/fro=
zenmain.o Python/future.o Python/getargs.o Python/getcompiler.o Python/getc=
opyright.o Python/getmtime.o Python/getplatform.o Python/getversion.o Pytho=
n/graminit.o Python/import.o Python/importdl.o Python/marshal.o Python/mods=
upport.o Python/mystrtoul.o Python/mysnprintf.o Python/peephole.o Python/py=
arena.o Python/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o =
Python/structmember.o Python/symtable.o Python/sysmodule.o Python/traceback=
.o Python/getopt.o Python/pystrcmp.o Python/pystrtod.o Python/formatter_uni=
code.o Python/formatter_string.o Python/dynload_shlib.o   Python/thread.o M=
odules/config.o Modules/getpath.o Modules/main.o Modules/gcmodule.o  Module=
s/threadmodule.o  Modules/signalmodule.o  Modules/posixmodule.o  Modules/er=
rnomodule.o  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o  =
Modules/zipimport.o  Modules/symtablemodule.o  Modules/xxsubtype.o   -lpthr=
ead -ldl  -lpthread -lutil  -lm ; \
	fi
oe_libinstall: cd /home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/py=
thon-2.6.6-nk1.2/Python-2.6.6
oe_libinstall: install -d /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc=
/usr/lib/
oe_libinstall: install -m 0644 libpython2.6.a /home/ahaupt/yocto-git/build/=
tmp/sysroots/atom-pc/usr/lib/
oe_libinstall: install -m 0755 libpython2.6.so /home/ahaupt/yocto-git/build=
/tmp/sysroots/atom-pc/usr/lib/
oe_libinstall: install -m 0755 libpython2.6.so.1.0 /home/ahaupt/yocto-git/b=
uild/tmp/sysroots/atom-pc/usr/lib/
oe_libinstall: ln -sf libpython2.6.so.1.0 /home/ahaupt/yocto-git/build/tmp/=
sysroots/atom-pc/usr/lib/libpython2.6.so
oe_libinstall: cd /home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/py=
thon-2.6.6-nk1.2/Python-2.6.6
NOTE: make HOSTPGEN=3D/home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/=
usr/bin/pgen HOSTPYTHON=3D/home/ahaupt/yocto-git/build/tmp/sysroots/i686-li=
nux/usr/bin/python STAGING_LIBDIR=3D/home/ahaupt/yocto-git/build/tmp/sysroo=
ts/atom-pc/usr/lib STAGING_INCDIR=3D/home/ahaupt/yocto-git/build/tmp/sysroo=
ts/atom-pc/usr/include BUILD_SYS=3Di686-linux HOST_SYS=3Di586-poky-linux OP=
T=3D -fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2 =
-ggdb -feliminate-unused-debug-types
rm -f libpython2.6.a
i586-poky-linux-ar cr libpython2.6.a Modules/getbuildinfo.o
i586-poky-linux-ar cr libpython2.6.a Parser/acceler.o Parser/grammar1.o Par=
ser/listnode.o Parser/node.o Parser/parser.o Parser/parsetok.o Parser/bitse=
t.o Parser/metagrammar.o Parser/firstsets.o Parser/grammar.o Parser/pgen.o =
Parser/myreadline.o Parser/tokenizer.o
i586-poky-linux-ar cr libpython2.6.a Objects/abstract.o Objects/boolobject.=
o Objects/bufferobject.o Objects/bytes_methods.o Objects/bytearrayobject.o =
Objects/cellobject.o Objects/classobject.o Objects/cobject.o Objects/codeob=
ject.o Objects/complexobject.o Objects/descrobject.o Objects/enumobject.o O=
bjects/exceptions.o Objects/genobject.o Objects/fileobject.o Objects/floato=
bject.o Objects/frameobject.o Objects/funcobject.o Objects/intobject.o Obje=
cts/iterobject.o Objects/listobject.o Objects/longobject.o Objects/dictobje=
ct.o Objects/methodobject.o Objects/moduleobject.o Objects/object.o Objects=
/obmalloc.o Objects/rangeobject.o Objects/setobject.o Objects/sliceobject.o=
 Objects/stringobject.o Objects/structseq.o Objects/tupleobject.o Objects/t=
ypeobject.o Objects/weakrefobject.o Objects/unicodeobject.o Objects/unicode=
ctype.o
i586-poky-linux-ar cr libpython2.6.a Python/_warnings.o Python/Python-ast.o=
 Python/asdl.o Python/ast.o Python/bltinmodule.o Python/ceval.o Python/comp=
ile.o Python/codecs.o Python/errors.o Python/frozen.o Python/frozenmain.o P=
ython/future.o Python/getargs.o Python/getcompiler.o Python/getcopyright.o =
Python/getmtime.o Python/getplatform.o Python/getversion.o Python/graminit.=
o Python/import.o Python/importdl.o Python/marshal.o Python/modsupport.o Py=
thon/mystrtoul.o Python/mysnprintf.o Python/peephole.o Python/pyarena.o Pyt=
hon/pyfpe.o Python/pymath.o Python/pystate.o Python/pythonrun.o Python/stru=
ctmember.o Python/symtable.o Python/sysmodule.o Python/traceback.o Python/g=
etopt.o Python/pystrcmp.o Python/pystrtod.o Python/formatter_unicode.o Pyth=
on/formatter_string.o Python/dynload_shlib.o   Python/thread.o
i586-poky-linux-ar cr libpython2.6.a Modules/config.o Modules/getpath.o Mod=
ules/main.o Modules/gcmodule.o=20
i586-poky-linux-ar cr libpython2.6.a Modules/threadmodule.o  Modules/signal=
module.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o=
  Modules/_sre.o  Modules/_codecsmodule.o  Modules/zipimport.o  Modules/sym=
tablemodule.o  Modules/xxsubtype.o
i586-poky-linux-ranlib libpython2.6.a
ccache i586-poky-linux-gcc -m32 -march=3Dcore2 -msse3 -mtune=3Dgeneric -mfp=
math=3Dsse --sysroot=3D/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc -W=
l,-O1  -Wl,--as-needed -Xlinker -export-dynamic -o python \
			Modules/python.o \
			-L. -lpython2.6 -lpthread -ldl  -lpthread -lutil   -lm =20
Looking in readline for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc=
/usr/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libreadline=
.so
Looking in ncursesw for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc=
/usr/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libncursesw=
.so
Looking in crypt for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libcrypt.so
Looking in ssl for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/=
lib', '/usr/local/ssl/lib', '/usr/contrib/ssl/lib/']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libssl.so
Looking in sqlite3 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/=
usr/include/../lib64', '/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/include/../lib', '/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/=
include/../../lib64', '/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/include/../../lib', '/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/include/../lib/=
libsqlite3.so
Looking in gdbm for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libgdbm.so
Looking in gdbm_compat for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom=
-pc/usr/lib']
Looking in gdbm for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libgdbm.so
Looking in nsl for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/=
lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libnsl.so
Looking in panelw for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libpanelw.s=
o
Looking in z for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/li=
b']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libz.so
Looking in bz2 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/=
lib']
Found /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libbz2.so
Looking in tk8.5 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.5 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk85 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl85 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tk8.4 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.4 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk84 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl84 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tk8.3 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.3 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk83 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl83 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tk8.2 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.2 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk82 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl82 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tk8.1 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.1 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk81 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl81 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tk8.0 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
Looking in tcl8.0 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/u=
sr/lib']
Looking in tk80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr=
/lib']
Looking in tcl80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/us=
r/lib']
*** WARNING: renaming "gdbm" since importing it failed: libgdbm.so.3: canno=
t open shared object file: No such file or directory
/bin/sh: line 1: 12830 Illegal instruction     (core dumped) LD_LIBRARY_PAT=
H=3D/home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/python-2.6.6-nk1=
.2/Python-2.6.6:/home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/usr/bi=
n/../lib/pseudo/lib:/home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/us=
r/bin/../lib/pseudo/lib64 CC=3D'ccache i586-poky-linux-gcc -m32 -march=3Dco=
re2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/home/ahaupt/yocto-g=
it/build/tmp/sysroots/atom-pc' LDSHARED=3D'ccache i586-poky-linux-gcc -m32 =
-march=3Dcore2 -msse3 -mtune=3Dgeneric -mfpmath=3Dsse --sysroot=3D/home/aha=
upt/yocto-git/build/tmp/sysroots/atom-pc -shared' LDFLAGS=3D'-Wl,-O1  -Wl,-=
-as-needed' OPT=3D'-fexpensive-optimizations -fomit-frame-pointer -frename-=
registers -O2 -ggdb -feliminate-unused-debug-types' /home/ahaupt/yocto-git/=
build/tmp/sysroots/i686-linux/usr/bin/python -E ./setup.py -q build
make: *** [sharedmods] Error 132
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /home/ahaupt/yocto-git/build/tmp/w=
ork/core2-poky-linux/python-2.6.6-nk1.2/temp/log.do_compile.12751 for furth=
er information)

--BOKacYhQ+x31HxR3--
