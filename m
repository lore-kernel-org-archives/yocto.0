Subject: Building a different GCC version in SDK vs GCC used to build the rootfs/image
To: yocto@lists.yoctoproject.org
From: greghwang@gmail.com
X-Originating-Location: Billerica, Massachusetts, US (192.58.132.250)
X-Originating-Platform: Linux Chrome 90
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Jun 2021 07:57:05 -0700
Message-ID: <n4Zy.1623337025602064118.isEa@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DQ6f3ZSRIqK8Jb0TpZcf"

--DQ6f3ZSRIqK8Jb0TpZcf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The backstory is I'm supporting a legacy system built with the Jethro branc=
h and gcc 5.x.=C2=A0 I'm wondering instead of upgrading the underlying yoct=
o layers to a more recent branch like Thud which supports gcc 8.2, is there=
 a way to leave the image built with gcc 5, but build a new cross compiler =
toolchain use gcc 8.2.=C2=A0 The application team I'm supporting really wan=
ts to use C++17 features, and is unable to with gcc 5.x as their crosscompi=
ler.=C2=A0 I would try to put the 2.28 glibc and 8.2 gcc-runtime libraries =
on the image and rely on forward compatibility of the libs to ensure compat=
ibility with gcc 5.=C2=A0 Otherwise, the image would still be using gcc-5 a=
s the compiler for all the recipes.

I did some experiments on Thud poky and was able to get a different versio=
n of gcc in the toolchain by modifying PREFERRED_VERSION_gcc_corss-canadian=
-${TRANSLATED_TARGET_ARCH}, however I quickly ran into problem trying compi=
le hello-world with g++.=C2=A0 It looked like the compiler was trying to fi=
nd its header files in

sysroots/aarch64-oe-linux/usr/include/c++/<gcc version>

but now I have a mismatched gcc version from what is on the sysroot and th=
e cross compiler can't find it's headers.

I'm wondering if forcing a different version of gcc in the SDK is even fea=
sible, or maybe I should be looking at external toolchains or some other so=
lution to support my application team's need for an upgraded version of gcc=
.

--DQ6f3ZSRIqK8Jb0TpZcf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The backstory is I'm supporting a legacy system built with the Jethro branc=
h and gcc 5.x.&nbsp; I'm wondering instead of upgrading the underlying yoct=
o layers to a more recent branch like Thud which supports gcc 8.2, is there=
 a way to leave the image built with gcc 5, but build a new cross compiler =
toolchain use gcc 8.2.&nbsp; The application team I'm supporting really wan=
ts to use C++17 features, and is unable to with gcc 5.x as their crosscompi=
ler.&nbsp; I would try to put the 2.28 glibc and 8.2 gcc-runtime libraries =
on the image and rely on forward compatibility of the libs to ensure compat=
ibility with gcc 5.&nbsp; Otherwise, the image would still be using gcc-5 a=
s the compiler for all the recipes.<br /><br />I did some experiments on Th=
ud poky and was able to get a different version of gcc in the toolchain by =
modifying PREFERRED_VERSION_gcc_corss-canadian-${TRANSLATED_TARGET_ARCH}, h=
owever I quickly ran into problem trying compile hello-world with g++.&nbsp=
; It looked like the compiler was trying to find its header files in<br /><=
br /><span style=3D"color: #172b4d; font-family: -apple-system, BlinkMacSys=
temFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, 'Fira Sans', 'Droid Sans', 'He=
lvetica Neue', sans-serif; background-color: #f4f5f7;">sysroots/aarch64-oe-=
linux/usr/include/c++/&lt;gcc version&gt;</span><br /><br />but now I have =
a mismatched gcc version from what is on the sysroot and the cross compiler=
 can't find it's headers.<br /><br />I'm wondering if forcing a different v=
ersion of gcc in the SDK is even feasible, or maybe I should be looking at =
external toolchains or some other solution to support my application team's=
 need for an upgraded version of gcc.

--DQ6f3ZSRIqK8Jb0TpZcf--
