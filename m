Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81CFBE0059A
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:36:07 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2012 15:36:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="151643609"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 15:36:06 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 9 Apr 2012 15:36:06 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.199]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.140]) with mapi id
	14.01.0355.002; Mon, 9 Apr 2012 15:36:06 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 1.2_M2  build fails for syslinux_4.03.bb for Romley BSP
Thread-Index: Ac0WoSSUSXx/p3X2SnShbEpskydWsA==
Date: Mon, 9 Apr 2012 22:36:05 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20360939E@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: 1.2_M2 build fails for syslinux_4.03.bb for Romley BSP
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
X-List-Received-Date: Mon, 09 Apr 2012 22:36:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20360939EORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20360939EORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

Poky and meta-intel for 1.2_M2 build is failing for syslinux_4.03 recipe.

Did anyone saw this for other BSPs?


ERROR: Function 'do_compile' failed (see /home/tmelab/yocto/poky/poky-1.2_M=
2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_com=
pile.53231 for further information)
ERROR: Logfile of failure stored in: /home/tmelab/yocto/poky/poky-1.2_M2.fi=
nal/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_compile=
.53231
Log data follows:
| ERROR: Function 'do_compile' failed (see /home/tmelab/yocto/poky/poky-1.2=
_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/temp/log.do_c=
ompile.53231 for further information)
| NOTE: make -j 8 BINDIR=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/build/=
tmp/sysroots/x86_64-linux/usr/bin SBINDIR=3D/home/tmelab/yocto/poky/poky-1.=
2_M2.final/build/tmp/sysroots/x86_64-linux/usr/sbin LIBDIR=3D/home/tmelab/y=
octo/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/lib DATADIR=
=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linu=
x/usr/share MANDIR=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sy=
sroots/x86_64-linux/usr/share/man INCDIR=3D/home/tmelab/yocto/poky/poky-1.2=
_M2.final/build/tmp/sysroots/x86_64-linux/usr/include CC=3Dccache gcc  inst=
aller
| make -r installer-local
| make[1]: Entering directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bu=
ild/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03'
| make[1]: Nothing to be done for `installer-local'.
| make[1]: Leaving directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bui=
ld/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03'
| set -e ; for i in libinstaller mtools linux extlinux utils; do make -r -C=
 $i all ; done
| make[1]: Entering directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bu=
ild/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/libinstalle=
r'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bui=
ld/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/libinstaller=
'
| make[1]: Entering directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bu=
ild/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
| make[1]: Nothing to be done for `all'.
| make[1]: Leaving directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bui=
ld/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/mtools'
| make[1]: Entering directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bu=
ild/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
| ccache gcc  -Wp,-MT,syslinux.o,-MMD,./.syslinux.o.d -W -Wall -Wstrict-pro=
totypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I. -I.. -I../lib=
installer -c -o syslinux.o syslinux.c
| ccache gcc  -Wp,-MT,syslxcom.o,-MMD,./.syslxcom.o.d -W -Wall -Wstrict-pro=
totypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloca=3Dmalloc -I. -I.. -I../lib=
installer -c -o syslxcom.o ../libinstaller/syslxcom.c
| In file included from ../libinstaller/linuxioctl.h:22:0,
|                  from ../libinstaller/syslxcom.c:33:
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'
| make[1]: *** [syslxcom.o] Error 1
| make[1]: *** Waiting for unfinished jobs....
| In file included from ../libinstaller/linuxioctl.h:22:0,
|                  from syslinux.c:50:
| /usr/include/linux/ext2_fs.h:178:41: error: unknown type name 'umode_t'
| make[1]: *** [syslinux.o] Error 1
| make[1]: Leaving directory `/home/tmelab/yocto/poky/poky-1.2_M2.final/bui=
ld/tmp/work/x86_64-linux/syslinux-native-4.03-r3/syslinux-4.03/linux'
| make: *** [installer] Error 2
| ERROR: oe_runmake failed
NOTE: package syslinux-native-4.03-r3: task do_compile: Failed
NOTE: package mtools-native-4.0.17-r0: task do_install: Started
NOTE: package linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77=
d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4: task do_va=
lidate_branches: Started
NOTE: package linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77=
d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4: task do_va=
lidate_branches: Succeeded
NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_populate_sysr=
oot: Started
NOTE: Running task 2732 of 4771 (ID: 1998, /home/tmelab/yocto/poky/poky-1.2=
_M2.final/meta/recipes-kernel/linux-libc-headers/linux-libc-headers-yocto_g=
it.bb, do_patch)
NOTE: Running task 2733 of 4771 (ID: 4286, /home/tmelab/yocto/poky/poky-1.2=
_M2.final/meta/recipes-devtools/gcc/gcc-cross-initial_4.6.bb, do_package_wr=
ite_rpm)
ERROR: Task 152 (virtual:native:/home/tmelab/yocto/poky/poky-1.2_M2.final/m=
eta/recipes-devtools/syslinux/syslinux_4.03.bb, do_compile) failed with exi=
t code '1'
Waiting for 2 active tasks to finish:
0: mtools-native-4.0.17-r0 do_install (pid 53232)
1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
Waiting for 3 active tasks to finish:
0: mtools-native-4.0.17-r0 do_install (pid 53232)
1: linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77d6d7ba35e97=
db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4 do_patch (pid 53317)
2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77=
d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4: task do_pa=
tch: Started
Waiting for 2 active tasks to finish:
0: mtools-native-4.0.17-r0 do_install (pid 53232)
1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package linux-libc-headers-yocto-2.6.37+git-1+69cfbdf9f1ff461a75e5b77=
d6d7ba35e97db4cc3_1+69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3-r4: task do_pa=
tch: Succeeded
Waiting for 1 active tasks to finish:
0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package mtools-native-4.0.17-r0: task do_install: Succeeded
Waiting for 2 active tasks to finish:
0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot: Started
Waiting for 3 active tasks to finish:
0: gcc-cross-initial-4.6.2+svnr181430-r20 do_package_write_rpm (pid 53320)
1: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
2: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_package_write=
_rpm: Started
Waiting for 2 active tasks to finish:
0: cdrtools-native-2.01-r2 do_populate_sysroot (pid 53310)
1: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_package_write=
_rpm: Succeeded
Waiting for 1 active tasks to finish:
0: gcc-cross-initial-4.6.2+svnr181430-r20 do_populate_sysroot (pid 52951)
NOTE: package cdrtools-native-2.01-r2: task do_populate_sysroot: Succeeded
NOTE: package gcc-cross-initial-4.6.2+svnr181430-r20: task do_populate_sysr=
oot: Succeeded
ERROR: 'virtual:native:/home/tmelab/yocto/poky/poky-1.2_M2.final/meta/recip=
es-devtools/syslinux/syslinux_4.03.bb' failed
Summary: There were 2 WARNING messages shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20360939EORSMSX105amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi ,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Poky and meta-intel for 1.2_M2 build is failing for =
syslinux_4.03 recipe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Did anyone saw this for other BSPs?&nbsp; <o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Function 'do_compile' failed (see /home/tmela=
b/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-=
4.03-r3/temp/log.do_compile.53231 for further information)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/tmelab/yo=
cto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03=
-r3/temp/log.do_compile.53231<o:p></o:p></p>
<p class=3D"MsoNormal">Log data follows:<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: Function 'do_compile' failed (see /home/tme=
lab/yocto/poky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-nativ=
e-4.03-r3/temp/log.do_compile.53231 for further information)<o:p></o:p></p>
<p class=3D"MsoNormal">| NOTE: make -j 8 BINDIR=3D/home/tmelab/yocto/poky/p=
oky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/bin SBINDIR=3D/home/tm=
elab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/sbin =
LIBDIR=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86_6=
4-linux/usr/lib
 DATADIR=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/build/tmp/sysroots/x86=
_64-linux/usr/share MANDIR=3D/home/tmelab/yocto/poky/poky-1.2_M2.final/buil=
d/tmp/sysroots/x86_64-linux/usr/share/man INCDIR=3D/home/tmelab/yocto/poky/=
poky-1.2_M2.final/build/tmp/sysroots/x86_64-linux/usr/include
 CC=3Dccache gcc&nbsp; installer<o:p></o:p></p>
<p class=3D"MsoNormal">| make -r installer-local<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Entering directory `/home/tmelab/yocto/po=
ky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sy=
slinux-4.03'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Nothing to be done for `installer-local'.=
<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Leaving directory `/home/tmelab/yocto/pok=
y/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sys=
linux-4.03'<o:p></o:p></p>
<p class=3D"MsoNormal">| set -e ; for i in libinstaller mtools linux extlin=
ux utils; do make -r -C $i all ; done<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Entering directory `/home/tmelab/yocto/po=
ky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sy=
slinux-4.03/libinstaller'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Nothing to be done for `all'.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">| make[1]: Leaving directory `/home/tmelab/yocto/pok=
y/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sys=
linux-4.03/libinstaller'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Entering directory `/home/tmelab/yocto/po=
ky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sy=
slinux-4.03/mtools'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Nothing to be done for `all'.<o:p></o:p><=
/p>
<p class=3D"MsoNormal">| make[1]: Leaving directory `/home/tmelab/yocto/pok=
y/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sys=
linux-4.03/mtools'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Entering directory `/home/tmelab/yocto/po=
ky/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sy=
slinux-4.03/linux'<o:p></o:p></p>
<p class=3D"MsoNormal">| ccache gcc&nbsp; -Wp,-MT,syslinux.o,-MMD,./.syslin=
ux.o.d -W -Wall -Wstrict-prototypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloc=
a=3Dmalloc -I. -I.. -I../libinstaller -c -o syslinux.o syslinux.c<o:p></o:p=
></p>
<p class=3D"MsoNormal">| ccache gcc&nbsp; -Wp,-MT,syslxcom.o,-MMD,./.syslxc=
om.o.d -W -Wall -Wstrict-prototypes -D_FILE_OFFSET_BITS=3D64 -g -O0 -Dalloc=
a=3Dmalloc -I. -I.. -I../libinstaller -c -o syslxcom.o ../libinstaller/sysl=
xcom.c<o:p></o:p></p>
<p class=3D"MsoNormal">| In file included from ../libinstaller/linuxioctl.h=
:22:0,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from ../libinstaller/sy=
slxcom.c:33:<o:p></o:p></p>
<p class=3D"MsoNormal">| /usr/include/linux/ext2_fs.h:178:41: error: unknow=
n type name 'umode_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: *** [syslxcom.o] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: *** Waiting for unfinished jobs....<o:p><=
/o:p></p>
<p class=3D"MsoNormal">| In file included from ../libinstaller/linuxioctl.h=
:22:0,<o:p></o:p></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from syslinux.c:50:<o:p=
></o:p></p>
<p class=3D"MsoNormal">| /usr/include/linux/ext2_fs.h:178:41: error: unknow=
n type name 'umode_t'<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: *** [syslinux.o] Error 1<o:p></o:p></p>
<p class=3D"MsoNormal">| make[1]: Leaving directory `/home/tmelab/yocto/pok=
y/poky-1.2_M2.final/build/tmp/work/x86_64-linux/syslinux-native-4.03-r3/sys=
linux-4.03/linux'<o:p></o:p></p>
<p class=3D"MsoNormal">| make: *** [installer] Error 2<o:p></o:p></p>
<p class=3D"MsoNormal">| ERROR: oe_runmake failed<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package syslinux-native-4.03-r3: task do_compi=
le: Failed<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package mtools-native-4.0.17-r0: task do_insta=
ll: Started<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package linux-libc-headers-yocto-2.6.37&#43;gi=
t-1&#43;69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1&#43;69cfbdf9f1ff461a75e5=
b77d6d7ba35e97db4cc3-r4: task do_validate_branches: Started<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package linux-libc-headers-yocto-2.6.37&#43;gi=
t-1&#43;69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1&#43;69cfbdf9f1ff461a75e5=
b77d6d7ba35e97db4cc3-r4: task do_validate_branches: Succeeded<o:p></o:p></p=
>
<p class=3D"MsoNormal">NOTE: package gcc-cross-initial-4.6.2&#43;svnr181430=
-r20: task do_populate_sysroot: Started<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Running task 2732 of 4771 (ID: 1998, /home/tme=
lab/yocto/poky/poky-1.2_M2.final/meta/recipes-kernel/linux-libc-headers/lin=
ux-libc-headers-yocto_git.bb, do_patch)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: Running task 2733 of 4771 (ID: 4286, /home/tme=
lab/yocto/poky/poky-1.2_M2.final/meta/recipes-devtools/gcc/gcc-cross-initia=
l_4.6.bb, do_package_write_rpm)<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: Task 152 (virtual:native:/home/tmelab/yocto/p=
oky/poky-1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb, do_c=
ompile) failed with exit code '1'<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 2 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: mtools-native-4.0.17-r0 do_install (pid 53232)<o:=
p></o:p></p>
<p class=3D"MsoNormal">1: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 3 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: mtools-native-4.0.17-r0 do_install (pid 53232)<o:=
p></o:p></p>
<p class=3D"MsoNormal">1: linux-libc-headers-yocto-2.6.37&#43;git-1&#43;69c=
fbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1&#43;69cfbdf9f1ff461a75e5b77d6d7ba35=
e97db4cc3-r4 do_patch (pid 53317)<o:p></o:p></p>
<p class=3D"MsoNormal">2: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package linux-libc-headers-yocto-2.6.37&#43;gi=
t-1&#43;69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1&#43;69cfbdf9f1ff461a75e5=
b77d6d7ba35e97db4cc3-r4: task do_patch: Started<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 2 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: mtools-native-4.0.17-r0 do_install (pid 53232)<o:=
p></o:p></p>
<p class=3D"MsoNormal">1: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package linux-libc-headers-yocto-2.6.37&#43;gi=
t-1&#43;69cfbdf9f1ff461a75e5b77d6d7ba35e97db4cc3_1&#43;69cfbdf9f1ff461a75e5=
b77d6d7ba35e97db4cc3-r4: task do_patch: Succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 1 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package mtools-native-4.0.17-r0: task do_insta=
ll: Succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 2 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: cdrtools-native-2.01-r2 do_populate_sysroot (pid =
53310)<o:p></o:p></p>
<p class=3D"MsoNormal">1: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package cdrtools-native-2.01-r2: task do_popul=
ate_sysroot: Started<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 3 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pac=
kage_write_rpm (pid 53320)<o:p></o:p></p>
<p class=3D"MsoNormal">1: cdrtools-native-2.01-r2 do_populate_sysroot (pid =
53310)<o:p></o:p></p>
<p class=3D"MsoNormal">2: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package gcc-cross-initial-4.6.2&#43;svnr181430=
-r20: task do_package_write_rpm: Started<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 2 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: cdrtools-native-2.01-r2 do_populate_sysroot (pid =
53310)<o:p></o:p></p>
<p class=3D"MsoNormal">1: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package gcc-cross-initial-4.6.2&#43;svnr181430=
-r20: task do_package_write_rpm: Succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">Waiting for 1 active tasks to finish:<o:p></o:p></p>
<p class=3D"MsoNormal">0: gcc-cross-initial-4.6.2&#43;svnr181430-r20 do_pop=
ulate_sysroot (pid 52951)<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package cdrtools-native-2.01-r2: task do_popul=
ate_sysroot: Succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">NOTE: package gcc-cross-initial-4.6.2&#43;svnr181430=
-r20: task do_populate_sysroot: Succeeded<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: 'virtual:native:/home/tmelab/yocto/poky/poky-=
1.2_M2.final/meta/recipes-devtools/syslinux/syslinux_4.03.bb' failed<o:p></=
o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 WARNING messages shown.<o:p></=
o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit code.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20360939EORSMSX105amrcor_--
