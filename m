Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3540E011B6
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 01:26:33 -0700 (PDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu1) with ESMTP (Nemesis)
	id 0MZyo7-1Qc3bx21t9-00LkWn; Fri, 12 Aug 2011 10:26:42 +0200
Date: Fri, 12 Aug 2011 10:26:37 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: yocto@yoctoproject.org
Message-ID: <20110812082637.GA22860@localhost.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:7WeiTZt0AZHtUtaowbDRUg6vphXA5hMoAoK/QTK5YA/
	AnxDTMwt9lQQL+U98PszCvzY7LqOFG9qEy05gyXonrn2D7YCIa
	1w7EzRpn0pHLpV47hZxZ3KkMYhRoqAGwd993beV+xX9mGAP2Qd
	Lpdc02R9d3Q7D/+/RuaQt+CJJUduMytWJz3Ap20TOnKE9EeGYQ
	LFoMFjlBUxVAUL90pmB6ihCeU8zdDPxYp5L2sDZS8I=
Subject: glib-2.0-native build fails on bernard
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
X-List-Received-Date: Fri, 12 Aug 2011 08:26:35 -0000
X-Groupsio-MsgNum: 2320
Content-Type: multipart/mixed; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

Bitbake glib-2.0-native for the qemux86 target on poky bernard fails
with:

octo-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_ALLOC'
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_REALLOC'
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_FREE'
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_ALLOC'
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_FREE'
| ./.libs/libglib-2.0.so: undefined reference to `GLIB_QUARK_NEW'
| collect2: ld returned 1 exit status
| make[4]: *** [gtester] Error 1
| make[4]: Leaving directory
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'
| make[3]: *** [all-recursive] Error 1
| make[3]: Leaving directory
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'
| make[2]: *** [all] Error 2
| make[2]: Leaving directory
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1/glib'
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
`/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r0/glib-2.26.1'
| make: *** [all] Error 2
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r0/temp/log.do_compile.20434
for further information)
NOTE: package glib-2.0-native-1_2.26.1-r0: task do_compile: Failed
ERROR: Task 8
(virtual:native:/home/ahaupt/yocto-git/meta/recipes-core/glib-2.0/glib-2.0_2.26.1.bb,
do_compile) failed with exit code '1'

This is on a freshly set up Fedora 15 x86-64 build host. I am using the
bernard branch of git.yoctoproject.org/poky.git.

What do i miss here?

cheers,

Andre

--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="log.do_compile"
Content-Transfer-Encoding: quoted-printable

NOTE: make -j 8
make  all-recursive
make[1]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1'
Making all in .
make[2]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1'
make[2]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1'
Making all in m4macros
make[2]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/m4macros'
make[2]: Nothing to be done for `all'.
make[2]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/m4macros'
Making all in glib
make[2]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
cd .. && \
  /bin/sh ./config.status glib/glibconfig.h
dtrace -C -h -s glib_probes.d -o glib_probes.h.tmp
dtrace -G -s glib_probes.d -o glib_probes.o
gcc: warning: glib_probes.d: linker input file unused because linking not d=
one
gcc: warning: /tmp/tmpdf74Qj.d: linker input file unused because linking no=
t done
sed -e "s,define STAP_HAS_SEMAPHORES 1,undef STAP_HAS_SEMAPHORES," < glib_p=
robes.h.tmp > glib_probes.h && rm -f glib_probes.h.tmp
/tmp/tmp4RsiFQ.c:1:8: warning: return type defaults to 'int' [-Wreturn-type=
]
/tmp/tmp4RsiFQ.c:1:8: warning: '__dtrace' defined but not used [-Wunused-fu=
nction]
config.status: executing glib/glibconfig.h commands
config.status: glib/glibconfig.h is unchanged
make  all-recursive
make[3]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
Making all in libcharset
make[4]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/libchars=
et'
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DLIBDIR=3D\"/home/ahaupt/yocto-git/builds/qe=
mux86-bernard/tmp/sysroots/x86_64-linux/usr/lib\" -I../..  -isystem/home/ah=
aupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include=
 -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/build=
s/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT local=
charset.lo -MD -MP -MF .deps/localcharset.Tpo -c -o localcharset.lo localch=
arset.c
sed -e '/^#/d' -e 's/@''PACKAGE''@/glib/g' ref-add.sin > t-ref-add.sed
sed -e '/^#/d' -e 's/@''PACKAGE''@/glib/g' ref-del.sin > t-ref-del.sed
/bin/sh ./config.charset 'x86_64-pc-linux-gnu' > t-charset.alias
mv t-ref-add.sed ref-add.sed
mv t-ref-del.sed ref-del.sed
mv t-charset.alias charset.alias
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DLI=
BDIR=3D\"/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-=
linux/usr/lib\" -I../.. -isystem/home/ahaupt/yocto-git/builds/qemux86-berna=
rd/tmp/sysroots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthre=
ad -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_6=
4-linux/usr/include -O2 -Wall -MT localcharset.lo -MD -MP -MF .deps/localch=
arset.Tpo -c localcharset.c  -fPIC -DPIC -o .libs/localcharset.o
mv -f .deps/localcharset.Tpo .deps/localcharset.Plo
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink ccache gcc  =
-isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-l=
inux/usr/include -O2 -Wall  -L/home/ahaupt/yocto-git/builds/qemux86-bernard=
/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/ahaupt/yocto-git/b=
uilds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/ah=
aupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl=
,-O1 -o libcharset.la  localcharset.lo =20
x86_64-linux-libtool: link: ar cru .libs/libcharset.a .libs/localcharset.o=
=20
x86_64-linux-libtool: link: ranlib .libs/libcharset.a
x86_64-linux-libtool: link: ( cd ".libs" && rm -f "libcharset.la" && ln -s =
"../libcharset.la" "libcharset.la" )
make[4]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/libcharse=
t'
Making all in pcre
make[4]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/pcre'
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_compile.lo=
 -MD -MP -MF .deps/pcre_compile.Tpo -c -o pcre_compile.lo pcre_compile.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_chartables=
.lo -MD -MP -MF .deps/pcre_chartables.Tpo -c -o pcre_chartables.lo pcre_cha=
rtables.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_config.lo =
-MD -MP -MF .deps/pcre_config.Tpo -c -o pcre_config.lo pcre_config.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_dfa_exec.l=
o -MD -MP -MF .deps/pcre_dfa_exec.Tpo -c -o pcre_dfa_exec.lo pcre_dfa_exec.=
c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_exec.lo -M=
D -MP -MF .deps/pcre_exec.Tpo -c -o pcre_exec.lo pcre_exec.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_fullinfo.l=
o -MD -MP -MF .deps/pcre_fullinfo.Tpo -c -o pcre_fullinfo.lo pcre_fullinfo.=
c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_get.lo -MD=
 -MP -MF .deps/pcre_get.Tpo -c -o pcre_get.lo pcre_get.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_globals.lo=
 -MD -MP -MF .deps/pcre_globals.Tpo -c -o pcre_globals.lo pcre_globals.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_compile.lo -MD -MP -MF .deps/pcre_compile.Tpo -c p=
cre_compile.c  -fPIC -DPIC -o .libs/pcre_compile.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_chartables.lo -MD -MP -MF .deps/pcre_chartables.Tp=
o -c pcre_chartables.c  -fPIC -DPIC -o .libs/pcre_chartables.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_config.lo -MD -MP -MF .deps/pcre_config.Tpo -c pcr=
e_config.c  -fPIC -DPIC -o .libs/pcre_config.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_dfa_exec.lo -MD -MP -MF .deps/pcre_dfa_exec.Tpo -c=
 pcre_dfa_exec.c  -fPIC -DPIC -o .libs/pcre_dfa_exec.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_exec.lo -MD -MP -MF .deps/pcre_exec.Tpo -c pcre_ex=
ec.c  -fPIC -DPIC -o .libs/pcre_exec.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_get.lo -MD -MP -MF .deps/pcre_get.Tpo -c pcre_get.=
c  -fPIC -DPIC -o .libs/pcre_get.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_fullinfo.lo -MD -MP -MF .deps/pcre_fullinfo.Tpo -c=
 pcre_fullinfo.c  -fPIC -DPIC -o .libs/pcre_fullinfo.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_globals.lo -MD -MP -MF .deps/pcre_globals.Tpo -c p=
cre_globals.c  -fPIC -DPIC -o .libs/pcre_globals.o
mv -f .deps/pcre_compile.Tpo .deps/pcre_compile.Plo
mv -f .deps/pcre_chartables.Tpo .deps/pcre_chartables.Plo
mv -f .deps/pcre_config.Tpo .deps/pcre_config.Plo
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_newline.lo=
 -MD -MP -MF .deps/pcre_newline.Tpo -c -o pcre_newline.lo pcre_newline.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_ord2utf8.l=
o -MD -MP -MF .deps/pcre_ord2utf8.Tpo -c -o pcre_ord2utf8.lo pcre_ord2utf8.=
c
mv -f .deps/pcre_fullinfo.Tpo .deps/pcre_fullinfo.Plo
mv -f .deps/pcre_dfa_exec.Tpo .deps/pcre_dfa_exec.Plo
mv -f .deps/pcre_exec.Tpo .deps/pcre_exec.Plo
mv -f .deps/pcre_get.Tpo .deps/pcre_get.Plo
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_study.lo -=
MD -MP -MF .deps/pcre_study.Tpo -c -o pcre_study.lo pcre_study.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_tables.lo =
-MD -MP -MF .deps/pcre_tables.Tpo -c -o pcre_tables.lo pcre_tables.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_try_flippe=
d.lo -MD -MP -MF .deps/pcre_try_flipped.Tpo -c -o pcre_try_flipped.lo pcre_=
try_flipped.c
mv -f .deps/pcre_globals.Tpo .deps/pcre_globals.Plo
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_ucp_search=
funcs.lo -MD -MP -MF .deps/pcre_ucp_searchfuncs.Tpo -c -o pcre_ucp_searchfu=
ncs.lo pcre_ucp_searchfuncs.c
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gc=
c -DHAVE_CONFIG_H -I. -I../.. -DG_LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UC=
P -DSUPPORT_UTF8 -DNEWLINE=3D-1 -DMATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECU=
RSION=3D8192 -DMAX_NAME_SIZE=3D32 -DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=
=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MALLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.=
. -I../../glib -I../../glib -I../.. -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEP=
RECATED -DGLIB_COMPILATION   -Wno-pointer-sign   -isystem/home/ahaupt/yocto=
-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_DISAB=
LE_SINGLE_INCLUDES -pthread  -isystem/home/ahaupt/yocto-git/builds/qemux86-=
bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT pcre_xclass.lo =
-MD -MP -MF .deps/pcre_xclass.Tpo -c -o pcre_xclass.lo pcre_xclass.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_ord2utf8.lo -MD -MP -MF .deps/pcre_ord2utf8.Tpo -c=
 pcre_ord2utf8.c  -fPIC -DPIC -o .libs/pcre_ord2utf8.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_newline.lo -MD -MP -MF .deps/pcre_newline.Tpo -c p=
cre_newline.c  -fPIC -DPIC -o .libs/pcre_newline.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_study.lo -MD -MP -MF .deps/pcre_study.Tpo -c pcre_=
study.c  -fPIC -DPIC -o .libs/pcre_study.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_tables.lo -MD -MP -MF .deps/pcre_tables.Tpo -c pcr=
e_tables.c  -fPIC -DPIC -o .libs/pcre_tables.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_xclass.lo -MD -MP -MF .deps/pcre_xclass.Tpo -c pcr=
e_xclass.c  -fPIC -DPIC -o .libs/pcre_xclass.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_try_flipped.lo -MD -MP -MF .deps/pcre_try_flipped.=
Tpo -c pcre_try_flipped.c  -fPIC -DPIC -o .libs/pcre_try_flipped.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I../.. -DG_=
LOG_DOMAIN=3D\"GLib-GRegex\" -DSUPPORT_UCP -DSUPPORT_UTF8 -DNEWLINE=3D-1 -D=
MATCH_LIMIT=3D10000000 -DMATCH_LIMIT_RECURSION=3D8192 -DMAX_NAME_SIZE=3D32 =
-DMAX_NAME_COUNT=3D10000 -DMAX_DUPLENGTH=3D30000 -DLINK_SIZE=3D2 -DPOSIX_MA=
LLOC_THRESHOLD=3D10 -DPCRE_STATIC -I../.. -I../../glib -I../../glib -I../..=
 -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -Wno-poi=
nter-sign -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroot=
s/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread -isystem/ho=
me/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/in=
clude -O2 -Wall -MT pcre_ucp_searchfuncs.lo -MD -MP -MF .deps/pcre_ucp_sear=
chfuncs.Tpo -c pcre_ucp_searchfuncs.c  -fPIC -DPIC -o .libs/pcre_ucp_search=
funcs.o
mv -f .deps/pcre_ord2utf8.Tpo .deps/pcre_ord2utf8.Plo
mv -f .deps/pcre_newline.Tpo .deps/pcre_newline.Plo
mv -f .deps/pcre_study.Tpo .deps/pcre_study.Plo
mv -f .deps/pcre_xclass.Tpo .deps/pcre_xclass.Plo
mv -f .deps/pcre_tables.Tpo .deps/pcre_tables.Plo
mv -f .deps/pcre_try_flipped.Tpo .deps/pcre_try_flipped.Plo
mv -f .deps/pcre_ucp_searchfuncs.Tpo .deps/pcre_ucp_searchfuncs.Plo
/bin/sh ../../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink ccache gcc  =
-isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-l=
inux/usr/include -O2 -Wall -no-undefined -L/home/ahaupt/yocto-git/builds/qe=
mux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/ahaup=
t/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-r=
path,/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linu=
x/usr/lib -Wl,-O1 -o libpcre.la  pcre_compile.lo pcre_chartables.lo pcre_co=
nfig.lo pcre_dfa_exec.lo pcre_exec.lo pcre_fullinfo.lo pcre_get.lo pcre_glo=
bals.lo pcre_newline.lo pcre_ord2utf8.lo pcre_study.lo pcre_tables.lo pcre_=
try_flipped.lo pcre_ucp_searchfuncs.lo pcre_xclass.lo  =20
x86_64-linux-libtool: link: ar cru .libs/libpcre.a .libs/pcre_compile.o .li=
bs/pcre_chartables.o .libs/pcre_config.o .libs/pcre_dfa_exec.o .libs/pcre_e=
xec.o .libs/pcre_fullinfo.o .libs/pcre_get.o .libs/pcre_globals.o .libs/pcr=
e_newline.o .libs/pcre_ord2utf8.o .libs/pcre_study.o .libs/pcre_tables.o .l=
ibs/pcre_try_flipped.o .libs/pcre_ucp_searchfuncs.o .libs/pcre_xclass.o=20
x86_64-linux-libtool: link: ranlib .libs/libpcre.a
x86_64-linux-libtool: link: ( cd ".libs" && rm -f "libpcre.la" && ln -s "..=
/libpcre.la" "libpcre.la" )
make[4]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/pcre'
Making all in update-pcre
make[4]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/update-p=
cre'
make[4]: Nothing to be done for `all'.
make[4]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib/update-pc=
re'
Making all in .
make[4]: Entering directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/=
tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT garray.lo -MD -MP -MF .deps/garray.Tpo -c -o garray.=
lo garray.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gasyncqueue.lo -MD -MP -MF .deps/gasyncqueue.Tpo -c =
-o gasyncqueue.lo gasyncqueue.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gatomic-gcc.lo -MD -MP -MF .deps/gatomic-gcc.Tpo -c =
-o gatomic-gcc.lo gatomic-gcc.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gbacktrace.lo -MD -MP -MF .deps/gbacktrace.Tpo -c -o=
 gbacktrace.lo gbacktrace.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gbase64.lo -MD -MP -MF .deps/gbase64.Tpo -c -o gbase=
64.lo gbase64.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gbitlock.lo -MD -MP -MF .deps/gbitlock.Tpo -c -o gbi=
tlock.lo gbitlock.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gbookmarkfile.lo -MD -MP -MF .deps/gbookmarkfile.Tpo=
 -c -o gbookmarkfile.lo gbookmarkfile.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gbuffer.lo -MD -MP -MF .deps/gbuffer.Tpo -c -o gbuff=
er.lo gbuffer.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gbase64.lo =
-MD -MP -MF .deps/gbase64.Tpo -c gbase64.c  -fPIC -DPIC -o .libs/gbase64.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gatomic-gcc=
.lo -MD -MP -MF .deps/gatomic-gcc.Tpo -c gatomic-gcc.c  -fPIC -DPIC -o .lib=
s/gatomic-gcc.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gbookmarkfi=
le.lo -MD -MP -MF .deps/gbookmarkfile.Tpo -c gbookmarkfile.c  -fPIC -DPIC -=
o .libs/gbookmarkfile.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gbacktrace.=
lo -MD -MP -MF .deps/gbacktrace.Tpo -c gbacktrace.c  -fPIC -DPIC -o .libs/g=
backtrace.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gasyncqueue=
.lo -MD -MP -MF .deps/gasyncqueue.Tpo -c gasyncqueue.c  -fPIC -DPIC -o .lib=
s/gasyncqueue.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT garray.lo -=
MD -MP -MF .deps/garray.Tpo -c garray.c  -fPIC -DPIC -o .libs/garray.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gbitlock.lo=
 -MD -MP -MF .deps/gbitlock.Tpo -c gbitlock.c  -fPIC -DPIC -o .libs/gbitloc=
k.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gbuffer.lo =
-MD -MP -MF .deps/gbuffer.Tpo -c gbuffer.c  -fPIC -DPIC -o .libs/gbuffer.o
mv -f .deps/gatomic-gcc.Tpo .deps/gatomic-gcc.Plo
mv -f .deps/gbase64.Tpo .deps/gbase64.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gcache.lo -MD -MP -MF .deps/gcache.Tpo -c -o gcache.=
lo gcache.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gchecksum.lo -MD -MP -MF .deps/gchecksum.Tpo -c -o g=
checksum.lo gchecksum.c
mv -f .deps/gasyncqueue.Tpo .deps/gasyncqueue.Plo
mv -f .deps/garray.Tpo .deps/garray.Plo
mv -f .deps/gbuffer.Tpo .deps/gbuffer.Plo
mv -f .deps/gbacktrace.Tpo .deps/gbacktrace.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gcompletion.lo -MD -MP -MF .deps/gcompletion.Tpo -c =
-o gcompletion.lo gcompletion.c
mv -f .deps/gbitlock.Tpo .deps/gbitlock.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gconvert.lo -MD -MP -MF .deps/gconvert.Tpo -c -o gco=
nvert.lo gconvert.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gdataset.lo -MD -MP -MF .deps/gdataset.Tpo -c -o gda=
taset.lo gdataset.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gdate.lo -MD -MP -MF .deps/gdate.Tpo -c -o gdate.lo =
gdate.c
mv -f .deps/gbookmarkfile.Tpo .deps/gbookmarkfile.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gdatetime.lo -MD -MP -MF .deps/gdatetime.Tpo -c -o g=
datetime.lo gdatetime.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gdir.lo -MD -MP -MF .deps/gdir.Tpo -c -o gdir.lo gdi=
r.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gcache.lo -=
MD -MP -MF .deps/gcache.Tpo -c gcache.c  -fPIC -DPIC -o .libs/gcache.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gcompletion=
.lo -MD -MP -MF .deps/gcompletion.Tpo -c gcompletion.c  -fPIC -DPIC -o .lib=
s/gcompletion.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gchecksum.l=
o -MD -MP -MF .deps/gchecksum.Tpo -c gchecksum.c  -fPIC -DPIC -o .libs/gche=
cksum.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gdataset.lo=
 -MD -MP -MF .deps/gdataset.Tpo -c gdataset.c  -fPIC -DPIC -o .libs/gdatase=
t.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gconvert.lo=
 -MD -MP -MF .deps/gconvert.Tpo -c gconvert.c  -fPIC -DPIC -o .libs/gconver=
t.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gdatetime.l=
o -MD -MP -MF .deps/gdatetime.Tpo -c gdatetime.c  -fPIC -DPIC -o .libs/gdat=
etime.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gdate.lo -M=
D -MP -MF .deps/gdate.Tpo -c gdate.c  -fPIC -DPIC -o .libs/gdate.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gdir.lo -MD=
 -MP -MF .deps/gdir.Tpo -c gdir.c  -fPIC -DPIC -o .libs/gdir.o
gdataset.c: In function 'g_quark_from_string_internal':
gdataset.c:1060:7: warning: implicit declaration of function 'GLIB_QUARK_NE=
W' [-Wimplicit-function-declaration]
mv -f .deps/gcache.Tpo .deps/gcache.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gerror.lo -MD -MP -MF .deps/gerror.Tpo -c -o gerror.=
lo gerror.c
gdatetime.c: In function 'g_date_time_format':
gdatetime.c:2240:9: warning: variable 'utf8len' set but not used [-Wunused-=
but-set-variable]
mv -f .deps/gchecksum.Tpo .deps/gchecksum.Plo
mv -f .deps/gcompletion.Tpo .deps/gcompletion.Plo
mv -f .deps/gdataset.Tpo .deps/gdataset.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gfileutils.lo -MD -MP -MF .deps/gfileutils.Tpo -c -o=
 gfileutils.lo gfileutils.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT ghash.lo -MD -MP -MF .deps/ghash.Tpo -c -o ghash.lo =
ghash.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT ghook.lo -MD -MP -MF .deps/ghook.Tpo -c -o ghook.lo =
ghook.c
mv -f .deps/gdate.Tpo .deps/gdate.Plo
mv -f .deps/gconvert.Tpo .deps/gconvert.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT ghostutils.lo -MD -MP -MF .deps/ghostutils.Tpo -c -o=
 ghostutils.lo ghostutils.c
mv -f .deps/gdir.Tpo .deps/gdir.Plo
mv -f .deps/gdatetime.Tpo .deps/gdatetime.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT giochannel.lo -MD -MP -MF .deps/giochannel.Tpo -c -o=
 giochannel.lo giochannel.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gkeyfile.lo -MD -MP -MF .deps/gkeyfile.Tpo -c -o gke=
yfile.lo gkeyfile.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT glist.lo -MD -MP -MF .deps/glist.Tpo -c -o glist.lo =
glist.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gerror.lo -=
MD -MP -MF .deps/gerror.Tpo -c gerror.c  -fPIC -DPIC -o .libs/gerror.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT ghook.lo -M=
D -MP -MF .deps/ghook.Tpo -c ghook.c  -fPIC -DPIC -o .libs/ghook.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT ghash.lo -M=
D -MP -MF .deps/ghash.Tpo -c ghash.c  -fPIC -DPIC -o .libs/ghash.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT giochannel.=
lo -MD -MP -MF .deps/giochannel.Tpo -c giochannel.c  -fPIC -DPIC -o .libs/g=
iochannel.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gfileutils.=
lo -MD -MP -MF .deps/gfileutils.Tpo -c gfileutils.c  -fPIC -DPIC -o .libs/g=
fileutils.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT ghostutils.=
lo -MD -MP -MF .deps/ghostutils.Tpo -c ghostutils.c  -fPIC -DPIC -o .libs/g=
hostutils.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT glist.lo -M=
D -MP -MF .deps/glist.Tpo -c glist.c  -fPIC -DPIC -o .libs/glist.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gkeyfile.lo=
 -MD -MP -MF .deps/gkeyfile.Tpo -c gkeyfile.c  -fPIC -DPIC -o .libs/gkeyfil=
e.o
giochannel.c: In function 'g_io_channel_purge':
giochannel.c:564:13: warning: variable 'status' set but not used [-Wunused-=
but-set-variable]
mv -f .deps/gerror.Tpo .deps/gerror.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gmain.lo -MD -MP -MF .deps/gmain.Tpo -c -o gmain.lo =
gmain.c
mv -f .deps/ghook.Tpo .deps/ghook.Plo
mv -f .deps/ghash.Tpo .deps/ghash.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gmappedfile.lo -MD -MP -MF .deps/gmappedfile.Tpo -c =
-o gmappedfile.lo gmappedfile.c
mv -f .deps/giochannel.Tpo .deps/giochannel.Plo
mv -f .deps/ghostutils.Tpo .deps/ghostutils.Plo
mv -f .deps/glist.Tpo .deps/glist.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gmarkup.lo -MD -MP -MF .deps/gmarkup.Tpo -c -o gmark=
up.lo gmarkup.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gmem.lo -MD -MP -MF .deps/gmem.Tpo -c -o gmem.lo gme=
m.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gmessages.lo -MD -MP -MF .deps/gmessages.Tpo -c -o g=
messages.lo gmessages.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gnode.lo -MD -MP -MF .deps/gnode.Tpo -c -o gnode.lo =
gnode.c
mv -f .deps/gfileutils.Tpo .deps/gfileutils.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT goption.lo -MD -MP -MF .deps/goption.Tpo -c -o gopti=
on.lo goption.c
mv -f .deps/gkeyfile.Tpo .deps/gkeyfile.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gpattern.lo -MD -MP -MF .deps/gpattern.Tpo -c -o gpa=
ttern.lo gpattern.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gmain.lo -M=
D -MP -MF .deps/gmain.Tpo -c gmain.c  -fPIC -DPIC -o .libs/gmain.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gmappedfile=
.lo -MD -MP -MF .deps/gmappedfile.Tpo -c gmappedfile.c  -fPIC -DPIC -o .lib=
s/gmappedfile.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gmarkup.lo =
-MD -MP -MF .deps/gmarkup.Tpo -c gmarkup.c  -fPIC -DPIC -o .libs/gmarkup.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gmessages.l=
o -MD -MP -MF .deps/gmessages.Tpo -c gmessages.c  -fPIC -DPIC -o .libs/gmes=
sages.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gmem.lo -MD=
 -MP -MF .deps/gmem.Tpo -c gmem.c  -fPIC -DPIC -o .libs/gmem.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gnode.lo -M=
D -MP -MF .deps/gnode.Tpo -c gnode.c  -fPIC -DPIC -o .libs/gnode.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT goption.lo =
-MD -MP -MF .deps/goption.Tpo -c goption.c  -fPIC -DPIC -o .libs/goption.o
gmem.c: In function 'g_malloc':
gmem.c:165:7: warning: implicit declaration of function 'GLIB_MEM_ALLOC' [-=
Wimplicit-function-declaration]
gmem.c: In function 'g_realloc':
gmem.c:234:7: warning: implicit declaration of function 'GLIB_MEM_REALLOC' =
[-Wimplicit-function-declaration]
gmem.c: In function 'g_free':
gmem.c:264:3: warning: implicit declaration of function 'GLIB_MEM_FREE' [-W=
implicit-function-declaration]
gmessages.c: In function 'g_logv':
gmessages.c:509:21: warning: variable 'size' set but not used [-Wunused-but=
-set-variable]
mv -f .deps/gmain.Tpo .deps/gmain.Plo
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gpattern.lo=
 -MD -MP -MF .deps/gpattern.Tpo -c gpattern.c  -fPIC -DPIC -o .libs/gpatter=
n.o
mv -f .deps/gmappedfile.Tpo .deps/gmappedfile.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gpoll.lo -MD -MP -MF .deps/gpoll.Tpo -c -o gpoll.lo =
gpoll.c
mv -f .deps/gnode.Tpo .deps/gnode.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gprimes.lo -MD -MP -MF .deps/gprimes.Tpo -c -o gprim=
es.lo gprimes.c
mv -f .deps/gmarkup.Tpo .deps/gmarkup.Plo
mv -f .deps/gmem.Tpo .deps/gmem.Plo
mv -f .deps/gmessages.Tpo .deps/gmessages.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gqsort.lo -MD -MP -MF .deps/gqsort.Tpo -c -o gqsort.=
lo gqsort.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gqueue.lo -MD -MP -MF .deps/gqueue.Tpo -c -o gqueue.=
lo gqueue.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT grel.lo -MD -MP -MF .deps/grel.Tpo -c -o grel.lo gre=
l.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT grand.lo -MD -MP -MF .deps/grand.Tpo -c -o grand.lo =
grand.c
mv -f .deps/goption.Tpo .deps/goption.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gregex.lo -MD -MP -MF .deps/gregex.Tpo -c -o gregex.=
lo gregex.c
mv -f .deps/gpattern.Tpo .deps/gpattern.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gscanner.lo -MD -MP -MF .deps/gscanner.Tpo -c -o gsc=
anner.lo gscanner.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gpoll.lo -M=
D -MP -MF .deps/gpoll.Tpo -c gpoll.c  -fPIC -DPIC -o .libs/gpoll.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gqsort.lo -=
MD -MP -MF .deps/gqsort.Tpo -c gqsort.c  -fPIC -DPIC -o .libs/gqsort.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT grel.lo -MD=
 -MP -MF .deps/grel.Tpo -c grel.c  -fPIC -DPIC -o .libs/grel.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gqueue.lo -=
MD -MP -MF .deps/gqueue.Tpo -c gqueue.c  -fPIC -DPIC -o .libs/gqueue.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gprimes.lo =
-MD -MP -MF .deps/gprimes.Tpo -c gprimes.c  -fPIC -DPIC -o .libs/gprimes.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT grand.lo -M=
D -MP -MF .deps/grand.Tpo -c grand.c  -fPIC -DPIC -o .libs/grand.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gregex.lo -=
MD -MP -MF .deps/gregex.Tpo -c gregex.c  -fPIC -DPIC -o .libs/gregex.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gscanner.lo=
 -MD -MP -MF .deps/gscanner.Tpo -c gscanner.c  -fPIC -DPIC -o .libs/gscanne=
r.o
mv -f .deps/gpoll.Tpo .deps/gpoll.Plo
mv -f .deps/gprimes.Tpo .deps/gprimes.Plo
mv -f .deps/gqsort.Tpo .deps/gqsort.Plo
mv -f .deps/gqueue.Tpo .deps/gqueue.Plo
mv -f .deps/grel.Tpo .deps/grel.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gsequence.lo -MD -MP -MF .deps/gsequence.Tpo -c -o g=
sequence.lo gsequence.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gshell.lo -MD -MP -MF .deps/gshell.Tpo -c -o gshell.=
lo gshell.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gslice.lo -MD -MP -MF .deps/gslice.Tpo -c -o gslice.=
lo gslice.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gslist.lo -MD -MP -MF .deps/gslist.Tpo -c -o gslist.=
lo gslist.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gstdio.lo -MD -MP -MF .deps/gstdio.Tpo -c -o gstdio.=
lo gstdio.c
mv -f .deps/grand.Tpo .deps/grand.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gstrfuncs.lo -MD -MP -MF .deps/gstrfuncs.Tpo -c -o g=
strfuncs.lo gstrfuncs.c
mv -f .deps/gscanner.Tpo .deps/gscanner.Plo
mv -f .deps/gregex.Tpo .deps/gregex.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gstring.lo -MD -MP -MF .deps/gstring.Tpo -c -o gstri=
ng.lo gstring.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gtestutils.lo -MD -MP -MF .deps/gtestutils.Tpo -c -o=
 gtestutils.lo gtestutils.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gsequence.l=
o -MD -MP -MF .deps/gsequence.Tpo -c gsequence.c  -fPIC -DPIC -o .libs/gseq=
uence.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gslist.lo -=
MD -MP -MF .deps/gslist.Tpo -c gslist.c  -fPIC -DPIC -o .libs/gslist.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gstdio.lo -=
MD -MP -MF .deps/gstdio.Tpo -c gstdio.c  -fPIC -DPIC -o .libs/gstdio.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gshell.lo -=
MD -MP -MF .deps/gshell.Tpo -c gshell.c  -fPIC -DPIC -o .libs/gshell.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gslice.lo -=
MD -MP -MF .deps/gslice.Tpo -c gslice.c  -fPIC -DPIC -o .libs/gslice.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gstrfuncs.l=
o -MD -MP -MF .deps/gstrfuncs.Tpo -c gstrfuncs.c  -fPIC -DPIC -o .libs/gstr=
funcs.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gstring.lo =
-MD -MP -MF .deps/gstring.Tpo -c gstring.c  -fPIC -DPIC -o .libs/gstring.o
gslice.c: In function 'g_slice_alloc':
gslice.c:846:3: warning: implicit declaration of function 'GLIB_SLICE_ALLOC=
' [-Wimplicit-function-declaration]
gslice.c: In function 'g_slice_free1':
gslice.c:909:3: warning: implicit declaration of function 'GLIB_SLICE_FREE'=
 [-Wimplicit-function-declaration]
mv -f .deps/gsequence.Tpo .deps/gsequence.Plo
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gtestutils.=
lo -MD -MP -MF .deps/gtestutils.Tpo -c gtestutils.c  -fPIC -DPIC -o .libs/g=
testutils.o
mv -f .deps/gslist.Tpo .deps/gslist.Plo
mv -f .deps/gshell.Tpo .deps/gshell.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gthread.lo -MD -MP -MF .deps/gthread.Tpo -c -o gthre=
ad.lo gthread.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gthreadpool.lo -MD -MP -MF .deps/gthreadpool.Tpo -c =
-o gthreadpool.lo gthreadpool.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gtimer.lo -MD -MP -MF .deps/gtimer.Tpo -c -o gtimer.=
lo gtimer.c
mv -f .deps/gslice.Tpo .deps/gslice.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gtimezone.lo -MD -MP -MF .deps/gtimezone.Tpo -c -o g=
timezone.lo gtimezone.c
mv -f .deps/gstdio.Tpo .deps/gstdio.Plo
mv -f .deps/gstrfuncs.Tpo .deps/gstrfuncs.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gtree.lo -MD -MP -MF .deps/gtree.Tpo -c -o gtree.lo =
gtree.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT guniprop.lo -MD -MP -MF .deps/guniprop.Tpo -c -o gun=
iprop.lo guniprop.c
mv -f .deps/gtestutils.Tpo .deps/gtestutils.Plo
mv -f .deps/gstring.Tpo .deps/gstring.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gutf8.lo -MD -MP -MF .deps/gutf8.Tpo -c -o gutf8.lo =
gutf8.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gunibreak.lo -MD -MP -MF .deps/gunibreak.Tpo -c -o g=
unibreak.lo gunibreak.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gthread.lo =
-MD -MP -MF .deps/gthread.Tpo -c gthread.c  -fPIC -DPIC -o .libs/gthread.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gtimer.lo -=
MD -MP -MF .deps/gtimer.Tpo -c gtimer.c  -fPIC -DPIC -o .libs/gtimer.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gthreadpool=
.lo -MD -MP -MF .deps/gthreadpool.Tpo -c gthreadpool.c  -fPIC -DPIC -o .lib=
s/gthreadpool.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gtimezone.l=
o -MD -MP -MF .deps/gtimezone.Tpo -c gtimezone.c  -fPIC -DPIC -o .libs/gtim=
ezone.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gtree.lo -M=
D -MP -MF .deps/gtree.Tpo -c gtree.c  -fPIC -DPIC -o .libs/gtree.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT guniprop.lo=
 -MD -MP -MF .deps/guniprop.Tpo -c guniprop.c  -fPIC -DPIC -o .libs/gunipro=
p.o
mv -f .deps/gtimer.Tpo .deps/gtimer.Plo
mv -f .deps/gthreadpool.Tpo .deps/gthreadpool.Plo
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gutf8.lo -M=
D -MP -MF .deps/gutf8.Tpo -c gutf8.c  -fPIC -DPIC -o .libs/gutf8.o
mv -f .deps/gthread.Tpo .deps/gthread.Plo
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gunibreak.l=
o -MD -MP -MF .deps/gunibreak.Tpo -c gunibreak.c  -fPIC -DPIC -o .libs/guni=
break.o
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gunicollate.lo -MD -MP -MF .deps/gunicollate.Tpo -c =
-o gunicollate.lo gunicollate.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gunidecomp.lo -MD -MP -MF .deps/gunidecomp.Tpo -c -o=
 gunidecomp.lo gunidecomp.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gurifuncs.lo -MD -MP -MF .deps/gurifuncs.Tpo -c -o g=
urifuncs.lo gurifuncs.c
mv -f .deps/gtree.Tpo .deps/gtree.Plo
mv -f .deps/gtimezone.Tpo .deps/gtimezone.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gutils.lo -MD -MP -MF .deps/gutils.Tpo -c -o gutils.=
lo gutils.c
gutf8.c: In function 'g_utf16_to_ucs4':
gutf8.c:1295:16: warning: variable 'wc' set but not used [-Wunused-but-set-=
variable]
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvariant.lo -MD -MP -MF .deps/gvariant.Tpo -c -o gva=
riant.lo gvariant.c
mv -f .deps/gutf8.Tpo .deps/gutf8.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvariant-core.lo -MD -MP -MF .deps/gvariant-core.Tpo=
 -c -o gvariant-core.lo gvariant-core.c
mv -f .deps/guniprop.Tpo .deps/guniprop.Plo
mv -f .deps/gunibreak.Tpo .deps/gunibreak.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvariant-parser.lo -MD -MP -MF .deps/gvariant-parser=
.Tpo -c -o gvariant-parser.lo gvariant-parser.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvariant-serialiser.lo -MD -MP -MF .deps/gvariant-se=
rialiser.Tpo -c -o gvariant-serialiser.lo gvariant-serialiser.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gunicollate=
.lo -MD -MP -MF .deps/gunicollate.Tpo -c gunicollate.c  -fPIC -DPIC -o .lib=
s/gunicollate.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gunidecomp.=
lo -MD -MP -MF .deps/gunidecomp.Tpo -c gunidecomp.c  -fPIC -DPIC -o .libs/g=
unidecomp.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvariant.lo=
 -MD -MP -MF .deps/gvariant.Tpo -c gvariant.c  -fPIC -DPIC -o .libs/gvarian=
t.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gutils.lo -=
MD -MP -MF .deps/gutils.Tpo -c gutils.c  -fPIC -DPIC -o .libs/gutils.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gurifuncs.l=
o -MD -MP -MF .deps/gurifuncs.Tpo -c gurifuncs.c  -fPIC -DPIC -o .libs/guri=
funcs.o
mv -f .deps/gunicollate.Tpo .deps/gunicollate.Plo
mv -f .deps/gunidecomp.Tpo .deps/gunidecomp.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvarianttypeinfo.lo -MD -MP -MF .deps/gvarianttypein=
fo.Tpo -c -o gvarianttypeinfo.lo gvarianttypeinfo.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvariant-co=
re.lo -MD -MP -MF .deps/gvariant-core.Tpo -c gvariant-core.c  -fPIC -DPIC -=
o .libs/gvariant-core.o
mv -f .deps/gurifuncs.Tpo .deps/gurifuncs.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gvarianttype.lo -MD -MP -MF .deps/gvarianttype.Tpo -=
c -o gvarianttype.lo gvarianttype.c
mv -f .deps/gvariant.Tpo .deps/gvariant.Plo
mv -f .deps/gutils.Tpo .deps/gutils.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gprintf.lo -MD -MP -MF .deps/gprintf.Tpo -c -o gprin=
tf.lo gprintf.c
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvariant-pa=
rser.lo -MD -MP -MF .deps/gvariant-parser.Tpo -c gvariant-parser.c  -fPIC -=
DPIC -o .libs/gvariant-parser.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvariant-se=
rialiser.lo -MD -MP -MF .deps/gvariant-serialiser.Tpo -c gvariant-serialise=
r.c  -fPIC -DPIC -o .libs/gvariant-serialiser.o
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT giounix.lo -MD -MP -MF .deps/giounix.Tpo -c -o gioun=
ix.lo giounix.c
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dcompile ccache gcc -=
DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG_DOMAIN=3D\"=
GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_COMPILATION -D=
PCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysro=
ots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthread  -isystem=
/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr=
/include -O2 -Wall -MT gspawn.lo -MD -MP -MF .deps/gspawn.Tpo -c -o gspawn.=
lo gspawn.c
mv -f .deps/gvariant-core.Tpo .deps/gvariant-core.Plo
ccache gcc -DHAVE_CONFIG_H -I. -I..  -I.. -I../glib -I../glib -I..  -DG_LOG=
_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -DG_DISABLE_DEPRECATED -DGLIB_CO=
MPILATION -DPCRE_STATIC -isystem/home/ahaupt/yocto-git/builds/qemux86-berna=
rd/tmp/sysroots/x86_64-linux/usr/include -DG_DISABLE_SINGLE_INCLUDES -pthre=
ad  -isystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_=
64-linux/usr/include -O2 -Wall -MT gtester.o -MD -MP -MF .deps/gtester.Tpo =
-c -o gtester.o gtester.c
mv -f .deps/gvariant-parser.Tpo .deps/gvariant-parser.Plo
mv -f .deps/gvariant-serialiser.Tpo .deps/gvariant-serialiser.Plo
mv -f .deps/gtester.Tpo .deps/gtester.Po
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvarianttyp=
einfo.lo -MD -MP -MF .deps/gvarianttypeinfo.Tpo -c gvarianttypeinfo.c  -fPI=
C -DPIC -o .libs/gvarianttypeinfo.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT giounix.lo =
-MD -MP -MF .deps/giounix.Tpo -c giounix.c  -fPIC -DPIC -o .libs/giounix.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gvarianttyp=
e.lo -MD -MP -MF .deps/gvarianttype.Tpo -c gvarianttype.c  -fPIC -DPIC -o .=
libs/gvarianttype.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gprintf.lo =
-MD -MP -MF .deps/gprintf.Tpo -c gprintf.c  -fPIC -DPIC -o .libs/gprintf.o
x86_64-linux-libtool: compile:  ccache gcc -DHAVE_CONFIG_H -I. -I.. -I.. -I=
../glib -I../glib -I.. -DG_LOG_DOMAIN=3D\"GLib\" -DG_DISABLE_CAST_CHECKS -D=
G_DISABLE_DEPRECATED -DGLIB_COMPILATION -DPCRE_STATIC -isystem/home/ahaupt/=
yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -DG_=
DISABLE_SINGLE_INCLUDES -pthread -isystem/home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -MT gspawn.lo -=
MD -MP -MF .deps/gspawn.Tpo -c gspawn.c  -fPIC -DPIC -o .libs/gspawn.o
mv -f .deps/gvarianttypeinfo.Tpo .deps/gvarianttypeinfo.Plo
giounix.c: In function 'g_io_channel_new_file':
giounix.c:508:7: warning: case value '9' not in enumerated type [-Wswitch]
giounix.c:511:7: warning: case value '10' not in enumerated type [-Wswitch]
giounix.c:514:7: warning: case value '12' not in enumerated type [-Wswitch]
giounix.c:559:7: warning: case value '9' not in enumerated type [-Wswitch]
giounix.c:560:7: warning: case value '10' not in enumerated type [-Wswitch]
giounix.c:561:7: warning: case value '12' not in enumerated type [-Wswitch]
mv -f .deps/giounix.Tpo .deps/giounix.Plo
mv -f .deps/gvarianttype.Tpo .deps/gvarianttype.Plo
mv -f .deps/gprintf.Tpo .deps/gprintf.Plo
mv -f .deps/gspawn.Tpo .deps/gspawn.Plo
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink ccache gcc  -is=
ystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linu=
x/usr/include -O2 -Wall -Wl,-Bsymbolic-functions  -version-info 2600:1:2600=
 -export-dynamic  -export-symbols-regex "^g.*" -L/home/ahaupt/yocto-git/bui=
lds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home=
/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib =
-Wl,-rpath,/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_6=
4-linux/usr/lib -Wl,-O1 -o libglib-2.0.la -rpath /home/ahaupt/yocto-git/bui=
lds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib garray.lo gasyncqueue=
.lo gatomic-gcc.lo gbacktrace.lo gbase64.lo gbitlock.lo gbookmarkfile.lo gb=
uffer.lo gcache.lo gchecksum.lo gcompletion.lo gconvert.lo gdataset.lo gdat=
e.lo gdatetime.lo gdir.lo gerror.lo gfileutils.lo ghash.lo ghook.lo ghostut=
ils.lo giochannel.lo gkeyfile.lo glist.lo gmain.lo gmappedfile.lo gmarkup.l=
o gmem.lo gmessages.lo gnode.lo goption.lo gpattern.lo gpoll.lo gprimes.lo =
gqsort.lo gqueue.lo grel.lo grand.lo gregex.lo gscanner.lo gsequence.lo gsh=
ell.lo gslice.lo gslist.lo gstdio.lo gstrfuncs.lo gstring.lo gtestutils.lo =
gthread.lo gthreadpool.lo gtimer.lo gtimezone.lo gtree.lo guniprop.lo gutf8=
.lo gunibreak.lo gunicollate.lo gunidecomp.lo gurifuncs.lo gutils.lo gvaria=
nt.lo gvariant-core.lo gvariant-parser.lo gvariant-serialiser.lo gvariantty=
peinfo.lo gvarianttype.lo gprintf.lo libcharset/libcharset.la  giounix.lo g=
spawn.lo    pcre/libpcre.la glib_probes.o=20

*** Warning: Linking the shared library libglib-2.0.la against the non-libt=
ool
*** objects  glib_probes.o is not portable!
x86_64-linux-libtool: link: nm  .libs/garray.o .libs/gasyncqueue.o .libs/ga=
tomic-gcc.o .libs/gbacktrace.o .libs/gbase64.o .libs/gbitlock.o .libs/gbook=
markfile.o .libs/gbuffer.o .libs/gcache.o .libs/gchecksum.o .libs/gcompleti=
on.o .libs/gconvert.o .libs/gdataset.o .libs/gdate.o .libs/gdatetime.o .lib=
s/gdir.o .libs/gerror.o .libs/gfileutils.o .libs/ghash.o .libs/ghook.o .lib=
s/ghostutils.o .libs/giochannel.o .libs/gkeyfile.o .libs/glist.o .libs/gmai=
n.o .libs/gmappedfile.o .libs/gmarkup.o .libs/gmem.o .libs/gmessages.o .lib=
s/gnode.o .libs/goption.o .libs/gpattern.o .libs/gpoll.o .libs/gprimes.o .l=
ibs/gqsort.o .libs/gqueue.o .libs/grel.o .libs/grand.o .libs/gregex.o .libs=
/gscanner.o .libs/gsequence.o .libs/gshell.o .libs/gslice.o .libs/gslist.o =
.libs/gstdio.o .libs/gstrfuncs.o .libs/gstring.o .libs/gtestutils.o .libs/g=
thread.o .libs/gthreadpool.o .libs/gtimer.o .libs/gtimezone.o .libs/gtree.o=
 .libs/guniprop.o .libs/gutf8.o .libs/gunibreak.o .libs/gunicollate.o .libs=
/gunidecomp.o .libs/gurifuncs.o .libs/gutils.o .libs/gvariant.o .libs/gvari=
ant-core.o .libs/gvariant-parser.o .libs/gvariant-serialiser.o .libs/gvaria=
nttypeinfo.o .libs/gvarianttype.o .libs/gprintf.o .libs/giounix.o .libs/gsp=
awn.o  glib_probes.o   libcharset/.libs/libcharset.a pcre/.libs/libpcre.a |=
 sed -n -e 's/^.*[	 ]\([ABCDGIRSTW][ABCDGIRSTW]*\)[	 ][	 ]*\([_A-Za-z][_A-Z=
a-z0-9]*\)$/\1 \2 \2/p' | sed '/ __gnu_lto/d' | /bin/sed 's/.* //' | sort |=
 uniq > .libs/libglib-2.0.exp
x86_64-linux-libtool: link: /bin/grep -E -e "^g.*" ".libs/libglib-2.0.exp" =
> ".libs/libglib-2.0.expT"
x86_64-linux-libtool: link: mv -f ".libs/libglib-2.0.expT" ".libs/libglib-2=
.0.exp"
x86_64-linux-libtool: link: echo "{ global:" > .libs/libglib-2.0.ver
x86_64-linux-libtool: link:  cat .libs/libglib-2.0.exp | sed -e "s/\(.*\)/\=
1;/" >> .libs/libglib-2.0.ver
x86_64-linux-libtool: link:  echo "local: *; };" >> .libs/libglib-2.0.ver
x86_64-linux-libtool: link:  ccache gcc -shared  -fPIC -DPIC  .libs/garray.=
o .libs/gasyncqueue.o .libs/gatomic-gcc.o .libs/gbacktrace.o .libs/gbase64.=
o .libs/gbitlock.o .libs/gbookmarkfile.o .libs/gbuffer.o .libs/gcache.o .li=
bs/gchecksum.o .libs/gcompletion.o .libs/gconvert.o .libs/gdataset.o .libs/=
gdate.o .libs/gdatetime.o .libs/gdir.o .libs/gerror.o .libs/gfileutils.o .l=
ibs/ghash.o .libs/ghook.o .libs/ghostutils.o .libs/giochannel.o .libs/gkeyf=
ile.o .libs/glist.o .libs/gmain.o .libs/gmappedfile.o .libs/gmarkup.o .libs=
/gmem.o .libs/gmessages.o .libs/gnode.o .libs/goption.o .libs/gpattern.o .l=
ibs/gpoll.o .libs/gprimes.o .libs/gqsort.o .libs/gqueue.o .libs/grel.o .lib=
s/grand.o .libs/gregex.o .libs/gscanner.o .libs/gsequence.o .libs/gshell.o =
.libs/gslice.o .libs/gslist.o .libs/gstdio.o .libs/gstrfuncs.o .libs/gstrin=
g.o .libs/gtestutils.o .libs/gthread.o .libs/gthreadpool.o .libs/gtimer.o .=
libs/gtimezone.o .libs/gtree.o .libs/guniprop.o .libs/gutf8.o .libs/gunibre=
ak.o .libs/gunicollate.o .libs/gunidecomp.o .libs/gurifuncs.o .libs/gutils.=
o .libs/gvariant.o .libs/gvariant-core.o .libs/gvariant-parser.o .libs/gvar=
iant-serialiser.o .libs/gvarianttypeinfo.o .libs/gvarianttype.o .libs/gprin=
tf.o .libs/giounix.o .libs/gspawn.o  glib_probes.o  -Wl,--whole-archive lib=
charset/.libs/libcharset.a pcre/.libs/libpcre.a -Wl,--no-whole-archive  -L/=
home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/=
lib  -O2 -Wl,-Bsymbolic-functions -Wl,-rpath-link -Wl,/home/ahaupt/yocto-gi=
t/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath -Wl,/=
home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/=
lib -Wl,-O1   -Wl,-soname -Wl,libglib-2.0.so.0 -Wl,-version-script -Wl,.lib=
s/libglib-2.0.ver -o .libs/libglib-2.0.so.0.2600.1
x86_64-linux-libtool: link: (cd ".libs" && rm -f "libglib-2.0.so.0" && ln -=
s "libglib-2.0.so.0.2600.1" "libglib-2.0.so.0")
x86_64-linux-libtool: link: (cd ".libs" && rm -f "libglib-2.0.so" && ln -s =
"libglib-2.0.so.0.2600.1" "libglib-2.0.so")
x86_64-linux-libtool: link: ( cd ".libs" && rm -f "libglib-2.0.la" && ln -s=
 "../libglib-2.0.la" "libglib-2.0.la" )
/bin/sh ../x86_64-linux-libtool  --tag=3DCC   --mode=3Dlink ccache gcc  -is=
ystem/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linu=
x/usr/include -O2 -Wall  -L/home/ahaupt/yocto-git/builds/qemux86-bernard/tm=
p/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/home/ahaupt/yocto-git/buil=
ds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath,/home/ahaup=
t/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O=
1 -o gtester gtester.o libglib-2.0.la =20
x86_64-linux-libtool: link: ccache gcc -isystem/home/ahaupt/yocto-git/build=
s/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/include -O2 -Wall -Wl,-rpat=
h-link -Wl,/home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_6=
4-linux/usr/lib -Wl,-rpath -Wl,/home/ahaupt/yocto-git/builds/qemux86-bernar=
d/tmp/sysroots/x86_64-linux/usr/lib -Wl,-O1 -o .libs/gtester gtester.o  -L/=
home/ahaupt/yocto-git/builds/qemux86-bernard/tmp/sysroots/x86_64-linux/usr/=
lib ./.libs/libglib-2.0.so -Wl,-rpath -Wl,/home/ahaupt/yocto-git/builds/qem=
ux86-bernard/tmp/sysroots/x86_64-linux/usr/lib
./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_ALLOC'
./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_REALLOC'
./.libs/libglib-2.0.so: undefined reference to `GLIB_SLICE_FREE'
./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_ALLOC'
./.libs/libglib-2.0.so: undefined reference to `GLIB_MEM_FREE'
./.libs/libglib-2.0.so: undefined reference to `GLIB_QUARK_NEW'
collect2: ld returned 1 exit status
make[4]: *** [gtester] Error 1
make[4]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
make[3]: *** [all-recursive] Error 1
make[3]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
make[2]: *** [all] Error 2
make[2]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1/glib'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/ahaupt/yocto-git/builds/qemux86-bernard/t=
mp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/glib-2.26.1'
make: *** [all] Error 2
FATAL: oe_runmake failed
ERROR: Function 'do_compile' failed (see /home/ahaupt/yocto-git/builds/qemu=
x86-bernard/tmp/work/x86_64-linux/glib-2.0-native-1_2.26.1-r1/temp/log.do_c=
ompile.27996 for further information)

--FL5UXtIhxfXey3p5--
