Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A286E00BAE; Tue, 10 Jun 2014 14:56:38 -0700 (PDT)
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
	*      [209.85.217.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF828E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 14:56:28 -0700 (PDT)
Received: by mail-lb0-f178.google.com with SMTP id w7so4245614lbi.23
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 14:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VNVUTnRR6Apl6Uqd6srtNsGGeL11LKIO9tpVkFdG3GU=;
	b=v0ZpYYsqbn0rscEzpG094GifvsOCDvCuDwSirW0DfAbaO8hgErGncyNt47e3RqDVgz
	iwtb8PDRs76sRknLVm97f5ucfVYV57gjCuVAU/0I4+O6J9up/msZSG0bhITUB0UBLQxv
	U9GjQqchOg/0nwkbtfnBrrnXirbHhQ9LQHvq0vHslp5EPrQ1R5Hd+7Xwv0w7/gE0ybPV
	p5n782s3qjCUlr//AxyCD1g65gejzhmwbHJZEtYazDFXSU28ZEeBmRaIRvIaaBzgNFI7
	Qa2TU9a9dKHvWKbnisuvmh55uO5eFg+12xMRXfLDg2fPLPHpcbssN6saWzpjZHf2ptbJ
	KJMw==
MIME-Version: 1.0
X-Received: by 10.112.180.225 with SMTP id dr1mr3696517lbc.51.1402437385082;
	Tue, 10 Jun 2014 14:56:25 -0700 (PDT)
Received: by 10.112.138.7 with HTTP; Tue, 10 Jun 2014 14:56:25 -0700 (PDT)
Date: Tue, 10 Jun 2014 23:56:25 +0200
Message-ID: <CAPbeDCkxGHMcS-BfchUK89pk146i5r-HzD5cLsyRxsokZ2Czqg@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: yocto@yoctoproject.org
Subject: Error building meta-toolchain with SDKMACHINE=x86_64-mingw32 on daisy
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
X-List-Received-Date: Tue, 10 Jun 2014 21:56:38 -0000
Content-Type: multipart/alternative; boundary=001a11c34940285e8304fb8266e1

--001a11c34940285e8304fb8266e1
Content-Type: text/plain; charset=UTF-8

Hi,

I've added meta-mingw layer, and am using daisy branches. When I do:

SDKMACHINE=x86_64-mingw32 bitbake meta-toolchain

I get the following errors:

<...>
| # @multilib_dir@ is not really necessary, but sometimes it has
| # more uses than just a directory name.
| /bin/sh
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work-shared/gcc-4.8.2-r0/gcc-4.8.2/libgcc/../mkinstalldirs
.
| ln -s -f libgcc.map libgcc.map.def && if [ ! -d ./shlib ]; then mkdir
./shlib; else true; fi &&
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/xgcc
-B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/./gcc/
-isystem/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32/usr/local/oecore-x86_64/sysroots/x86_64-oesdk-mingw32/usr/include
-L/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/lib
-L/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/mingw/lib
-isystem
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/include
-isystem
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/mingw/include
-B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/bin/
-B/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/lib/
-isystem
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/include
-isystem
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/x86_64-oesdk-mingw32/sys-include
--sysroot=/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-nativesdk-mingw32-oesdk-mingw32
-O2  -g -Os -DIN_GCC -DCROSS_DIRECTORY_STRUCTURE  -W -Wall -Wno-narrowing
-Wwrite-strings -Wcast-qual -Wstrict-prototypes -Wmissing-prototypes
-Wold-style-definition  -isystem ./include   -g -DIN_LIBGCC2
-fbuilding-libgcc -fno-stack-protector   -shared -nodefaultlibs
libgcc.map.def -Wl,--out-implib,./shlib/libgcc_s.a.tmp -o
./shlib/libgcc_s_seh-1.dll.tmp -g -Os -B./ _chkstk_s.o _chkstk_ms_s.o
_muldi3_s.o _negdi2_s.o _lshrdi3_s.o _ashldi3_s.o _ashrdi3_s.o _cmpdi2_s.o
_ucmpdi2_s.o _clear_cache_s.o _trampoline_s.o __main_s.o _absvsi2_s.o
_absvdi2_s.o _addvsi3_s.o _addvdi3_s.o _subvsi3_s.o _subvdi3_s.o
_mulvsi3_s.o _mulvdi3_s.o _negvsi2_s.o _negvdi2_s.o _ctors_s.o _ffssi2_s.o
_ffsdi2_s.o _clz_s.o _clzsi2_s.o _clzdi2_s.o _ctzsi2_s.o _ctzdi2_s.o
_popcount_tab_s.o _popcountsi2_s.o _popcountdi2_s.o _paritysi2_s.o
_paritydi2_s.o _powisf2_s.o _powidf2_s.o _powixf2_s.o _powitf2_s.o
_mulsc3_s.o _muldc3_s.o _mulxc3_s.o _multc3_s.o _divsc3_s.o _divdc3_s.o
_divxc3_s.o _divtc3_s.o _bswapsi2_s.o _bswapdi2_s.o _clrsbsi2_s.o
_clrsbdi2_s.o _fixunssfsi_s.o _fixunsdfsi_s.o _fixunsxfsi_s.o _fixsfdi_s.o
_fixdfdi_s.o _fixxfdi_s.o _fixunssfdi_s.o _fixunsdfdi_s.o _fixunsxfdi_s.o
_floatdisf_s.o _floatdidf_s.o _floatdixf_s.o _floatundisf_s.o
_floatundidf_s.o _floatundixf_s.o _divdi3_s.o _moddi3_s.o _udivdi3_s.o
_umoddi3_s.o _udiv_w_sdiv_s.o _udivmoddi4_s.o gthr-win32_s.o cpuinfo_s.o
sfp-exceptions_s.o addtf3_s.o divtf3_s.o eqtf2_s.o getf2_s.o letf2_s.o
multf3_s.o negtf2_s.o subtf3_s.o unordtf2_s.o fixtfsi_s.o fixunstfsi_s.o
floatsitf_s.o floatunsitf_s.o fixtfdi_s.o fixunstfdi_s.o floatditf_s.o
floatunditf_s.o fixtfti_s.o fixunstfti_s.o floattitf_s.o floatuntitf_s.o
extendsftf2_s.o extenddftf2_s.o extendxftf2_s.o trunctfsf2_s.o
trunctfdf2_s.o trunctfxf2_s.o enable-execute-stack_s.o unwind-seh_s.o
unwind-sjlj_s.o unwind-c_s.o emutls_s.o libgcc.a  -lmingwthrd -lmingw32
-lmingwex -lmoldname -lmsvcrt -ladvapi32 -lshell32 -luser32 -lkernel32 &&
if [ -f ./shlib/libgcc_s_seh-1.dll ]; then mv -f ./shlib/libgcc_s_seh-1.dll
./shlib/libgcc_s_seh-1.dll.backup; else true; fi && mv
./shlib/libgcc_s_seh-1.dll.tmp ./shlib/libgcc_s_seh-1.dll && mv
./shlib/libgcc_s.a.tmp ./shlib/libgcc_s.a
|
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
cannot find dllcrt2.o: No such file or directory
|
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
cannot find crtbegin.o: No such file or directory
|
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/sysroots/x86_64-linux/usr/bin/x86_64-oesdk-mingw32/x86_64-oesdk-mingw32-ld:
cannot find crtend.o: No such file or directory
| collect2: error: ld returned 1 exit status
| make[1]: *** [libgcc_s.dll] Error 1
| make[1]: Leaving directory
`/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/gcc-4.8.2/build.x86_64-linux.x86_64-oesdk-mingw32/x86_64-oesdk-mingw32/libgcc'
| make: *** [all-target-libgcc] Error 2
| ERROR: oe_runmake failed
| WARNING:
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/run.do_compile.4758:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_compile (log file is located at
/home/jkroon/Projects/oe-devel/build-daisy-mingw/tmp-eglibc/work/x86_64-oesdk-mingw32/gcc-crosssdk/4.8.2-r0/temp/log.do_compile.4758)
ERROR: Task 442
(/home/jkroon/Projects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtools/gcc/
gcc-crosssdk_4.8.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 910 tasks of which 909 didn't need to be
rerun and 1 failed.
NOTE: Writing buildhistory
No currently running tasks (516 of 1034)

Summary: 1 task failed:

/home/jkroon/Projects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtools/gcc/
gcc-crosssdk_4.8.bb, do_compile
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Does anyone know whats going on ?

Regards
Jacob

--001a11c34940285e8304fb8266e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi,<br><br></div>I&#39;ve ad=
ded meta-mingw layer, and am using daisy branches. When I do:<br><br></div>=
SDKMACHINE=3Dx86_64-mingw32 bitbake meta-toolchain<br><br></div>I get the f=
ollowing errors:<br>
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
ded-core/meta/recipes-devtools/gcc/<a href=3D"http://gcc-crosssdk_4.8.bb">g=
cc-crosssdk_4.8.bb</a>, do_compile) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 910 tasks of which 909 didn&#39;t need to be=
 rerun and 1 failed.<br>NOTE: Writing buildhistory<br>No currently running =
tasks (516 of 1034)<br><br>Summary: 1 task failed:<br>=C2=A0 /home/jkroon/P=
rojects/oe-devel/build-daisy-mingw/../openembedded-core/meta/recipes-devtoo=
ls/gcc/<a href=3D"http://gcc-crosssdk_4.8.bb">gcc-crosssdk_4.8.bb</a>, do_c=
ompile<br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r><br></div>Does anyone know whats going on ?<br><br></div>Regards<br></div=
>Jacob<br></div>

--001a11c34940285e8304fb8266e1--
