Return-Path: <jerome.olivier@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8BFDE009D9; Wed, 21 Oct 2015 05:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerome.olivier[at]outlook.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.1.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 21 Oct 2015 05:11:56 PDT
Received: from DUB004-OMC2S34.hotmail.com (dub004-omc2s34.hotmail.com
	[157.55.1.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F483E00985
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 05:11:56 -0700 (PDT)
Received: from DUB125-W34 ([157.55.1.138]) by DUB004-OMC2S34.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Wed, 21 Oct 2015 05:10:52 -0700
X-TMN: [TIcBeaZPKIpPGZZXWxkYGxBgtRxMTyp4mKoMP2Sj+k8=]
X-Originating-Email: [jerome.olivier@outlook.com]
Message-ID: <DUB125-W342E248876E903AA3E9B3F8A380@phx.gbl>
From: =?Windows-1252?B?Suly9G1lIE9MSVZJRVI=?= <jerome.olivier@outlook.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 21 Oct 2015 12:10:52 +0000
Importance: Normal
In-Reply-To: <1530167.LUOFWmWLxU@peggleto-mobl.ger.corp.intel.com>
References: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>,
	<1530167.LUOFWmWLxU@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
X-OriginalArrivalTime: 21 Oct 2015 12:10:52.0406 (UTC)
	FILETIME=[87D46160:01D10BF9]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gcc LIBRARY_PATH sstate-cache issue
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
X-List-Received-Date: Wed, 21 Oct 2015 12:11:59 -0000
Content-Type: multipart/alternative;
	boundary="_4bc267fa-0228-405e-99d2-7cea19fae9cc_"

--_4bc267fa-0228-405e-99d2-7cea19fae9cc_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Paul =2C
Thanks for your answer. Martin pointed me to a patch I will try later on.

I changed the subject

My versions:
 * openembedded-core:
commit e848484989307ae6826ba0f5217f7702322181e3
Author: Paul Eggleton <paul.eggleton@linux.intel.com>
Date:   Wed Feb 18 10:23:42 2015 +0000

    lib/oe/package_manager: support exclusion from complementary glob proce=
ss by regex
   =20
    Sometimes you do not want certain packages to be installed when
    installing complementary packages=2C e.g. when using dev-pkgs in
    IMAGE_FEATURES you may not want to install all packages from a
    particular multilib. This introduces a new PACKAGE_EXCLUDE_COMPLEMENTAR=
Y
    variable to allow specifying regexes to match packages to exclude.
   =20
    (From OE-Core master rev: d4fe8f639d87d5ff35e50d07d41d0c1e9f12c4e3)
   =20
    Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
    Signed-off-by: Brendan Le Foll <brendan.le.foll@intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

   * meta-openembedded:
commit 853dcfa0d618dc26bd27b3a1b49494b98d6eee97
Author: Steffen Sledz <sledz@dresearch-fe.de>
Date:   Mon Feb 16 19:37:34 2015 +0100

    rsyslog: fix name of syslogd ua group
   =20
    All the other syslogd implementations use 'syslogd' as update alternati=
ves
    group name. So rsyslogd should use this too.
   =20
    Signed-off-by: Steffen Sledz <sledz@dresearch-fe.de>
    Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>

My situation is I have two machines:
* machineA
* machineB: inherits from machine B (only PREFERRED_VERSION for libxml2 add=
ed)

two images:
* imageA
* imageB: inherits from image A

I have one build directory for each machine:
* build-machineA
* build-machineB (only new packages added)=2C two of the package are shared=
 libraries : libA and libB. libA is linked to libB. libB depends on libA. l=
ibA and libB are cmake recipes

First I build the imageA in build-machineA for machineA

In the build-machineB directory I build imageB for machineB. Moreover I poi=
nt SSTATE_DIR or SSTATE_MIRRORS of build-machineB/conf/local.conf to build-=
machineA's sstate-cache directory.

libA is built with success but libB's do_compile fails:

/.../build-machineB$ bitbake libB
[...]
=0A=
=0A=
/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-linux=
-gnueabi/arm-opensdk-linux-gnueabi-gcc =0A=
-fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes=
=0A=
-Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winlin=
e=0A=
-Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C--as-nee=
ded=0A=
-shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1 CMakeFiles/sys.dir/src/c=
rc.c.o=0A=
CMakeFiles/sys.dir/src/fast_32k_utils.c.o CMakeFiles/sys.dir/src/filemap.c.=
o=0A=
CMakeFiles/sys.dir/src/hash_tables.c.o CMakeFiles/sys.dir/src/hash_tables_2=
.c.o=0A=
CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o=0A=
CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o=0A=
CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o=0A=
CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o=
=0A=
CMakeFiles/sys.dir/src/watchdog_client.c.o CMakeFiles/sys.dir/src/watchdog_=
server.c.o=0A=
CMakeFiles/sys.dir/src/state_machine.c.o=0A=
CMakeFiles/sys.dir/src/thread_manager.c.o=0A=
CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina =
=0A=
=0A=
/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-linux=
-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gnue=
abi/4.9.1/ld:=0A=
cannot find -llibA=0A=
=0A=
collect2: error:=0A=
ld returned 1 exit status=0A=
=0A=
ERROR: Function=0A=
failed: do_compile (log file is located at /.../build-machineB/tmp-glibc/wo=
rk/cortexa9t2hf-vfp-neon-opensdk-linux-gnueabi/libB/1.0.0/temp/log.do_compi=
le.2284)=0A=
=0A=

At this moment I had to find why ld cannot find libA.so in sysroots so I la=
unched a devshell on libB. In the devshell I cd-ed to the B dir of libB and=
 run the cross-gcc command with the verbose "-v" option.

=0A=
=0A=
/.../build-machineB$=0A=
bitbake libB -c devshell=0A=
=0A=
[devshell] /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk=
-linux-gnueabi/libB/1.0.0/git=0A=
$ cd ../build=0A=
=0A=
[devshell] /.../build-machineB/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk=
-linux-gnueabi/libB/1.0.0/build$ /.../build-machineB/tmp-glibc/sysroots/i68=
6-linux/usr/bin/arm-opensdk-linux-gnueabi/arm-opensdk-linux-gnueabi-gcc =0A=
-fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes=
=0A=
-Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winlin=
e=0A=
-Wno-conversion -Wshadow  -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C--as-nee=
ded=0A=
-shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1 CMakeFiles/sys.dir/src/c=
rc.c.o=0A=
CMakeFiles/sys.dir/src/fast_32k_utils.c.o CMakeFiles/sys.dir/src/filemap.c.=
o=0A=
CMakeFiles/sys.dir/src/hash_tables.c.o CMakeFiles/sys.dir/src/hash_tables_2=
.c.o=0A=
CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o=0A=
CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o=0A=
CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o=0A=
CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o=
=0A=
CMakeFiles/sys.dir/src/watchdog_client.c.o=0A=
CMakeFiles/sys.dir/src/watchdog_server.c.o=0A=
CMakeFiles/sys.dir/src/state_machine.c.o=0A=
CMakeFiles/sys.dir/src/thread_manager.c.o=0A=
CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina =
=0A=
=0A=
/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/arm-opensdk-linux=
-gnueabi/../../libexec/arm-opensdk-linux-gnueabi/gcc/arm-opensdk-linux-gnue=
abi/4.9.1/ld:=0A=
cannot find =96leina =96v=0A=
=0A=

=0A=
=0A=
I will only show you the interesting part of the=0A=
result.
[...]
=0A=
=0A=
               =0A=
LIBRARY_PATH=3D/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr/bin/ar=
m-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/arm-opensdk=
-linux-gnueabi/4.9.1/:/.../build-machineB/tmp-glibc/sysroots/i686-linux/usr=
/bin/arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-gnueabi/gcc/:/..=
./build-machineA/tmp-glibc/sysroots/machineA/lib/:/.../build-machineA/tmp-g=
libc/sysroots/machineA/usr/lib/arm-opensdk-linux-gnueabi/4.9.1//.../build-m=
achineA/tmp-glibc/sysroots/machineA/usr/lib/=0A=
=0A=
 [...]
=0A=
=0A=
The symptom is here. Instead of=0A=
=91/.../build-machineA/tmp-glibc/sysroots/machineA/usr/lib/=92 it should be=
=0A=
=91/.../build-machineB//tmp-glibc/sysroots/machineB/usr/lib/=92=0A=
=0A=

=0A=
=0A=
I couldn=92t find=0A=
in libB=92s recipe (and included bbclasses) where LIBRARY_PATH is set so I =
guess it comes from elswhere.=0A=
=0A=
My guess is that=0A=
there is a problem in cross-gcc recipe and somewhere the=0A=
<sysroots-target>/usr/lib path is hardcoded in sstate-cache. When=0A=
recompilling for a different build bitbake use this cache that is polluted =
by=0A=
this hardcoded path.
=0A=
=0A=
Note: I have the=0A=
same problem if I do same build type (machine=2C builddir name) but differe=
nt=0A=
locations.=20

The meta layer of machineB/imageB has a override of gcc 4.9 which consists =
only on:
EXTRA_OECONF_GCC_FLOAT =3D "${@get_gcc_float_setting(bb=2C d)}"

I had some problem two while changing the version the PREFERRED_VERSION of =
a recipe in local.conf. When recompiling bitbake don't redo do_unpack so co=
nfigure/compile/install=2C one of them fails to find file in S directory. I=
 had to run cleanall on this package before doing a full bitbake.

I hop I have been clear in my explanation of the situation.

Kind Regards=2C
--=20
J=E9r=F4me OLIVIER
TEL : +337 52 46 29 25
@ : jerome.olivier@outlook.com

> From: paul.eggleton@linux.intel.com
> To: jerome.olivier@outlook.com
> CC: yocto@yoctoproject.org
> Subject: Re: [yocto] Disable sstate-cache for one recipe
> Date: Mon=2C 19 Oct 2015 12:21:48 +0100
>=20
> Hi J=E9r=F4me=2C
>=20
> On Monday 19 October 2015 10:18:41 J=E9r=F4me OLIVIER wrote:
> > I use yocto 1.7.2. I have some problem with sstate-cache.
> > I would like to disable totally sstate_cache for only one recipe. Is th=
at
> > possible?
>=20
> Not really I'm afraid - what is the problem you are experiencing?
>=20
> Cheers=2C
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
 		 	   		  =

--_4bc267fa-0228-405e-99d2-7cea19fae9cc_
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
<body class=3D'hmmessage'><div dir=3D'ltr'><font style=3D"font-size: 12pt=
=3B" size=3D"3">Hi Paul =2C</font><font style=3D"font-size: 12pt=3B" size=
=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">Thanks for =
your answer. Martin pointed me to a patch I will try later on.</font><font =
style=3D"font-size: 12pt=3B" size=3D"3"><br><br></font><font style=3D"font-=
size: 12pt=3B" size=3D"3">I changed the subject</font><font style=3D"font-s=
ize: 12pt=3B" size=3D"3"><br><br></font><font style=3D"font-size: 12pt=3B" =
size=3D"3">My versions:</font><font style=3D"font-size: 12pt=3B" size=3D"3"=
><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B* openemb=
edded-core:</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font>=
<font style=3D"font-size: 12pt=3B" size=3D"3">commit e848484989307ae6826ba0=
f5217f7702322181e3</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br>=
</font><font style=3D"font-size: 12pt=3B" size=3D"3">Author: Paul Eggleton =
&lt=3Bpaul.eggleton@linux.intel.com&gt=3B</font><font style=3D"font-size: 1=
2pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3"=
>Date:&nbsp=3B&nbsp=3B Wed Feb 18 10:23:42 2015 +0000</font><font style=3D"=
font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B=
" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=
=3B&nbsp=3B&nbsp=3B lib/oe/package_manager: support exclusion from compleme=
ntary glob process by regex</font><font style=3D"font-size: 12pt=3B" size=
=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nb=
sp=3B&nbsp=3B </font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></fo=
nt><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B S=
ometimes you do not want certain packages to be installed when</font><font =
style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size=
: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B installing complementary pac=
kages=2C e.g. when using dev-pkgs in</font><font style=3D"font-size: 12pt=
=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&n=
bsp=3B&nbsp=3B&nbsp=3B IMAGE_FEATURES you may not want to install all packa=
ges from a</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><=
font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B parti=
cular multilib. This introduces a new PACKAGE_EXCLUDE_COMPLEMENTARY</font><=
font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font=
-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B variable to allow speci=
fying regexes to match packages to exclude.</font><font style=3D"font-size:=
 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"=
3">&nbsp=3B&nbsp=3B&nbsp=3B </font><font style=3D"font-size: 12pt=3B" size=
=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nb=
sp=3B&nbsp=3B (From OE-Core master rev: d4fe8f639d87d5ff35e50d07d41d0c1e9f1=
2c4e3)</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font=
 style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B </font><f=
ont style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-=
size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B Signed-off-by: Paul Eggl=
eton &lt=3Bpaul.eggleton@linux.intel.com&gt=3B</font><font style=3D"font-si=
ze: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=
=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B Signed-off-by: Brendan Le Foll &lt=3Bbrenda=
n.le.foll@intel.com&gt=3B</font><font style=3D"font-size: 12pt=3B" size=3D"=
3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=
=3B&nbsp=3B Signed-off-by: Richard Purdie &lt=3Brichard.purdie@linuxfoundat=
ion.org&gt=3B</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></fon=
t><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"f=
ont-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B * meta-openembedded:</font><=
font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font=
-size: 12pt=3B" size=3D"3">commit 853dcfa0d618dc26bd27b3a1b49494b98d6eee97<=
/font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=
=3D"font-size: 12pt=3B" size=3D"3">Author: Steffen Sledz &lt=3Bsledz@dresea=
rch-fe.de&gt=3B</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></f=
ont><font style=3D"font-size: 12pt=3B" size=3D"3">Date:&nbsp=3B&nbsp=3B Mon=
 Feb 16 19:37:34 2015 +0100</font><font style=3D"font-size: 12pt=3B" size=
=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font>=
<font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B rsys=
log: fix name of syslogd ua group</font><font style=3D"font-size: 12pt=3B" =
size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=
=3B&nbsp=3B&nbsp=3B </font><font style=3D"font-size: 12pt=3B" size=3D"3"><b=
r></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbs=
p=3B All the other syslogd implementations use 'syslogd' as update alternat=
ives</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font s=
tyle=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B group name.=
 So rsyslogd should use this too.</font><font style=3D"font-size: 12pt=3B" =
size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=
=3B&nbsp=3B&nbsp=3B </font><font style=3D"font-size: 12pt=3B" size=3D"3"><b=
r></font><font style=3D"font-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbs=
p=3B Signed-off-by: Steffen Sledz &lt=3Bsledz@dresearch-fe.de&gt=3B</font><=
font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font=
-size: 12pt=3B" size=3D"3">&nbsp=3B&nbsp=3B&nbsp=3B Signed-off-by: Martin J=
ansa &lt=3BMartin.Jansa@gmail.com&gt=3B</font><font style=3D"font-size: 12p=
t=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3"><=
br></font><font style=3D"font-size: 12pt=3B" size=3D"3">My situation is I h=
ave two machines:</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br><=
/font><font style=3D"font-size: 12pt=3B" size=3D"3">* machineA</font><font =
style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size=
: 12pt=3B" size=3D"3">* machineB: inherits from machine B (only PREFERRED_V=
ERSION for libxml2 added)</font><font style=3D"font-size: 12pt=3B" size=3D"=
3"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><fon=
t style=3D"font-size: 12pt=3B" size=3D"3">two images:</font><font style=3D"=
font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B=
" size=3D"3">* imageA</font><font style=3D"font-size: 12pt=3B" size=3D"3"><=
br></font><font style=3D"font-size: 12pt=3B" size=3D"3">* imageB: inherits =
from image A</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font=
><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"fo=
nt-size: 12pt=3B" size=3D"3">I have one build directory for each machine:</=
font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=
=3D"font-size: 12pt=3B" size=3D"3">* build-machineA</font><font style=3D"fo=
nt-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" =
size=3D"3">* build-machineB (only new packages added)=2C two of the package=
 are shared libraries : libA and libB. libA is linked to libB. libB depends=
 on libA</font><font style=3D"font-size: 12pt=3B" size=3D"3">. libA and lib=
B are cmake recipes</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br=
></font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font styl=
e=3D"font-size: 12pt=3B" size=3D"3">First I build the imageA in build-machi=
neA for machineA</font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></=
font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=
=3D"font-size: 12pt=3B" size=3D"3">In the build-machineB directory I build =
imageB for machineB. Moreover I point SSTATE_DIR or SSTATE_MIRRORS of build=
-machineB/conf/local.conf to build-machineA's sstate-cache directory.</font=
><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"fo=
nt-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" =
size=3D"3">libA is built with success but libB's do_compile fails:</font><f=
ont style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-=
size: 12pt=3B" size=3D"3"><br></font><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif"><i><font style=3D"" color=3D"#008=
A17"><u>/.../build-machineB</u></font>$</i></font><font style=3D"font-size:=
 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif"> bitbake libB</font>=
<font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-se=
rif"><br></font><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Couri=
er New=2Csans-serif">[...]</font><font style=3D"font-size: 12pt=3B" size=3D=
"3" face=3D"Courier New=2Csans-serif"><br></font><!--[if gte mso 9]><xml>=
=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>FR</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
  </w:Compatibility>=0A=
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45=3B-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Cou=
rier New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">/.../build-machineB/tmp-glibc/sys=
roots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/arm-opensdk-linux-gnueab=
i-gcc&nbsp=3B=0A=
-fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes=
=0A=
-Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winlin=
e=0A=
-Wno-conversion -Wshadow&nbsp=3B -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C-=
-as-needed=0A=
-shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1 CMakeFiles/sys.dir/src/c=
rc.c.o=0A=
CMakeFiles/sys.dir/src/fast_32k_utils.c.o CMakeFiles/sys.dir/src/filemap.c.=
o=0A=
CMakeFiles/sys.dir/src/hash_tables.c.o CMakeFiles/sys.dir/src/hash_tables_2=
.c.o=0A=
CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o=0A=
CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o=0A=
CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o=0A=
CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o=
=0A=
CMakeFiles/sys.dir/src/watchdog_client.c.o CMakeFiles/sys.dir/src/watchdog_=
server.c.o=0A=
CMakeFiles/sys.dir/src/state_machine.c.o=0A=
CMakeFiles/sys.dir/src/thread_manager.c.o=0A=
CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina </=
font></p><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Courier New=
=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">/.../build-machineB/tmp-glibc/sys=
roots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/../../libexec/arm-opensd=
k-linux-gnueabi/gcc/arm-opensdk-linux-gnueabi/4.9.1/ld:=0A=
cannot find -llibA</font></p><font style=3D"font-size: 12pt=3B" size=3D"3" =
face=3D"Courier New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">collect2: error:=0A=
ld returned 1 exit status</font></p><font style=3D"font-size: 12pt=3B" size=
=3D"3" face=3D"Courier New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">ERROR: Function=0A=
failed: do_compile (log file is located at </font><font style=3D"font-size:=
 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif">/.../build-machineB/=
tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gnueabi/libB/1.0.0/temp/=
log.do_compile.2284)</font></p><font style=3D"font-size: 12pt=3B" size=3D"3=
">=0A=
=0A=
</font><!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"=0A=
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"267">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><!--[if gte mso 10]>=0A=
<style>=0A=
 /* Style Definitions */=0A=
 table.MsoNormalTable=0A=
	{mso-style-name:"Tableau Normal"=3B=0A=
	mso-tstyle-rowband-size:0=3B=0A=
	mso-tstyle-colband-size:0=3B=0A=
	mso-style-noshow:yes=3B=0A=
	mso-style-priority:99=3B=0A=
	mso-style-parent:""=3B=0A=
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt=3B=0A=
	mso-para-margin:0cm=3B=0A=
	mso-para-margin-bottom:.0001pt=3B=0A=
	mso-pagination:widow-orphan=3B=0A=
	font-size:10.0pt=3B=0A=
	font-family:"Times New Roman"=2C"serif"=3B}=0A=
</style>=0A=
<![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><font =
style=3D"font-size: 12pt=3B" size=3D"3">At this moment I had to find why ld=
 cannot find libA.so in sysroots so I launched a devshell on libB. In the d=
evshell I cd-ed to the B dir of libB and run the cross-gcc command with the=
 verbose "-v" option.</font><font style=3D"font-size: 12pt=3B" size=3D"3"><=
br></font><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><!--[if =
gte mso 9]><xml>=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>FR</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
  </w:Compatibility>=0A=
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45=3B-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3">=0A=
=0A=
</font><p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><font style=3D"f=
ont-size: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif"><i><u><font=
 style=3D"" color=3D"#008A17"><i>/.../build-machineB</i></font></u>$=0A=
</i></font><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Courier Ne=
w=2Csans-serif">bitbake libB -c devshell</font></p><font style=3D"font-size=
: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoNormal" style=3D"text-indent:18.0pt"><font style=3D"f=
ont-size: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif">[devshell] =
</font><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Courier New=2C=
sans-serif"><i>/.../build-machineB</i>/tmp-glibc/work/cortexa9t2hf-vfp-neon=
-opensdk-linux-gnueabi/libB/1.0.0/git=0A=
$ cd ../build</font></p><font style=3D"font-size: 12pt=3B" size=3D"3" face=
=3D"Courier New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">[devshell] </font><font style=3D"=
font-size: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif"><i>/.../bu=
ild-machineB</i>/tmp-glibc/work/cortexa9t2hf-vfp-neon-opensdk-linux-gnueabi=
/libB/1.0.0/build$ </font><font style=3D"font-size: 12pt=3B" size=3D"3" fac=
e=3D"Courier New=2Csans-serif">/.../build-machineB/</font><font style=3D"fo=
nt-size: 12pt=3B" size=3D"3" face=3D"Courier New=2Csans-serif">tmp-glibc/sy=
sroots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/arm-opensdk-linux-gnuea=
bi-gcc&nbsp=3B=0A=
-fPIC -g -O2 -W -Werror -Wall -Wextra -Wuninitialized -Wstrict-prototypes=
=0A=
-Wcast-align -Wmissing-prototypes -Wchar-subscripts -Wpointer-arith -Winlin=
e=0A=
-Wno-conversion -Wshadow&nbsp=3B -Wl=2C-O1 -Wl=2C--hash-style=3Dgnu -Wl=2C-=
-as-needed=0A=
-shared -Wl=2C-soname=2Clibsys.so.1 -o libsys.so.1 CMakeFiles/sys.dir/src/c=
rc.c.o=0A=
CMakeFiles/sys.dir/src/fast_32k_utils.c.o CMakeFiles/sys.dir/src/filemap.c.=
o=0A=
CMakeFiles/sys.dir/src/hash_tables.c.o CMakeFiles/sys.dir/src/hash_tables_2=
.c.o=0A=
CMakeFiles/sys.dir/src/ipcs_keys.c.o CMakeFiles/sys.dir/src/log.c.o=0A=
CMakeFiles/sys.dir/src/MM.c.o CMakeFiles/sys.dir/src/MM_no_mutex.c.o=0A=
CMakeFiles/sys.dir/src/random.c.o CMakeFiles/sys.dir/src/registry.c.o=0A=
CMakeFiles/sys.dir/src/time.c.o CMakeFiles/sys.dir/src/watchdog_timer.c.o=
=0A=
CMakeFiles/sys.dir/src/watchdog_client.c.o=0A=
CMakeFiles/sys.dir/src/watchdog_server.c.o=0A=
CMakeFiles/sys.dir/src/state_machine.c.o=0A=
CMakeFiles/sys.dir/src/thread_manager.c.o=0A=
CMakeFiles/sys.dir/src/sg_log_eina.c.o -lpthread -leina -lpthread -leina </=
font></p><font style=3D"font-size: 12pt=3B" size=3D"3" face=3D"Courier New=
=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoListParagraph"><font style=3D"font-size: 12pt=3B" siz=
e=3D"3" face=3D"Courier New=2Csans-serif">/.../build-machineB/tmp-glibc/sys=
roots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/../../libexec/arm-opensd=
k-linux-gnueabi/gcc/arm-opensdk-linux-gnueabi/4.9.1/ld:=0A=
cannot find =96leina </font><font style=3D"font-size: 12pt=3B" size=3D"3" f=
ace=3D"Courier New=2Csans-serif">=96v</font></p><font style=3D"font-size: 1=
2pt=3B" size=3D"3">=0A=
=0A=
</font><!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"=0A=
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"267">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><!--[if gte mso 10]>=0A=
<style>=0A=
 /* Style Definitions */=0A=
 table.MsoNormalTable=0A=
	{mso-style-name:"Tableau Normal"=3B=0A=
	mso-tstyle-rowband-size:0=3B=0A=
	mso-tstyle-colband-size:0=3B=0A=
	mso-style-noshow:yes=3B=0A=
	mso-style-priority:99=3B=0A=
	mso-style-parent:""=3B=0A=
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt=3B=0A=
	mso-para-margin:0cm=3B=0A=
	mso-para-margin-bottom:.0001pt=3B=0A=
	mso-pagination:widow-orphan=3B=0A=
	font-size:10.0pt=3B=0A=
	font-family:"Times New Roman"=2C"serif"=3B}=0A=
</style>=0A=
<![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><!--[i=
f gte mso 9]><xml>=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>FR</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
  </w:Compatibility>=0A=
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45=3B-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3">=0A=
=0A=
</font><p class=3D"MsoNormal"><font style=3D"font-size: 12pt=3B" size=3D"3"=
>I will only show you the interesting part of the=0A=
result.</font><br></p><p class=3D"MsoNormal"><font style=3D"" face=3D"Couri=
er New=2Csans-serif"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><font style=3D"" color=3D"#=
000000">[...]</font><br></span></font></p><font style=3D"" face=3D"Courier =
New=2Csans-serif">=0A=
=0A=
</font><p class=3D"MsoNormal"><font style=3D"" face=3D"Courier New=2Csans-s=
erif"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US">&nbsp=3B&nbsp=3B&nbsp=3B&nb=
sp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=3B&nbsp=
=3B&nbsp=3B&nbsp=3B=0A=
<font style=3D"" color=3D"#000000">LIBRARY_PATH=3D</font></span></font><fon=
t style=3D"" face=3D"Courier New=2Csans-serif">/.../build-machineB/tmp-glib=
c/sysroots/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/../../lib/arm-opens=
dk-linux-gnueabi/gcc/arm-opensdk-linux-gnueabi/4.9.1/:</font><font style=3D=
"" face=3D"Courier New=2Csans-serif">/.../build-machineB/tmp-glibc/sysroots=
/i686-linux/usr/bin/arm-opensdk-linux-gnueabi/../../lib/arm-opensdk-linux-g=
nueabi/gcc/:</font><font style=3D"" face=3D"Courier New=2Csans-serif"><span=
 style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color: rgb(3=
1=2C 73=2C 125)=3B" lang=3D"EN-US">/.../<u><font style=3D"" color=3D"#AC193=
D"><u><font style=3D"">build-machine</font><font style=3D"">A</font></u></f=
ont>/</u></span>tmp-glibc/sysroots/<font style=3D"" color=3D"#D24726"><u>ma=
chineA</u></font>/lib/:</span></font><font style=3D"" face=3D"Courier New=
=2Csans-serif"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color:#25406=
1=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"></span><span style=3D"color=
:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color: rgb(3=
1=2C 73=2C 125)=3B" lang=3D"EN-US">/.../<u><font style=3D"" color=3D"#D2472=
6">build-machineA</font>/</u></span></span>tmp-glibc/sysroots/<font style=
=3D"" color=3D"#D24726"><u>machineA</u></font>/usr/lib/arm-opensdk-linux-gn=
ueabi/4.9.1/</span></font><font style=3D"" face=3D"Courier New=2Csans-serif=
"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"></span></font><font style=
=3D"" face=3D"Courier New=2Csans-serif"><span style=3D"color:#254061=3Bmso-=
ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color: rgb(3=
1=2C 73=2C 125)=3B" lang=3D"EN-US">/.../<u><font style=3D"" color=3D"#D2472=
6">build-machineA</font>/</u></span></span></font><font style=3D"" face=3D"=
Courier New=2Csans-serif"><b><u><span style=3D"color:red=3Bmso-ansi-languag=
e:EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"></span></u></b></font><fo=
nt style=3D"" face=3D"Courier New=2Csans-serif"><span style=3D"color:#25406=
1=3Bmso-ansi-language:EN-US=3Bmso-fareast-language:=0A=
FR" lang=3D"EN-US">tmp-glibc/sysroots/</span></font><font style=3D"" color=
=3D"#D24726" face=3D"Courier New=2Csans-serif"><b><u>machineA</u></b></font=
><font style=3D"" face=3D"Courier New=2Csans-serif"><span style=3D"color:#2=
54061=3Bmso-ansi-language:EN-US=3Bmso-fareast-language:=0A=
FR" lang=3D"EN-US">/usr/lib/</span></font></p>=0A=
=0A=
<p class=3D"MsoNormal"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US">&nbsp=3B</span><font style=
=3D"" face=3D"Courier New=2Csans-serif"><span style=3D"color:#254061=3Bmso-=
ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><font style=3D"" color=3D"#=
000000">[...]</font></span></font></p><p class=3D"MsoNormal"><font style=3D=
"" face=3D"Courier New=2Csans-serif"><span style=3D"color:#254061=3Bmso-ans=
i-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><font style=3D"" color=3D"#=
000000"><br></font></span></font></p>=0A=
=0A=
<p class=3D"MsoNormal"><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><font style=3D"" color=3D"#=
000000">The symptom is here. Instead of=0A=
</font>=91</span><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"></span><span style=3D"color=
:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color: rgb(3=
1=2C 73=2C 125)=3B" lang=3D"EN-US">/.../<u><font style=3D"" color=3D"#D2472=
6">build-machineA</font>/</u></span></span><span style=3D"color:#254061=3Bm=
so-ansi-language:EN-US=3Bmso-fareast-language:=0A=
FR" lang=3D"EN-US">tmp-glibc/sysroots/</span><font style=3D"" color=3D"#D24=
726"><b><u>machineA</u></b></font><span style=3D"color:#254061=3Bmso-ansi-l=
anguage:EN-US=3Bmso-fareast-language:=0A=
FR" lang=3D"EN-US">/usr/lib/=92 it should be=0A=
=91</span><span style=3D"color:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"></span><span style=3D"color=
:#254061=3Bmso-ansi-language:=0A=
EN-US=3Bmso-fareast-language:FR" lang=3D"EN-US"><span style=3D"color: rgb(3=
1=2C 73=2C 125)=3B" lang=3D"EN-US">/.../<u><font style=3D"" color=3D"#008A1=
7">build-machine</font><font style=3D"" color=3D"#008A17">B</font>/</u></sp=
an></span><span style=3D"color:#254061=3Bmso-ansi-language:EN-US=3Bmso-fare=
ast-language:=0A=
FR" lang=3D"EN-US">/tmp-glibc/sysroots/<font style=3D"" color=3D"#008A17"><=
u><b>machineB</b></u></font></span><font style=3D"" color=3D"#008A17"><b><u=
></u></b></font><span style=3D"color:#254061=3Bmso-ansi-language:EN-US=3Bms=
o-fareast-language:=0A=
FR" lang=3D"EN-US">/usr/lib/=92</span></p>=0A=
=0A=
<!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"=0A=
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"267">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><!--[if gte mso 10]>=0A=
<style>=0A=
 /* Style Definitions */=0A=
 table.MsoNormalTable=0A=
	{mso-style-name:"Tableau Normal"=3B=0A=
	mso-tstyle-rowband-size:0=3B=0A=
	mso-tstyle-colband-size:0=3B=0A=
	mso-style-noshow:yes=3B=0A=
	mso-style-priority:99=3B=0A=
	mso-style-parent:""=3B=0A=
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt=3B=0A=
	mso-para-margin:0cm=3B=0A=
	mso-para-margin-bottom:.0001pt=3B=0A=
	mso-pagination:widow-orphan=3B=0A=
	font-size:10.0pt=3B=0A=
	font-family:"Times New Roman"=2C"serif"=3B}=0A=
</style>=0A=
<![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3"><br></font><!--[i=
f gte mso 9]><xml>=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>FR</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
  </w:Compatibility>=0A=
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45=3B-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><font style=3D"font-size: 12pt=3B" size=3D"3">=0A=
=0A=
</font><p class=3D"MsoNormal"><font style=3D"font-size: 12pt=3B" size=3D"3"=
>I couldn=92t find=0A=
in libB=92s recipe (and included bbclasses) where LIBRARY_PATH is set so I =
guess it comes from elswhere.</font></p><font style=3D"font-size: 12pt=3B" =
size=3D"3">=0A=
=0A=
</font><p class=3D"MsoNormal"><font style=3D"font-size: 12pt=3B" size=3D"3"=
>My guess is that=0A=
there is a problem in cross-gcc recipe and somewhere the=0A=
&lt=3Bsysroots-target&gt=3B/usr/lib path is hardcoded in sstate-cache. When=
=0A=
recompilling for a different build bitbake use this cache that is polluted =
by=0A=
this hardcoded path.</font></p><p class=3D"MsoNormal"><br></p><font style=
=3D"font-size: 12pt=3B" size=3D"3">=0A=
=0A=
</font><!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"=0A=
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"267">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><!--[if gte mso 10]>=0A=
<style>=0A=
 /* Style Definitions */=0A=
 table.MsoNormalTable=0A=
	{mso-style-name:"Tableau Normal"=3B=0A=
	mso-tstyle-rowband-size:0=3B=0A=
	mso-tstyle-colband-size:0=3B=0A=
	mso-style-noshow:yes=3B=0A=
	mso-style-priority:99=3B=0A=
	mso-style-parent:""=3B=0A=
	mso-padding-alt:0cm 5.4pt 0cm 5.4pt=3B=0A=
	mso-para-margin:0cm=3B=0A=
	mso-para-margin-bottom:.0001pt=3B=0A=
	mso-pagination:widow-orphan=3B=0A=
	font-size:10.0pt=3B=0A=
	font-family:"Times New Roman"=2C"serif"=3B}=0A=
</style>=0A=
<![endif]--><!--[if gte mso 9]><xml>=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>FR</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
  </w:Compatibility>=0A=
  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45=3B-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><span style=3D"font-size:11.0pt=3Bfont-family:=0A=
&quot=3BCalibri&quot=3B=2C&quot=3Bsans-serif&quot=3B=3Bmso-fareast-font-fam=
ily:Calibri=3Bmso-fareast-theme-font:=0A=
minor-latin=3Bcolor:#254061=3Bmso-ansi-language:EN-US=3Bmso-fareast-languag=
e:FR=3B=0A=
mso-bidi-language:AR-SA" lang=3D"EN-US">Note: I have the=0A=
same problem if I do same build type (machine=2C builddir name) but differe=
nt=0A=
locations. </span><!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"true"=0A=
  DefSemiHidden=3D"true" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"267">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" QFormat=3D"true" Name=3D=
"caption"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" Name=3D"Default Paragraph=
 Font"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"59" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Placeho=
lder Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" UnhideWhenUsed=3D"false" Name=3D"Revisio=
n"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Light Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Shading 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium List 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 1 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 2 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Medium Grid 3 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Dark List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Shading Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful List Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" Name=3D"Colorful Grid Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Intense Reference"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" SemiHidden=3D"false"=0A=
   UnhideWhenUsed=3D"false" QFormat=3D"true" Name=3D"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" Name=3D"Bibliography"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" QFormat=3D"true" Name=3D=
"TOC Heading"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><br><br>The meta layer of machineB/imageB has a override =
of gcc 4.9 which consists only on:<br>EXTRA_OECONF_GCC_FLOAT =3D "${@get_gc=
c_float_setting(bb=2C d)}"<br><br>I had some problem two while changing the=
 version the PREFERRED_VERSION of a recipe in local.conf. When recompiling =
bitbake don't redo do_unpack so configure/compile/install=2C one of them fa=
ils to find file in S directory. I had to run cleanall on this package befo=
re doing a full bitbake.<br><br>I hop I have been clear in my explanation o=
f the situation.<br><br>Kind Regards=2C<br>-- <br>J=E9r=F4me OLIVIER<br>TEL=
 : +337 52 46 29 25<br>@ : jerome.olivier@outlook.com<br><br><div>&gt=3B Fr=
om: paul.eggleton@linux.intel.com<br>&gt=3B To: jerome.olivier@outlook.com<=
br>&gt=3B CC: yocto@yoctoproject.org<br>&gt=3B Subject: Re: [yocto] Disable=
 sstate-cache for one recipe<br>&gt=3B Date: Mon=2C 19 Oct 2015 12:21:48 +0=
100<br>&gt=3B <br>&gt=3B Hi J=E9r=F4me=2C<br>&gt=3B <br>&gt=3B On Monday 19=
 October 2015 10:18:41 J=E9r=F4me OLIVIER wrote:<br>&gt=3B &gt=3B I use yoc=
to 1.7.2. I have some problem with sstate-cache.<br>&gt=3B &gt=3B I would l=
ike to disable totally sstate_cache for only one recipe. Is that<br>&gt=3B =
&gt=3B possible?<br>&gt=3B <br>&gt=3B Not really I'm afraid - what is the p=
roblem you are experiencing?<br>&gt=3B <br>&gt=3B Cheers=2C<br>&gt=3B Paul<=
br>&gt=3B <br>&gt=3B -- <br>&gt=3B <br>&gt=3B Paul Eggleton<br>&gt=3B Intel=
 Open Source Technology Centre<br></div> 		 	   		  </div></body>
</html>=

--_4bc267fa-0228-405e-99d2-7cea19fae9cc_--
