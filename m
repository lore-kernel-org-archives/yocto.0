Return-Path: <sean_liming@sjjmicro.com>
Received: from mail30c40.carrierzone.com (mail30c40.carrierzone.com
	[209.235.156.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA31FE01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 14:27:26 -0800 (PST)
X-Authenticated-User: sean_liming.sjjmicro.com
Received: from Sean7 (cpe-75-82-59-168.socal.res.rr.com [75.82.59.168])
	(authenticated bits=0)
	by mail30c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	q15MRNYE012292
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Sun, 5 Feb 2012 22:27:24 +0000
From: "Sean Liming" <sean_liming@sjjmicro.com>
To: <yocto@yoctoproject.org>
Date: Sun, 5 Feb 2012 14:27:23 -0800
Message-ID: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
thread-index: AczkU3Qe4JvrFttFQ8inaQ64tUQroQ==
X-Antivirus: avast! (VPS 120205-3, 02/05/2012), Outbound message
X-Antivirus-Status: Clean
X-CSC: 0
X-CHA: v=1.1 cv=4Pq4DKZTL3ljfxpuMk4z6QiCGMBGedZp4jx2BIXYRVg= c=1 sm=1
	a=aJh391NtreIA:10 a=z5g8Jwv4kxix1x/21EjHVg==:17 a=e5mUnYsNAAAA:8
	a=ovG39P9HKft_1-ri0tQA:9 a=CjuIK1q_8ugA:10 a=yMhMjlubAAAA:8
	a=SSmOFEACAAAA:8 a=ZVXxoHWxamkWyl2SoQwA:9 a=k681TcRqnirIl2uSeLUA:7
	a=gKO2Hq4RSVkA:10 a=hTZeC7Yk6K0A:10 a=mDV3o1hIAAAA:8 a=20KFwNOVAAAA:8
	a=QZoL0MB_LJYIq0yFEg0A:9 a=KZbAba8oAOJ45kDgF80A:7 a=Y6P79NIBNskA:10
	a=jEp0ucaQiEUA:10 a=ii61gXl28gQA:10 a=NPrbZSE2PRt8zS4UFx0A:9
	a=pxAD9eocgXpOeB8RNqwA:7 a=Lspd0QNd-XPCQysZtNQA:9
	a=W1wkJcfv_YVcTxyFJX0A:7 a=z5g8Jwv4kxix1x/21EjHVg==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020202.4F2F024D.0060,ss=1,re=0.000,fgs=0
Subject: Build Error
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
X-List-Received-Date: Sun, 05 Feb 2012 22:27:27 -0000
X-Groupsio-MsgNum: 4668
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_000F_01CCE412.477E8540"
Content-Language: en-us

------=_NextPart_000_000F_01CCE412.477E8540
Content-Type: multipart/alternative;
	boundary="----=_NextPart_001_0010_01CCE412.477E8540"

------=_NextPart_001_0010_01CCE412.477E8540
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

I am new developer to Yocto and embedded Linux in general

 

Host machine: i3 with 4GB RAM

OS: Ubuntu 11.10 64-bit

 

I am following the online quick start guide, and looks like the end of
bitbake runs into several errors:

 

ERROR: Task 1136
(/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb,
do_configure) failed with exit code '1'

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-devtools/icon-naming-utils/icon-nam
ing-utils-native_0.8.7.bb' failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-graphics/xorg-lib/xkeyboard-config_
2.1.bb' failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-support/libfm/libfm_0.1.14.bb'
failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb'
failed

ERROR: '/home/sean/poky-edison-6.0/meta/recipes-support/vte/vte_0.24.3.bb'
failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-sato/puzzles/oh-puzzles_git.bb'
failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-connectivity/connman/connman-gnome_
0.5.bb' failed

ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/tasks_0.19.bb'
failed

ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/dates_git.bb'
failed

ERROR:
'/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb'
failed

 

Looking back at the build process, one error calls out a package that cannot
be downloaded:
http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz

 

I have attached errors some of the log files. The common error appears to be
oe_runconf failed.

 

Did I miss configure something? Wrong python version?

There was a post about the dash vs. bash shell. I am not sure what shell is
supposed to be using:

 

The instructions say run sudo dpkg-reconfigure dash and say no. Nothing in
the message popup says what is the shell.

 

Thanks for any help.

 

Regards,

 

Sean

 


------=_NextPart_001_0010_01CCE412.477E8540
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 14 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal>I am new =
developer to Yocto and embedded Linux in general<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Host =
machine: i3 with 4GB RAM<o:p></o:p></p><p class=3DMsoNormal>OS: Ubuntu =
11.10 64-bit<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I am following the online quick start guide, and looks =
like the end of bitbake runs into several errors:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>ERROR: Task =
1136 =
(/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb, =
do_configure) failed with exit code '1'<o:p></o:p></p><p =
class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-devtools/icon-naming-utils/icon-=
naming-utils-native_0.8.7.bb' failed<o:p></o:p></p><p =
class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-graphics/xorg-lib/xkeyboard-conf=
ig_2.1.bb' failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-support/libfm/libfm_0.1.14.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb'=
 failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-support/vte/vte_0.24.3.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-sato/puzzles/oh-puzzles_git.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-connectivity/connman/connman-gno=
me_0.5.bb' failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/tasks_0.19.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/dates_git.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal>ERROR: =
'/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb' =
failed<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Looking back at the build process, one error calls out =
a package that cannot be downloaded: =
http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz<o:p>=
</o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I have attached errors some of the log files. The =
common error appears to be oe_runconf failed.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Did I miss =
configure something? Wrong python version?<o:p></o:p></p><p =
class=3DMsoNormal>There was a post about the dash vs. bash shell. I am =
not sure what shell is supposed to be using:<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>The =
instructions say run sudo dpkg-reconfigure dash and say no. Nothing in =
the message popup says what is the shell.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Thanks for =
any help.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Regards,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Sean<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_001_0010_01CCE412.477E8540--

------=_NextPart_000_000F_01CCE412.477E8540
Content-Type: application/octet-stream;
	name="log.do_configure.1901"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_configure.1901"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux'=
, 'common-glibc', 'i586-linux', 'common']
automake (GNU automake) 1.11.1
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing glib-gettextize --force --copy
Copying file mkinstalldirs
Copying file po/Makefile.in.in

Please add the files
  codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
  progtest.m4
from the /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/ac=
local directory to your autoconf macro directory
or directly to your aclocal.m4 file.
You will also need config.guess and config.sub, which you can get from
ftp://ftp.gnu.org/pub/gnu/config/.

NOTE: Executing intltoolize --copy --force --automake
NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopoin=
t -I /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/libfm-0.1.14-r3/l=
ibfm-0.1.14/aclocal-copy/ -I/home/sean/edison-6.0-build/tmp/sysroots/x86_64=
-linux/usr/share/aclocal-1.11 -I /home/sean/edison-6.0-build/tmp/work/i586-=
poky-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I /home/sean/edison-6.0-build/tmp/work/i586-p=
oky-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal-copy/ -I /home/sean/edison-6=
.0-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/sean/edi=
son-6.0-build/tmp/work/i586-poky-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal=
-copy/ -I /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/libfm-0.1.14=
-r3/libfm-0.1.14/aclocal-copy/ -I /home/sean/edison-6.0-build/tmp/sysroots/=
x86_64-linux/usr/share/aclocal-1.11 -I /home/sean/edison-6.0-build/tmp/work=
/i586-poky-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal-copy/ --force --warni=
ngs=3Dcross=20
aclocal: unknown warning category `cross'
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in `.'.
libtoolize: copying file `./ltmain.sh'
libtoolize: Consider adding `AC_CONFIG_MACRO_DIR([m4])' to configure.ac and
libtoolize: rerunning libtoolize, to keep the correct libtool macros in-tre=
e.
libtoolize: Consider adding `-I m4' to ACLOCAL_AMFLAGS in Makefile.am.
aclocal: unknown warning category `cross'
autoreconf: running: /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/=
usr/bin/autoconf --include=3D/home/sean/edison-6.0-build/tmp/work/i586-poky=
-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal-copy/ --include=3D/home/sean/ed=
ison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 --include=
=3D/home/sean/edison-6.0-build/tmp/work/i586-poky-linux/libfm-0.1.14-r3/lib=
fm-0.1.14/aclocal-copy/ --force --warnings=3Dcross
autoreconf: running: /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/=
usr/bin/autoheader --include=3D/home/sean/edison-6.0-build/tmp/work/i586-po=
ky-linux/libfm-0.1.14-r3/libfm-0.1.14/aclocal-copy/ --include=3D/home/sean/=
edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 --include=
=3D/home/sean/edison-6.0-build/tmp/work/i586-poky-linux/libfm-0.1.14-r3/lib=
fm-0.1.14/aclocal-copy/ --force --warnings=3Dcross
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g --warnings=3Dcross
automake: unknown warning category `cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/libfm-0.=
1.14-r3/libfm-0.1.14/configure 		 --build=3Dx86_64-linux 		  --host=3Di586-=
poky-linux 		  --target=3Di586-poky-linux 		  --prefix=3D/usr 		  --exec_pr=
efix=3D/usr 		  --bindir=3D/usr/bin 		  --sbindir=3D/usr/sbin 		  --libexec=
dir=3D/usr/libexec 		  --datadir=3D/usr/share 		  --sysconfdir=3D/etc 		  -=
-sharedstatedir=3D/com 		  --localstatedir=3D/var 		  --libdir=3D/usr/lib 	=
	  --includedir=3D/usr/include 		  --oldincludedir=3D/usr/include 		  --inf=
odir=3D/usr/share/info 		  --mandir=3D/usr/share/man 		  --disable-silent-r=
ules 		  --with-libtool-sysroot=3D/home/sean/edison-6.0-build/tmp/sysroots/=
qemux86  ...
configure: WARNING: unrecognized options: --disable-silent-rules
configure: loading site script /home/sean/poky-edison-6.0/meta/site/endian-=
little
configure: loading site script /home/sean/poky-edison-6.0/meta/site/ix86-co=
mmon
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common-=
linux
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common-=
glibc
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/ncurses_config
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/eglibc_config
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/zlib_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for i586-poky-linux-strip... i586-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking for i586-poky-linux-gcc... i586-poky-linux-gcc  -m32   -march=3Di5=
86 --sysroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/hom=
e/sean/edison-6.0-build/tmp/sysroots/qemux86 accepts -g... yes
checking for i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/se=
an/edison-6.0-build/tmp/sysroots/qemux86 option to accept ISO C89... none n=
eeded
checking for style of include used by make... GNU
checking dependency style of i586-poky-linux-gcc  -m32   -march=3Di586 --sy=
sroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86... gcc3
checking build system type... x86_64-pc-linux-gnu
checking host system type... i586-poky-linux-gnu
checking how to print strings... printf
checking for a sed that does not truncate output... /bin/sed
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for fgrep... /bin/grep -F
checking for ld used by i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=
=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86... i586-poky-linux-ld -=
-sysroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86
checking if the linker (i586-poky-linux-ld --sysroot=3D/home/sean/edison-6.=
0-build/tmp/sysroots/qemux86) is GNU ld... yes
checking for BSD- or MS-compatible name lister (nm)... i586-poky-linux-nm
checking the name lister (i586-poky-linux-nm) interface... BSD nm
checking whether ln -s works... yes
checking the maximum length of command line arguments... 1572864
checking whether the shell understands some XSI constructs... yes
checking whether the shell understands "+=3D"... yes
checking how to convert x86_64-pc-linux-gnu file names to i586-poky-linux-g=
nu format... func_convert_file_noop
checking how to convert x86_64-pc-linux-gnu file names to toolchain format.=
.. func_convert_file_noop
checking for i586-poky-linux-ld --sysroot=3D/home/sean/edison-6.0-build/tmp=
/sysroots/qemux86 option to reload object files... -r
checking for i586-poky-linux-objdump... i586-poky-linux-objdump
checking how to recognize dependent libraries... pass_all
checking for i586-poky-linux-dlltool... no
checking for dlltool... no
checking how to associate runtime and link libraries... printf %s\n
checking for i586-poky-linux-ar... i586-poky-linux-ar
checking for archiver @FILE support... @
checking for i586-poky-linux-strip... (cached) i586-poky-linux-strip
checking for i586-poky-linux-ranlib... i586-poky-linux-ranlib
checking command to parse i586-poky-linux-nm output from i586-poky-linux-gc=
c  -m32   -march=3Di586 --sysroot=3D/home/sean/edison-6.0-build/tmp/sysroot=
s/qemux86 object... ok
checking for sysroot... /home/sean/edison-6.0-build/tmp/sysroots/qemux86
checking for i586-poky-linux-mt... no
checking for mt... mt
configure: WARNING: using cross tools not prefixed with host triplet
checking if mt is a manifest tool... no
checking how to run the C preprocessor... i586-poky-linux-gcc -E --sysroot=
=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86  -m32   -march=3Di586
checking for ANSI C header files... (cached) yes
checking for sys/types.h... (cached) yes
checking for sys/stat.h... (cached) yes
checking for stdlib.h... (cached) yes
checking for string.h... (cached) yes
checking for memory.h... (cached) yes
checking for strings.h... (cached) yes
checking for inttypes.h... (cached) yes
checking for stdint.h... (cached) yes
checking for unistd.h... (cached) yes
checking for dlfcn.h... (cached) yes
checking for objdir... .libs
checking if i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/sea=
n/edison-6.0-build/tmp/sysroots/qemux86 supports -fno-rtti -fno-exceptions.=
.. no
checking for i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/se=
an/edison-6.0-build/tmp/sysroots/qemux86 option to produce PIC... -fPIC -DP=
IC
checking if i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/sea=
n/edison-6.0-build/tmp/sysroots/qemux86 PIC flag -fPIC -DPIC works... yes
checking if i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/sea=
n/edison-6.0-build/tmp/sysroots/qemux86 static flag -static works... yes
checking if i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/sea=
n/edison-6.0-build/tmp/sysroots/qemux86 supports -c -o file.o... yes
checking if i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/sea=
n/edison-6.0-build/tmp/sysroots/qemux86 supports -c -o file.o... (cached) y=
es
checking whether the i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D=
/home/sean/edison-6.0-build/tmp/sysroots/qemux86 linker (i586-poky-linux-ld=
 --sysroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86) supports sha=
red libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... yes
checking for ANSI C header files... (cached) yes
checking for stdlib.h... (cached) yes
checking for unistd.h... (cached) yes
checking for sys/param.h... (cached) yes
checking for getpagesize... (cached) yes
checking for working mmap... (cached) yes
checking for pow in -lm... yes
checking whether NLS is requested... yes
checking for intltool >=3D 0.40.0... 0.40.6 found
checking for intltool-update... /home/sean/edison-6.0-build/tmp/sysroots/x8=
6_64-linux/usr/bin/intltool-update
checking for intltool-merge... /home/sean/edison-6.0-build/tmp/sysroots/x86=
_64-linux/usr/bin/intltool-merge
checking for intltool-extract... /home/sean/edison-6.0-build/tmp/sysroots/x=
86_64-linux/usr/bin/intltool-extract
checking for xgettext... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-li=
nux/usr/bin/xgettext
checking for msgmerge... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-li=
nux/usr/bin/msgmerge
checking for msgfmt... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linu=
x/usr/bin/msgfmt
checking for gmsgfmt... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-lin=
ux/usr/bin/msgfmt
checking for perl... /usr/bin/perl
checking for perl >=3D 5.8.1... 5.12.4
checking for XML::Parser... configure: error: XML::Parser perl module is re=
quired for intltool
ERROR: oe_runconf failed
ERROR: Function 'do_configure' failed (see /home/sean/edison-6.0-build/tmp/=
work/i586-poky-linux/libfm-0.1.14-r3/temp/log.do_configure.1901 for further=
 information)

------=_NextPart_000_000F_01CCE412.477E8540
Content-Type: application/octet-stream;
	name="log.do_configure.1926"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_configure.1926"

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common', 'common-linux'=
, 'common-glibc', 'i586-linux', 'common']
automake (GNU automake) 1.11.1
Copyright (C) 2009 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <http://gnu.org/licenses/gpl-2.0=
.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com>
       and Alexandre Duret-Lutz <adl@gnu.org>.
AUTOV is 1.11
NOTE: Executing glib-gettextize --force --copy
Copying file mkinstalldirs
Copying file po/Makefile.in.in

Please add the files
  codeset.m4 gettext.m4 glibc21.m4 iconv.m4 isc-posix.m4 lcmessage.m4
  progtest.m4
from the /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/ac=
local directory to your autoconf macro directory
or directly to your aclocal.m4 file.
You will also need config.guess and config.sub, which you can get from
ftp://ftp.gnu.org/pub/gnu/config/.

NOTE: Executing intltoolize --copy --force --automake
NOTE: Executing autoreconf --verbose --install --force --exclude=3Dautopoin=
t -I /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyboard-config-=
2.1-r1/xkeyboard-config-2.1/aclocal-copy/ -I/home/sean/edison-6.0-build/tmp=
/sysroots/x86_64-linux/usr/share/aclocal-1.11 -I /home/sean/edison-6.0-buil=
d/tmp/work/i586-poky-linux/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/acl=
ocal-copy/
autoreconf: Entering directory `.'
autoreconf: configure.in: not using Gettext
autoreconf: running: aclocal -I /home/sean/edison-6.0-build/tmp/work/i586-p=
oky-linux/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ -I /ho=
me/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-1.11 -=
I /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyboard-config-2.1=
-r1/xkeyboard-config-2.1/aclocal-copy/ -I /home/sean/edison-6.0-build/tmp/w=
ork/i586-poky-linux/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-co=
py/ -I /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/aclo=
cal-1.11 -I /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyboard-=
config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ --force --warnings=3Dcross=
=20
aclocal: unknown warning category `cross'
autoreconf: configure.in: tracing
autoreconf: configure.in: not using Libtool
autoreconf: running: /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/=
usr/bin/autoconf --include=3D/home/sean/edison-6.0-build/tmp/work/i586-poky=
-linux/xkeyboard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ --include=
=3D/home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/usr/share/aclocal-=
1.11 --include=3D/home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyb=
oard-config-2.1-r1/xkeyboard-config-2.1/aclocal-copy/ --force --warnings=3D=
cross
autoreconf: configure.in: not using Autoheader
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g --warnings=3Dcross
automake: unknown warning category `cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running /home/sean/edison-6.0-build/tmp/work/i586-poky-linux/xkeyboar=
d-config-2.1-r1/xkeyboard-config-2.1/configure 		 --build=3Dx86_64-linux 		=
  --host=3Di586-poky-linux 		  --target=3Di586-poky-linux 		  --prefix=3D/u=
sr 		  --exec_prefix=3D/usr 		  --bindir=3D/usr/bin 		  --sbindir=3D/usr/sb=
in 		  --libexecdir=3D/usr/libexec 		  --datadir=3D/usr/share 		  --sysconf=
dir=3D/etc 		  --sharedstatedir=3D/com 		  --localstatedir=3D/var 		  --lib=
dir=3D/usr/lib 		  --includedir=3D/usr/include 		  --oldincludedir=3D/usr/i=
nclude 		  --infodir=3D/usr/share/info 		  --mandir=3D/usr/share/man 		  --=
disable-silent-rules 		  --with-libtool-sysroot=3D/home/sean/edison-6.0-bui=
ld/tmp/sysroots/qemux86 --with-xkb-rules-symlink=3Dxorg ...
configure: WARNING: unrecognized options: --disable-silent-rules, --with-li=
btool-sysroot
configure: loading site script /home/sean/poky-edison-6.0/meta/site/endian-=
little
configure: loading site script /home/sean/poky-edison-6.0/meta/site/ix86-co=
mmon
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common-=
linux
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common-=
glibc
configure: loading site script /home/sean/poky-edison-6.0/meta/site/common
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/ncurses_config
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/eglibc_config
configure: loading site script /home/sean/edison-6.0-build/tmp/sysroots/qem=
ux86/usr/share/i586-poky-linux_config_site.d/zlib_config
checking for a BSD-compatible install... /usr/bin/install -c
checking whether build environment is sane... yes
checking for i586-poky-linux-strip... i586-poky-linux-strip
checking for a thread-safe mkdir -p... /bin/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether to enable maintainer-specific portions of Makefiles... no
checking for xkbcomp... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-lin=
ux/usr/bin/xkbcomp
checking whether NLS is requested... yes
checking for style of include used by make... GNU
checking for i586-poky-linux-gcc... i586-poky-linux-gcc  -m32   -march=3Di5=
86 --sysroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables...=20
checking whether we are cross compiling... yes
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/hom=
e/sean/edison-6.0-build/tmp/sysroots/qemux86 accepts -g... yes
checking for i586-poky-linux-gcc  -m32   -march=3Di586 --sysroot=3D/home/se=
an/edison-6.0-build/tmp/sysroots/qemux86 option to accept ISO C89... none n=
eeded
checking dependency style of i586-poky-linux-gcc  -m32   -march=3Di586 --sy=
sroot=3D/home/sean/edison-6.0-build/tmp/sysroots/qemux86... none
checking for intltool >=3D 0.30... 0.40.6 found
checking for intltool-update... /home/sean/edison-6.0-build/tmp/sysroots/x8=
6_64-linux/usr/bin/intltool-update
checking for intltool-merge... /home/sean/edison-6.0-build/tmp/sysroots/x86=
_64-linux/usr/bin/intltool-merge
checking for intltool-extract... /home/sean/edison-6.0-build/tmp/sysroots/x=
86_64-linux/usr/bin/intltool-extract
checking for xgettext... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-li=
nux/usr/bin/xgettext
checking for msgmerge... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-li=
nux/usr/bin/msgmerge
checking for msgfmt... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-linu=
x/usr/bin/msgfmt
checking for gmsgfmt... /home/sean/edison-6.0-build/tmp/sysroots/x86_64-lin=
ux/usr/bin/msgfmt
checking for perl... /usr/bin/perl
checking for perl >=3D 5.8.1... 5.12.4
checking for XML::Parser... configure: error: XML::Parser perl module is re=
quired for intltool
ERROR: oe_runconf failed
ERROR: Function 'do_configure' failed (see /home/sean/edison-6.0-build/tmp/=
work/i586-poky-linux/xkeyboard-config-2.1-r1/temp/log.do_configure.1926 for=
 further information)

------=_NextPart_000_000F_01CCE412.477E8540
Content-Type: application/octet-stream;
	name="log.do_unpack.1896"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="log.do_unpack.1896"

NOTE: Unpacking /home/sean/edison-6.0-build/downloads/icon-naming-utils-0.8=
.7.tar.gz to /home/sean/edison-6.0-build/tmp/work/x86_64-linux/icon-naming-=
utils-native-0.8.7-r3/

gzip: stdin: not in gzip format
tar: Child returned status 1
tar: Error is not recoverable: exiting now
ERROR: Function 'Unpack failure for URL: 'http://tango.freedesktop.org/rele=
ases/icon-naming-utils-0.8.7.tar.gz'. Unpack command PATH=3D"/home/sean/edi=
son-6.0-build/tmp/sysroots/x86_64-linux/usr/bin/perl-native:/home/sean/edis=
on-6.0-build/tmp/sysroots/x86_64-linux/usr/bin/i586-linux:/home/sean/edison=
-6.0-build/tmp/sysroots/x86_64-linux/usr/bin:/home/sean/edison-6.0-build/tm=
p/sysroots/x86_64-linux/usr/sbin:/home/sean/edison-6.0-build/tmp/sysroots/x=
86_64-linux/usr/bin:/home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux/s=
bin:/home/sean/edison-6.0-build/tmp/sysroots/x86_64-linux//bin:/home/sean/p=
oky-edison-6.0/scripts/native-intercept:/home/sean/poky-edison-6.0/scripts:=
/home/sean/poky-edison-6.0/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local=
/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/sean/po=
ky-edison-6.0/scripts" tar xz --no-same-owner -f /home/sean/edison-6.0-buil=
d/downloads/icon-naming-utils-0.8.7.tar.gz failed with return value 2' fail=
ed

------=_NextPart_000_000F_01CCE412.477E8540--
