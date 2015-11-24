Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA074E00B46; Tue, 24 Nov 2015 13:06:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 049D5E00B44
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 13:06:17 -0800 (PST)
Received: by lfaz4 with SMTP id z4so37198234lfa.0
	for <yocto@yoctoproject.org>; Tue, 24 Nov 2015 13:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5ltC0M6MtdDKpaCn+1izZXaysd/Bnu8mXbEgxUmbSDU=;
	b=Gz+1ikPAIxir+1+cSmo44cw6SQQhlbBPwREvntamVzr32EBSA5dmDXz+YQsaVvivW1
	lMTlA/Sl1Ga7kzB5Yh7bx7Ht/W26LEMyuc1W6tzYQxIRtn6ChkOlj6KooyaRFt5SJlVo
	HJdtqxpJkvizpbsN1B3cPV+mjqAIhxKsxGWM+0CON0la1TGnCmbnxvfp7fVU3NtnMryL
	eQZaeMEQ76LGki0JEP6xkemTRl0YnbbsrB3u+A0wBxOZkL7MN8YMOM30sEFIVid8CKl7
	pyCuF+SEuUupDnxPvkRrOT8Un1K40tGPsmRovYLguzJP/x1OwPEuaUeR5sw16mnVWvPM
	bQhw==
MIME-Version: 1.0
X-Received: by 10.112.199.194 with SMTP id jm2mr10881048lbc.109.1448399176255; 
	Tue, 24 Nov 2015 13:06:16 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Tue, 24 Nov 2015 13:06:16 -0800 (PST)
Date: Tue, 24 Nov 2015 15:06:16 -0600
Message-ID: <CAOsp8o9t2fnf1Vu3_DbDQLYLM6vxd3_-y0d12k_MexAefbDrTQ@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: Cross-compiling python fails with new custom tuning
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
X-List-Received-Date: Tue, 24 Nov 2015 21:06:28 -0000
Content-Type: multipart/alternative; boundary=001a11c33a5264d2c605254fb6d9

--001a11c33a5264d2c605254fb6d9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

All,

I added a new machine definition with tuning parameters for haswell
microarchitectures (basically just duplicated corei7 but tuned it for
haswell). This seems to work correctly, but failed when running do_install
for python toward the end of the build process. I am running with the Yocto
2.0 framework, with very minimal changes to create a new distribution and
machine for our custom embedded device. Note I had this distro
configuration working before, and the only difference is I added a new
machine with this tuning.

I believe the issue is because, as part of the do_install step for Python,
it attempts to run python on the local host, despite being cross-compiled.
However, it is tuned for a processor that my host machine doesn't run, so I
get an instruction exception.

Did I do something weird? I figure python would be configured for
cross-compiling and therefore wouldn't try to run the target version on the
host, even for sanity tests. Here is the output of the failure:

$ tail -20
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp=
/log.do_install.17258

x86_64-diags-linux-ar rc libpython2.7.a Modules/threadmodule.o
 Modules/signalmodule.o  Modules/posixmodule.o  Modules/errnomodule.o
 Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o
 Modules/_weakref.o  Modules/zipimport.o  Modules/symtablemodule.o
 Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
x86_64-diags-linux-ranlib libpython2.7.a
Modules/posixmodule.o: In function `posix_tmpnam':
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Pyth=
on-2.7.9/Modules/posixmodule.c:7575:
warning: the use of `tmpnam_r' is dangerous, better use `mkstemp'
Modules/posixmodule.o: In function `posix_tempnam':
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Pyth=
on-2.7.9/Modules/posixmodule.c:7522:
warning: the use of `tempnam' is dangerous, better use `mkstemp'
x86_64-diags-linux-gcc  -m64 -march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Ds=
se
-mavx2 --sysroot=3D/projects/yocto-git/build/tmp/sysroots/continental -Wl,-=
O1
-Wl,--hash-style=3Dgnu -Wl,--as-needed -Xlinker -export-dynamic -o python \
                        Modules/python.o \
                        -L. -lpython2.7 -lpthread -ldl  -lpthread -lutil
-lm
_PYTHON_PROJECT_BASE=3D/projects/yocto-git/build/tmp/work/haswell-diags-lin=
ux/python/2.7.9-r1/build
_PYTHON_HOST_PLATFORM=3Dlinux2-x86_64
PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/=
2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto-git/build/tmp/wo=
rk/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/projects/yocto-git=
/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-l=
inux2
python2.7 -S -m sysconfig --generate-posix-vars ;\
        if test $? -ne 0 ; then \
                echo "generate-posix-vars failed" ; \
                rm -f ./pybuilddir.txt ; \
                exit 1 ; \
        fi
Illegal instruction (core dumped)
make: *** [sharedmods] Error 132
WARNING: exit code 1 from a shell command.
ERROR: oe_runmake failed
ERROR: Function failed: do_install (log file is located at
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp=
/log.do_install.17258)

Here is my tune-haswell.inc (ignore some copy/paste comment issues right
now =3D):

# Settings for the GCC(1) cpu-type "haswell":
#
#     Intel Core i7 CPU with 64-bit extensions, MOVBE, MMX, SSE, SSE2,
SSE3,=C2=B7
#     SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCLMUL, FSGSBASE,
#     RDRND, FMA, BMI, BMI2 and F16C instruction set support.
#
# This tune is recommended for Intel Nehalem and Silvermont (e.g. Bay
Trail) CPUs
# (and beyond).
#
DEFAULTTUNE ?=3D "haswell"

# Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS
require conf/machine/include/tune-corei7.inc

# Extra tune features
TUNEVALID[haswell] =3D "Enable haswell specific processor optimizations"
TUNE_CCARGS .=3D "${@bb.utils.contains("TUNE_FEATURES", "haswell", "
-march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2", "", d)}"

# Extra tune selections
AVAILTUNES +=3D "haswell"
TUNE_FEATURES_tune-haswell =3D "${TUNE_FEATURES_tune-x86-64} haswell"
BASE_LIB_tune-haswell =3D "lib"
TUNE_PKGARCH_tune-haswell =3D "haswell"
PACKAGE_EXTRA_ARCHS_tune-haswell =3D "${PACKAGE_EXTRA_ARCHS_tune-corei7}
haswell"

--001a11c33a5264d2c605254fb6d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">All,<div><br></div><div>I added a new machine definition w=
ith tuning parameters for haswell microarchitectures (basically just duplic=
ated corei7 but tuned it for haswell). This seems to work correctly, but fa=
iled when running do_install for python toward the end of the build process=
. I am running with the Yocto 2.0 framework, with very minimal changes to c=
reate a new distribution and machine for our custom embedded device. Note I=
 had this distro configuration working before, and the only difference is I=
 added a new machine with this tuning.</div><div><br></div><div>I believe t=
he issue is because, as part of the do_install step for Python, it attempts=
 to run python on the local host, despite being cross-compiled. However, it=
 is tuned for a processor that my host machine doesn&#39;t run, so I get an=
 instruction exception.</div><div><br></div><div>Did I do something weird? =
I figure python would be configured for cross-compiling and therefore would=
n&#39;t try to run the target version on the host, even for sanity tests. H=
ere is the output of the failure:</div><div><br></div><div><div>$ tail -20 =
/projects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/temp=
/log.do_install.17258</div><div><br></div><div>x86_64-diags-linux-ar rc lib=
python2.7.a Modules/threadmodule.o =C2=A0Modules/signalmodule.o =C2=A0Modul=
es/posixmodule.o =C2=A0Modules/errnomodule.o =C2=A0Modules/pwdmodule.o =C2=
=A0Modules/_sre.o =C2=A0Modules/_codecsmodule.o =C2=A0Modules/_weakref.o =
=C2=A0Modules/zipimport.o =C2=A0Modules/symtablemodule.o =C2=A0Modules/md5m=
odule.o Modules/md5.o =C2=A0Modules/xxsubtype.o</div><div>x86_64-diags-linu=
x-ranlib libpython2.7.a</div><div>Modules/posixmodule.o: In function `posix=
_tmpnam&#39;:</div><div>/projects/yocto-git/build/tmp/work/haswell-diags-li=
nux/python/2.7.9-r1/Python-2.7.9/Modules/posixmodule.c:7575: warning: the u=
se of `tmpnam_r&#39; is dangerous, better use `mkstemp&#39;</div><div>Modul=
es/posixmodule.o: In function `posix_tempnam&#39;:</div><div>/projects/yoct=
o-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Modul=
es/posixmodule.c:7522: warning: the use of `tempnam&#39; is dangerous, bett=
er use `mkstemp&#39;</div><div>x86_64-diags-linux-gcc =C2=A0-m64 -march=3Dh=
aswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2 --sysroot=3D/projects/yocto-g=
it/build/tmp/sysroots/continental -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-n=
eeded -Xlinker -export-dynamic -o python \</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Modules/pyth=
on.o \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -L. -lpython2.7 -lpthread -ldl =C2=A0-lpthread =
-lutil =C2=A0 -lm</div><div>_PYTHON_PROJECT_BASE=3D/projects/yocto-git/buil=
d/tmp/work/haswell-diags-linux/python/2.7.9-r1/build _PYTHON_HOST_PLATFORM=
=3Dlinux2-x86_64 PYTHONPATH=3D/projects/yocto-git/build/tmp/work/haswell-di=
ags-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/projects/yocto=
-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python-2.7.9/Lib:/p=
rojects/yocto-git/build/tmp/work/haswell-diags-linux/python/2.7.9-r1/Python=
-2.7.9/Lib/plat-linux2 python2.7 -S -m sysconfig --generate-posix-vars ;\</=
div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if test $? -ne 0 ; then \</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;generate=
-posix-vars failed&quot; ; \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 rm -f ./pybuilddir.txt ; \</div><div>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 exit 1 ; \</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 fi</div><div>Illegal instruction (core dumped)</div><div>make=
: *** [sharedmods] Error 132</div><div>WARNING: exit code 1 from a shell co=
mmand.</div><div>ERROR: oe_runmake failed</div><div>ERROR: Function failed:=
 do_install (log file is located at /projects/yocto-git/build/tmp/work/hasw=
ell-diags-linux/python/2.7.9-r1/temp/log.do_install.17258)</div></div><div>=
<br></div><div>Here is my tune-haswell.inc (ignore some copy/paste comment =
issues right now =3D):</div><div><br></div><div><div># Settings for the GCC=
(1) cpu-type &quot;haswell&quot;:</div><div>#</div><div># =C2=A0 =C2=A0 Int=
el Core i7 CPU with 64-bit extensions, MOVBE, MMX, SSE, SSE2, SSE3,=C2=B7</=
div><div># =C2=A0 =C2=A0 SSSE3, SSE4.1, SSE4.2, POPCNT, AVX, AVX2, AES, PCL=
MUL, FSGSBASE,</div><div># =C2=A0 =C2=A0 RDRND, FMA, BMI, BMI2 and F16C ins=
truction set support.</div><div>#</div><div># This tune is recommended for =
Intel Nehalem and Silvermont (e.g. Bay Trail) CPUs</div><div># (and beyond)=
.</div><div>#</div><div>DEFAULTTUNE ?=3D &quot;haswell&quot;</div><div><br>=
</div><div># Pull in the previous tune in to pull in PACKAGE_EXTRA_ARCHS</d=
iv><div>require conf/machine/include/tune-corei7.inc</div><div><br></div><d=
iv># Extra tune features</div><div>TUNEVALID[haswell] =3D &quot;Enable hasw=
ell specific processor optimizations&quot;</div><div>TUNE_CCARGS .=3D &quot=
;${@bb.utils.contains(&quot;TUNE_FEATURES&quot;, &quot;haswell&quot;, &quot=
; -march=3Dhaswell -mtune=3Dhaswell -mfpmath=3Dsse -mavx2&quot;, &quot;&quo=
t;, d)}&quot;</div><div><br></div><div># Extra tune selections</div><div>AV=
AILTUNES +=3D &quot;haswell&quot;</div><div>TUNE_FEATURES_tune-haswell =3D =
&quot;${TUNE_FEATURES_tune-x86-64} haswell&quot;</div><div>BASE_LIB_tune-ha=
swell =3D &quot;lib&quot;</div><div>TUNE_PKGARCH_tune-haswell =3D &quot;has=
well&quot;</div><div>PACKAGE_EXTRA_ARCHS_tune-haswell =3D &quot;${PACKAGE_E=
XTRA_ARCHS_tune-corei7} haswell&quot;</div></div><div><br></div></div>

--001a11c33a5264d2c605254fb6d9--
