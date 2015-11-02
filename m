Return-Path: <jerome.olivier@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47B42E00ACF; Mon,  2 Nov 2015 05:51:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	FREEMAIL_REPLY, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [157.55.2.30 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jerome.olivier[at]outlook.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from DUB004-OMC3S21.hotmail.com (dub004-omc3s21.hotmail.com
	[157.55.2.30])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC145E00AAB
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 05:51:41 -0800 (PST)
Received: from DUB125-W8 ([157.55.2.9]) by DUB004-OMC3S21.hotmail.com over TLS
	secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Mon, 2 Nov 2015 05:51:40 -0800
X-TMN: [F+gTElfTLd7DXSXYt44mKnzbbb4dIf2TrpS+6F5leTk=]
X-Originating-Email: [jerome.olivier@outlook.com]
Message-ID: <DUB125-W81B9212C11B2D8E835EC38A2C0@phx.gbl>
From: =?Windows-1252?B?Suly9G1lIE9MSVZJRVI=?= <jerome.olivier@outlook.com>
To: Andre McCurdy <armccurdy@gmail.com>
Date: Mon, 2 Nov 2015 13:51:40 +0000
Importance: Normal
In-Reply-To: <CAJ86T=Wjmgb+B5HVX+o2Vcamxry0+AfenmUKbQyTCt8pm9H1zg@mail.gmail.com>
References: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>,
	<1530167.LUOFWmWLxU@peggleto-mobl.ger.corp.intel.com>,
	<DUB125-W342E248876E903AA3E9B3F8A380@phx.gbl>,
	<CAJ86T=Wjmgb+B5HVX+o2Vcamxry0+AfenmUKbQyTCt8pm9H1zg@mail.gmail.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 02 Nov 2015 13:51:40.0393 (UTC)
	FILETIME=[99AAF590:01D11575]
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc LIBRARY_PATH sstate-cache issue
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
X-List-Received-Date: Mon, 02 Nov 2015 13:51:45 -0000
Content-Type: multipart/alternative;
	boundary="_127bd346-6698-4319-abde-40a688a83aa6_"

--_127bd346-6698-4319-abde-40a688a83aa6_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Andre=2C

Thanks a lot for this big hint that allowed me to find the cause of this pr=
oblem.

The problem came from the CMakeLists.txt of libB. It was overriding CMAKE_C=
_FLAGS cmake variable defined in the Yocto generated toolchain.cmake.=0A=
CMAKE_C_FLGAS contains the "--sysroot" flag for gcc command.=0A=


I don't know how it could work before and what in image/machine configurati=
ons' changes triggered this bug to show up.=0A=

I don't know also how=2C when it was bugged=2C the build system populated t=
he gcc's LIBRARY_PATH variable with sysroots path from the mirrored referen=
ce build's sstate-cache (build-machineA's sstate-cache).

The most important is that state sharing cache is working fine.=0A=


Thanks everyone for the help=2C

Cheers
--=20
J=E9r=F4me OLIVIER
TEL : +337 52 46 29 25
@ : jerome.olivier@outlook.com

> Date: Wed=2C 21 Oct 2015 13:58:53 -0700
> Subject: Re: [yocto] gcc LIBRARY_PATH sstate-cache issue
> From: armccurdy@gmail.com
> To: jerome.olivier@outlook.com
> CC: paul.eggleton@linux.intel.com=3B yocto@yoctoproject.org
>=20
> On Wed=2C Oct 21=2C 2015 at 5:10 AM=2C J=E9r=F4me OLIVIER
> <jerome.olivier@outlook.com> wrote:
> >
> > My situation is I have two machines:
> > * machineA
> > * machineB: inherits from machine B (only PREFERRED_VERSION for libxml2
> > added)
> >
> > two images:
> > * imageA
> > * imageB: inherits from image A
> >
> > I have one build directory for each machine:
> > * build-machineA
> > * build-machineB (only new packages added)=2C two of the package are sh=
ared
> > libraries : libA and libB. libA is linked to libB. libB depends on libA=
.
> > libA and libB are cmake recipes
> >
> > First I build the imageA in build-machineA for machineA
> >
> > In the build-machineB directory I build imageB for machineB. Moreover I
> > point SSTATE_DIR or SSTATE_MIRRORS of build-machineB/conf/local.conf to
> > build-machineA's sstate-cache directory.
> >
> > libA is built with success but libB's do_compile fails:
> >
> > /.../build-machineB$ bitbake libB
> > [...]
> >
> > /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-l=
inux-gnueabi/arm-opensdk-linux-gnueabi-gcc
> > -fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototyp=
es
> > -Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Wi=
nline
> > -Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C--as=
-needed
> > -shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1
> > CMakeFiles/sys.dir/src/crc.c.o CMakeFiles/sys.dir/src/fast_32k_utils.c.=
o
> > CMakeFiles/sys.dir/src/filemap.c.o CMakeFiles/sys.dir/src/hash_tables.c=
.o
> > CMakeFiles/sys.dir/src/hash_tables_2.c.o
> > CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o
> > CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o
> > CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o
> > CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c=
.o
> > CMakeFiles/sys.dir/src/watchdog_client.c.o
> > CMakeFiles/sys.dir/src/watchdog_server.c.o
> > CMakeFiles/sys.dir/src/state_machine.c.o
> > CMakeFiles/sys.dir/src/thread_manager.c.o
> > CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -lein=
a
> >
> > /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-l=
inux-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-=
gnueabi/4.9.1/ld:
> > cannot find -llibA
> >
> > collect2: error: ld returned 1 exit status
> >
> > ERROR: Function failed: do_compile (log file is located at
> > /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-=
gnueabi/libB/1.0.0/temp/log.do_compile.2284)
> >
> >
> > At this moment I had to find why ld cannot find libA.so in sysroots so =
I
> > launched a devshell on libB. In the devshell I cd-ed to the B dir of li=
bB
> > and run the cross-gcc command with the verbose "-v" option.
> >
> > /.../build-machineB$ bitbake libB -c devshell
> >
> > [devshell]
> > /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-=
gnueabi/libB/1.0.0/git
> > $ cd ../build
> >
> > [devshell]
> > /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-=
gnueabi/libB/1.0.0/build$
> > /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-l=
inux-gnueabi/arm-opensdk-linux-gnueabi-gcc
> > -fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototyp=
es
> > -Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Wi=
nline
> > -Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C--as=
-needed
> > -shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1
> > CMakeFiles/sys.dir/src/crc.c.o CMakeFiles/sys.dir/src/fast_32k_utils.c.=
o
> > CMakeFiles/sys.dir/src/filemap.c.o CMakeFiles/sys.dir/src/hash_tables.c=
.o
> > CMakeFiles/sys.dir/src/hash_tables_2.c.o
> > CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o
> > CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o
> > CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o
> > CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c=
.o
> > CMakeFiles/sys.dir/src/watchdog_client.c.o
> > CMakeFiles/sys.dir/src/watchdog_server.c.o
> > CMakeFiles/sys.dir/src/state_machine.c.o
> > CMakeFiles/sys.dir/src/thread_manager.c.o
> > CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -lein=
a
> >
> > /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-l=
inux-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-=
gnueabi/4.9.1/ld:
> > cannot find =96leina =96v
> >
>=20
> Try using ${CC} to call the compiler instead of giving an explicit PATH.
>=20
> It's normal for the default sysroot compiled into the OE toolchain to
> be wrong or deliberately set to something invalid. You therefore need
> to take great care to always include the correct --sysroot option when
> calling the compiler or linker.
>=20
> The CC=2C LD=2C etc definitions provided by OE should always include the
> correct --sysroot option=2C but you will see problems if the package
> you're building over-rides or doesn't use these standard variables (
> e.g. calls the compiler via ${CROSS_COMPILE}gcc ).
>=20
> > I will only show you the interesting part of the result.
> >
> > [...]
> >
> >
> > LIBRARY_PATH=3D/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bi=
n/arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/arm-ope=
nsdk-linux-gnueabi/4.9.1/:/.../build-machineB/tmp-glibc/sysroots/i686-linux=
/usr/bin/arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/=
:/.../build-machineA/tmp-glibc/sysroots/machineA/lib/:/.../build-machineA/t=
mp-glibc/sysroots/machineA/usr/lib/arm-opensdk-linux-gnueabi/4.9.1//.../bui=
ld-machineA/tmp-glibc/sysroots/machineA/usr/lib/
> >
> >  [...]
> >
> >
> > The symptom is here. Instead of
> > =91/.../build-machineA/tmp-glibc/sysroots/machineA/usr/lib/=92 it shoul=
d be
> > =91/.../build-machineB//tmp-glibc/sysroots/machineB/usr/lib/=92
> >
> >
> > I couldn=92t find in libB=92s recipe (and included bbclasses) where LIB=
RARY_PATH
> > is set so I guess it comes from elswhere.
> >
> > My guess is that there is a problem in cross-gcc recipe and somewhere t=
he
> > <sysroots-target>/usr/lib path is hardcoded in sstate-cache. When
> > recompilling for a different build bitbake use this cache that is pollu=
ted
> > by this hardcoded path.
> >
> >
> > Note: I have the same problem if I do same build type (machine=2C build=
dir
> > name) but different locations.
> >
> > The meta layer of machineB/imageB has a override of gcc 4.9 which consi=
sts
> > only on:
> > EXTRA_OECONF_GCC_FLOAT =3D "${@get_gcc_float_setting(bb=2C d)}"
> >
> > I had some problem two while changing the version the PREFERRED_VERSION=
 of a
> > recipe in local.conf. When recompiling bitbake don't redo do_unpack so
> > configure/compile/install=2C one of them fails to find file in S direct=
ory. I
> > had to run cleanall on this package before doing a full bitbake.
> >
> > I hop I have been clear in my explanation of the situation.
> >
> > Kind Regards=2C
> > --
> > J=E9r=F4me OLIVIER
> > TEL : +337 52 46 29 25
> > @ : jerome.olivier@outlook.com
> >
> >> From: paul.eggleton@linux.intel.com
> >> To: jerome.olivier@outlook.com
> >> CC: yocto@yoctoproject.org
> >> Subject: Re: [yocto] Disable sstate-cache for one recipe
> >> Date: Mon=2C 19 Oct 2015 12:21:48 +0100
> >>
> >> Hi J=E9r=F4me=2C
> >>
> >> On Monday 19 October 2015 10:18:41 J=E9r=F4me OLIVIER wrote:
> >> > I use yocto 1.7.2. I have some problem with sstate-cache.
> >> > I would like to disable totally sstate_cache for only one recipe. Is
> >> > that
> >> > possible?
> >>
> >> Not really I'm afraid - what is the problem you are experiencing?
> >>
> >> Cheers=2C
> >> Paul
> >>
> >> --
> >>
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
 		 	   		  =

--_127bd346-6698-4319-abde-40a688a83aa6_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<style><!--
.hmmessage P
{
margin:0px=3B
padding:0px
}
body.hmmessage
{
font-size: 12pt=3B
font-family:Calibri
}
--></style></head>
<body class=3D'hmmessage'><div dir=3D'ltr'>Hi Andre=2C<br><br>Thanks a lot =
for this big hint that allowed me to find the cause of this problem.<br><br=
>The problem came from the CMakeLists.txt of libB. It was overriding CMAKE_=
C_FLAGS cmake variable defined in the Yocto generated toolchain.cmake.=0A=
CMAKE_C_FLGAS contains the "--sysroot" flag for gcc command.=0A=
<br><br>I don't know how it could work before and what in image/machine con=
figurations' changes triggered this bug to show up.=0A=
<br>I don't know also how=2C when it was bugged=2C the build system populat=
ed the gcc's LIBRARY_PATH variable with sysroots path from the mirrored ref=
erence build's sstate-cache (build-machineA's sstate-cache).<br><br>The mos=
t important is that state sharing cache is working fine.=0A=
<br><br>Thanks everyone for the help=2C<br><br>Cheers<br>-- <br>J=E9r=F4me =
OLIVIER<br>TEL : +337 52 46 29 25<br>@ : jerome.olivier@outlook.com<br><br>=
<div>&gt=3B Date: Wed=2C 21 Oct 2015 13:58:53 -0700<br>&gt=3B Subject: Re: =
[yocto] gcc LIBRARY_PATH sstate-cache issue<br>&gt=3B From: armccurdy@gmail=
.com<br>&gt=3B To: jerome.olivier@outlook.com<br>&gt=3B CC: paul.eggleton@l=
inux.intel.com=3B yocto@yoctoproject.org<br>&gt=3B <br>&gt=3B On Wed=2C Oct=
 21=2C 2015 at 5:10 AM=2C J=E9r=F4me OLIVIER<br>&gt=3B &lt=3Bjerome.olivier=
@outlook.com&gt=3B wrote:<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B My situation is=
 I have two machines:<br>&gt=3B &gt=3B * machineA<br>&gt=3B &gt=3B * machin=
eB: inherits from machine B (only PREFERRED_VERSION for libxml2<br>&gt=3B &=
gt=3B added)<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B two images:<br>&gt=3B &gt=3B=
 * imageA<br>&gt=3B &gt=3B * imageB: inherits from image A<br>&gt=3B &gt=3B=
<br>&gt=3B &gt=3B I have one build directory for each machine:<br>&gt=3B &g=
t=3B * build-machineA<br>&gt=3B &gt=3B * build-machineB (only new packages =
added)=2C two of the package are shared<br>&gt=3B &gt=3B libraries : libA a=
nd libB. libA is linked to libB. libB depends on libA.<br>&gt=3B &gt=3B lib=
A and libB are cmake recipes<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B First I buil=
d the imageA in build-machineA for machineA<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B In the build-machineB directory I build imageB for machineB. Moreover I=
<br>&gt=3B &gt=3B point SSTATE_DIR or SSTATE_MIRRORS of build-machineB/conf=
/local.conf to<br>&gt=3B &gt=3B build-machineA's sstate-cache directory.<br=
>&gt=3B &gt=3B<br>&gt=3B &gt=3B libA is built with success but libB's do_co=
mpile fails:<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B /.../build-machineB$ bitbake=
 libB<br>&gt=3B &gt=3B [...]<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B /.../build-m=
achineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/arm=
-opensdk-linux-gnueabi-gcc<br>&gt=3B &gt=3B -fPIC -g -O2 -W -Werror -Wall -=
Wextra -Wuninitialized -Wstrict-prototypes<br>&gt=3B &gt=3B -Wcast-align -W=
missing-prototypes -Wchar-subscripts -Wpointer-arith -Winline<br>&gt=3B &gt=
=3B -Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C--as=
-needed<br>&gt=3B &gt=3B -shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1=
<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/crc.c.o CMakeFiles/sys.dir/src/fas=
t_32k_utils.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/filemap.c.o CMakeFi=
les/sys.dir/src/hash_tables.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/has=
h_tables_2.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeF=
iles/sys.dir/src/log.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/MM.c.o CMa=
keFiles/sys.dir/src/MM_no_mutex.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src=
/random.c.o CMakeFiles/sys.dir/src/registry.c.o<br>&gt=3B &gt=3B CMakeFiles=
/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o<br>&gt=3B &=
gt=3B CMakeFiles/sys.dir/src/watchdog_client.c.o<br>&gt=3B &gt=3B CMakeFile=
s/sys.dir/src/watchdog_server.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/s=
tate_machine.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/thread_manager.c.o=
<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -=
lpthread -leina<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B /.../build-machineB/tmp-g=
libc/sysroots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/../../libexec/ar=
m-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gnueabi/4.9.1/ld:<br>&gt=3B &=
gt=3B cannot find -llibA<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B collect2: error:=
 ld returned 1 exit status<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B ERROR: Functio=
n failed: do_compile (log file is located at<br>&gt=3B &gt=3B /.../build-ma=
chineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gnueabi/libB/1.0.=
0/temp/log.do_compile.2284)<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B At this moment I had to find why ld cannot find libA.so in sysroots so =
I<br>&gt=3B &gt=3B launched a devshell on libB. In the devshell I cd-ed to =
the B dir of libB<br>&gt=3B &gt=3B and run the cross-gcc command with the v=
erbose "-v" option.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B /.../build-machineB$ =
bitbake libB -c devshell<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B [devshell]<br>&g=
t=3B &gt=3B /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensd=
k-linux-gnueabi/libB/1.0.0/git<br>&gt=3B &gt=3B $ cd ../build<br>&gt=3B &gt=
=3B<br>&gt=3B &gt=3B [devshell]<br>&gt=3B &gt=3B /.../build-machineB/tmp-gl=
ibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gnueabi/libB/1.0.0/build$<br>&=
gt=3B &gt=3B /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-=
opensdk-linux-gnueabi/arm-opensdk-linux-gnueabi-gcc<br>&gt=3B &gt=3B -fPIC =
-g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes<br>&gt=
=3B &gt=3B -Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-ar=
ith -Winline<br>&gt=3B &gt=3B -Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--h=
ash-style=3Dgnu -Wl=2C--as-needed<br>&gt=3B &gt=3B -shared -Wl=2C-soname=2C=
libsys.so.1 -o libsys.so.1<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/crc.c.o =
CMakeFiles/sys.dir/src/fast_32k_utils.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.d=
ir/src/filemap.c.o CMakeFiles/sys.dir/src/hash_tables.c.o<br>&gt=3B &gt=3B =
CMakeFiles/sys.dir/src/hash_tables_2.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.di=
r/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o<br>&gt=3B &gt=3B CMakeFi=
les/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o<br>&gt=3B &gt=
=3B CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o<b=
r>&gt=3B &gt=3B CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watc=
hdog_timer.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/watchdog_client.c.o<=
br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/watchdog_server.c.o<br>&gt=3B &gt=
=3B CMakeFiles/sys.dir/src/state_machine.c.o<br>&gt=3B &gt=3B CMakeFiles/sy=
s.dir/src/thread_manager.c.o<br>&gt=3B &gt=3B CMakeFiles/sys.dir/src/sg_log=
_eina.c.o -lpthread -leina -lpthread -leina<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B /.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-l=
inux-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-=
gnueabi/4.9.1/ld:<br>&gt=3B &gt=3B cannot find =96leina =96v<br>&gt=3B &gt=
=3B<br>&gt=3B <br>&gt=3B Try using ${CC} to call the compiler instead of gi=
ving an explicit PATH.<br>&gt=3B <br>&gt=3B It's normal for the default sys=
root compiled into the OE toolchain to<br>&gt=3B be wrong or deliberately s=
et to something invalid. You therefore need<br>&gt=3B to take great care to=
 always include the correct --sysroot option when<br>&gt=3B calling the com=
piler or linker.<br>&gt=3B <br>&gt=3B The CC=2C LD=2C etc definitions provi=
ded by OE should always include the<br>&gt=3B correct --sysroot option=2C b=
ut you will see problems if the package<br>&gt=3B you're building over-ride=
s or doesn't use these standard variables (<br>&gt=3B e.g. calls the compil=
er via ${CROSS_COMPILE}gcc ).<br>&gt=3B <br>&gt=3B &gt=3B I will only show =
you the interesting part of the result.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B [=
...]<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B LIBRARY_PATH=3D/...=
/build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-linux-gnu=
eabi/../../lib/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gnueabi/4.9.=
1/:/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-li=
nux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/:/.../build-machineA/tm=
p-glibc/sysroots/machineA/lib/:/.../build-machineA/tmp-glibc/sysroots/machi=
neA/usr/lib/arm-opensdk-linux-gnueabi/4.9.1//.../build-machineA/tmp-glibc/s=
ysroots/machineA/usr/lib/<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B  [...]<br>&gt=
=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B The symptom is here. Instead o=
f<br>&gt=3B &gt=3B =91/.../build-machineA/tmp-glibc/sysroots/machineA/usr/l=
ib/=92 it should be<br>&gt=3B &gt=3B =91/.../build-machineB//tmp-glibc/sysr=
oots/machineB/usr/lib/=92<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B I couldn=92t find in libB=92s recipe (and included bbclasses) where LIB=
RARY_PATH<br>&gt=3B &gt=3B is set so I guess it comes from elswhere.<br>&gt=
=3B &gt=3B<br>&gt=3B &gt=3B My guess is that there is a problem in cross-gc=
c recipe and somewhere the<br>&gt=3B &gt=3B &lt=3Bsysroots-target&gt=3B/usr=
/lib path is hardcoded in sstate-cache. When<br>&gt=3B &gt=3B recompilling =
for a different build bitbake use this cache that is polluted<br>&gt=3B &gt=
=3B by this hardcoded path.<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B Note: I have the same problem if I do same build type (machine=2C build=
dir<br>&gt=3B &gt=3B name) but different locations.<br>&gt=3B &gt=3B<br>&gt=
=3B &gt=3B The meta layer of machineB/imageB has a override of gcc 4.9 whic=
h consists<br>&gt=3B &gt=3B only on:<br>&gt=3B &gt=3B EXTRA_OECONF_GCC_FLOA=
T =3D "${@get_gcc_float_setting(bb=2C d)}"<br>&gt=3B &gt=3B<br>&gt=3B &gt=
=3B I had some problem two while changing the version the PREFERRED_VERSION=
 of a<br>&gt=3B &gt=3B recipe in local.conf. When recompiling bitbake don't=
 redo do_unpack so<br>&gt=3B &gt=3B configure/compile/install=2C one of the=
m fails to find file in S directory. I<br>&gt=3B &gt=3B had to run cleanall=
 on this package before doing a full bitbake.<br>&gt=3B &gt=3B<br>&gt=3B &g=
t=3B I hop I have been clear in my explanation of the situation.<br>&gt=3B =
&gt=3B<br>&gt=3B &gt=3B Kind Regards=2C<br>&gt=3B &gt=3B --<br>&gt=3B &gt=
=3B J=E9r=F4me OLIVIER<br>&gt=3B &gt=3B TEL : +337 52 46 29 25<br>&gt=3B &g=
t=3B @ : jerome.olivier@outlook.com<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B&gt=3B=
 From: paul.eggleton@linux.intel.com<br>&gt=3B &gt=3B&gt=3B To: jerome.oliv=
ier@outlook.com<br>&gt=3B &gt=3B&gt=3B CC: yocto@yoctoproject.org<br>&gt=3B=
 &gt=3B&gt=3B Subject: Re: [yocto] Disable sstate-cache for one recipe<br>&=
gt=3B &gt=3B&gt=3B Date: Mon=2C 19 Oct 2015 12:21:48 +0100<br>&gt=3B &gt=3B=
&gt=3B<br>&gt=3B &gt=3B&gt=3B Hi J=E9r=F4me=2C<br>&gt=3B &gt=3B&gt=3B<br>&g=
t=3B &gt=3B&gt=3B On Monday 19 October 2015 10:18:41 J=E9r=F4me OLIVIER wro=
te:<br>&gt=3B &gt=3B&gt=3B &gt=3B I use yocto 1.7.2. I have some problem wi=
th sstate-cache.<br>&gt=3B &gt=3B&gt=3B &gt=3B I would like to disable tota=
lly sstate_cache for only one recipe. Is<br>&gt=3B &gt=3B&gt=3B &gt=3B that=
<br>&gt=3B &gt=3B&gt=3B &gt=3B possible?<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &=
gt=3B&gt=3B Not really I'm afraid - what is the problem you are experiencin=
g?<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Cheers=2C<br>&gt=3B &gt=3B=
&gt=3B Paul<br>&gt=3B &gt=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B --<br>&gt=3B &gt=
=3B&gt=3B<br>&gt=3B &gt=3B&gt=3B Paul Eggleton<br>&gt=3B &gt=3B&gt=3B Intel=
 Open Source Technology Centre<br>&gt=3B &gt=3B<br>&gt=3B &gt=3B --<br>&gt=
=3B &gt=3B _______________________________________________<br>&gt=3B &gt=3B=
 yocto mailing list<br>&gt=3B &gt=3B yocto@yoctoproject.org<br>&gt=3B &gt=
=3B https://lists.yoctoproject.org/listinfo/yocto<br>&gt=3B &gt=3B<br></div=
> 		 	   		  </div></body>
</html>=

--_127bd346-6698-4319-abde-40a688a83aa6_--
