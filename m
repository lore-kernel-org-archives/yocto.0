Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5EBAE0131E
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 23:54:00 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=qeTizDPu2YQVt4lprK8ttUx3yhpysQlQeuza/SwjgB0d2DAVsGgffsfSxYrAc/6d;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UFfZV-0000M4-JS; Wed, 13 Mar 2013 02:53:59 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
In-Reply-To: <CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
Date: Tue, 12 Mar 2013 23:53:47 -0700
Message-ID: <56C806C0B65D44ADA7D6314F4051E91E@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac4fpL3QpFHYO+6RR9W7EJ4qLaLk4QAECDqQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688408aba786ea3887ec2118906d4e475e1350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 13 Mar 2013 06:54:01 -0000
X-Groupsio-MsgNum: 12529
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_007E_01CE1F7C.D6B672D0"

------=_NextPart_000_007E_01CE1F7C.D6B672D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> On 12 March 2013 18:20, Paul D. DeRocco 
> <pderocco@ix.netcom.com> wrote:
> > It says "attempted 145 tasks of which 145 didn't need to be 
> > rerun". So it thinks it's already there.
> 
> Indeed.   Something is breaking - you'll have to mail the whole
> configure log from autogen to attempt to debug this.

One thing that I notice is that in my build/tmp/work/i686-linux, I have two
directories, autogen-native-5.12-r2 and autogen-native-5.12-r3. The first is
from my successful out-of-the-box build of a week ago; the second is from my
current failed build. What I did in between was to add the
openembedded-core/meta and meta-openembedded/meta-oe layers in order to
include Samba. The two logs deviate at line 275 where the old successful one
says "checking whether with-libguile was specified... no" and the new failed
one says "checking for i686-linux-pkg-config... no". I suspect something in
the OE stuff appended to a recipe, which is leading to the problem.

> > Or is it now confused by the fact that I installed a 
> > version with apt-get? I
> > had gotten the same error message about the missing guile 
> > both before and
> > after installing it with apt-get, yet apt-get did in fact 
> > download and install something.
> 
> Apt would have installed a guile into /usr.  I'm a bit surprised that
> it didn't find that either.  Try "bitbake pkgconfig-native" and then
> "bitbake autogen-native", maybe we've found a bootstrap bug.

Yes, apt-get put it into /usr, but there's no .pc file for it.

When I bitbaked pkgconfig-native, it was a no-op. Then, when I bitbaked
autogen-native, I got the usual error again. I also tried removing the
version of guile that I had with apt-get, and bitbaking guile-2.0 was still
a no-op, and bitbaking autogen-native still produced the error.

Also, even though bitbaking guile-2.0 was a no-op, there is no guile command
available, since I uninstalled the version I had. Or does that recipe just
produce the library, and not the executable?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com

------=_NextPart_000_007E_01CE1F7C.D6B672D0
Content-Type: application/octet-stream;
	name="log.do_configure.13762"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_configure.13762"

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing shell function do_configure
automake (GNU automake) 1.12.3
Copyright (C) 2012 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.12
NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopoin=
t -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
2/autogen-5.12/autoopts/ -I /home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r2/autogen-5.12/config/ -I/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/share/aclocal-1.12 -I /home/pauld/yocto-atom/=
build/tmp/work/i686-linux/autogen-native-5.12-r2/autogen-5.12/aclocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I /home/pauld/yocto-atom/build/tmp/work/i686-=
linux/autogen-native-5.12-r2/autogen-5.12/autoopts/ -I /home/pauld/yocto-at=
om/build/tmp/work/i686-linux/autogen-native-5.12-r2/autogen-5.12/config/ -I=
 /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.1=
2 -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
2/autogen-5.12/aclocal-copy/ -I /home/pauld/yocto-atom/build/tmp/work/i686-=
linux/autogen-native-5.12-r2/autogen-5.12/autoopts/ -I /home/pauld/yocto-at=
om/build/tmp/work/i686-linux/autogen-native-5.12-r2/autogen-5.12/config/ -I=
 /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.1=
2 -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
2/autogen-5.12/aclocal-copy/ --force -I config
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `config'.
libtoolize: copying file `config/ltmain.sh'
libtoolize: putting macros in `config'.
libtoolize: copying file `config/libtool.m4'
libtoolize: copying file `config/ltoptions.m4'
libtoolize: copying file `config/ltsugar.m4'
libtoolize: copying file `config/ltversion.m4'
libtoolize: copying file `config/lt~obsolete.m4'
libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.ac and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tre=
e.
autoreconf: running: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/bin/autoconf --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r2/autogen-5.12/autoopts/ --include=3D/home/pauld/yoc=
to-atom/build/tmp/work/i686-linux/autogen-native-5.12-r2/autogen-5.12/confi=
g/ --include=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal-1.12 --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r2/autogen-5.12/aclocal-copy/ --force
autoreconf: running: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/bin/autoheader --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-li=
nux/autogen-native-5.12-r2/autogen-5.12/autoopts/ --include=3D/home/pauld/y=
octo-atom/build/tmp/work/i686-linux/autogen-native-5.12-r2/autogen-5.12/con=
fig/ --include=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/s=
hare/aclocal-1.12 --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-li=
nux/autogen-native-5.12-r2/autogen-5.12/aclocal-copy/ --force
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-nati=
ve-5.12-r2/autogen-5.12/configure  --build=3Di686-linux 		  --host=3Di686-l=
inux 		  --target=3Di686-linux 		  --prefix=3D/home/pauld/yocto-atom/build/=
tmp/sysroots/i686-linux/usr 		  --exec_prefix=3D/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr 		  --bindir=3D/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/bin 		  --sbindir=3D/home/pauld/yocto-atom/build=
/tmp/sysroots/i686-linux/usr/sbin 		  --libexecdir=3D/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/libexec 		  --datadir=3D/home/pauld/yoct=
o-atom/build/tmp/sysroots/i686-linux/usr/share 		  --sysconfdir=3D/home/pau=
ld/yocto-atom/build/tmp/sysroots/i686-linux/etc 		  --sharedstatedir=3D/hom=
e/pauld/yocto-atom/build/tmp/sysroots/i686-linux/com 		  --localstatedir=3D=
/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/var 		  --libdir=3D/ho=
me/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib 		  --includedir=
=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/include 		  --o=
ldincludedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/inc=
lude 		  --infodir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/share/info 		  --mandir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686=
-linux/usr/share/man 		  --disable-silent-rules 		  --disable-dependency-tr=
acking 		   =20
configure: WARNING: unrecognized options: --disable-silent-rules
checking build system type... i686-pc-linux-gnu
checking host system type... i686-pc-linux-gnu
checking target system type... i686-pc-linux-gnu
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*=
-*-*

                        A    U    T    O    G    E    N

GNU AutoGen-5.12                                             libopts.la-35:=
0:10
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*=
-*-*
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking for style of include used by make... GNU
checking for i686-linux-gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking dependency style of gcc... none
checking how to run the C preprocessor... gcc  -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by gcc... ld
checking if the linker (ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... nm
checking the name lister (nm) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+=3D"... yes
checking how to convert i686-pc-linux-gnu file names to i686-pc-linux-gnu f=
ormat... func_convert_file_noop
checking how to convert i686-pc-linux-gnu file names to toolchain format...=
 func_convert_file_noop
checking for ld option to reload object files... -r
checking for i686-linux-objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for i686-linux-dlltool... dlltool
checking how to associate runtime and link libraries... printf %s\n
checking for i686-linux-ar... ar
checking for archiver @FILE support... @
checking for i686-linux-strip... strip
checking for i686-linux-ranlib... ranlib
checking command to parse nm output from gcc object... ok
checking for sysroot... no
checking for i686-linux-mt... no
checking for mt... mt
checking if mt is a manifest tool... no
checking for dlfcn.h... yes
checking for objdir... .libs
checking if gcc supports -fno-rtti -fno-exceptions... no
checking for gcc option to produce PIC... -fPIC -DPIC
checking if gcc PIC flag -fPIC -DPIC works... yes
checking if gcc static flag -static works... yes
checking if gcc supports -c -o file.o... yes
checking if gcc supports -c -o file.o... (cached) yes
checking whether the gcc linker (ld) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
checking if malloc debugging is wanted... no
checking whether gcc and cc understand -c and -o together... yes
checking for gcc option to accept ISO C99... -std=3Dgnu99
checking for gcc -std=3Dgnu99 option to accept ISO Standard C... (cached) -=
std=3Dgnu99
checking whether clearerr_unlocked is declared... yes
checking whether feof_unlocked is declared... yes
checking whether ferror_unlocked is declared... yes
checking whether fflush_unlocked is declared... yes
checking whether fgets_unlocked is declared... yes
checking whether fputc_unlocked is declared... yes
checking whether fputs_unlocked is declared... yes
checking whether fread_unlocked is declared... yes
checking whether fwrite_unlocked is declared... yes
checking whether getc_unlocked is declared... yes
checking whether getchar_unlocked is declared... yes
checking whether putc_unlocked is declared... yes
checking whether putchar_unlocked is declared... yes
checking for texi2html... texi2html
checking for an ANSI C-conforming const... yes
checking for inline... inline
checking for dlopen in -ldl... yes
checking for mode_t... yes
checking for pid_t... yes
checking for size_t... yes
checking for uid_t in sys/types.h... yes
checking for long double with more range or precision than double... yes
checking for u_int... yes
checking for long long... yes
checking for uintmax_t... yes
checking for size_t... (cached) yes
checking for wchar_t... yes
checking size of char*... 4
checking size of int... 4
checking size of long... 4
checking size of short... 2
checking for strchr... yes
checking for strlcpy... no
checking for snprintf... yes
checking for dlopen... yes
checking for library containing copysign... none required
checking for library containing copysignl... none required
checking for library containing modfl... none required
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking for dlfcn.h... (cached) yes
checking errno.h usability... yes
checking errno.h presence... yes
checking for errno.h... yes
checking fcntl.h usability... yes
checking fcntl.h presence... yes
checking for fcntl.h... yes
checking libgen.h usability... yes
checking libgen.h presence... yes
checking for libgen.h... yes
checking for memory.h... (cached) yes
checking netinet/in.h usability... yes
checking netinet/in.h presence... yes
checking for netinet/in.h... yes
checking setjmp.h usability... yes
checking setjmp.h presence... yes
checking for setjmp.h... yes
checking sys/mman.h usability... yes
checking sys/mman.h presence... yes
checking for sys/mman.h... yes
checking sys/param.h usability... yes
checking sys/param.h presence... yes
checking for sys/param.h... yes
checking sys/poll.h usability... yes
checking sys/poll.h presence... yes
checking for sys/poll.h... yes
checking sys/procset.h usability... no
checking sys/procset.h presence... no
checking for sys/procset.h... no
checking sys/select.h usability... yes
checking sys/select.h presence... yes
checking for sys/select.h... yes
checking sys/socket.h usability... yes
checking sys/socket.h presence... yes
checking for sys/socket.h... yes
checking sys/stropts.h usability... yes
checking sys/stropts.h presence... yes
checking for sys/stropts.h... yes
checking sys/time.h usability... yes
checking sys/time.h presence... yes
checking for sys/time.h... yes
checking sys/un.h usability... yes
checking sys/un.h presence... yes
checking for sys/un.h... yes
checking sys/wait.h usability... yes
checking sys/wait.h presence... yes
checking for sys/wait.h... yes
checking for unistd.h... (cached) yes
checking utime.h usability... yes
checking utime.h presence... yes
checking for utime.h... yes
checking sysexits.h usability... yes
checking sysexits.h presence... yes
checking for sysexits.h... yes
checking stdarg.h usability... yes
checking stdarg.h presence... yes
checking for stdarg.h... yes
checking for string.h... (cached) yes
checking limits.h usability... yes
checking limits.h presence... yes
checking for limits.h... yes
checking for inttypes.h... (cached) yes
checking for runetype.h... no
checking for wchar.h... yes
checking for wchar_t... (cached) yes
checking for wint_t... yes
checking for int8_t... yes
checking for uint8_t... yes
checking for int16_t... yes
checking for uint16_t... yes
checking for int32_t... yes
checking for uint32_t... yes
checking for intptr_t... yes
checking for uintptr_t... yes
checking for uint_t... no
checking for pid_t... (cached) yes
checking for size_t... (cached) yes
checking size of char*... (cached) 4
checking size of int... (cached) 4
checking size of long... (cached) 4
checking size of short... (cached) 2
checking for pathfind in -lgen... no
checking for vprintf... yes
checking for _doprnt... no
checking vfork.h usability... no
checking vfork.h presence... no
checking for vfork.h... no
checking for fork... yes
checking for vfork... yes
checking for working fork... yes
checking for working vfork... (cached) yes
checking for mmap... yes
checking for canonicalize_file_name... yes
checking for snprintf... (cached) yes
checking for strdup... yes
checking for strchr... (cached) yes
checking for strrchr... yes
checking for strsignal... yes
checking for a sed that does not truncate output... (cached) /bin/sed
checking whether shell scripts are desired... yes
checking for vfork.h... (cached) no
checking for fork... (cached) yes
checking for vfork... (cached) yes
checking for working fork... (cached) yes
checking for working vfork... (cached) yes
checking whether using shell scripts... yes
checking whether setjmp() links okay... yes
checking whether sigsetjmp() links okay... yes
checking whether with-libguile was specified... no
checking whether with-libguile-cflags was specified... no
checking whether with-libguile-libs was specified... no
configure: guile-config used for CFLAGS: -pthread -I/home/pauld/yocto-atom/=
build/tmp/sysroots/i686-linux/usr/include/guile/2.0 -I/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include =20
configure: guile-config used for LIBS: -L/home/pauld/yocto-atom/build/tmp/s=
ysroots/i686-linux/usr/lib -lguile-2.0 -lgc =20
checking whether libguile can be linked with... yes
checking whether the guile version... 2.0.6
checking whether scm_primitive_eval_x links... yes
checking whether with-libxml2 was specified... no
checking whether with-libxml2-cflags was specified... no
checking whether with-libxml2-libs was specified... no
configure: xml2-config used for CFLAGS: -I/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/usr/include/libxml2
configure: xml2-config used for LIBS: -L/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -lxml2 -lz -lm
checking whether libxml2 can be linked with... yes
checking whether fattach runs... no
checking whether sysinfo(2) is Solaris... no
checking whether strcspn matches prototype and works... no
checking whether there is a global text array sys_siglist... yes
checking whether uname(2) is POSIX... yes
checking whether long long ints... yes
checking whether runtime library dirs can be specified... -Wl,-R
checking whether wanting autogen debugging... no
checking whether name of the packager of this software is supplied... no
checking whether packager-specific version information is supplied... no
checking whether bug reporting URI/e-mail/etc. is supplied... no
checking libio.h usability... yes
checking libio.h presence... yes
checking for libio.h... yes
checking ctype.h usability... yes
checking ctype.h presence... yes
checking for ctype.h... yes
checking assert.h usability... yes
checking assert.h presence... yes
checking for assert.h... yes
checking sys/resource.h usability... yes
checking sys/resource.h presence... yes
checking for sys/resource.h... yes
checking whether a reg expr header is specified... no
checking whether with-libregex was specified... no
checking whether with-libregex-cflags was specified... no
checking whether with-libregex-libs was specified... no
checking whether libregex functions properly... yes
checking whether pathfind(3) works... no
checking whether /dev/zero is readable device... crw-rw-rw- 1 root root 1, =
5 Feb 16 09:42 /dev/zero
checking whether we have a functional realpath(3C)... yes
checking whether strftime() works... yes
checking whether fopen accepts "b" mode... yes
checking whether fopen accepts "t" mode... yes
checking whether not wanting optional option args... yes
checking whether sigsetjmp is declared... yes
checking for putenv... yes
checking for getdate_r... yes
checking for fopencookie... yes
checking for inline... (cached) inline
checking for static inline... static inline
checking for grep that handles long lines and -e... (cached) /bin/grep
checking for egrep... (cached) /bin/grep -E
checking for fgrep... (cached) /bin/grep -F
checking if malloc debugging is wanted... no
checking for gawk... (cached) gawk
checking for runetype.h... (cached) no
checking for wchar.h... (cached) yes
checking for stdarg.h... (cached) yes
checking for wchar_t... (cached) yes
checking for wint_t... (cached) yes
checking for long double... yes
checking for strtoul... yes
checking for ldexpl... yes
checking for frexpl... yes
checking for log in -lm... yes
checking for copysign... yes
checking for copysignl... yes
checking whether ln -s works... yes
checking that generated files are newer than configure... done
configure: creating ./config.status
config.status: creating doc/mk-agen-texi.sh
config.status: creating autoopts/mk-autoopts-pc
config.status: creating autoopts/autoopts-config
config.status: creating autoopts/tpl/tpl-config.tlib
config.status: creating doc/auto_gen.tpl
config.status: creating autoopts/test/defs
config.status: creating pkg/pkg-env
config.status: creating Makefile
config.status: creating agen5/test/Makefile
config.status: creating agen5/Makefile
config.status: creating autoopts/test/Makefile
config.status: creating autoopts/Makefile
config.status: creating columns/Makefile
config.status: creating compat/Makefile
config.status: creating doc/Makefile
config.status: creating getdefs/test/Makefile
config.status: creating getdefs/Makefile
config.status: creating pkg/Makefile
config.status: creating snprintfv/Makefile
config.status: creating xml2ag/test/Makefile
config.status: creating xml2ag/Makefile
config.status: creating config.h
config.status: executing depfiles commands
config.status: executing libtool commands
config.status: executing stamp-h commands
configure: WARNING: unrecognized options: --disable-silent-rules
------------------------------------------------------------------------
Configuration:

  Source code location:   .
  Compiler:               gcc -std=3Dgnu99
  Compiler flags:         -isystem/home/pauld/yocto-atom/build/tmp/sysroots=
/i686-linux/usr/include -O2 -pipe
  Host System Type:       i686-pc-linux-gnu
  Install path:           /home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr

  See config.h for further configuration information.
------------------------------------------------------------------------
DEBUG: Shell function do_configure finished
DEBUG: Executing python function do_qa_configure
NOTE: Checking autotools environment for common misconfiguration
NOTE: autogen-native: md5 checksum matched for file://COPYING;md5=3Dd32239b=
cb673463ab874e80d47fae504
DEBUG: Python function do_qa_configure finished
DEBUG: Executing shell function autotools_postconfigure
DEBUG: Shell function autotools_postconfigure finished

------=_NextPart_000_007E_01CE1F7C.D6B672D0
Content-Type: application/octet-stream;
	name="log.do_configure.15857"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_configure.15857"

DEBUG: Executing python function sysroot_cleansstate
DEBUG: Python function sysroot_cleansstate finished
DEBUG: Executing shell function autotools_preconfigure
DEBUG: Shell function autotools_preconfigure finished
DEBUG: Executing shell function do_configure
automake (GNU automake) 1.12.3
Copyright (C) 2012 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.12
NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopoin=
t -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
3/autogen-5.12/autoopts/ -I /home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r3/autogen-5.12/config/ -I/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/share/aclocal-1.12 -I /home/pauld/yocto-atom/=
build/tmp/work/i686-linux/autogen-native-5.12-r3/autogen-5.12/aclocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I /home/pauld/yocto-atom/build/tmp/work/i686-=
linux/autogen-native-5.12-r3/autogen-5.12/autoopts/ -I /home/pauld/yocto-at=
om/build/tmp/work/i686-linux/autogen-native-5.12-r3/autogen-5.12/config/ -I=
 /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.1=
2 -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
3/autogen-5.12/aclocal-copy/ -I /home/pauld/yocto-atom/build/tmp/work/i686-=
linux/autogen-native-5.12-r3/autogen-5.12/autoopts/ -I /home/pauld/yocto-at=
om/build/tmp/work/i686-linux/autogen-native-5.12-r3/autogen-5.12/config/ -I=
 /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.1=
2 -I /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r=
3/autogen-5.12/aclocal-copy/ --force -I config
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in AC_CONFIG_AUX_DIR, `config'.
libtoolize: copying file `config/ltmain.sh'
libtoolize: putting macros in `config'.
libtoolize: copying file `config/libtool.m4'
libtoolize: copying file `config/ltoptions.m4'
libtoolize: copying file `config/ltsugar.m4'
libtoolize: copying file `config/ltversion.m4'
libtoolize: copying file `config/lt~obsolete.m4'
libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.ac and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tre=
e.
autoreconf: running: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/bin/autoconf --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r3/autogen-5.12/autoopts/ --include=3D/home/pauld/yoc=
to-atom/build/tmp/work/i686-linux/autogen-native-5.12-r3/autogen-5.12/confi=
g/ --include=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sha=
re/aclocal-1.12 --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-linu=
x/autogen-native-5.12-r3/autogen-5.12/aclocal-copy/ --force
autoreconf: running: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/bin/autoheader --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-li=
nux/autogen-native-5.12-r3/autogen-5.12/autoopts/ --include=3D/home/pauld/y=
octo-atom/build/tmp/work/i686-linux/autogen-native-5.12-r3/autogen-5.12/con=
fig/ --include=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/s=
hare/aclocal-1.12 --include=3D/home/pauld/yocto-atom/build/tmp/work/i686-li=
nux/autogen-native-5.12-r3/autogen-5.12/aclocal-copy/ --force
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-nati=
ve-5.12-r3/autogen-5.12/configure  --build=3Di686-linux 		  --host=3Di686-l=
inux 		  --target=3Di686-linux 		  --prefix=3D/home/pauld/yocto-atom/build/=
tmp/sysroots/i686-linux/usr 		  --exec_prefix=3D/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr 		  --bindir=3D/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/bin 		  --sbindir=3D/home/pauld/yocto-atom/build=
/tmp/sysroots/i686-linux/usr/sbin 		  --libexecdir=3D/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/libexec 		  --datadir=3D/home/pauld/yoct=
o-atom/build/tmp/sysroots/i686-linux/usr/share 		  --sysconfdir=3D/home/pau=
ld/yocto-atom/build/tmp/sysroots/i686-linux/etc 		  --sharedstatedir=3D/hom=
e/pauld/yocto-atom/build/tmp/sysroots/i686-linux/com 		  --localstatedir=3D=
/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/var 		  --libdir=3D/ho=
me/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib 		  --includedir=
=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/include 		  --o=
ldincludedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/inc=
lude 		  --infodir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/share/info 		  --mandir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686=
-linux/usr/share/man 		  --disable-silent-rules 		  --disable-dependency-tr=
acking 		   =20
configure: WARNING: unrecognized options: --disable-silent-rules
checking build system type... i686-pc-linux-gnu
checking host system type... i686-pc-linux-gnu
checking target system type... i686-pc-linux-gnu
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*=
-*-*

                        A    U    T    O    G    E    N

GNU AutoGen-5.12                                             libopts.la-35:=
0:10
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*=
-*-*
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking for style of include used by make... GNU
checking for i686-linux-gcc... gcc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether gcc accepts -g... yes
checking for gcc option to accept ISO C89... none needed
checking dependency style of gcc... none
checking how to run the C preprocessor... gcc  -E
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for fgrep... /bin/grep -F
checking for ld used by gcc... ld
checking if the linker (ld) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... nm
checking the name lister (nm) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+=3D"... yes
checking how to convert i686-pc-linux-gnu file names to i686-pc-linux-gnu f=
ormat... func_convert_file_noop
checking how to convert i686-pc-linux-gnu file names to toolchain format...=
 func_convert_file_noop
checking for ld option to reload object files... -r
checking for i686-linux-objdump... objdump
checking how to recognize dependent libraries... pass_all
checking for i686-linux-dlltool... dlltool
checking how to associate runtime and link libraries... printf %s\n
checking for i686-linux-ar... ar
checking for archiver @FILE support... @
checking for i686-linux-strip... strip
checking for i686-linux-ranlib... ranlib
checking command to parse nm output from gcc object... ok
checking for sysroot... no
checking for i686-linux-mt... no
checking for mt... mt
checking if mt is a manifest tool... no
checking for dlfcn.h... yes
checking for objdir... .libs
checking if gcc supports -fno-rtti -fno-exceptions... no
checking for gcc option to produce PIC... -fPIC -DPIC
checking if gcc PIC flag -fPIC -DPIC works... yes
checking if gcc static flag -static works... yes
checking if gcc supports -c -o file.o... yes
checking if gcc supports -c -o file.o... (cached) yes
checking whether the gcc linker (ld) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
checking if malloc debugging is wanted... no
checking whether gcc and cc understand -c and -o together... yes
checking for gcc option to accept ISO C99... -std=3Dgnu99
checking for gcc -std=3Dgnu99 option to accept ISO Standard C... (cached) -=
std=3Dgnu99
checking whether clearerr_unlocked is declared... yes
checking whether feof_unlocked is declared... yes
checking whether ferror_unlocked is declared... yes
checking whether fflush_unlocked is declared... yes
checking whether fgets_unlocked is declared... yes
checking whether fputc_unlocked is declared... yes
checking whether fputs_unlocked is declared... yes
checking whether fread_unlocked is declared... yes
checking whether fwrite_unlocked is declared... yes
checking whether getc_unlocked is declared... yes
checking whether getchar_unlocked is declared... yes
checking whether putc_unlocked is declared... yes
checking whether putchar_unlocked is declared... yes
checking for texi2html... texi2html
checking for an ANSI C-conforming const... yes
checking for inline... inline
checking for dlopen in -ldl... yes
checking for mode_t... yes
checking for pid_t... yes
checking for size_t... yes
checking for uid_t in sys/types.h... yes
checking for long double with more range or precision than double... yes
checking for u_int... yes
checking for long long... yes
checking for uintmax_t... yes
checking for size_t... (cached) yes
checking for wchar_t... yes
checking size of char*... 4
checking size of int... 4
checking size of long... 4
checking size of short... 2
checking for strchr... yes
checking for strlcpy... no
checking for snprintf... yes
checking for dlopen... yes
checking for library containing copysign... none required
checking for library containing copysignl... none required
checking for library containing modfl... none required
checking for dirent.h that defines DIR... yes
checking for library containing opendir... none required
checking for dlfcn.h... (cached) yes
checking errno.h usability... yes
checking errno.h presence... yes
checking for errno.h... yes
checking fcntl.h usability... yes
checking fcntl.h presence... yes
checking for fcntl.h... yes
checking libgen.h usability... yes
checking libgen.h presence... yes
checking for libgen.h... yes
checking for memory.h... (cached) yes
checking netinet/in.h usability... yes
checking netinet/in.h presence... yes
checking for netinet/in.h... yes
checking setjmp.h usability... yes
checking setjmp.h presence... yes
checking for setjmp.h... yes
checking sys/mman.h usability... yes
checking sys/mman.h presence... yes
checking for sys/mman.h... yes
checking sys/param.h usability... yes
checking sys/param.h presence... yes
checking for sys/param.h... yes
checking sys/poll.h usability... yes
checking sys/poll.h presence... yes
checking for sys/poll.h... yes
checking sys/procset.h usability... no
checking sys/procset.h presence... no
checking for sys/procset.h... no
checking sys/select.h usability... yes
checking sys/select.h presence... yes
checking for sys/select.h... yes
checking sys/socket.h usability... yes
checking sys/socket.h presence... yes
checking for sys/socket.h... yes
checking sys/stropts.h usability... yes
checking sys/stropts.h presence... yes
checking for sys/stropts.h... yes
checking sys/time.h usability... yes
checking sys/time.h presence... yes
checking for sys/time.h... yes
checking sys/un.h usability... yes
checking sys/un.h presence... yes
checking for sys/un.h... yes
checking sys/wait.h usability... yes
checking sys/wait.h presence... yes
checking for sys/wait.h... yes
checking for unistd.h... (cached) yes
checking utime.h usability... yes
checking utime.h presence... yes
checking for utime.h... yes
checking sysexits.h usability... yes
checking sysexits.h presence... yes
checking for sysexits.h... yes
checking stdarg.h usability... yes
checking stdarg.h presence... yes
checking for stdarg.h... yes
checking for string.h... (cached) yes
checking limits.h usability... yes
checking limits.h presence... yes
checking for limits.h... yes
checking for inttypes.h... (cached) yes
checking for runetype.h... no
checking for wchar.h... yes
checking for wchar_t... (cached) yes
checking for wint_t... yes
checking for int8_t... yes
checking for uint8_t... yes
checking for int16_t... yes
checking for uint16_t... yes
checking for int32_t... yes
checking for uint32_t... yes
checking for intptr_t... yes
checking for uintptr_t... yes
checking for uint_t... no
checking for pid_t... (cached) yes
checking for size_t... (cached) yes
checking size of char*... (cached) 4
checking size of int... (cached) 4
checking size of long... (cached) 4
checking size of short... (cached) 2
checking for pathfind in -lgen... no
checking for vprintf... yes
checking for _doprnt... no
checking vfork.h usability... no
checking vfork.h presence... no
checking for vfork.h... no
checking for fork... yes
checking for vfork... yes
checking for working fork... yes
checking for working vfork... (cached) yes
checking for mmap... yes
checking for canonicalize_file_name... yes
checking for snprintf... (cached) yes
checking for strdup... yes
checking for strchr... (cached) yes
checking for strrchr... yes
checking for strsignal... yes
checking for a sed that does not truncate output... (cached) /bin/sed
checking whether shell scripts are desired... yes
checking for vfork.h... (cached) no
checking for fork... (cached) yes
checking for vfork... (cached) yes
checking for working fork... (cached) yes
checking for working vfork... (cached) yes
checking whether using shell scripts... yes
checking whether setjmp() links okay... yes
checking whether sigsetjmp() links okay... yes
checking for i686-linux-pkg-config... no
checking for pkg-config... /home/pauld/yocto-atom/build/tmp/sysroots/i686-l=
inux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for LIBGUILE... no
configure: error: Package requirements (guile-2.0) were not met:

No package 'guile-2.0' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables LIBGUILE_CFLAGS
and LIBGUILE_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.
Configure failed. The contents of all config.log files follows to aid debug=
ging
/home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r3/aut=
ogen-5.12/config.log
This file contains any messages produced by compilers while
running configure, to aid debugging if configure makes a mistake.

It was created by GNU AutoGen configure 5.12, which was
generated by GNU Autoconf 2.69.  Invocation command line was

  $ /home/pauld/yocto-atom/build/tmp/work/i686-linux/autogen-native-5.12-r3=
/autogen-5.12/configure --build=3Di686-linux --host=3Di686-linux --target=
=3Di686-linux --prefix=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-lin=
ux/usr --exec_prefix=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux=
/usr --bindir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bi=
n --sbindir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sbin=
 --libexecdir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/li=
bexec --datadir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/=
share --sysconfdir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/e=
tc --sharedstatedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/=
com --localstatedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/=
var --libdir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib=
 --includedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/in=
clude --oldincludedir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-linu=
x/usr/include --infodir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr/share/info --mandir=3D/home/pauld/yocto-atom/build/tmp/sysroots/i68=
6-linux/usr/share/man --disable-silent-rules --disable-dependency-tracking

## --------- ##
## Platform. ##
## --------- ##

hostname =3D Chroma
uname -m =3D i686
uname -r =3D 3.2.0-38-generic
uname -s =3D Linux
uname -v =3D #61-Ubuntu SMP Tue Feb 19 12:20:02 UTC 2013

/usr/bin/uname -p =3D unknown
/bin/uname -X     =3D unknown

/bin/arch              =3D unknown
/usr/bin/arch -k       =3D unknown
/usr/convex/getsysinfo =3D unknown
/usr/bin/hostinfo      =3D unknown
/bin/machine           =3D unknown
/usr/bin/oslevel       =3D unknown
/bin/universe          =3D unknown

PATH: /home/pauld/yocto-atom/poky-danny-8.0/openembedded-core/scripts/nativ=
e-intercept
PATH: /home/pauld/yocto-atom/poky-danny-8.0/openembedded-core/scripts
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin/core2-li=
nux
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sbin
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/sbin
PATH: /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux//bin
PATH: /home/pauld/yocto-atom/poky-danny-8.0/scripts
PATH: /home/pauld/yocto-atom/poky-danny-8.0/bitbake/bin/
PATH: /home/pauld/yocto-atom/poky-danny-8.0/scripts
PATH: /home/pauld/yocto-atom/poky-danny-8.0/bitbake/bin/
PATH: /home/pauld/yocto-atom/poky-danny-8.0/scripts
PATH: /home/pauld/yocto-atom/poky-danny-8.0/bitbake/bin/
PATH: /usr/lib/lightdm/lightdm
PATH: /usr/local/sbin
PATH: /usr/local/bin
PATH: /usr/sbin
PATH: /usr/bin
PATH: /sbin
PATH: /bin
PATH: /usr/games


## ----------- ##
## Core tests. ##
## ----------- ##

configure:2614: checking build system type
configure:2628: result: i686-pc-linux-gnu
configure:2648: checking host system type
configure:2661: result: i686-pc-linux-gnu
configure:2681: checking target system type
configure:2694: result: i686-pc-linux-gnu
configure:2741: checking for a BSD-compatible install
configure:2809: result: /usr/bin/install -c
configure:2820: checking whether build environment is sane
configure:2875: result: yes
configure:3026: checking for a thread-safe mkdir -p
configure:3065: result: /bin/mkdir -p
configure:3072: checking for gawk
configure:3088: found /usr/bin/gawk
configure:3099: result: gawk
configure:3110: checking whether make sets $(MAKE)
configure:3132: result: yes
configure:3230: checking for style of include used by make
configure:3258: result: GNU
configure:3289: checking for i686-linux-gcc
configure:3316: result: gcc
configure:3585: checking for C compiler version
configure:3594: gcc --version >&5
gcc (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3
Copyright (C) 2011 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

configure:3605: $? =3D 0
configure:3594: gcc -v >&5
Using built-in specs.
COLLECT_GCC=3Dgcc
COLLECT_LTO_WRAPPER=3D/usr/lib/gcc/i686-linux-gnu/4.6/lto-wrapper
Target: i686-linux-gnu
Configured with: ../src/configure -v --with-pkgversion=3D'Ubuntu/Linaro 4.6=
.3-1ubuntu5' --with-bugurl=3Dfile:///usr/share/doc/gcc-4.6/README.Bugs --en=
able-languages=3Dc,c++,fortran,objc,obj-c++ --prefix=3D/usr --program-suffi=
x=3D-4.6 --enable-shared --enable-linker-build-id --with-system-zlib --libe=
xecdir=3D/usr/lib --without-included-gettext --enable-threads=3Dposix --wit=
h-gxx-include-dir=3D/usr/include/c++/4.6 --libdir=3D/usr/lib --enable-nls -=
-with-sysroot=3D/ --enable-clocale=3Dgnu --enable-libstdcxx-debug --enable-=
libstdcxx-time=3Dyes --enable-gnu-unique-object --enable-plugin --enable-ob=
jc-gc --enable-targets=3Dall --disable-werror --with-arch-32=3Di686 --with-=
tune=3Dgeneric --enable-checking=3Drelease --build=3Di686-linux-gnu --host=
=3Di686-linux-gnu --target=3Di686-linux-gnu
Thread model: posix
gcc version 4.6.3 (Ubuntu/Linaro 4.6.3-1ubuntu5)=20
configure:3605: $? =3D 0
configure:3594: gcc -V >&5
gcc: error: unrecognized option '-V'
gcc: fatal error: no input files
compilation terminated.
configure:3605: $? =3D 4
configure:3594: gcc -qversion >&5
gcc: error: unrecognized option '-qversion'
gcc: fatal error: no input files
compilation terminated.
configure:3605: $? =3D 4
configure:3625: checking whether the C compiler works
configure:3647: gcc -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sysroo=
ts/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -W=
l,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib =
-Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -W=
l,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib -Wl,-=
rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -Wl,-O1 conf=
test.c  >&5
configure:3651: $? =3D 0
configure:3699: result: yes
configure:3702: checking for C compiler default output file name
configure:3704: result: a.out
configure:3710: checking for suffix of executables
configure:3717: gcc -o conftest -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib =
-Wl,-O1 conftest.c  >&5
configure:3721: $? =3D 0
configure:3743: result:=20
configure:3765: checking whether we are cross compiling
configure:3773: gcc -o conftest -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib =
-Wl,-O1 conftest.c  >&5
configure:3777: $? =3D 0
configure:3784: ./conftest
configure:3788: $? =3D 0
configure:3803: result: no
configure:3808: checking for suffix of object files
configure:3830: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:3834: $? =3D 0
configure:3855: result: o
configure:3859: checking whether we are using the GNU C compiler
configure:3878: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:3878: $? =3D 0
configure:3887: result: yes
configure:3896: checking whether gcc accepts -g
configure:3916: gcc -c -g -isystem/home/pauld/yocto-atom/build/tmp/sysroots=
/i686-linux/usr/include conftest.c >&5
configure:3916: $? =3D 0
configure:3957: result: yes
configure:3974: checking for gcc option to accept ISO C89
configure:4037: gcc  -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include conftest.c >&5
configure:4037: $? =3D 0
configure:4050: result: none needed
configure:4072: checking dependency style of gcc
configure:4183: result: none
configure:4204: checking how to run the C preprocessor
configure:4274: result: gcc  -E
configure:4294: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/usr/include conftest.c
configure:4294: $? =3D 0
configure:4308: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/usr/include conftest.c
conftest.c:11:28: fatal error: ac_nonexistent.h: No such file or directory
compilation terminated.
configure:4308: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| /* end confdefs.h.  */
| #include <ac_nonexistent.h>
configure:4337: checking for grep that handles long lines and -e
configure:4395: result: /bin/grep
configure:4400: checking for egrep
configure:4462: result: /bin/grep -E
configure:4467: checking for ANSI C header files
configure:4487: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4487: $? =3D 0
configure:4560: gcc -o conftest -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib =
-Wl,-O1 conftest.c  >&5
configure:4560: $? =3D 0
configure:4560: ./conftest
configure:4560: $? =3D 0
configure:4571: result: yes
configure:4584: checking for sys/types.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for sys/stat.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for stdlib.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for string.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for memory.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for strings.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for inttypes.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for stdint.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4584: checking for unistd.h
configure:4584: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4584: $? =3D 0
configure:4584: result: yes
configure:4599: checking minix/config.h usability
configure:4599: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
conftest.c:54:26: fatal error: minix/config.h: No such file or directory
compilation terminated.
configure:4599: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| #include <minix/config.h>
configure:4599: result: no
configure:4599: checking minix/config.h presence
configure:4599: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/usr/include conftest.c
conftest.c:21:26: fatal error: minix/config.h: No such file or directory
compilation terminated.
configure:4599: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| /* end confdefs.h.  */
| #include <minix/config.h>
configure:4599: result: no
configure:4599: checking for minix/config.h
configure:4599: result: no
configure:4628: checking whether it is safe to define __EXTENSIONS__
configure:4646: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:4646: $? =3D 0
configure:4653: result: yes
configure:5016: checking how to print strings
configure:5043: result: printf
configure:5064: checking for a sed that does not truncate output
configure:5128: result: /bin/sed
configure:5146: checking for fgrep
configure:5208: result: /bin/grep -F
configure:5243: checking for ld used by gcc
configure:5310: result: ld
configure:5317: checking if the linker (ld) is GNU ld
configure:5332: result: yes
configure:5344: checking for BSD- or MS-compatible name lister (nm)
configure:5393: result: nm
configure:5523: checking the name lister (nm) interface
configure:5530: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:5533: nm "conftest.o"
configure:5536: output
00000000 B some_variable
configure:5543: result: BSD nm
configure:5546: checking whether ln -s works
configure:5550: result: yes
configure:5558: checking the maximum length of command line arguments
configure:5688: result: 1572864
configure:5705: checking whether the shell understands some XSI constructs
configure:5715: result: yes
configure:5719: checking whether the shell understands "+=3D"
configure:5725: result: yes
configure:5760: checking how to convert i686-pc-linux-gnu file names to i68=
6-pc-linux-gnu format
configure:5800: result: func_convert_file_noop
configure:5807: checking how to convert i686-pc-linux-gnu file names to too=
lchain format
configure:5827: result: func_convert_file_noop
configure:5834: checking for ld option to reload object files
configure:5841: result: -r
configure:5875: checking for i686-linux-objdump
configure:5902: result: objdump
configure:5971: checking how to recognize dependent libraries
configure:6173: result: pass_all
configure:6218: checking for i686-linux-dlltool
configure:6245: result: dlltool
configure:6315: checking how to associate runtime and link libraries
configure:6342: result: printf %s\n
configure:6358: checking for i686-linux-ar
configure:6385: result: ar
configure:6466: checking for archiver @FILE support
configure:6483: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:6483: $? =3D 0
configure:6486: ar cru libconftest.a @conftest.lst >&5
configure:6489: $? =3D 0
configure:6494: ar cru libconftest.a @conftest.lst >&5
ar: conftest.o: No such file or directory
configure:6497: $? =3D 1
configure:6509: result: @
configure:6527: checking for i686-linux-strip
configure:6554: result: strip
configure:6626: checking for i686-linux-ranlib
configure:6653: result: ranlib
configure:6795: checking command to parse nm output from gcc object
configure:6915: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:6918: $? =3D 0
configure:6922: nm conftest.o \| sed -n -e 's/^.*[ ]\([ABCDGIRSTW][ABCDGIRS=
TW]*\)[ ][ ]*\([_A-Za-z][_A-Za-z0-9]*\)$/\1 \2 \2/p' | sed '/ __gnu_lto/d' =
\> conftest.nm
configure:6925: $? =3D 0
configure:6991: gcc -o conftest -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/buil=
d/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-li=
nux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-=
linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib =
-Wl,-O1 conftest.c conftstm.o >&5
configure:6994: $? =3D 0
configure:7032: result: ok
configure:7069: checking for sysroot
configure:7099: result: no
configure:7315: checking for i686-linux-mt
configure:7345: result: no
configure:7355: checking for mt
configure:7371: found /bin/mt
configure:7382: result: mt
configure:7405: checking if mt is a manifest tool
configure:7411: mt '-?'
configure:7419: result: no
configure:8058: checking for dlfcn.h
configure:8058: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include conftest.c >&5
configure:8058: $? =3D 0
configure:8058: result: yes
configure:8263: checking for objdir
configure:8278: result: .libs
configure:8545: checking if gcc supports -fno-rtti -fno-exceptions
configure:8563: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include -fno-rtti -fno-exceptions conftest.c >&5
cc1: warning: command line option '-fno-rtti' is valid for C++/ObjC++ but n=
ot for C [enabled by default]
configure:8567: $? =3D 0
configure:8580: result: no
configure:8907: checking for gcc option to produce PIC
configure:8914: result: -fPIC -DPIC
configure:8922: checking if gcc PIC flag -fPIC -DPIC works
configure:8940: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include -fPIC -DPIC -DPIC conftest.c >&5
configure:8944: $? =3D 0
configure:8957: result: yes
configure:8986: checking if gcc static flag -static works
configure:9014: result: yes
configure:9029: checking if gcc supports -c -o file.o
configure:9050: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i6=
86-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sys=
roots/i686-linux/usr/include -o out/conftest2.o conftest.c >&5
configure:9054: $? =3D 0
configure:9076: result: yes
configure:9084: checking if gcc supports -c -o file.o
configure:9131: result: yes
configure:9164: checking whether the gcc linker (ld) supports shared librar=
ies
configure:10317: result: yes
configure:10354: checking whether -lc should be explicitly linked in
configure:10362: gcc -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/include conftest.c >&5
configure:10365: $? =3D 0
configure:10380: gcc -shared  -fPIC -DPIC conftest.o  -v -Wl,-soname -Wl,co=
nftest -o conftest 2\>\&1 \| /bin/grep  -lc  \>/dev/null 2\>\&1
configure:10383: $? =3D 0
configure:10397: result: no
configure:10557: checking dynamic linker characteristics
configure:11068: gcc -o conftest -isystem/home/pauld/yocto-atom/build/tmp/s=
ysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/bui=
ld/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-atom/build/tmp/s=
ysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686=
-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-l=
inux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686=
-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/=
usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib=
 -Wl,-O1 -Wl,-rpath -Wl,/foo conftest.c  >&5
configure:11068: $? =3D 0
configure:11290: result: GNU/Linux ld.so
configure:11397: checking how to hardcode library paths into programs
configure:11422: result: immediate
configure:11962: checking whether stripping libraries is possible
configure:11967: result: yes
configure:12002: checking if libtool supports shared libraries
configure:12004: result: yes
configure:12007: checking whether to build shared libraries
configure:12028: result: yes
configure:12031: checking whether to build static libraries
configure:12035: result: yes
configure:12124: checking if malloc debugging is wanted
configure:12142: result: no
configure:12152: checking whether gcc and cc understand -c and -o together
configure:12183: gcc -c conftest.c -o conftest2.o >&5
configure:12187: $? =3D 0
configure:12193: gcc -c conftest.c -o conftest2.o >&5
configure:12197: $? =3D 0
configure:12208: cc -c conftest.c >&5
configure:12212: $? =3D 0
configure:12220: cc -c conftest.c -o conftest2.o >&5
configure:12224: $? =3D 0
configure:12230: cc -c conftest.c -o conftest2.o >&5
configure:12234: $? =3D 0
configure:12252: result: yes
configure:12281: checking for gcc option to accept ISO C99
configure:12430: gcc  -c -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom/build/tmp/s=
ysroots/i686-linux/usr/include conftest.c >&5
conftest.c:81:29: error: expected ';', ',' or ')' before 'text'
conftest.c: In function 'main':
conftest.c:135:18: error: expected '=3D', ',', ';', 'asm' or '__attribute__=
' before 'newvar'
conftest.c:135:18: error: 'newvar' undeclared (first use in this function)
conftest.c:135:18: note: each undeclared identifier is reported only once f=
or each function it appears in
conftest.c:145:3: error: 'for' loop initial declarations are only allowed i=
n C99 mode
conftest.c:145:3: note: use option -std=3Dc99 or -std=3Dgnu99 to compile yo=
ur code
configure:12430: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| /* end confdefs.h.  */
| #include <stdarg.h>
| #include <stdbool.h>
| #include <stdlib.h>
| #include <wchar.h>
| #include <stdio.h>
|=20
| // Check varargs macros.  These examples are taken from C99 6.10.3.5.
| #define debug(...) fprintf (stderr, __VA_ARGS__)
| #define showlist(...) puts (#__VA_ARGS__)
| #define report(test,...) ((test) ? puts (#test) : printf (__VA_ARGS__))
| static void
| test_varargs_macros (void)
| {
|   int x =3D 1234;
|   int y =3D 5678;
|   debug ("Flag");
|   debug ("X =3D %d\n", x);
|   showlist (The first, second, and third items.);
|   report (x>y, "x is %d but y is %d", x, y);
| }
|=20
| // Check long long types.
| #define BIG64 18446744073709551615ull
| #define BIG32 4294967295ul
| #define BIG_OK (BIG64 / BIG32 =3D=3D 4294967297ull && BIG64 % BIG32 =3D=
=3D 0)
| #if !BIG_OK
|   your preprocessor is broken;
| #endif
| #if BIG_OK
| #else
|   your preprocessor is broken;
| #endif
| static long long int bignum =3D -9223372036854775807LL;
| static unsigned long long int ubignum =3D BIG64;
|=20
| struct incomplete_array
| {
|   int datasize;
|   double data[];
| };
|=20
| struct named_init {
|   int number;
|   const wchar_t *name;
|   double average;
| };
|=20
| typedef const char *ccp;
|=20
| static inline int
| test_restrict (ccp restrict text)
| {
|   // See if C++-style comments work.
|   // Iterate through items via the restricted pointer.
|   // Also check for declarations in for loops.
|   for (unsigned int i =3D 0; *(text+i) !=3D '\0'; ++i)
|     continue;
|   return 0;
| }
|=20
| // Check varargs and va_copy.
| static void
| test_varargs (const char *format, ...)
| {
|   va_list args;
|   va_start (args, format);
|   va_list args_copy;
|   va_copy (args_copy, args);
|=20
|   const char *str;
|   int number;
|   float fnumber;
|=20
|   while (*format)
|     {
|       switch (*format++)
| 	{
| 	case 's': // string
| 	  str =3D va_arg (args_copy, const char *);
| 	  break;
| 	case 'd': // int
| 	  number =3D va_arg (args_copy, int);
| 	  break;
| 	case 'f': // float
| 	  fnumber =3D va_arg (args_copy, double);
| 	  break;
| 	default:
| 	  break;
| 	}
|     }
|   va_end (args_copy);
|   va_end (args);
| }
|=20
| int
| main ()
| {
|=20
|   // Check bool.
|   _Bool success =3D false;
|=20
|   // Check restrict.
|   if (test_restrict ("String literal") =3D=3D 0)
|     success =3D true;
|   char *restrict newvar =3D "Another string";
|=20
|   // Check varargs.
|   test_varargs ("s, d' f .", "string", 65, 34.234);
|   test_varargs_macros ();
|=20
|   // Check flexible array members.
|   struct incomplete_array *ia =3D
|     malloc (sizeof (struct incomplete_array) + (sizeof (double) * 10));
|   ia->datasize =3D 10;
|   for (int i =3D 0; i < ia->datasize; ++i)
|     ia->data[i] =3D i * 1.234;
|=20
|   // Check named initializers.
|   struct named_init ni =3D {
|     .number =3D 34,
|     .name =3D L"Test wide string",
|     .average =3D 543.34343,
|   };
|=20
|   ni.number =3D 58;
|=20
|   int dynamic_array[ni.number];
|   dynamic_array[ni.number - 1] =3D 543;
|=20
|   // work around unused variable warnings
|   return (!success || bignum =3D=3D 0LL || ubignum =3D=3D 0uLL || newvar[=
0] =3D=3D 'x'
| 	  || dynamic_array[ni.number - 1] !=3D 543);
|=20
|   ;
|   return 0;
| }
configure:12430: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12430: $? =3D 0
configure:12450: result: -std=3Dgnu99
configure:12551: checking for gcc -std=3Dgnu99 option to accept ISO Standar=
d C
configure:12565: result: -std=3Dgnu99
configure:12575: checking whether clearerr_unlocked is declared
configure:12575: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12575: $? =3D 0
configure:12575: result: yes
configure:12586: checking whether feof_unlocked is declared
configure:12586: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12586: $? =3D 0
configure:12586: result: yes
configure:12597: checking whether ferror_unlocked is declared
configure:12597: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12597: $? =3D 0
configure:12597: result: yes
configure:12608: checking whether fflush_unlocked is declared
configure:12608: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12608: $? =3D 0
configure:12608: result: yes
configure:12619: checking whether fgets_unlocked is declared
configure:12619: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12619: $? =3D 0
configure:12619: result: yes
configure:12630: checking whether fputc_unlocked is declared
configure:12630: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12630: $? =3D 0
configure:12630: result: yes
configure:12641: checking whether fputs_unlocked is declared
configure:12641: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12641: $? =3D 0
configure:12641: result: yes
configure:12652: checking whether fread_unlocked is declared
configure:12652: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12652: $? =3D 0
configure:12652: result: yes
configure:12663: checking whether fwrite_unlocked is declared
configure:12663: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12663: $? =3D 0
configure:12663: result: yes
configure:12674: checking whether getc_unlocked is declared
configure:12674: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12674: $? =3D 0
configure:12674: result: yes
configure:12685: checking whether getchar_unlocked is declared
configure:12685: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12685: $? =3D 0
configure:12685: result: yes
configure:12696: checking whether putc_unlocked is declared
configure:12696: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12696: $? =3D 0
configure:12696: result: yes
configure:12707: checking whether putchar_unlocked is declared
configure:12707: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12707: $? =3D 0
configure:12707: result: yes
configure:12744: checking for texi2html
configure:12760: found /usr/bin/texi2html
configure:12772: result: texi2html
configure:12780: checking for an ANSI C-conforming const
configure:12846: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12846: $? =3D 0
configure:12853: result: yes
configure:12861: checking for inline
configure:12877: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12877: $? =3D 0
configure:12885: result: inline
configure:12904: checking for dlopen in -ldl
configure:12929: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl   >&5
configure:12929: $? =3D 0
configure:12938: result: yes
configure:12950: checking for mode_t
configure:12950: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12950: $? =3D 0
configure:12950: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:82:21: error: expected expression before ')' token
configure:12950: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((mode_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:12950: result: yes
configure:12961: checking for pid_t
configure:12961: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12961: $? =3D 0
configure:12961: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:82:20: error: expected expression before ')' token
configure:12961: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((pid_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:12961: result: yes
configure:12972: checking for size_t
configure:12972: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:12972: $? =3D 0
configure:12972: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:82:21: error: expected expression before ')' token
configure:12972: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((size_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:12972: result: yes
configure:12983: checking for uid_t in sys/types.h
configure:13002: result: yes
configure:13015: checking for long double with more range or precision than=
 double
configure:13051: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13051: $? =3D 0
configure:13058: result: yes
configure:13083: checking for u_int
configure:13083: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13083: $? =3D 0
configure:13083: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:85:20: error: expected expression before ')' token
configure:13083: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((u_int)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13083: result: yes
configure:13092: checking for long long
configure:13092: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13092: $? =3D 0
configure:13092: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:86:24: error: expected expression before ')' token
configure:13092: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((long long)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13092: result: yes
configure:13101: checking for uintmax_t
configure:13101: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13101: $? =3D 0
configure:13101: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:87:24: error: expected expression before ')' token
configure:13101: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((uintmax_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13101: result: yes
configure:13110: checking for size_t
configure:13110: result: yes
configure:13119: checking for wchar_t
configure:13119: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13119: $? =3D 0
configure:13119: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:89:22: error: expected expression before ')' token
configure:13119: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((wchar_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13119: result: yes
configure:13133: checking size of char*
configure:13138: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13138: $? =3D 0
configure:13138: ./conftest
configure:13138: $? =3D 0
configure:13152: result: 4
configure:13166: checking size of int
configure:13171: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13171: $? =3D 0
configure:13171: ./conftest
configure:13171: $? =3D 0
configure:13185: result: 4
configure:13199: checking size of long
configure:13204: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13204: $? =3D 0
configure:13204: ./conftest
configure:13204: $? =3D 0
configure:13218: result: 4
configure:13232: checking size of short
configure:13237: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13237: $? =3D 0
configure:13237: ./conftest
configure:13237: $? =3D 0
configure:13251: result: 2
configure:13265: checking for strchr
configure:13265: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:81:6: warning: conflicting types for built-in function 'strchr' =
[enabled by default]
configure:13265: $? =3D 0
configure:13265: result: yes
configure:13265: checking for strlcpy
configure:13265: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
/tmp/ccgn6PWJ.o: In function `main':
conftest.c:(.text.startup+0x7): undefined reference to `strlcpy'
collect2: ld returned 1 exit status
configure:13265: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| /* end confdefs.h.  */
| /* Define strlcpy to an innocuous variant, in case <limits.h> declares st=
rlcpy.
|    For example, HP-UX 11i <limits.h> declares gettimeofday.  */
| #define strlcpy innocuous_strlcpy
|=20
| /* System header to define __stub macros and hopefully few prototypes,
|     which can conflict with char strlcpy (); below.
|     Prefer <limits.h> to <assert.h> if __STDC__ is defined, since
|     <limits.h> exists even on freestanding compilers.  */
|=20
| #ifdef __STDC__
| # include <limits.h>
| #else
| # include <assert.h>
| #endif
|=20
| #undef strlcpy
|=20
| /* Override any GCC internal prototype to avoid an error.
|    Use char because int might match the return type of a GCC
|    builtin and then its argument prototype would still apply.  */
| #ifdef __cplusplus
| extern "C"
| #endif
| char strlcpy ();
| /* The GNU C library defines this for functions which it implements
|     to always fail with ENOSYS.  Some functions are actually named
|     something starting with __ and the normal name is an alias.  */
| #if defined __stub_strlcpy || defined __stub___strlcpy
| choke me
| #endif
|=20
| int
| main ()
| {
| return strlcpy ();
|   ;
|   return 0;
| }
configure:13265: result: no
configure:13265: checking for snprintf
configure:13265: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:82:6: warning: conflicting types for built-in function 'snprintf=
' [enabled by default]
configure:13265: $? =3D 0
configure:13265: result: yes
configure:13265: checking for dlopen
configure:13265: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13265: $? =3D 0
configure:13265: result: yes
configure:13274: checking for library containing copysign
configure:13305: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:68:6: warning: conflicting types for built-in function 'copysign=
' [enabled by default]
configure:13305: $? =3D 0
configure:13322: result: none required
configure:13332: checking for library containing copysignl
configure:13363: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:69:6: warning: conflicting types for built-in function 'copysign=
l' [enabled by default]
configure:13363: $? =3D 0
configure:13380: result: none required
configure:13390: checking for library containing modfl
configure:13421: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:70:6: warning: conflicting types for built-in function 'modfl' [=
enabled by default]
configure:13421: $? =3D 0
configure:13438: result: none required
configure:13475: checking for dirent.h that defines DIR
configure:13494: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13494: $? =3D 0
configure:13502: result: yes
configure:13515: checking for library containing opendir
configure:13546: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:13546: $? =3D 0
configure:13563: result: none required
configure:13642: checking for dlfcn.h
configure:13642: result: yes
configure:13642: checking errno.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking errno.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for errno.h
configure:13642: result: yes
configure:13642: checking fcntl.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking fcntl.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for fcntl.h
configure:13642: result: yes
configure:13642: checking libgen.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking libgen.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for libgen.h
configure:13642: result: yes
configure:13642: checking for memory.h
configure:13642: result: yes
configure:13642: checking netinet/in.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking netinet/in.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for netinet/in.h
configure:13642: result: yes
configure:13642: checking setjmp.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking setjmp.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for setjmp.h
configure:13642: result: yes
configure:13642: checking sys/mman.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/mman.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/mman.h
configure:13642: result: yes
configure:13642: checking sys/param.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/param.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/param.h
configure:13642: result: yes
configure:13642: checking sys/poll.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/poll.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/poll.h
configure:13642: result: yes
configure:13642: checking sys/procset.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c:108:25: fatal error: sys/procset.h: No such file or directory
compilation terminated.
configure:13642: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| #include <sys/procset.h>
configure:13642: result: no
configure:13642: checking sys/procset.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
conftest.c:75:25: fatal error: sys/procset.h: No such file or directory
compilation terminated.
configure:13642: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| /* end confdefs.h.  */
| #include <sys/procset.h>
configure:13642: result: no
configure:13642: checking for sys/procset.h
configure:13642: result: no
configure:13642: checking sys/select.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/select.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/select.h
configure:13642: result: yes
configure:13642: checking sys/socket.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/socket.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/socket.h
configure:13642: result: yes
configure:13642: checking sys/stropts.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/stropts.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/stropts.h
configure:13642: result: yes
configure:13642: checking sys/time.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/time.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/time.h
configure:13642: result: yes
configure:13642: checking sys/un.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/un.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/un.h
configure:13642: result: yes
configure:13642: checking sys/wait.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sys/wait.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sys/wait.h
configure:13642: result: yes
configure:13642: checking for unistd.h
configure:13642: result: yes
configure:13642: checking utime.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking utime.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for utime.h
configure:13642: result: yes
configure:13642: checking sysexits.h usability
configure:13642: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking sysexits.h presence
configure:13642: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13642: $? =3D 0
configure:13642: result: yes
configure:13642: checking for sysexits.h
configure:13642: result: yes
configure:13656: checking stdarg.h usability
configure:13656: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13656: $? =3D 0
configure:13656: result: yes
configure:13656: checking stdarg.h presence
configure:13656: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13656: $? =3D 0
configure:13656: result: yes
configure:13656: checking for stdarg.h
configure:13656: result: yes
configure:13672: checking for string.h
configure:13672: result: yes
configure:13688: checking limits.h usability
configure:13688: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13688: $? =3D 0
configure:13688: result: yes
configure:13688: checking limits.h presence
configure:13688: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
configure:13688: $? =3D 0
configure:13688: result: yes
configure:13688: checking for limits.h
configure:13688: result: yes
configure:13704: checking for inttypes.h
configure:13704: result: yes
configure:13724: checking for runetype.h
configure:13724: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c:127:22: fatal error: runetype.h: No such file or directory
compilation terminated.
configure:13724: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| /* end confdefs.h.  */
|=20
|   #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
|   #if HAVE_RUNETYPE_H
|   # include <runetype.h>
|   #endif
|=20
|=20
| #include <runetype.h>
configure:13724: result: no
configure:13724: checking for wchar.h
configure:13724: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13724: $? =3D 0
configure:13724: result: yes
configure:13767: checking for wchar_t
configure:13767: result: yes
configure:13777: checking for wint_t
configure:13777: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13777: $? =3D 0
configure:13777: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:135:21: error: expected expression before ')' token
configure:13777: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| /* end confdefs.h.  */
|=20
|   #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
|   #if HAVE_RUNETYPE_H
|   # include <runetype.h>
|   #endif
|   #if HAVE_WCHAR_H
|   # include <wchar.h>
|   #endif
|=20
|=20
| int
| main ()
| {
| if (sizeof ((wint_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13777: result: yes
configure:13796: checking for int8_t
configure:13796: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13796: $? =3D 0
configure:13796: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:127:21: error: expected expression before ')' token
configure:13796: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((int8_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13796: result: yes
configure:13805: checking for uint8_t
configure:13805: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13805: $? =3D 0
configure:13805: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:128:22: error: expected expression before ')' token
configure:13805: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((uint8_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13805: result: yes
configure:13814: checking for int16_t
configure:13814: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13814: $? =3D 0
configure:13814: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:129:22: error: expected expression before ')' token
configure:13814: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((int16_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13814: result: yes
configure:13823: checking for uint16_t
configure:13823: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13823: $? =3D 0
configure:13823: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:130:23: error: expected expression before ')' token
configure:13823: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((uint16_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13823: result: yes
configure:13832: checking for int32_t
configure:13832: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13832: $? =3D 0
configure:13832: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:131:22: error: expected expression before ')' token
configure:13832: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((int32_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13832: result: yes
configure:13841: checking for uint32_t
configure:13841: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13841: $? =3D 0
configure:13841: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:132:23: error: expected expression before ')' token
configure:13841: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((uint32_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13841: result: yes
configure:13850: checking for intptr_t
configure:13850: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13850: $? =3D 0
configure:13850: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:133:23: error: expected expression before ')' token
configure:13850: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((intptr_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13850: result: yes
configure:13859: checking for uintptr_t
configure:13859: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
configure:13859: $? =3D 0
configure:13859: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:134:24: error: expected expression before ')' token
configure:13859: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof ((uintptr_t)))
| 	    return 0;
|   ;
|   return 0;
| }
configure:13859: result: yes
configure:13868: checking for uint_t
configure:13868: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c: In function 'main':
conftest.c:135:13: error: 'uint_t' undeclared (first use in this function)
conftest.c:135:13: note: each undeclared identifier is reported only once f=
or each function it appears in
configure:13868: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| #define HAVE_UINTPTR_T 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| int
| main ()
| {
| if (sizeof (uint_t))
| 	 return 0;
|   ;
|   return 0;
| }
configure:13868: result: no
configure:13877: checking for pid_t
configure:13877: result: yes
configure:13886: checking for size_t
configure:13886: result: yes
configure:13904: checking size of char*
configure:13923: result: 4
configure:13937: checking size of int
configure:13956: result: 4
configure:13970: checking size of long
configure:13989: result: 4
configure:14003: checking size of short
configure:14022: result: 2
configure:14036: checking for pathfind in -lgen
configure:14061: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -lgen  -ldl  >&5
/usr/bin/ld: cannot find -lgen
collect2: ld returned 1 exit status
configure:14061: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| #define HAVE_UINTPTR_T 1
| #define HAVE_PID_T 1
| #define HAVE_SIZE_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| /* end confdefs.h.  */
|=20
| /* Override any GCC internal prototype to avoid an error.
|    Use char because int might match the return type of a GCC
|    builtin and then its argument prototype would still apply.  */
| #ifdef __cplusplus
| extern "C"
| #endif
| char pathfind ();
| int
| main ()
| {
| return pathfind ();
|   ;
|   return 0;
| }
configure:14070: result: no
configure:14083: checking for vprintf
configure:14083: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:128:6: warning: conflicting types for built-in function 'vprintf=
' [enabled by default]
configure:14083: $? =3D 0
configure:14083: result: yes
configure:14089: checking for _doprnt
configure:14089: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
/tmp/ccHMYSPt.o: In function `main':
conftest.c:(.text.startup+0x7): undefined reference to `_doprnt'
collect2: ld returned 1 exit status
configure:14089: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| #define HAVE_UINTPTR_T 1
| #define HAVE_PID_T 1
| #define HAVE_SIZE_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_VPRINTF 1
| /* end confdefs.h.  */
| /* Define _doprnt to an innocuous variant, in case <limits.h> declares _d=
oprnt.
|    For example, HP-UX 11i <limits.h> declares gettimeofday.  */
| #define _doprnt innocuous__doprnt
|=20
| /* System header to define __stub macros and hopefully few prototypes,
|     which can conflict with char _doprnt (); below.
|     Prefer <limits.h> to <assert.h> if __STDC__ is defined, since
|     <limits.h> exists even on freestanding compilers.  */
|=20
| #ifdef __STDC__
| # include <limits.h>
| #else
| # include <assert.h>
| #endif
|=20
| #undef _doprnt
|=20
| /* Override any GCC internal prototype to avoid an error.
|    Use char because int might match the return type of a GCC
|    builtin and then its argument prototype would still apply.  */
| #ifdef __cplusplus
| extern "C"
| #endif
| char _doprnt ();
| /* The GNU C library defines this for functions which it implements
|     to always fail with ENOSYS.  Some functions are actually named
|     something starting with __ and the normal name is an alias.  */
| #if defined __stub__doprnt || defined __stub____doprnt
| choke me
| #endif
|=20
| int
| main ()
| {
| return _doprnt ();
|   ;
|   return 0;
| }
configure:14089: result: no
configure:14102: checking vfork.h usability
configure:14102: gcc -std=3Dgnu99 -c -isystem/home/pauld/yocto-atom/build/t=
mp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/yocto-atom=
/build/tmp/sysroots/i686-linux/usr/include conftest.c >&5
conftest.c:139:19: fatal error: vfork.h: No such file or directory
compilation terminated.
configure:14102: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| #define HAVE_UINTPTR_T 1
| #define HAVE_PID_T 1
| #define HAVE_SIZE_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_VPRINTF 1
| /* end confdefs.h.  */
| #include <stdio.h>
| #ifdef HAVE_SYS_TYPES_H
| # include <sys/types.h>
| #endif
| #ifdef HAVE_SYS_STAT_H
| # include <sys/stat.h>
| #endif
| #ifdef STDC_HEADERS
| # include <stdlib.h>
| # include <stddef.h>
| #else
| # ifdef HAVE_STDLIB_H
| #  include <stdlib.h>
| # endif
| #endif
| #ifdef HAVE_STRING_H
| # if !defined STDC_HEADERS && defined HAVE_MEMORY_H
| #  include <memory.h>
| # endif
| # include <string.h>
| #endif
| #ifdef HAVE_STRINGS_H
| # include <strings.h>
| #endif
| #ifdef HAVE_INTTYPES_H
| # include <inttypes.h>
| #endif
| #ifdef HAVE_STDINT_H
| # include <stdint.h>
| #endif
| #ifdef HAVE_UNISTD_H
| # include <unistd.h>
| #endif
| #include <vfork.h>
configure:14102: result: no
configure:14102: checking vfork.h presence
configure:14102: gcc  -E -isystem/home/pauld/yocto-atom/build/tmp/sysroots/=
i686-linux/usr/include conftest.c
conftest.c:106:19: fatal error: vfork.h: No such file or directory
compilation terminated.
configure:14102: $? =3D 1
configure: failed program was:
| /* confdefs.h */
| #define PACKAGE_NAME "GNU AutoGen"
| #define PACKAGE_TARNAME "autogen"
| #define PACKAGE_VERSION "5.12"
| #define PACKAGE_STRING "GNU AutoGen 5.12"
| #define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
| #define PACKAGE_URL "http://www.gnu.org/software/autogen/"
| #define PACKAGE "autogen"
| #define VERSION "5.12"
| #define STDC_HEADERS 1
| #define HAVE_SYS_TYPES_H 1
| #define HAVE_SYS_STAT_H 1
| #define HAVE_STDLIB_H 1
| #define HAVE_STRING_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_STRINGS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_STDINT_H 1
| #define HAVE_UNISTD_H 1
| #define __EXTENSIONS__ 1
| #define _ALL_SOURCE 1
| #define _GNU_SOURCE 1
| #define _POSIX_PTHREAD_SEMANTICS 1
| #define _TANDEM_SOURCE 1
| #define HAVE_DLFCN_H 1
| #define LT_OBJDIR ".libs/"
| #define AO_CURRENT 35
| #define AO_REVISION 0
| #define AO_AGE 10
| #define HAVE_DECL_CLEARERR_UNLOCKED 1
| #define HAVE_DECL_FEOF_UNLOCKED 1
| #define HAVE_DECL_FERROR_UNLOCKED 1
| #define HAVE_DECL_FFLUSH_UNLOCKED 1
| #define HAVE_DECL_FGETS_UNLOCKED 1
| #define HAVE_DECL_FPUTC_UNLOCKED 1
| #define HAVE_DECL_FPUTS_UNLOCKED 1
| #define HAVE_DECL_FREAD_UNLOCKED 1
| #define HAVE_DECL_FWRITE_UNLOCKED 1
| #define HAVE_DECL_GETC_UNLOCKED 1
| #define HAVE_DECL_GETCHAR_UNLOCKED 1
| #define HAVE_DECL_PUTC_UNLOCKED 1
| #define HAVE_DECL_PUTCHAR_UNLOCKED 1
| #define USE_UNLOCKED_IO 1
| #define HAVE_LIBDL 1
| #define HAVE_LONG_DOUBLE_WIDER 1
| #define HAVE_LONG_DOUBLE 1
| #define SNV_LONG_DOUBLE long double
| #define HAVE_U_INT 1
| #define HAVE_LONG_LONG 1
| #define HAVE_UINTMAX_T 1
| #define HAVE_SIZE_T 1
| #define HAVE_WCHAR_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_STRCHR 1
| #define HAVE_SNPRINTF 1
| #define HAVE_DLOPEN 1
| #define HAVE_COPYSIGN 1
| #define HAVE_COPYSIGNL 1
| #define HAVE_MODFL 1
| #define HAVE_DIRENT_H 1
| #define HAVE_DLFCN_H 1
| #define HAVE_ERRNO_H 1
| #define HAVE_FCNTL_H 1
| #define HAVE_LIBGEN_H 1
| #define HAVE_MEMORY_H 1
| #define HAVE_NETINET_IN_H 1
| #define HAVE_SETJMP_H 1
| #define HAVE_SYS_MMAN_H 1
| #define HAVE_SYS_PARAM_H 1
| #define HAVE_SYS_POLL_H 1
| #define HAVE_SYS_SELECT_H 1
| #define HAVE_SYS_SOCKET_H 1
| #define HAVE_SYS_STROPTS_H 1
| #define HAVE_SYS_TIME_H 1
| #define HAVE_SYS_UN_H 1
| #define HAVE_SYS_WAIT_H 1
| #define HAVE_UNISTD_H 1
| #define HAVE_UTIME_H 1
| #define HAVE_SYSEXITS_H 1
| #define HAVE_STDARG_H 1
| #define HAVE_STRING_H 1
| #define HAVE_LIMITS_H 1
| #define HAVE_INTTYPES_H 1
| #define HAVE_WCHAR_H 1
| #define HAVE_WCHAR_T 1
| #define HAVE_WINT_T 1
| #define HAVE_INT8_T 1
| #define HAVE_UINT8_T 1
| #define HAVE_INT16_T 1
| #define HAVE_UINT16_T 1
| #define HAVE_INT32_T 1
| #define HAVE_UINT32_T 1
| #define HAVE_INTPTR_T 1
| #define HAVE_UINTPTR_T 1
| #define HAVE_PID_T 1
| #define HAVE_SIZE_T 1
| #define SIZEOF_CHARP 4
| #define SIZEOF_INT 4
| #define SIZEOF_LONG 4
| #define SIZEOF_SHORT 2
| #define HAVE_VPRINTF 1
| /* end confdefs.h.  */
| #include <vfork.h>
configure:14102: result: no
configure:14102: checking for vfork.h
configure:14102: result: no
configure:14115: checking for fork
configure:14115: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:129:6: warning: conflicting types for built-in function 'fork' [=
enabled by default]
configure:14115: $? =3D 0
configure:14115: result: yes
configure:14115: checking for vfork
configure:14115: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14115: $? =3D 0
configure:14115: result: yes
configure:14125: checking for working fork
configure:14147: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14147: $? =3D 0
configure:14147: ./conftest
configure:14147: $? =3D 0
configure:14157: result: yes
configure:14178: checking for working vfork
configure:14288: result: yes
configure:14317: checking for mmap
configure:14317: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14317: $? =3D 0
configure:14317: result: yes
configure:14317: checking for canonicalize_file_name
configure:14317: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14317: $? =3D 0
configure:14317: result: yes
configure:14317: checking for snprintf
configure:14317: result: yes
configure:14317: checking for strdup
configure:14317: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:136:6: warning: conflicting types for built-in function 'strdup'=
 [enabled by default]
configure:14317: $? =3D 0
configure:14317: result: yes
configure:14317: checking for strchr
configure:14317: result: yes
configure:14317: checking for strrchr
configure:14317: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
conftest.c:138:6: warning: conflicting types for built-in function 'strrchr=
' [enabled by default]
configure:14317: $? =3D 0
configure:14317: result: yes
configure:14317: checking for strsignal
configure:14317: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14317: $? =3D 0
configure:14317: result: yes
configure:14326: checking for a sed that does not truncate output
configure:14390: result: /bin/sed
configure:14424: checking whether shell scripts are desired
configure:14431: result: yes
configure:14440: checking for vfork.h
configure:14440: result: no
configure:14453: checking for fork
configure:14453: result: yes
configure:14453: checking for vfork
configure:14453: result: yes
configure:14463: checking for working fork
configure:14495: result: yes
configure:14516: checking for working vfork
configure:14626: result: yes
configure:14657: checking whether using shell scripts
configure:14674: result: yes
configure:14702: checking whether setjmp() links okay
configure:14722: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14722: $? =3D 0
configure:14733: result: yes
configure:14746: checking whether sigsetjmp() links okay
configure:14766: gcc -std=3Dgnu99 -o conftest -isystem/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/include -O2 -pipe -isystem/home/pauld/y=
octo-atom/build/tmp/sysroots/i686-linux/usr/include -L/home/pauld/yocto-ato=
m/build/tmp/sysroots/i686-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sy=
sroots/i686-linux/usr/lib -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/=
sysroots/i686-linux/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/lib -Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i=
686-linux/lib -Wl,-O1 conftest.c -ldl  >&5
configure:14766: $? =3D 0
configure:14777: result: yes
configure:14800: checking for i686-linux-pkg-config
configure:14833: result: no
configure:14843: checking for pkg-config
configure:14861: found /home/pauld/yocto-atom/build/tmp/sysroots/i686-linux=
/usr/bin/pkg-config
configure:14873: result: /home/pauld/yocto-atom/build/tmp/sysroots/i686-lin=
ux/usr/bin/pkg-config
configure:14898: checking pkg-config is at least version 0.9.0
configure:14901: result: yes
configure:14911: checking for LIBGUILE
configure:14918: $PKG_CONFIG --exists --print-errors "guile-2.0"
Package guile-2.0 was not found in the pkg-config search path.
Perhaps you should add the directory containing `guile-2.0.pc'
to the PKG_CONFIG_PATH environment variable
No package 'guile-2.0' found
configure:14921: $? =3D 1
configure:14934: $PKG_CONFIG --exists --print-errors "guile-2.0"
Package guile-2.0 was not found in the pkg-config search path.
Perhaps you should add the directory containing `guile-2.0.pc'
to the PKG_CONFIG_PATH environment variable
No package 'guile-2.0' found
configure:14937: $? =3D 1
configure:14950: result: no
No package 'guile-2.0' found
configure:14966: error: Package requirements (guile-2.0) were not met:

No package 'guile-2.0' found

Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables LIBGUILE_CFLAGS
and LIBGUILE_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.

## ---------------- ##
## Cache variables. ##
## ---------------- ##

ac_cv_build=3Di686-pc-linux-gnu
ac_cv_c_compiler_gnu=3Dyes
ac_cv_c_const=3Dyes
ac_cv_c_inline=3Dinline
ac_cv_c_long_double=3Dyes
ac_cv_env_CC_set=3Dset
ac_cv_env_CC_value=3Dgcc
ac_cv_env_CFLAGS_set=3Dset
ac_cv_env_CFLAGS_value=3D'-isystem/home/pauld/yocto-atom/build/tmp/sysroots=
/i686-linux/usr/include -O2 -pipe'
ac_cv_env_CPPFLAGS_set=3Dset
ac_cv_env_CPPFLAGS_value=3D-isystem/home/pauld/yocto-atom/build/tmp/sysroot=
s/i686-linux/usr/include
ac_cv_env_CPP_set=3Dset
ac_cv_env_CPP_value=3D'gcc  -E'
ac_cv_env_LDFLAGS_set=3Dset
ac_cv_env_LDFLAGS_value=3D'-L/home/pauld/yocto-atom/build/tmp/sysroots/i686=
-linux/usr/lib -L/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -=
Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib=
 -Wl,-rpath-link,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -=
Wl,-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib -Wl,=
-rpath,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -Wl,-O1'
ac_cv_env_LIBGUILE_CFLAGS_set=3D
ac_cv_env_LIBGUILE_CFLAGS_value=3D
ac_cv_env_LIBGUILE_LIBS_set=3D
ac_cv_env_LIBGUILE_LIBS_value=3D
ac_cv_env_LIBS_set=3D
ac_cv_env_LIBS_value=3D
ac_cv_env_PKG_CONFIG_LIBDIR_set=3Dset
ac_cv_env_PKG_CONFIG_LIBDIR_value=3D/home/pauld/yocto-atom/build/tmp/sysroo=
ts/i686-linux/usr/lib/pkgconfig
ac_cv_env_PKG_CONFIG_PATH_set=3Dset
ac_cv_env_PKG_CONFIG_PATH_value=3D/home/pauld/yocto-atom/build/tmp/sysroots=
/i686-linux/usr/lib/pkgconfig:/home/pauld/yocto-atom/build/tmp/sysroots/i68=
6-linux/usr/share/pkgconfig
ac_cv_env_PKG_CONFIG_set=3D
ac_cv_env_PKG_CONFIG_value=3D
ac_cv_env_build_alias_set=3Dset
ac_cv_env_build_alias_value=3Di686-linux
ac_cv_env_host_alias_set=3Dset
ac_cv_env_host_alias_value=3Di686-linux
ac_cv_env_target_alias_set=3Dset
ac_cv_env_target_alias_value=3Di686-linux
ac_cv_func__doprnt=3Dno
ac_cv_func_canonicalize_file_name=3Dyes
ac_cv_func_dlopen=3Dyes
ac_cv_func_fork=3Dyes
ac_cv_func_fork_works=3Dyes
ac_cv_func_mmap=3Dyes
ac_cv_func_snprintf=3Dyes
ac_cv_func_strchr=3Dyes
ac_cv_func_strdup=3Dyes
ac_cv_func_strlcpy=3Dno
ac_cv_func_strrchr=3Dyes
ac_cv_func_strsignal=3Dyes
ac_cv_func_vfork=3Dyes
ac_cv_func_vfork_works=3Dyes
ac_cv_func_vprintf=3Dyes
ac_cv_have_decl_clearerr_unlocked=3Dyes
ac_cv_have_decl_feof_unlocked=3Dyes
ac_cv_have_decl_ferror_unlocked=3Dyes
ac_cv_have_decl_fflush_unlocked=3Dyes
ac_cv_have_decl_fgets_unlocked=3Dyes
ac_cv_have_decl_fputc_unlocked=3Dyes
ac_cv_have_decl_fputs_unlocked=3Dyes
ac_cv_have_decl_fread_unlocked=3Dyes
ac_cv_have_decl_fwrite_unlocked=3Dyes
ac_cv_have_decl_getc_unlocked=3Dyes
ac_cv_have_decl_getchar_unlocked=3Dyes
ac_cv_have_decl_putc_unlocked=3Dyes
ac_cv_have_decl_putchar_unlocked=3Dyes
ac_cv_header_dirent_dirent_h=3Dyes
ac_cv_header_dlfcn_h=3Dyes
ac_cv_header_errno_h=3Dyes
ac_cv_header_fcntl_h=3Dyes
ac_cv_header_inttypes_h=3Dyes
ac_cv_header_libgen_h=3Dyes
ac_cv_header_limits_h=3Dyes
ac_cv_header_memory_h=3Dyes
ac_cv_header_minix_config_h=3Dno
ac_cv_header_netinet_in_h=3Dyes
ac_cv_header_runetype_h=3Dno
ac_cv_header_setjmp_h=3Dyes
ac_cv_header_stdarg_h=3Dyes
ac_cv_header_stdc=3Dyes
ac_cv_header_stdint_h=3Dyes
ac_cv_header_stdlib_h=3Dyes
ac_cv_header_string_h=3Dyes
ac_cv_header_strings_h=3Dyes
ac_cv_header_sys_mman_h=3Dyes
ac_cv_header_sys_param_h=3Dyes
ac_cv_header_sys_poll_h=3Dyes
ac_cv_header_sys_procset_h=3Dno
ac_cv_header_sys_select_h=3Dyes
ac_cv_header_sys_socket_h=3Dyes
ac_cv_header_sys_stat_h=3Dyes
ac_cv_header_sys_stropts_h=3Dyes
ac_cv_header_sys_time_h=3Dyes
ac_cv_header_sys_types_h=3Dyes
ac_cv_header_sys_un_h=3Dyes
ac_cv_header_sys_wait_h=3Dyes
ac_cv_header_sysexits_h=3Dyes
ac_cv_header_unistd_h=3Dyes
ac_cv_header_utime_h=3Dyes
ac_cv_header_vfork_h=3Dno
ac_cv_header_wchar_h=3Dyes
ac_cv_host=3Di686-pc-linux-gnu
ac_cv_lib_dl_dlopen=3Dyes
ac_cv_lib_gen_pathfind=3Dno
ac_cv_objext=3Do
ac_cv_path_EGREP=3D'/bin/grep -E'
ac_cv_path_FGREP=3D'/bin/grep -F'
ac_cv_path_GREP=3D/bin/grep
ac_cv_path_SED=3D/bin/sed
ac_cv_path_ac_pt_PKG_CONFIG=3D/home/pauld/yocto-atom/build/tmp/sysroots/i68=
6-linux/usr/bin/pkg-config
ac_cv_path_install=3D'/usr/bin/install -c'
ac_cv_path_mkdir=3D/bin/mkdir
ac_cv_prog_AR=3Dar
ac_cv_prog_AWK=3Dgawk
ac_cv_prog_CC=3Dgcc
ac_cv_prog_CPP=3D'gcc  -E'
ac_cv_prog_DLLTOOL=3Ddlltool
ac_cv_prog_OBJDUMP=3Dobjdump
ac_cv_prog_RANLIB=3Dranlib
ac_cv_prog_STRIP=3Dstrip
ac_cv_prog_TEXI2HTML=3Dtexi2html
ac_cv_prog_ac_ct_MANIFEST_TOOL=3Dmt
ac_cv_prog_cc_c89=3D
ac_cv_prog_cc_c99=3D-std=3Dgnu99
ac_cv_prog_cc_g=3Dyes
ac_cv_prog_cc_gcc_c_o=3Dyes
ac_cv_prog_cc_stdc=3D-std=3Dgnu99
ac_cv_prog_make_make_set=3Dyes
ac_cv_safe_to_define___extensions__=3Dyes
ac_cv_search_copysign=3D'none required'
ac_cv_search_copysignl=3D'none required'
ac_cv_search_modfl=3D'none required'
ac_cv_search_opendir=3D'none required'
ac_cv_sizeof_charp=3D4
ac_cv_sizeof_int=3D4
ac_cv_sizeof_long=3D4
ac_cv_sizeof_short=3D2
ac_cv_target=3Di686-pc-linux-gnu
ac_cv_type_int16_t=3Dyes
ac_cv_type_int32_t=3Dyes
ac_cv_type_int8_t=3Dyes
ac_cv_type_intptr_t=3Dyes
ac_cv_type_long_double_wider=3Dyes
ac_cv_type_long_long=3Dyes
ac_cv_type_mode_t=3Dyes
ac_cv_type_pid_t=3Dyes
ac_cv_type_size_t=3Dyes
ac_cv_type_u_int=3Dyes
ac_cv_type_uid_t=3Dyes
ac_cv_type_uint16_t=3Dyes
ac_cv_type_uint32_t=3Dyes
ac_cv_type_uint8_t=3Dyes
ac_cv_type_uint_t=3Dno
ac_cv_type_uintmax_t=3Dyes
ac_cv_type_uintptr_t=3Dyes
ac_cv_type_wchar_t=3Dyes
ac_cv_type_wint_t=3Dyes
ag_cv_enable_shell=3Dyes
ag_cv_link_setjmp=3Dyes
ag_cv_link_sigsetjmp=3Dyes
ag_cv_test_do_shell=3Dyes
am_cv_CC_dependencies_compiler_type=3Dnone
lt_cv_ar_at_file=3D@
lt_cv_archive_cmds_need_lc=3Dno
lt_cv_deplibs_check_method=3Dpass_all
lt_cv_file_magic_cmd=3D'$MAGIC_CMD'
lt_cv_file_magic_test_file=3D
lt_cv_ld_reload_flag=3D-r
lt_cv_nm_interface=3D'BSD nm'
lt_cv_objdir=3D.libs
lt_cv_path_LD=3Dld
lt_cv_path_NM=3Dnm
lt_cv_path_mainfest_tool=3Dno
lt_cv_prog_compiler_c_o=3Dyes
lt_cv_prog_compiler_pic=3D'-fPIC -DPIC'
lt_cv_prog_compiler_pic_works=3Dyes
lt_cv_prog_compiler_rtti_exceptions=3Dno
lt_cv_prog_compiler_static_works=3Dyes
lt_cv_prog_gnu_ld=3Dyes
lt_cv_sharedlib_from_linklib_cmd=3D'printf %s\n'
lt_cv_shlibpath_overrides_runpath=3Dno
lt_cv_sys_global_symbol_pipe=3D'sed -n -e '\''s/^.*[	 ]\([ABCDGIRSTW][ABCDG=
IRSTW]*\)[	 ][	 ]*\([_A-Za-z][_A-Za-z0-9]*\)$/\1 \2 \2/p'\'' | sed '\''/ __=
gnu_lto/d'\'''
lt_cv_sys_global_symbol_to_c_name_address=3D'sed -n -e '\''s/^: \([^ ]*\)[ =
]*$/  {\"\1\", (void *) 0},/p'\'' -e '\''s/^[ABCDGIRSTW]* \([^ ]*\) \([^ ]*=
\)$/  {"\2", (void *) \&\2},/p'\'''
lt_cv_sys_global_symbol_to_c_name_address_lib_prefix=3D'sed -n -e '\''s/^: =
\([^ ]*\)[ ]*$/  {\"\1\", (void *) 0},/p'\'' -e '\''s/^[ABCDGIRSTW]* \([^ ]=
*\) \(lib[^ ]*\)$/  {"\2", (void *) \&\2},/p'\'' -e '\''s/^[ABCDGIRSTW]* \(=
[^ ]*\) \([^ ]*\)$/  {"lib\2", (void *) \&\2},/p'\'''
lt_cv_sys_global_symbol_to_cdecl=3D'sed -n -e '\''s/^T .* \(.*\)$/extern in=
t \1();/p'\'' -e '\''s/^[ABCDGIRSTW]* .* \(.*\)$/extern char \1;/p'\'''
lt_cv_sys_max_cmd_len=3D1572864
lt_cv_to_host_file_cmd=3Dfunc_convert_file_noop
lt_cv_to_tool_file_cmd=3Dfunc_convert_file_noop

## ----------------- ##
## Output variables. ##
## ----------------- ##

ACLOCAL=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/autoge=
n-native-5.12-r3/autogen-5.12/config/missing --run aclocal-1.12'
AGEN5_TESTS=3D'$(SHELL_TESTS) $(NOSHELL_TESTS)'
AG_GUILE=3D''
AG_LDFLAGS=3D''
AG_MAJOR_VERSION=3D'5'
AG_MINOR_VERSION=3D'12'
AG_TIMEOUT=3D''
AG_VERSION=3D'5.12'
AG_XML2=3D''
AGexe=3D''
AGnam=3D''
AMDEPBACKSLASH=3D''
AMDEP_FALSE=3D''
AMDEP_TRUE=3D'#'
AMTAR=3D'$${TAR-tar}'
AO_AGE=3D'10'
AO_CURRENT=3D'35'
AO_REVISION=3D'0'
AO_TEMPLATE_VERSION=3D'143360'
AR=3D'ar'
AS=3D'as'
AUTOCONF=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/autog=
en-native-5.12-r3/autogen-5.12/config/missing --run autoconf'
AUTOHEADER=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/aut=
ogen-native-5.12-r3/autogen-5.12/config/missing --run autoheader'
AUTOMAKE=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/autog=
en-native-5.12-r3/autogen-5.12/config/missing --run automake-1.12'
AWK=3D'gawk'
CC=3D'gcc -std=3Dgnu99'
CCDEPMODE=3D'depmode=3Dnone'
CFLAGS=3D'-isystem/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/=
include -O2 -pipe'
CLexe=3D''
CLnam=3D''
CONFIG_SHELL=3D''
CONVENIENCE_SNPRINTFV_FALSE=3D''
CONVENIENCE_SNPRINTFV_TRUE=3D''
CPP=3D'gcc  -E'
CPPFLAGS=3D'-isystem/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/us=
r/include'
CYGPATH_W=3D'echo'
DEBUG_ENABLED=3D''
DEFS=3D''
DEPDIR=3D'.deps'
DLLTOOL=3D'dlltool'
DO_SHELL_CMDS_FALSE=3D'#'
DO_SHELL_CMDS_TRUE=3D''
DSYMUTIL=3D''
DUMPBIN=3D''
DYNAMIC_AG=3D'-export-dynamic'
ECHO_C=3D''
ECHO_N=3D'-n'
ECHO_T=3D''
EGREP=3D'/bin/grep -E'
EXEEXT=3D''
FGREP=3D'/bin/grep -F'
GDexe=3D''
GDnam=3D''
GO_AGE=3D''
GO_CURRENT=3D''
GO_REVISION=3D''
GREP=3D'/bin/grep'
GUILE_VERSION=3D''
HAVE_XML_LIB_FALSE=3D''
HAVE_XML_LIB_TRUE=3D''
INCLIST=3D''
INCSNPRINTFV=3D''
INSTALL_DATA=3D'${INSTALL} -m 644'
INSTALL_PROGRAM=3D'${INSTALL}'
INSTALL_SCRIPT=3D'${INSTALL}'
INSTALL_SNPRINTFV_FALSE=3D''
INSTALL_SNPRINTFV_TRUE=3D''
INSTALL_STRIP_PROGRAM=3D'$(install_sh) -c -s'
LD=3D'ld'
LDFLAGS=3D'-L/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib -=
L/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -Wl,-rpath-link,/=
home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath-link=
,/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/lib -Wl,-rpath,/home/=
pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib -Wl,-rpath,/home/pau=
ld/yocto-atom/build/tmp/sysroots/i686-linux/lib -Wl,-O1'
LIBGUILE_CFLAGS=3D''
LIBGUILE_LIBS=3D''
LIBOBJS=3D''
LIBS=3D'-ldl '
LIBSNPRINTFV=3D''
LIBTOOL=3D'$(top_builddir)/i686-linux-libtool'
LIBXML2_CFLAGS=3D''
LIBXML2_LIBS=3D''
LIBXML2_PATH=3D''
LIPO=3D''
LN_S=3D'ln -s'
LTLIBOBJS=3D''
M4_SRC=3D''
MAKEINFO=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/autog=
en-native-5.12-r3/autogen-5.12/config/missing --run makeinfo'
MANIFEST_TOOL=3D':'
MKDIR_P=3D'/bin/mkdir -p'
NEED_PATHFIND_FALSE=3D''
NEED_PATHFIND_TRUE=3D'#'
NM=3D'nm'
NMEDIT=3D''
OBJDUMP=3D'objdump'
OBJEXT=3D'o'
OPTS_TESTDIR=3D'test'
OTOOL64=3D''
OTOOL=3D''
PACKAGE=3D'autogen'
PACKAGE_BUGREPORT=3D'autogen-users@lists.sourceforge.net'
PACKAGE_NAME=3D'GNU AutoGen'
PACKAGE_STRING=3D'GNU AutoGen 5.12'
PACKAGE_TARNAME=3D'autogen'
PACKAGE_URL=3D'http://www.gnu.org/software/autogen/'
PACKAGE_VERSION=3D'5.12'
PATH_SEPARATOR=3D':'
PKG_CONFIG=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin/=
pkg-config'
PKG_CONFIG_LIBDIR=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/u=
sr/lib/pkgconfig'
PKG_CONFIG_PATH=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr=
/lib/pkgconfig:/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sha=
re/pkgconfig'
POSIX_SHELL=3D'/bin/bash'
RANLIB=3D'ranlib'
SED=3D'/bin/sed'
SET_MAKE=3D''
SHELL=3D'/bin/sh'
STRIP=3D'strip'
SUBDIR_SNPRINTFV_FALSE=3D''
SUBDIR_SNPRINTFV_TRUE=3D''
TEXI2HTML=3D'texi2html'
VERSION=3D'5.12'
ac_aux_dir=3D'config'
ac_ct_AR=3D''
ac_ct_CC=3D''
ac_ct_DUMPBIN=3D''
am__EXEEXT_FALSE=3D''
am__EXEEXT_TRUE=3D''
am__fastdepCC_FALSE=3D''
am__fastdepCC_TRUE=3D'#'
am__include=3D'include'
am__isrc=3D''
am__leading_dot=3D'.'
am__nodep=3D''
am__quote=3D''
am__tar=3D'$${TAR-tar} chof - "$$tardir"'
am__untar=3D'$${TAR-tar} xf -'
bindir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin'
build=3D'i686-pc-linux-gnu'
build_alias=3D'i686-linux'
build_cpu=3D'i686'
build_os=3D'linux-gnu'
build_vendor=3D'pc'
datadir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share'
datarootdir=3D'${prefix}/share'
docdir=3D'${datarootdir}/doc/${PACKAGE_TARNAME}'
dvidir=3D'${docdir}'
exec_prefix=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr'
host=3D'i686-pc-linux-gnu'
host_alias=3D'i686-linux'
host_cpu=3D'i686'
host_os=3D'linux-gnu'
host_vendor=3D'pc'
htmldir=3D'${docdir}'
includedir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/incl=
ude'
infodir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/i=
nfo'
install_sh=3D'${SHELL} /home/pauld/yocto-atom/build/tmp/work/i686-linux/aut=
ogen-native-5.12-r3/autogen-5.12/config/install-sh'
libdir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/lib'
libexecdir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/libe=
xec'
localedir=3D'${datarootdir}/locale'
localstatedir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/var'
mandir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/share/ma=
n'
mkdir_p=3D'$(MKDIR_P)'
oldincludedir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/i=
nclude'
pdfdir=3D'${docdir}'
prefix=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr'
program_transform_name=3D's,x,x,'
psdir=3D'${docdir}'
sbindir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/sbin'
sharedstatedir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/com'
sysconfdir=3D'/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/etc'
target=3D'i686-pc-linux-gnu'
target_alias=3D'i686-linux'
target_cpu=3D'i686'
target_os=3D'linux-gnu'
target_vendor=3D'pc'

## ----------- ##
## confdefs.h. ##
## ----------- ##

/* confdefs.h */
#define PACKAGE_NAME "GNU AutoGen"
#define PACKAGE_TARNAME "autogen"
#define PACKAGE_VERSION "5.12"
#define PACKAGE_STRING "GNU AutoGen 5.12"
#define PACKAGE_BUGREPORT "autogen-users@lists.sourceforge.net"
#define PACKAGE_URL "http://www.gnu.org/software/autogen/"
#define PACKAGE "autogen"
#define VERSION "5.12"
#define STDC_HEADERS 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define __EXTENSIONS__ 1
#define _ALL_SOURCE 1
#define _GNU_SOURCE 1
#define _POSIX_PTHREAD_SEMANTICS 1
#define _TANDEM_SOURCE 1
#define HAVE_DLFCN_H 1
#define LT_OBJDIR ".libs/"
#define AO_CURRENT 35
#define AO_REVISION 0
#define AO_AGE 10
#define HAVE_DECL_CLEARERR_UNLOCKED 1
#define HAVE_DECL_FEOF_UNLOCKED 1
#define HAVE_DECL_FERROR_UNLOCKED 1
#define HAVE_DECL_FFLUSH_UNLOCKED 1
#define HAVE_DECL_FGETS_UNLOCKED 1
#define HAVE_DECL_FPUTC_UNLOCKED 1
#define HAVE_DECL_FPUTS_UNLOCKED 1
#define HAVE_DECL_FREAD_UNLOCKED 1
#define HAVE_DECL_FWRITE_UNLOCKED 1
#define HAVE_DECL_GETC_UNLOCKED 1
#define HAVE_DECL_GETCHAR_UNLOCKED 1
#define HAVE_DECL_PUTC_UNLOCKED 1
#define HAVE_DECL_PUTCHAR_UNLOCKED 1
#define USE_UNLOCKED_IO 1
#define HAVE_LIBDL 1
#define HAVE_LONG_DOUBLE_WIDER 1
#define HAVE_LONG_DOUBLE 1
#define SNV_LONG_DOUBLE long double
#define HAVE_U_INT 1
#define HAVE_LONG_LONG 1
#define HAVE_UINTMAX_T 1
#define HAVE_SIZE_T 1
#define HAVE_WCHAR_T 1
#define SIZEOF_CHARP 4
#define SIZEOF_INT 4
#define SIZEOF_LONG 4
#define SIZEOF_SHORT 2
#define HAVE_STRCHR 1
#define HAVE_SNPRINTF 1
#define HAVE_DLOPEN 1
#define HAVE_COPYSIGN 1
#define HAVE_COPYSIGNL 1
#define HAVE_MODFL 1
#define HAVE_DIRENT_H 1
#define HAVE_DLFCN_H 1
#define HAVE_ERRNO_H 1
#define HAVE_FCNTL_H 1
#define HAVE_LIBGEN_H 1
#define HAVE_MEMORY_H 1
#define HAVE_NETINET_IN_H 1
#define HAVE_SETJMP_H 1
#define HAVE_SYS_MMAN_H 1
#define HAVE_SYS_PARAM_H 1
#define HAVE_SYS_POLL_H 1
#define HAVE_SYS_SELECT_H 1
#define HAVE_SYS_SOCKET_H 1
#define HAVE_SYS_STROPTS_H 1
#define HAVE_SYS_TIME_H 1
#define HAVE_SYS_UN_H 1
#define HAVE_SYS_WAIT_H 1
#define HAVE_UNISTD_H 1
#define HAVE_UTIME_H 1
#define HAVE_SYSEXITS_H 1
#define HAVE_STDARG_H 1
#define HAVE_STRING_H 1
#define HAVE_LIMITS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_WCHAR_H 1
#define HAVE_WCHAR_T 1
#define HAVE_WINT_T 1
#define HAVE_INT8_T 1
#define HAVE_UINT8_T 1
#define HAVE_INT16_T 1
#define HAVE_UINT16_T 1
#define HAVE_INT32_T 1
#define HAVE_UINT32_T 1
#define HAVE_INTPTR_T 1
#define HAVE_UINTPTR_T 1
#define HAVE_PID_T 1
#define HAVE_SIZE_T 1
#define SIZEOF_CHARP 4
#define SIZEOF_INT 4
#define SIZEOF_LONG 4
#define SIZEOF_SHORT 2
#define HAVE_VPRINTF 1
#define HAVE_FORK 1
#define HAVE_VFORK 1
#define HAVE_WORKING_VFORK 1
#define HAVE_WORKING_FORK 1
#define HAVE_MMAP 1
#define HAVE_CANONICALIZE_FILE_NAME 1
#define HAVE_SNPRINTF 1
#define HAVE_STRDUP 1
#define HAVE_STRCHR 1
#define HAVE_STRRCHR 1
#define HAVE_STRSIGNAL 1
#define POSIX_SHELL "/bin/bash"
#define HAVE_FORK 1
#define HAVE_VFORK 1
#define HAVE_WORKING_VFORK 1
#define HAVE_WORKING_FORK 1
#define SHELL_ENABLED 1
#define HAVE_WORKING_SETJMP 1
#define HAVE_WORKING_SIGSETJMP 1

configure: exit 1
ERROR: oe_runconf failed
ERROR: Function failed: do_configure (see /home/pauld/yocto-atom/build/tmp/=
work/i686-linux/autogen-native-5.12-r3/temp/log.do_configure.15857 for furt=
her information)

------=_NextPart_000_007E_01CE1F7C.D6B672D0--
