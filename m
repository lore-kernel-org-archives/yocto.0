Subject: Re: #sdk -Standard SDK build with cmake and meta-clang gives error when I attempt topull in compiler-rt
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 27 Aug 2020 07:50:37 -0700
References: <988a37d6-01e5-0e49-1c38-158d4edf5cdd@gmail.com>
In-Reply-To: <988a37d6-01e5-0e49-1c38-158d4edf5cdd@gmail.com>
Message-ID: <13049.1598539837557364137@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3Yuokcd359jyLOXtP3zZ"

--3Yuokcd359jyLOXtP3zZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The following patch was the problem with the compiler-rt component of meta-=
clang:

under : meta-clang/recipes-devtools/clang/compiler-rt=C2=A0 -

*0002-Simplify-cross-compilation.-Don-t-use-native-compile.patch*

You are=C2=A0using this to block build based on fail, even though=C2=A0the=
 environment is apparently=C2=A0setup correctly... this appears to be an un=
necessary check...

Everything builds correctly if we ignore=C2=A0this=C2=A0check by passing "=
QUIET"...

bitbake - clang-native, nativesdk-clang, and compiler-rt, all built correc=
tly, plus my SDK builds and the linker issue has been resolved.

=3D=3D=3D

From 6bfcd697851219f35688299c32e7068fad50c6f5 Mon Sep 17 00:00:00 2001
From: Khem Raj < raj.khem@gmail.com >
Date: Thu, 19 May 2016 23:11:45 -0700
Subject: [PATCH 2/5] Simplify cross-compilation. Don't use native-compiled
llvm-config.

Note: AddLLVM.cmake does not expose the LLVM source directory.
So if you want to run the test suite, you need to either:

1) set LLVM_MAIN_SRC_DIR explicitly (to find lit.py)
2) change AddLLVM.cmake to point to an installed 'lit'.
3) add_subdirectory(compiler-rt/test) from clang instead of compiler-rt.

https://us.codeaurora.org/patches/quic/llvm/50683/compiler-rt-cross-compil=
ation.patch

Signed-off-by: Greg Fitzgerald < gregf@codeaurora.org >
Signed-off-by: Khem Raj < raj.khem@gmail.com >
---
CMakeLists.txt | 10 +++++++++-
1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/CMakeLists.txt b/CMakeLists.txt
index 4b953b212..571aee7ea 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -62,7 +62,15 @@ set(COMPILER_RT_BAREMETAL_BUILD OFF CACHE BOOLEAN
"Build for a bare-metal target.")

if (COMPILER_RT_STANDALONE_BUILD)
-=C2=A0 load_llvm_config()
*+=C2=A0 find_package(LLVM REQUIRED) <---SHOULD BE Passing "QUIET"*
+=C2=A0 list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
+
+=C2=A0 # Variables that AddLLVM.cmake depends on (included by AddCompiler=
RT)
+=C2=A0 set(LLVM_TOOLS_BINARY_DIR "${LLVM_INSTALL_PREFIX}/bin")
+=C2=A0 set(LLVM_LIBRARY_DIR "${LLVM_INSTALL_PREFIX}/lib")
+
+=C2=A0 set(LLVM_LIBRARY_OUTPUT_INTDIR
+=C2=A0=C2=A0=C2=A0 ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/lib${LLVM_LIBD=
IR_SUFFIX})

# Find Python interpreter.
set(Python_ADDITIONAL_VERSIONS 2.7 2.6 2.5)
--
2.16.1

=3D=3D=3D

--3Yuokcd359jyLOXtP3zZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p><br /><br />The following patch was the problem with the compiler-rt com=
ponent of meta-clang:<br /><br />under : meta-clang/recipes-devtools/clang/=
compiler-rt&nbsp; - <br /><br /><strong>0002-Simplify-cross-compilation.-Do=
n-t-use-native-compile.patch</strong><br /><br />You are&nbsp;using this to=
 block build based on fail, even though&nbsp;the environment is apparently&=
nbsp;setup correctly... this appears to be an unnecessary check... <br /><b=
r />Everything builds correctly if we ignore&nbsp;this&nbsp;check by passin=
g "QUIET"...<br /><br />bitbake - clang-native, nativesdk-clang, and compil=
er-rt, all built correctly, plus my SDK builds and the linker issue has bee=
n resolved.<br /><br />=3D=3D=3D</p>
<p>From 6bfcd697851219f35688299c32e7068fad50c6f5 Mon Sep 17 00:00:00 2001<=
br />From: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt;<br />Date: Thu, 19 May 2016 23:11:45 -0700<br />Subject: [PAT=
CH 2/5] Simplify cross-compilation. Don't use native-compiled<br />&nbsp;ll=
vm-config.</p>
<p>&nbsp;&nbsp;&nbsp; Note: AddLLVM.cmake does not expose the LLVM source =
directory.<br />&nbsp;&nbsp;&nbsp; So if you want to run the test suite, yo=
u need to either:</p>
<p>&nbsp;&nbsp;&nbsp; 1) set LLVM_MAIN_SRC_DIR explicitly (to find lit.py)=
<br />&nbsp;&nbsp;&nbsp; 2) change AddLLVM.cmake to point to an installed '=
lit'.<br />&nbsp;&nbsp;&nbsp; 3) add_subdirectory(compiler-rt/test) from cl=
ang instead of compiler-rt.</p>
<p><a href=3D"https://us.codeaurora.org/patches/quic/llvm/50683/compiler-r=
t-cross-compilation.patch">https://us.codeaurora.org/patches/quic/llvm/5068=
3/compiler-rt-cross-compilation.patch</a></p>
<p>Signed-off-by: Greg Fitzgerald &lt;<a href=3D"mailto:gregf@codeaurora.o=
rg">gregf@codeaurora.org</a>&gt;<br />Signed-off-by: Khem Raj &lt;<a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;<br />---<br />&n=
bsp;CMakeLists.txt | 10 +++++++++-<br />&nbsp;1 file changed, 9 insertions(=
+), 1 deletion(-)</p>
<p>diff --git a/CMakeLists.txt b/CMakeLists.txt<br />index 4b953b212..571a=
ee7ea 100644<br />--- a/CMakeLists.txt<br />+++ b/CMakeLists.txt<br />@@ -6=
2,7 +62,15 @@ set(COMPILER_RT_BAREMETAL_BUILD OFF CACHE BOOLEAN<br />&nbsp;=
&nbsp; "Build for a bare-metal target.")</p>
<p>&nbsp;if (COMPILER_RT_STANDALONE_BUILD)<br />-&nbsp; load_llvm_config()=
<br /><span style=3D"background-color: #ff0000;"><strong><span style=3D"bac=
kground-color: #e85151;">+&nbsp; find_package(LLVM REQUIRED) </span><span s=
tyle=3D"background-color: #00ccff;"><em>&lt;---SHOULD BE Passing "QUIET"</e=
m></span></strong></span><br />+&nbsp; list(APPEND CMAKE_MODULE_PATH "${LLV=
M_CMAKE_DIR}")<br />+<br />+&nbsp; # Variables that AddLLVM.cmake depends o=
n (included by AddCompilerRT)<br />+&nbsp; set(LLVM_TOOLS_BINARY_DIR "${LLV=
M_INSTALL_PREFIX}/bin")<br />+&nbsp; set(LLVM_LIBRARY_DIR "${LLVM_INSTALL_P=
REFIX}/lib")<br />+<br />+&nbsp; set(LLVM_LIBRARY_OUTPUT_INTDIR<br />+&nbsp=
;&nbsp;&nbsp; ${CMAKE_BINARY_DIR}/${CMAKE_CFG_INTDIR}/lib${LLVM_LIBDIR_SUFF=
IX})</p>
<p>&nbsp;&nbsp; # Find Python interpreter.<br />&nbsp;&nbsp; set(Python_AD=
DITIONAL_VERSIONS 2.7 2.6 2.5)<br />--<br />2.16.1</p>
<p>=3D=3D=3D</p>

--3Yuokcd359jyLOXtP3zZ--
