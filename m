Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02C87E00B87; Thu,  8 Jun 2017 13:42:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A62BDE00B18
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 13:42:19 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id 68so7842838uas.0
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 13:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=KhIRXbbPqKFNH0tuSy/sAiG1LWmsKCuJ1j02/v/j5jk=;
	b=htiRiqOeapiDOwf3/DWyWsC9Lnb290dw+RNEsN0fIiMU9/6DEXVCumXPFvYqyI3BoN
	F9F7HQGLIaUJy5OcG61044j/bM/3/miBPiVm3mIULbXmV1HwejljLGozi+sBC1Uhj5Xf
	TNWVMywKmWfE+PoN6tMKFF8bwauPy4uo27VHjl98JNS6CNA2BAswDpH110j0yYHxekIJ
	fFUsj7fEzREM6jKXgMfKs+RWaCCI8mrmgTKsNSVtdzTJViNHqgKRl09EOU9Vu0h+NU9E
	n++dTbzSyPieAZ+5XMwOx3HNWLWUACMMznoothDfHueLfiXC7tK0WKP5OMOcILL4KZXC
	V38A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=KhIRXbbPqKFNH0tuSy/sAiG1LWmsKCuJ1j02/v/j5jk=;
	b=MUUQxQAQik5lScm5n9YOFAOOXdAuISQcmWFqELuzC782X25KtyA2fezMerF0bhABYT
	/Ioqz09rxml2VQ6eEfdRH/VJXFCjBmrSRZXTN3ZBhnYdB6WEC0hhE0OhmmHD7HeHeYII
	ECJzSSD2ONXvoQX6E46pIBr5naQTHbmE8vnAYPDsLjENEyZtrRbkSSUzAiXMPk+vUsLY
	5jukzem9WXBrGkvjibkVMfzzbJ3GaD87TREMqatNToKoLuskJ7++FDUnEoPFVg6w0+U9
	zyP4qr5dmwhoZH/svXmpwCJAK8ADDrEMlury/RU8NmA236TE2xNI0Nao1SZjGRKt+JMo
	+UqQ==
X-Gm-Message-State: AODbwcAA2jsM4s6mEEi7NEtncSLwgPfzMRZM+DZbuftio5nXvZUiA2gu
	Xhr76SmZ4Dzd8QK0NT60i49eg4uzY0a1
X-Received: by 10.176.2.79 with SMTP id 73mr14270861uas.111.1496954538271;
	Thu, 08 Jun 2017 13:42:18 -0700 (PDT)
MIME-Version: 1.0
From: Giordon Stark <kratsg@gmail.com>
Date: Thu, 08 Jun 2017 20:42:07 +0000
Message-ID: <CAFzUWG=m-UeJjFA2O3CEqHkjmNYOY2Gf2pHUfGJH4KU=YDFOHQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: LLVM linking for custom recipe
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
X-List-Received-Date: Thu, 08 Jun 2017 20:42:25 -0000
Content-Type: multipart/alternative; boundary="001a113d143c7fac3f055178e307"

--001a113d143c7fac3f055178e307
Content-Type: text/plain; charset="UTF-8"

Hi,

I have the following error message when trying to get LLVM linked up. The
problem is that I'm using a widely used science software called ROOT (
https://root.cern.ch/) with the following minimal recipe at the moment (
https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb)
however I get the following error...

Any ideas?

Giordon

| CMake Error at cmake/modules/SearchInstalledSoftware.cmake:662
(find_package):
|   By not providing "FindLLVM.cmake" in CMAKE_MODULE_PATH this project has
|   asked CMake to find a package configuration file provided by "LLVM", but
|   CMake did not find one.
|
|   Could not find a package configuration file provided by "LLVM" with any
of
|   the following names:
|
|     LLVMConfig.cmake
|     llvm-config.cmake
|
|   Add the installation prefix of "LLVM" to CMAKE_PREFIX_PATH or set
|   "LLVM_DIR" to a directory containing one of the above files.  If "LLVM"
|   provides a separate development package or SDK, be sure it has been
|   installed.
| Call Stack (most recent call first):
|   CMakeLists.txt:58 (include)
|
|
| -- Configuring incomplete, errors occurred!
| See also
"/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeOutput.log".
| See also
"/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeError.log".
| WARNING:
/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/run.do_configure.16761:1
exit 1 from 'cmake ${OECMAKE_SITEFILE}
/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/root-6.04.12
-DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_BINDIR:PATH=bin
-DCMAKE_INSTALL_SBINDIR:PATH=sbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=libexec
-DCMAKE_INSTALL_SYSCONFDIR:PATH=/etc
-DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=../com
-DCMAKE_INSTALL_LOCALSTATEDIR:PATH=/var -DCMAKE_INSTALL_LIBDIR:PATH=lib
-DCMAKE_INSTALL_INCLUDEDIR:PATH=include
-DCMAKE_INSTALL_DATAROOTDIR:PATH=share -DCMAKE_INSTALL_SO_NO_EXE=0
-DCMAKE_TOOLCHAIN_FILE=/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/toolchain.cmake
-DCMAKE_VERBOSE_MAKEFILE=1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=1 -Drootfit=ON
-Dminuit2=ON -Dpython=ON -Dssl=ON -Dxrootd=ON -Dbuiltin_freetype=ON
-Dbuiltin_llvm=OFF ${PACKAGECONFIG_CONFARGS} -Wno-dev'
| ERROR: Function failed: do_configure (log file is located at
/local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/log.do_configure.16761)
ERROR: Task (/local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1027 tasks of which 1024 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:
  /local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--001a113d143c7fac3f055178e307
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I have the following err=
or message when trying to get LLVM linked up. The problem is that I&#39;m u=
sing a widely used science software called ROOT (<a href=3D"https://root.ce=
rn.ch/">https://root.cern.ch/</a>) with the following minimal recipe at the=
 moment (<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recip=
es-core/root/root_6.04.12.bb">https://github.com/kratsg/meta-l1calo/blob/ma=
ster/recipes-core/root/root_6.04.12.bb</a>) however I get the following err=
or...</div><div><br></div><div>Any ideas?</div><div><br></div><div>Giordon<=
/div><div><br></div><div>| CMake Error at cmake/modules/SearchInstalledSoft=
ware.cmake:662 (find_package):</div><div>| =C2=A0 By not providing &quot;Fi=
ndLLVM.cmake&quot; in CMAKE_MODULE_PATH this project has</div><div>| =C2=A0=
 asked CMake to find a package configuration file provided by &quot;LLVM&qu=
ot;, but</div><div>| =C2=A0 CMake did not find one.</div><div>|=C2=A0</div>=
<div>| =C2=A0 Could not find a package configuration file provided by &quot=
;LLVM&quot; with any of</div><div>| =C2=A0 the following names:</div><div>|=
=C2=A0</div><div>| =C2=A0 =C2=A0 LLVMConfig.cmake</div><div>| =C2=A0 =C2=A0=
 llvm-config.cmake</div><div>|=C2=A0</div><div>| =C2=A0 Add the installatio=
n prefix of &quot;LLVM&quot; to CMAKE_PREFIX_PATH or set</div><div>| =C2=A0=
 &quot;LLVM_DIR&quot; to a directory containing one of the above files.=C2=
=A0 If &quot;LLVM&quot;</div><div>| =C2=A0 provides a separate development =
package or SDK, be sure it has been</div><div>| =C2=A0 installed.</div><div=
>| Call Stack (most recent call first):</div><div>| =C2=A0 CMakeLists.txt:5=
8 (include)</div><div>|=C2=A0</div><div>|=C2=A0</div><div>| -- Configuring =
incomplete, errors occurred!</div><div>| See also &quot;/local/d4/poky/buil=
d/tmp/work/aarch64-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeOutput.=
log&quot;.</div><div>| See also &quot;/local/d4/poky/build/tmp/work/aarch64=
-poky-linux/root/6.04.12-r0/build/CMakeFiles/CMakeError.log&quot;.</div><di=
v>| WARNING: /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-=
r0/temp/run.do_configure.16761:1 exit 1 from &#39;cmake ${OECMAKE_SITEFILE}=
 /local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/root-6.04=
.12 -DCMAKE_INSTALL_PREFIX:PATH=3D/usr -DCMAKE_INSTALL_BINDIR:PATH=3Dbin -D=
CMAKE_INSTALL_SBINDIR:PATH=3Dsbin -DCMAKE_INSTALL_LIBEXECDIR:PATH=3Dlibexec=
 -DCMAKE_INSTALL_SYSCONFDIR:PATH=3D/etc -DCMAKE_INSTALL_SHAREDSTATEDIR:PATH=
=3D../com -DCMAKE_INSTALL_LOCALSTATEDIR:PATH=3D/var -DCMAKE_INSTALL_LIBDIR:=
PATH=3Dlib -DCMAKE_INSTALL_INCLUDEDIR:PATH=3Dinclude -DCMAKE_INSTALL_DATARO=
OTDIR:PATH=3Dshare -DCMAKE_INSTALL_SO_NO_EXE=3D0 -DCMAKE_TOOLCHAIN_FILE=3D/=
local/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/toolchain.c=
make -DCMAKE_VERBOSE_MAKEFILE=3D1 -DCMAKE_NO_SYSTEM_FROM_IMPORTED=3D1 -Droo=
tfit=3DON -Dminuit2=3DON -Dpython=3DON -Dssl=3DON -Dxrootd=3DON -Dbuiltin_f=
reetype=3DON -Dbuiltin_llvm=3DOFF ${PACKAGECONFIG_CONFARGS} -Wno-dev&#39;</=
div><div>| ERROR: Function failed: do_configure (log file is located at /lo=
cal/d4/poky/build/tmp/work/aarch64-poky-linux/root/6.04.12-r0/temp/log.do_c=
onfigure.16761)</div><div>ERROR: Task (/local/d4/meta-l1calo/recipes-core/r=
oot/root_6.04.12.bb:do_configure) failed with exit code &#39;1&#39;</div><d=
iv>NOTE: Tasks Summary: Attempted 1027 tasks of which 1024 didn&#39;t need =
to be rerun and 1 failed.</div><div><br></div><div>Summary: 1 task failed:<=
/div><div>=C2=A0 /local/d4/meta-l1calo/recipes-core/root/root_6.04.12.bb:do=
_configure</div><div>Summary: There was 1 ERROR message shown, returning a =
non-zero exit code.</div><div><br></div></div>

--001a113d143c7fac3f055178e307--
