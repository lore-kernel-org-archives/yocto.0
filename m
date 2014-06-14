Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE0D2E00BEC; Sat, 14 Jun 2014 03:30:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10F60E00BB3
	for <yocto@yoctoproject.org>; Sat, 14 Jun 2014 03:30:06 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id b8so604900lan.40
	for <yocto@yoctoproject.org>; Sat, 14 Jun 2014 03:30:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=PcFw5LyzKkC92KilpLuk7pADrC81qw22x5zM3y9o+1A=;
	b=LSlS4fQu7Ge5xW46u7cmYAZIjzZOcmtOd/gkQO3/l8xEag4zNvxQQmicdJpulSGqHQ
	H/iS/pPuB8599HiEqTN0Vt603CCDV91zmT1XCbvuRwe26qii3jJZ9QYcDEhutASKTJCQ
	TPVEHOF5s5/P1jjGjvG0UjjKZapBSOpfy5SGWcpLZpO5Iazxz233II6+OT1m35/97YWn
	TwW1lhsmWc84LsmDMYo3EFImMjmJ2OZ+U6o2kYSo8l1YDrzxv3mRvaKEUhepzjuupEAE
	2xX5U7oomY5qYsfHnta7hbzglj6ojNe88rau23yru9FqKbyGm+LhkMtH/R7HcKkErXJQ
	mUbQ==
MIME-Version: 1.0
X-Received: by 10.152.42.145 with SMTP id o17mr5598860lal.33.1402741804766;
	Sat, 14 Jun 2014 03:30:04 -0700 (PDT)
Received: by 10.112.138.7 with HTTP; Sat, 14 Jun 2014 03:30:04 -0700 (PDT)
In-Reply-To: <CAPbeDCkxGHMcS-BfchUK89pk146i5r-HzD5cLsyRxsokZ2Czqg@mail.gmail.com>
References: <CAPbeDCkxGHMcS-BfchUK89pk146i5r-HzD5cLsyRxsokZ2Czqg@mail.gmail.com>
Date: Sat, 14 Jun 2014 12:30:04 +0200
Message-ID: <CAPbeDCnd1sRphWo+2QVX_VaBO7uqrXbV5m3rrAM0pGRKym+w_A@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Error building meta-toolchain with SDKMACHINE=x86_64-mingw32 on daisy
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
X-List-Received-Date: Sat, 14 Jun 2014 10:30:09 -0000
Content-Type: multipart/alternative; boundary=001a11c228defc1d2a04fbc9466b

--001a11c228defc1d2a04fbc9466b
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 10, 2014 at 11:56 PM, Jacob Kroon <jacob.kroon@gmail.com> wrote:

> Hi,
>
> I've added meta-mingw layer, and am using daisy branches. When I do:
>
> SDKMACHINE=x86_64-mingw32 bitbake meta-toolchain
>
> I get the following errors:
>
> <...>
> | # @multilib_dir@ is not really necessary, but sometimes it has
> | # more uses than just a directory name.
> | /bin/sh
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work-shared/gcc-4.8.2-r0/gcc-4.8.2/libgcc/../mkinstalldirs
> .
> | ln -s -f libgcc.map libgcc.map.def && if [ ! -d ./shlib ]; then mkdir
> ./shlib; else true; fi &&
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/xgcc
> -B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/
> -isystem/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-mingw32/usr/include
> -L/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/lib
> -L/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/mingw/lib
> -isystem
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/include
> -isystem
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/mingw/include
> -B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/bin/
> -B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/lib/
> -isystem
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/include
> -isystem
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/sys-include
> --sysroot=/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32
> -O2  -g -Os -DIN_GCC -DCROSS_DIRECTORY_STRUCTURE  -W -Wall -Wno-narrowing
> -Wwrite-strings -Wcast-qual -Wstrict-prototypes -Wmissing-prototypes
> -Wold-style-definition  -isystem ./include   -g -DIN_LIBGCC2
> -fbuilding-libgcc -fno-stack-protector   -shared -nodefaultlibs
> libgcc.map.def -Wl,--out-implib,./shlib/libgcc_s.a.tmp -o
> ./shlib/libgcc_s_seh-1.dll.tmp -g -Os -B./ _chkstk_s.o _chkstk_ms_s.o
> _muldi3_s.o _negdi2_s.o _lshrdi3_s.o _ashldi3_s.o _ashrdi3_s.o _cmpdi2_s.o
> _ucmpdi2_s.o _clear_cache_s.o _trampoline_s.o __main_s.o _absvsi2_s.o
> _absvdi2_s.o _addvsi3_s.o _addvdi3_s.o _subvsi3_s.o _subvdi3_s.o
> _mulvsi3_s.o _mulvdi3_s.o _negvsi2_s.o _negvdi2_s.o _ctors_s.o _ffssi2_s.o
> _ffsdi2_s.o _clz_s.o _clzsi2_s.o _clzdi2_s.o _ctzsi2_s.o _ctzdi2_s.o
> _popcount_tab_s.o _popcountsi2_s.o _popcountdi2_s.o _paritysi2_s.o
> _paritydi2_s.o _powisf2_s.o _powidf2_s.o _powixf2_s.o _powitf2_s.o
> _mulsc3_s.o _muldc3_s.o _mulxc3_s.o _multc3_s.o _divsc3_s.o _divdc3_s.o
> _divxc3_s.o _divtc3_s.o _bswapsi2_s.o _bswapdi2_s.o _clrsbsi2_s.o
> _clrsbdi2_s.o _fixunssfsi_s.o _fixunsdfsi_s.o _fixunsxfsi_s.o _fixsfdi_s.o
> _fixdfdi_s.o _fixxfdi_s.o _fixunssfdi_s.o _fixunsdfdi_s.o _fixunsxfdi_s.o
> _floatdisf_s.o _floatdidf_s.o _floatdixf_s.o _floatundisf_s.o
> _floatundidf_s.o _floatundixf_s.o _divdi3_s.o _moddi3_s.o _udivdi3_s.o
> _umoddi3_s.o _udiv_w_sdiv_s.o _udivmoddi4_s.o gthr-win32_s.o cpuinfo_s.o
> sfp-exceptions_s.o addtf3_s.o divtf3_s.o eqtf2_s.o getf2_s.o letf2_s.o
> multf3_s.o negtf2_s.o subtf3_s.o unordtf2_s.o fixtfsi_s.o fixunstfsi_s.o
> floatsitf_s.o floatunsitf_s.o fixtfdi_s.o fixunstfdi_s.o floatditf_s.o
> floatunditf_s.o fixtfti_s.o fixunstfti_s.o floattitf_s.o floatuntitf_s.o
> extendsftf2_s.o extenddftf2_s.o extendxftf2_s.o trunctfsf2_s.o
> trunctfdf2_s.o trunctfxf2_s.o enable-execute-stack_s.o unwind-seh_s.o
> unwind-sjlj_s.o unwind-c_s.o emutls_s.o libgcc.a  -lmingwthrd -lmingw32
> -lmingwex -lmoldname -lmsvcrt -ladvapi32 -lshell32 -luser32 -lkernel32 &&
> if [ -f ./shlib/libgcc_s_seh-1.dll ]; then mv -f ./shlib/libgcc_s_seh-1.dll
> ./shlib/libgcc_s_seh-1.dll.backup; else true; fi && mv
> ./shlib/libgcc_s_seh-1.dll.tmp ./shlib/libgcc_s_seh-1.dll && mv
> ./shlib/libgcc_s.a.tmp ./shlib/libgcc_s.a
> |
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
> cannot find dllcrt2.o: No such file or directory
> |
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
> cannot find crtbegin.o: No such file or directory
> |
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
> cannot find crtend.o: No such file or directory
> | collect2: error: ld returned 1 exit status
> | make[1]: *** [libgcc_s.dll] Error 1
> | make[1]: Leaving directory
> `/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/x86_64-oesdk-mingw32/libgcc'
> | make: *** [all-target-libgcc] Error 2
> | ERROR: oe_runmake failed
> | WARNING:
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/run.do_compile.4758:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_compile (log file is located at
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/log.do_compile.4758)
> ERROR: Task 442
> (/home/jkroon/Projects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtools/gcc/
> gcc-crosssdk_4.8.bb, do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 910 tasks of which 909 didn't need to be
> rerun and 1 failed.
> NOTE: Writing buildhistory
> No currently running tasks (516 of 1034)
>
> Summary: 1 task failed:
>
> /home/jkroon/Projects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtools/gcc/
> gcc-crosssdk_4.8.bb, do_compile
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> Does anyone know whats going on ?
>
> Regards
> Jacob
>

The sysroot that is passed to gcc looks incorrect:

--sysroot=/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32

In my build, the actual sysroot looks like its located in a subdirectory of
the path above:

./usr/local/oecore-x86_64/sysroots/x86_64-oesdk-mingw32/

In there there is a ./usr/lib/dllcrt2.o which gcc couldn't find.

I'm using plain daisy branches, updated as of today.

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-20"
TARGET_SYS        = "arm-oe-linux-gnueabi"
MACHINE           = "wandboard-solo"
DISTRO            = "monkey"
DISTRO_VERSION    = "0.1"
TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa9"
TARGET_FPU        = "vfp-neon"
meta-mingw        = "daisy:e9208b84d90cc21fa1318af1d87aef1ea04a8cb0"
meta-qt5          = "daisy:0137274b13a568718e441f8f1c611a653db9f2f7"
meta              = "daisy:d28b21e01fbc4b780d14495894c4253d422cd9d9"
meta-fsl-arm      = "daisy:f5bf277a5a5fba2c3b64ed7d2dbec1903d96386b"
meta-fsl-arm-extra = "daisy:029f535cfbc5746288c6129babb2d7679927a183"

/Jacob

--001a11c228defc1d2a04fbc9466b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
ue, Jun 10, 2014 at 11:56 PM, Jacob Kroon <span dir=3D"ltr">&lt;<a href=3D"=
mailto:jacob.kroon@gmail.com" target=3D"_blank">jacob.kroon@gmail.com</a>&g=
t;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><di=
v><div><div><div><div>Hi,<br><br></div>I&#39;ve added meta-mingw layer, and=
 am using daisy branches. When I do:<br>
<br></div>SDKMACHINE=3Dx86_64-mingw32 bitbake meta-toolchain<br><br></div>I=
 get the following errors:<br>
<br>&lt;...&gt;<br>| # @multilib_dir@ is not really necessary, but sometime=
s it has<br>| # more uses than just a directory name.<br>| /bin/sh /home/jk=
roon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work-shared/gcc-4.8.2-r=
0/gcc-4.8.2/libgcc/../mkinstalldirs .<br>

| ln -s -f libgcc.map libgcc.map.def &amp;&amp; if [ ! -d ./shlib ]; then m=
kdir ./shlib; else true; fi &amp;&amp; /home/jkroon/Projects/oe-devel/build=
-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc=
-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/xgcc -B/home/jkroon/Pr=
ojects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-=
crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/ =
-isystem/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroot=
s/x86_64-nativesdk-mingw32-oesdk-mingw32/usr/local/oecore-x86_64/sysroots/x=
86_64-oesdk-mingw32/usr/include -L/home/jkroon/Projects/oe-devel/build-dais=
y-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/lib -L/ho=
me/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-li=
nux/usr/mingw/lib -isystem /home/jkroon/Projects/oe-devel/build-daisy-mingw=
/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/include -isystem=
 /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_6=
4-linux/usr/mingw/include -B/home/jkroon/Projects/oe-devel/build-daisy-ming=
w/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/bin/ -B/home/jk=
roon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/u=
sr/x86_64-oesdk-mingw32/lib/ -isystem /home/jkroon/Projects/oe-devel/build-=
daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/inclu=
de -isystem /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sys=
roots/x86_64-linux/usr/x86_64-oesdk-mingw32/sys-include --sysroot=3D/home/j=
kroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-native=
sdk-mingw32-oesdk-mingw32=C2=A0=C2=A0 -O2=C2=A0 -g -Os -DIN_GCC -DCROSS_DIR=
ECTORY_STRUCTURE=C2=A0 -W -Wall -Wno-narrowing -Wwrite-strings -Wcast-qual =
-Wstrict-prototypes -Wmissing-prototypes -Wold-style-definition=C2=A0 -isys=
tem ./include=C2=A0=C2=A0 -g -DIN_LIBGCC2 -fbuilding-libgcc -fno-stack-prot=
ector=C2=A0=C2=A0 -shared -nodefaultlibs libgcc.map.def -Wl,--out-implib,./=
shlib/libgcc_s.a.tmp -o ./shlib/libgcc_s_seh-1.dll.tmp -g -Os -B./ _chkstk_=
s.o _chkstk_ms_s.o _muldi3_s.o _negdi2_s.o _lshrdi3_s.o _ashldi3_s.o _ashrd=
i3_s.o _cmpdi2_s.o _ucmpdi2_s.o _clear_cache_s.o _trampoline_s.o __main_s.o=
 _absvsi2_s.o _absvdi2_s.o _addvsi3_s.o _addvdi3_s.o _subvsi3_s.o _subvdi3_=
s.o _mulvsi3_s.o _mulvdi3_s.o _negvsi2_s.o _negvdi2_s.o _ctors_s.o _ffssi2_=
s.o _ffsdi2_s.o _clz_s.o _clzsi2_s.o _clzdi2_s.o _ctzsi2_s.o _ctzdi2_s.o _p=
opcount_tab_s.o _popcountsi2_s.o _popcountdi2_s.o _paritysi2_s.o _paritydi2=
_s.o _powisf2_s.o _powidf2_s.o _powixf2_s.o _powitf2_s.o _mulsc3_s.o _muldc=
3_s.o _mulxc3_s.o _multc3_s.o _divsc3_s.o _divdc3_s.o _divxc3_s.o _divtc3_s=
.o _bswapsi2_s.o _bswapdi2_s.o _clrsbsi2_s.o _clrsbdi2_s.o _fixunssfsi_s.o =
_fixunsdfsi_s.o _fixunsxfsi_s.o _fixsfdi_s.o _fixdfdi_s.o _fixxfdi_s.o _fix=
unssfdi_s.o _fixunsdfdi_s.o _fixunsxfdi_s.o _floatdisf_s.o _floatdidf_s.o _=
floatdixf_s.o _floatundisf_s.o _floatundidf_s.o _floatundixf_s.o _divdi3_s.=
o _moddi3_s.o _udivdi3_s.o _umoddi3_s.o _udiv_w_sdiv_s.o _udivmoddi4_s.o gt=
hr-win32_s.o cpuinfo_s.o sfp-exceptions_s.o addtf3_s.o divtf3_s.o eqtf2_s.o=
 getf2_s.o letf2_s.o multf3_s.o negtf2_s.o subtf3_s.o unordtf2_s.o fixtfsi_=
s.o fixunstfsi_s.o floatsitf_s.o floatunsitf_s.o fixtfdi_s.o fixunstfdi_s.o=
 floatditf_s.o floatunditf_s.o fixtfti_s.o fixunstfti_s.o floattitf_s.o flo=
atuntitf_s.o extendsftf2_s.o extenddftf2_s.o extendxftf2_s.o trunctfsf2_s.o=
 trunctfdf2_s.o trunctfxf2_s.o enable-execute-stack_s.o unwind-seh_s.o unwi=
nd-sjlj_s.o unwind-c_s.o emutls_s.o libgcc.a=C2=A0 -lmingwthrd -lmingw32 -l=
mingwex -lmoldname -lmsvcrt -ladvapi32 -lshell32 -luser32 -lkernel32 &amp;&=
amp; if [ -f ./shlib/libgcc_s_seh-1.dll ]; then mv -f ./shlib/libgcc_s_seh-=
1.dll ./shlib/libgcc_s_seh-1.dll.backup; else true; fi &amp;&amp; mv ./shli=
b/libgcc_s_seh-1.dll.tmp ./shlib/libgcc_s_seh-1.dll &amp;&amp; mv ./shlib/l=
ibgcc_s.a.tmp ./shlib/libgcc_s.a<br>

| /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_=
64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld: cannot find =
dllcrt2.o: No such file or directory<br>| /home/jkroon/Projects/oe-devel/bu=
ild-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw=
32/x86_64-oesdk-mingw32-ld: cannot find crtbegin.o: No such file or directo=
ry<br>

| /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_=
64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld: cannot find =
crtend.o: No such file or directory<br>| collect2: error: ld returned 1 exi=
t status<br>

| make[1]: *** [libgcc_s.dll] Error 1<br>| make[1]: Leaving directory `/hom=
e/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-m=
ingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-ming=
w32/x86_64-oesdk-mingw32/libgcc&#39;<br>

| make: *** [all-target-libgcc] Error 2<br>| ERROR: oe_runmake failed<br>| =
WARNING: /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x=
86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/run.do_compile.4758:1 exit 1=
 from<br>

|=C2=A0=C2=A0 exit 1<br>| ERROR: Function failed: do_compile (log file is l=
ocated at /home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/=
x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/log.do_compile.4758)<br>ERR=
OR: Task 442 (/home/jkroon/Projects/oe-devel/build-daisy-mingw/../openembed=
ded-core/meta/recipes-devtools/gcc/<a href=3D"http://gcc-crosssdk_4.8.bb" t=
arget=3D"_blank">gcc-crosssdk_4.8.bb</a>, do_compile) failed with exit code=
 &#39;1&#39;<br>

NOTE: Tasks Summary: Attempted 910 tasks of which 909 didn&#39;t need to be=
 rerun and 1 failed.<br>NOTE: Writing buildhistory<br>No currently running =
tasks (516 of 1034)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/jkroon/P=
rojects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtoo=
ls/gcc/<a href=3D"http://gcc-crosssdk_4.8.bb" target=3D"_blank">gcc-crosssd=
k_4.8.bb</a>, do_compile<br>

Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r><br></div>Does anyone know whats going on ?<br><br></div>Regards<span cla=
ss=3D""><font color=3D"#888888"><br></font></span></div><span class=3D""><f=
ont color=3D"#888888">Jacob<br>
</font></span></div>
</blockquote></div><br></div><div class=3D"gmail_extra">The sysroot that is=
 passed to gcc looks incorrect:<br><br>--sysroot=3D/home/jkroon/Projects/oe=
-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk=
-mingw32<br>
<br></div><div class=3D"gmail_extra">In my build, the actual sysroot looks =
like its located in a subdirectory of the path above:<br><br>./usr/local/oe=
core-x86_64/sysroots/x86_64-oesdk-mingw32/<br><br></div><div class=3D"gmail=
_extra">
In there there is a ./usr/lib/dllcrt2.o which gcc couldn&#39;t find.<br><br=
></div><div class=3D"gmail_extra">I&#39;m using plain daisy branches, updat=
ed as of today.<br></div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">
Build Configuration:<br>BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 =3D &quot;1.22.0&quot;<br>BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;x86_64-linux&quot;<br>NATIVELSBSTRING=C2=A0=C2=A0 =
=3D &quot;Fedora-20&quot;<br>TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =3D &quot;arm-oe-linux-gnueabi&quot;<br>MACHINE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;wandboard-solo&quot;<br>
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D &quot;monkey&quot;<br>DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D &quot;0.1&qu=
ot;<br>TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;armv7a vfp neon call=
convention-hard cortexa9&quot;<br>TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 =3D &quot;vfp-neon&quot;<br>meta-mingw=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =3D &quot;daisy:e9208b84d90cc21fa1318af1d87aef1ea04a8cb0=
&quot;<br>
meta-qt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;da=
isy:0137274b13a568718e441f8f1c611a653db9f2f7&quot;<br>meta=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;d=
aisy:d28b21e01fbc4b780d14495894c4253d422cd9d9&quot;<br>meta-fsl-arm=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;daisy:f5bf277a5a5fba2c3b64ed7d2dbec1903d=
96386b&quot;<br>
meta-fsl-arm-extra =3D &quot;daisy:029f535cfbc5746288c6129babb2d7679927a183=
&quot;<br><br></div><div class=3D"gmail_extra">/Jacob<br></div></div>

--001a11c228defc1d2a04fbc9466b--
