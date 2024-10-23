Return-Path: <bartiszosti@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BDC1D2E021
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 07:52:19 +0000 (UTC)
Subject: Lack of Qt's libraries in the SDK. #cmake #imx8 #qt #scarthgap #sdk #yocto
To: yocto@lists.yoctoproject.org
From: bartiszosti@gmail.com
X-Originating-Location: =?UTF-8?B?UmF3YSBNYXpvd2llY2thLCDFgcOzZMW6IFZvaXZvZGVzaGlwLCBQTA==?= (46.112.84.96)
X-Originating-Platform: Windows Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 23 Oct 2024 00:52:11 -0700
Message-ID: <ksMx.1729669931763070130.Zh9Z@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1KODXs3MEwPBVxZCJuFm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 07:52:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64089

--1KODXs3MEwPBVxZCJuFm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,
I'm working on image which needs Qt6. I=C2=A0succeeded to add the layer, bu=
ild the image and run it on the hardware.
Next, I generated the SDK, so I generated it by the "-c populate_sdk" optio=
n and also I inherited the "populate_sdk_qt6", correct, as well.
The problem is that I can't build my application through the SDK, because:

>=20
> cmake ..
> -- The CXX compiler identification is GNU 13.3.0
> -- The C compiler identification is GNU 13.3.0
> -- Detecting CXX compiler ABI info
> -- Detecting CXX compiler ABI info - done
> -- Check for working CXX compiler:
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/bin/aarch64-fsl=
-linux/aarch64-fsl-linux-g++
> - skipped
> -- Detecting CXX compile features
> -- Detecting CXX compile features - done
> -- Detecting C compiler ABI info
> -- Detecting C compiler ABI info - done
> -- Check for working C compiler:
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/bin/aarch64-fsl=
-linux/aarch64-fsl-linux-gcc
> - skipped
> -- Detecting C compile features
> -- Detecting C compile features - done
> -- Performing Test CMAKE_HAVE_LIBC_PTHREAD
> -- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
> -- Found Threads: TRUE
> -- Performing Test HAVE_STDATOMIC
> -- Performing Test HAVE_STDATOMIC - Success
> -- Found WrapAtomic: TRUE
> -- Performing Test HAVE_EGL
> -- Performing Test HAVE_EGL - Success
> -- Found EGL:
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/include
> (found version "1.5")
> -- Performing Test HAVE_GLESv2
> -- Performing Test HAVE_GLESv2 - Success
> -- Found GLESv2:
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/include
> -- Found XKB:
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/libx=
kbcommon.so
> (found suitable version "1.6.0", minimum required is "0.5.0")
> -- Could NOT find WrapVulkanHeaders (missing: Vulkan_INCLUDE_DIR)
> CMake Error at
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake:128
> (message):
> The imported target "Qt6::QmlBuiltins" references the file
> "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/lib=
Qt6QmlBuiltins.a"
>=20
> but this file does not exist. =C2=A0Possible reasons include:
> * The file was deleted, renamed, or moved to another location.
> * An install or uninstall procedure did not complete successfully.
> * The installation package was faulty and contained
> "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cma=
ke/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake"
>=20
> but not all the files it references.
> Call Stack (most recent call first):
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6QmlBuiltins/Qt6QmlBuiltinsConfig.cmake:65
> (include)
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlConfig.cmake:54
> (include)
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake:53
> (include)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package)
> CMakeLists.txt:12 (find_package)
>=20
> CMake Warning at
> /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/share/cmake-3.2=
8/Modules/CMakeFindDependencyMacro.cmake:76
> (find_package):
> Found package configuration file:
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Qml/Qt6QmlConfig.cmake
>=20
> but it set Qt6Qml_FOUND to FALSE so package "Qt6Qml" is considered to be
> NOT FOUND.
> Call Stack (most recent call first):
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/QtPublicDependencyHelpers.cmake:111
> (find_dependency)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickDependencies.cmake:42
> (_qt_internal_find_qt_dependencies)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake:53
> (include)
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package)
> CMakeLists.txt:12 (find_package)
>=20
> CMake Warning at
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6/Qt6Config.cmake:179
> (find_package):
> Found package configuration file:
> /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmak=
e/Qt6Quick/Qt6QuickConfig.cmake
>=20
> but it set Qt6Quick_FOUND to FALSE so package "Qt6Quick" is considered to
> be NOT FOUND.
> Call Stack (most recent call first):
> CMakeLists.txt:12 (find_package)
>=20
> -- Configuring incomplete, errors occurred!
>=20
>=20

And I'm blocked. The "/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fs=
l-linux/usr/lib/libQt6QmlBuiltins.a" doesn;t exist, but this file is in "/h=
ome/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/lib/libQt6QmlBuilti=
ns.a". Do you know where the issue is?

I tried the official meta-qt6 and from YoeDistro.

--1KODXs3MEwPBVxZCJuFm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,<br />I'm working on image which needs Qt6. I&nbsp;succeeded to =
add the layer, build the image and run it on the hardware.<br />Next, I gen=
erated the SDK, so I generated it by the "-c populate_sdk" option and also =
I inherited the "populate_sdk_qt6", correct, as well.<br />The problem is t=
hat I can't build my application through the SDK, because:<br /><br /></div=
>
<blockquote>
<div>
<div>cmake ..<br />-- The CXX compiler identification is GNU 13.3.0<br />--=
 The C compiler identification is GNU 13.3.0<br />-- Detecting CXX compiler=
 ABI info<br />-- Detecting CXX compiler ABI info - done<br />-- Check for =
working CXX compiler: /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux=
/usr/bin/aarch64-fsl-linux/aarch64-fsl-linux-g++ - skipped<br />-- Detectin=
g CXX compile features<br />-- Detecting CXX compile features - done<br />-=
- Detecting C compiler ABI info<br />-- Detecting C compiler ABI info - don=
e<br />-- Check for working C compiler: /home/bstk/Documents/sdk/sysroots/x=
86_64-fslsdk-linux/usr/bin/aarch64-fsl-linux/aarch64-fsl-linux-gcc - skippe=
d<br />-- Detecting C compile features<br />-- Detecting C compile features=
 - done<br />-- Performing Test CMAKE_HAVE_LIBC_PTHREAD<br />-- Performing =
Test CMAKE_HAVE_LIBC_PTHREAD - Success<br />-- Found Threads: TRUE &nbsp;<b=
r />-- Performing Test HAVE_STDATOMIC<br />-- Performing Test HAVE_STDATOMI=
C - Success<br />-- Found WrapAtomic: TRUE &nbsp;<br />-- Performing Test H=
AVE_EGL<br />-- Performing Test HAVE_EGL - Success<br />-- Found EGL: /home=
/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/include (found =
version "1.5")&nbsp;<br />-- Performing Test HAVE_GLESv2<br />-- Performing=
 Test HAVE_GLESv2 - Success<br />-- Found GLESv2: /home/bstk/Documents/sdk/=
sysroots/cortexa53-crypto-fsl-linux/usr/include &nbsp;<br />-- Found XKB: /=
home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/libxkbc=
ommon.so (found suitable version "1.6.0", minimum required is "0.5.0")&nbsp=
;<br />-- Could NOT find WrapVulkanHeaders (missing: Vulkan_INCLUDE_DIR)&nb=
sp;<br />CMake Error at /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-=
fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake:128 (mes=
sage):<br />&nbsp; The imported target "Qt6::QmlBuiltins" references the fi=
le</div>
<div>&nbsp; &nbsp; &nbsp;"/home/bstk/Documents/sdk/sysroots/cortexa53-crypt=
o-fsl-linux/usr/lib/libQt6QmlBuiltins.a"</div>
<div>&nbsp; but this file does not exist. &nbsp;Possible reasons include:</=
div>
<div>&nbsp; * The file was deleted, renamed, or moved to another location.<=
/div>
<div>&nbsp; * An install or uninstall procedure did not complete successful=
ly.</div>
<div>&nbsp; * The installation package was faulty and contained</div>
<div>&nbsp; &nbsp; &nbsp;"/home/bstk/Documents/sdk/sysroots/cortexa53-crypt=
o-fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6QmlBuiltinsTargets.cmake"</div>
<div>&nbsp; but not all the files it references.</div>
<div>Call Stack (most recent call first):<br />&nbsp; /home/bstk/Documents/=
sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6QmlBuiltins/Qt6Qml=
BuiltinsConfig.cmake:65 (include)<br />&nbsp; /home/bstk/Documents/sdk/sysr=
oots/x86_64-fslsdk-linux/usr/share/cmake-3.28/Modules/CMakeFindDependencyMa=
cro.cmake:76 (find_package)<br />&nbsp; /home/bstk/Documents/sdk/sysroots/c=
ortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake=
:111 (find_dependency)<br />&nbsp; /home/bstk/Documents/sdk/sysroots/cortex=
a53-crypto-fsl-linux/usr/lib/cmake/Qt6Qml/Qt6QmlDependencies.cmake:42 (_qt_=
internal_find_qt_dependencies)<br />&nbsp; /home/bstk/Documents/sdk/sysroot=
s/cortexa53-crypto-fsl-linux/usr/lib/cmake/Qt6Qml/Qt6QmlConfig.cmake:54 (in=
clude)<br />&nbsp; /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/us=
r/share/cmake-3.28/Modules/CMakeFindDependencyMacro.cmake:76 (find_package)=
<br />&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/u=
sr/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)<br /=
>&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/li=
b/cmake/Qt6Quick/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_depend=
encies)<br />&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-=
linux/usr/lib/cmake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)<br />&nbsp; =
/home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/=
Qt6/Qt6Config.cmake:179 (find_package)<br />&nbsp; CMakeLists.txt:12 (find_=
package)</div>
<div><br />CMake Warning at /home/bstk/Documents/sdk/sysroots/x86_64-fslsdk=
-linux/usr/share/cmake-3.28/Modules/CMakeFindDependencyMacro.cmake:76 (find=
_package):<br />&nbsp; Found package configuration file:</div>
<div>&nbsp; &nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Qml/Qt6QmlConfig.cmake</div>
<div>&nbsp; but it set Qt6Qml_FOUND to FALSE so package "Qt6Qml" is conside=
red to be<br />&nbsp; NOT FOUND.<br />Call Stack (most recent call first):<=
br />&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/us=
r/lib/cmake/Qt6/QtPublicDependencyHelpers.cmake:111 (find_dependency)<br />=
&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib=
/cmake/Qt6Quick/Qt6QuickDependencies.cmake:42 (_qt_internal_find_qt_depende=
ncies)<br />&nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Quick/Qt6QuickConfig.cmake:53 (include)<br />&nbsp; /=
home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-linux/usr/lib/cmake/Q=
t6/Qt6Config.cmake:179 (find_package)<br />&nbsp; CMakeLists.txt:12 (find_p=
ackage)</div>
<div><br />CMake Warning at /home/bstk/Documents/sdk/sysroots/cortexa53-cry=
pto-fsl-linux/usr/lib/cmake/Qt6/Qt6Config.cmake:179 (find_package):<br />&n=
bsp; Found package configuration file:</div>
<div>&nbsp; &nbsp; /home/bstk/Documents/sdk/sysroots/cortexa53-crypto-fsl-l=
inux/usr/lib/cmake/Qt6Quick/Qt6QuickConfig.cmake</div>
<div>&nbsp; but it set Qt6Quick_FOUND to FALSE so package "Qt6Quick" is con=
sidered to<br />&nbsp; be NOT FOUND.<br />Call Stack (most recent call firs=
t):<br />&nbsp; CMakeLists.txt:12 (find_package)</div>
<div><br />-- Configuring incomplete, errors occurred!</div>
<div>&nbsp;</div>
</div>
</blockquote>
<div>&nbsp;</div>
<div>And I'm blocked. The "/home/bstk/Documents/sdk/sysroots/cortexa53-cryp=
to-fsl-linux/usr/lib/libQt6QmlBuiltins.a" doesn;t exist, but this file is i=
n "/home/bstk/Documents/sdk/sysroots/x86_64-fslsdk-linux/usr/lib/libQt6QmlB=
uiltins.a". Do you know where the issue is?&nbsp;<br /><br />I tried the of=
ficial meta-qt6 and from YoeDistro.</div>

--1KODXs3MEwPBVxZCJuFm--

