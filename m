Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83BFAE0027E
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:27:53 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so4475463pbb.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:date:message-id:to:mime-version:x-mailer;
	bh=RzWMZh/qbE0oIv/JyjSCrLE/hZahryXnmVORwbpUEEA=;
	b=Dyvt94mSD/eiNDmY1+Q3vwceJYB2K60EhWFwObtZRzQAHscWfxGbTPTQWQUUY/QZkU
	A8vQmyWdHF6FYW3T9q3m0ym903++ToifTPILBbgF1HWEdv2I5LsoLBtCi/46uXniLICG
	M4dMaQ68u95tyTvHEbs5GKcSPuWq7sIaNdJyORnizG44w5MR015GP6Zz/4vdE51+nnQe
	zxaZKESNRr6Pb1wh9yICuDNswc96SnznZ6qgR0fixDjcA94vN8knQf2GNlQwwo2qt5xG
	CPX4s3aPfYre5S79L/iprVAamIR3vSYn5YCC6mLGVVMA7BUTKGWH0kVhlOXJfEJVb1JI
	cYgA==
Received: by 10.68.191.72 with SMTP id gw8mr14184886pbc.143.1345825673307;
	Fri, 24 Aug 2012 09:27:53 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id st6sm8596276pbc.58.2012.08.24.09.27.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 09:27:52 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 24 Aug 2012 20:27:47 +0400
Message-Id: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: TARGET_FPU not getting populated for powerpc 405/440 fpu-hard targets
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
X-List-Received-Date: Fri, 24 Aug 2012 16:27:53 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A561DFBC-3B21-4E8E-AEA2-A1F8366F9218"

--Apple-Mail=_A561DFBC-3B21-4E8E-AEA2-A1F8366F9218
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,
       I just observed that TARGET_FPU is not getting populated, when =
you do a build for fpu-hard targets. For fpu-soft targets, it displays =
TARGET_FPU =3D "soft", but for fpu-hard targets, it display TARGET_FPU =3D=
 "".

For example, for my tune-ppc440e.inc file

DEFAULTTUNE ?=3D "ppc440e"

require conf/machine/include/powerpc/arch-powerpc.inc

TUNEVALID[ppc440e] =3D "Enable ppc440e specific processor optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440e", =
"-mcpu=3D440fp", "", d)}"

AVAILTUNES +=3D "ppc440e"
TUNE_FEATURES_tune-ppc440e =3D "m32 ppc440e fpu-hard"
TUNE_PKGARCH_tune-ppc440e =3D "ppc440e"
PACKAGE_EXTRA_ARCHS_tune-ppc440e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc440e"

# glibc configure options to get ppc440e specific library (for sqrt)
GLIBC_EXTRA_OECONF +=3D "${@bb.utils.contains("TUNE_FEATURES", =
"ppc440e", "-with-cpu=3D440fp", "", d)}"

it is empty:

uild Configuration:
BB_VERSION        =3D "1.15.3"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux"
MACHINE           =3D "virtex5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120824"
TUNE_FEATURES     =3D "m32 ppc440e fpu-hard"
TARGET_FPU        =3D ""
meta             =20
meta-yocto        =3D =
"(nobranch):77192ec8ed3563920b969306aaa7609d05184255"
toolchain-layer   =3D =
"(nobranch):3fd2bf4c5e6c3a353aff9795294b7c25f5f50c49"
meta-xilinx       =3D =
"master-xilinx-ml507-gcc-4.5:18ab4890b00d12c58f750008688d2e97687e33da"

Similarily, for my tune-ppc405e.inc file:

DEFAULTTUNE ?=3D "ppc405e"

require conf/machine/include/powerpc/arch-powerpc.inc

TUNEVALID[ppc405e] =3D "Enable ppc405e specific processor optimizations"
TUNE_CCARGS +=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", =
"-mcpu=3D405fp", "", d)}"

AVAILTUNES +=3D "ppc405e"
TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e fpu-hard"
TUNE_PKGARCH_tune-ppc405e =3D "ppc405e"
PACKAGE_EXTRA_ARCHS_tune-ppc405e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc405e"

# glibc configure options to get ppc405e specific library (for sqrt)
GLIBC_EXTRA_OECONF +=3D "${@bb.utils.contains("TUNE_FEATURES", =
"ppc405e", "-with-cpu=3D405fp", "", d)}"

it is empty:

Build Configuration:
BB_VERSION        =3D "1.15.3"
TARGET_ARCH       =3D "powerpc"
TARGET_OS         =3D "linux"
MACHINE           =3D "virtex5"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2+snapshot-20120824"
TUNE_FEATURES     =3D "m32 ppc405e fpu-hard"
TARGET_FPU        =3D ""
meta             =20
meta-yocto        =3D =
"(nobranch):77192ec8ed3563920b969306aaa7609d05184255"
toolchain-layer   =3D =
"(nobranch):3fd2bf4c5e6c3a353aff9795294b7c25f5f50c49"
meta-xilinx       =3D =
"master-xilinx-ml507-gcc-4.5:18ab4890b00d12c58f750008688d2e97687e33da"

The PowerPC405 and 440 processors are on a Xilinx Virtex-4 and Virtex-5 =
FGPA, and as such can be attached to a hardware floating point unit.=20

There is a special gcc compiler option for this situation, which is =20

-mxilinx-fpu

Perform optimizations for the floating-point unit on Xilinx PPC 405/440. =
See RS/6000 and PowerPC Options - Using the GNU Compiler Collection =
(GCC) for more information.

What should I do to get TARGET_FPU to fill correctly for hardware =
floating point units ?=20

Best regards,

Elvis Dowson



--Apple-Mail=_A561DFBC-3B21-4E8E-AEA2-A1F8366F9218
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div>&nbsp; &nbsp; &nbsp; &nbsp;I just observed that TARGET_FPU is =
not getting populated, when you do a build for fpu-hard targets. For =
fpu-soft targets, it displays TARGET_FPU =3D "soft", but for fpu-hard =
targets, it display TARGET_FPU =3D "".</div><div><br></div><div>For =
example, for my tune-ppc440e.inc =
file</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEFAULTTUNE ?=3D =
"ppc440e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/powerpc/arch-powerpc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNEVALID[ppc440e] =3D "Enable ppc440e =
specific processor optimizations"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "ppc440e", "-mcpu=3D440fp", "", =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">AVAILTUNES +=3D =
"ppc440e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-ppc440e =3D "m32 ppc440e =
fpu-hard"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH_tune-ppc440e =3D =
"ppc440e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PACKAGE_EXTRA_ARCHS_tune-ppc440e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc440e"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># glibc configure options to get ppc440e =
specific library (for sqrt)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">GLIBC_EXTRA_OECONF =
+=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc440e", =
"-with-cpu=3D440fp", "", d)}"</font></div></div><div><br></div><div>it =
is empty:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">uild Configuration:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">BB_VERSION &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "1.15.3"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_ARCH &nbsp; =
&nbsp; &nbsp; =3D "powerpc"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_OS &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "linux"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">MACHINE &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "virtex5"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.2+snapshot-20120824"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_FEATURES =
&nbsp; &nbsp; =3D "m32 ppc440e fpu-hard"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_FPU &nbsp; =
&nbsp; &nbsp; &nbsp;=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-yocto &nbsp; =
&nbsp; &nbsp; &nbsp;=3D =
"(nobranch):77192ec8ed3563920b969306aaa7609d05184255"</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">toolchain-layer =
&nbsp; =3D =
"(nobranch):3fd2bf4c5e6c3a353aff9795294b7c25f5f50c49"</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-xilinx =
&nbsp; &nbsp; &nbsp; =3D =
"master-xilinx-ml507-gcc-4.5:18ab4890b00d12c58f750008688d2e97687e33da"</fo=
nt></div></div><div><br></div><div>Similarily, for my tune-ppc405e.inc =
file:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">DEFAULTTUNE ?=3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">require =
conf/machine/include/powerpc/arch-powerpc.inc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNEVALID[ppc405e] =3D "Enable ppc405e =
specific processor optimizations"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_CCARGS +=3D =
"${@bb.utils.contains("TUNE_FEATURES", "ppc405e", "-mcpu=3D405fp", "", =
d)}"</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">AVAILTUNES +=3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_FEATURES_tune-ppc405e =3D "m32 ppc405e =
fpu-hard"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">TUNE_PKGARCH_tune-ppc405e =3D =
"ppc405e"</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">PACKAGE_EXTRA_ARCHS_tune-ppc405e =3D =
"${PACKAGE_EXTRA_ARCHS_tune-powerpc} ppc405e"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"># glibc configure options to get ppc405e =
specific library (for sqrt)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">GLIBC_EXTRA_OECONF =
+=3D "${@bb.utils.contains("TUNE_FEATURES", "ppc405e", =
"-with-cpu=3D405fp", "", d)}"</font></div></div><div><br></div><div>it =
is empty:</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Build Configuration:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">BB_VERSION &nbsp; =
&nbsp; &nbsp; &nbsp;=3D "1.15.3"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_ARCH &nbsp; =
&nbsp; &nbsp; =3D "powerpc"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_OS &nbsp; =
&nbsp; &nbsp; &nbsp; =3D "linux"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">MACHINE &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; =3D "virtex5"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">DISTRO_VERSION =
&nbsp; &nbsp;=3D "1.2+snapshot-20120824"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TUNE_FEATURES =
&nbsp; &nbsp; =3D "m32 ppc405e fpu-hard"</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">TARGET_FPU &nbsp; =
&nbsp; &nbsp; &nbsp;=3D ""</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-yocto &nbsp; =
&nbsp; &nbsp; &nbsp;=3D =
"(nobranch):77192ec8ed3563920b969306aaa7609d05184255"</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">toolchain-layer =
&nbsp; =3D =
"(nobranch):3fd2bf4c5e6c3a353aff9795294b7c25f5f50c49"</font></div><div><fo=
nt class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">meta-xilinx =
&nbsp; &nbsp; &nbsp; =3D =
"master-xilinx-ml507-gcc-4.5:18ab4890b00d12c58f750008688d2e97687e33da"</fo=
nt></div></div><div><br></div><div>The PowerPC405 and 440 processors are =
on a Xilinx Virtex-4 and Virtex-5 FGPA, and as such can be attached to a =
hardware floating point unit.&nbsp;</div><div><br></div><div>There is a =
special gcc compiler option for this situation, which is =
&nbsp;</div><div><span class=3D"Apple-style-span" style=3D"font-family: =
Monaco; font-size: small; "><br></span></div><div><span =
class=3D"Apple-style-span" style=3D"font-family: Monaco; font-size: =
small; ">-mxilinx-fpu</span></div><div><div><br></div><div>Perform =
optimizations for the floating-point unit on Xilinx PPC =
405/440.&nbsp;<span class=3D"Apple-style-span" style=3D"font-family: =
'Lucida Grande'; font-size: 12px; ">See </span><span =
class=3D"Apple-style-span" style=3D"font-family: 'Lucida Grande'; =
font-size: 12px; "><a =
href=3D"http://gcc.gnu.org/onlinedocs/gcc/RS_002f6000-and-PowerPC-Options.=
html">RS/6000 and PowerPC Options - Using the GNU Compiler Collection =
(GCC)</a></span><span class=3D"Apple-style-span" style=3D"font-family: =
'Lucida Grande'; font-size: 12px; "> for more =
information.</span></div></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: 'Lucida Grande'; font-size: 12px; =
"><br></span></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: 'Lucida Grande'; font-size: 12px; "><span =
class=3D"Apple-style-span" style=3D"font-family: Helvetica; font-size: =
medium; ">What should I do to get TARGET_FPU to fill correctly for =
hardware floating point units =
?&nbsp;</span></span></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div><div><br></div></body></html>=

--Apple-Mail=_A561DFBC-3B21-4E8E-AEA2-A1F8366F9218--
