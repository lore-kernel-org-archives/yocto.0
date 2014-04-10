Return-Path: <kazuya.nisimura@gmail.com>
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 624CBE00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 00:49:28 -0700 (PDT)
Received: by mail-qg0-f44.google.com with SMTP id a108so3537255qge.3
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 00:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=K6qJZBmEdlXeDRBnzUjVXwRAjVh852eZCtizSLm8ors=;
	b=njWelzFotHuvugOVq4ybMKGGfMQDDBGeFU5lR1GV3xzQFfg/YYFhDs4ABq515Awygc
	VAS9YbvVSU3Q9YY8YL0D43a37KXJwglHij4xKDLOJQdLbaYgD0NwOZaWkI/uq6n2n87p
	mkVOjjqFhTOrX5zRIYV8geXBFC5X6rTzuxFUB3JPSqe4scZHibtMOVlippVcs2ZGOZD5
	Xic+arymlnVeewO8fkJwcxoKXXsu8o9dz/JnlbPsKm9lD+F9n54qAcCNnfpppCdAZysp
	1r7u+wSdSZDKu/2XrHq5K3pcIuaySdSv1QVjW6Z3vAjD1cNCZcu47HEGdNrB3V4Ol2ds
	Swhg==
MIME-Version: 1.0
X-Received: by 10.140.109.100 with SMTP id k91mr17744631qgf.12.1397116167657; 
	Thu, 10 Apr 2014 00:49:27 -0700 (PDT)
Received: by 10.96.148.194 with HTTP; Thu, 10 Apr 2014 00:49:27 -0700 (PDT)
Date: Thu, 10 Apr 2014 16:49:27 +0900
Message-ID: <CA+o05Tx8fqSHXdEeRDPODvCt8CuUupSZJ8buKoCsr+EyG+6nRg@mail.gmail.com>
From: Kazuya Nishimura <kazuya.nisimura@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-linaro][PATCH] external-linaro-toolchain: Fix for 32bit armhf build
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
X-List-Received-Date: Thu, 10 Apr 2014 07:49:29 -0000
Content-Type: multipart/alternative; boundary=001a1139b43ae21d2d04f6ab7456

--001a1139b43ae21d2d04f6ab7456
Content-Type: text/plain; charset=ISO-8859-1

From: Kazuya Nishimura <kazuya.nisimura@gmail.com>

Use ld-linux-armhf.so.3 if call convention hard.
Fix QA issue errors by packaging approprieately.
Add eglibc-locale_2.19.bbappend to fix QA issue error.
  An empty directory is created while do_install.

Signed-off-by: Kazuya Nishimura <kazuya.nisimura@gmail.com>
---
 .../conf/distro/include/tcmode-external-linaro.inc |    1 +
 .../eglibc/eglibc-locale_2.19.bbappend             |   23 ++++++++++++
 .../external-linaro-toolchain.bb                   |   38
++++++++++++++++----
 3 files changed, 56 insertions(+), 6 deletions(-)
 create mode 100755
meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend

diff --git
a/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
b/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
index 1d9fd59..26d464c 100644
--- a/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
+++ b/meta-linaro-toolchain/conf/distro/include/tcmode-external-linaro.inc
@@ -41,6 +41,7 @@ DISTRO_FEATURES_LIBC = "ipv4 ipv6 libc-backtrace
libc-big-macros libc-bsd libc-c
  libc-getlogin libc-idn libc-inet-anl libc-libm libc-libm-big \
  libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn
libc-streams libc-sunrpc \
  libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar
libc-posix-regexp libc-posix-regexp-glibc \
+ libc-charsets libc-locales libc-locale-code \
  libc-posix-wchar-io"

 ENABLE_BINARY_LOCALE_GENERATION = "0"
diff --git
a/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
b/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
new file mode 100755
index 0000000..3e91e74
--- /dev/null
+++ b/meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19.bbappend
@@ -0,0 +1,23 @@
+do_install () {
+ mkdir -p ${D}${datadir}
+ if [ -n "$(ls ${LOCALETREESRC}/${bindir})" ]; then
+ mkdir -p ${D}${bindir}
+ cp -fpPR ${LOCALETREESRC}/${bindir}/* ${D}${bindir}
+ fi
+ if [ -n "$(ls ${LOCALETREESRC}/${localedir})" ]; then
+ mkdir -p ${D}${localedir}
+ cp -fpPR ${LOCALETREESRC}/${localedir}/* ${D}${localedir}
+ fi
+ if [ -e ${LOCALETREESRC}/${libdir}/gconv ]; then
+ mkdir -p ${D}${libdir}
+ cp -fpPR ${LOCALETREESRC}/${libdir}/gconv ${D}${libdir}
+ fi
+ if [ -e ${LOCALETREESRC}/${datadir}/i18n ]; then
+ cp -fpPR ${LOCALETREESRC}/${datadir}/i18n ${D}${datadir}
+ fi
+ if [ -e ${LOCALETREESRC}/${datadir}/locale ]; then
+ cp -fpPR ${LOCALETREESRC}/${datadir}/locale ${D}${datadir}
+ fi
+ chown root.root -R ${D}
+ cp -fpPR ${LOCALETREESRC}/SUPPORTED ${WORKDIR}
+}
diff --git
a/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/
external-linaro-toolchain.bbb/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/
external-linaro-toolchain.bb
index 240d550..47fd4ca 100644
--- a/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/
external-linaro-toolchain.bb
+++ b/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/
external-linaro-toolchain.bb
@@ -41,6 +41,12 @@ PROVIDES += "\
  libitm \
  libitm-dev \
  libitm-staticdev \
+ libasan \
+ libasan-dev \
+ libasan-staticdev \
+ libatomic \
+ libatomic-dev \
+ libatomic-staticdev \
  virtual/linux-libc-headers \
 "

@@ -50,12 +56,11 @@ PR = "r2"
 # https://launchpad.net/linaro-toolchain-binaries
 SRC_URI = "file://SUPPORTED"

+LDLINUX32 = "${@base_contains("TUNE_FEATURES", "callconvention-hard",
"ld-linux-armhf.so.3", "ld-linux.so.3",d)}"
+
 do_install() {
  install -d ${D}${base_libdir}
- install -d ${D}${bindir}
- install -d ${D}${sbindir}
  install -d ${D}${libdir}
- install -d ${D}${libexecdir}
  install -d ${D}${datadir}
  install -d ${D}${includedir}

@@ -79,7 +84,7 @@ do_install() {
  fi

  # fix up the copied symlinks (they are still pointing to the multiarch
directory)
- linker_name="${@base_contains("TUNE_FEATURES", "aarch64",
"ld-linux-aarch64.so.1", "ld-linux.so.3",d)}"
+ linker_name="${@base_contains("TUNE_FEATURES", "aarch64",
"ld-linux-aarch64.so.1", "${LDLINUX32}",d)}"
  ln -sf ld-${ELT_VER_LIBC}.so ${D}${base_libdir}/${linker_name}
  ln -sf ../../lib/libnsl.so.1 ${D}${libdir}/libnsl.so
  ln -sf ../../lib/librt.so.1 ${D}${libdir}/librt.so
@@ -144,6 +149,12 @@ PACKAGES =+ "\
  libitm \
  libitm-dev \
  libitm-staticdev \
+ libasan \
+ libasan-dev \
+ libasan-staticdev \
+ libatomic \
+ libatomic-dev \
+ libatomic-staticdev \
 "

 INSANE_SKIP_${PN}-dbg = "staticdev"
@@ -282,14 +293,16 @@ FILES_libssp-staticdev = " \

 FILES_libgfortran = "${base_libdir}/libgfortran.so.*"
 FILES_libgfortran-dev = " \
-  ${base_libdir}/libgfortran.so"
+  ${base_libdir}/libgfortran.so \
+  ${base_libdir}/libgfortran.spec"
 FILES_libgfortran-staticdev = " \
   ${base_libdir}/libgfortran.a \
   ${base_libdir}/libgfortranbegin.a"

 FILES_libmudflap = "${base_libdir}/libmudflap*.so.*"
 FILES_libmudflap-dev = "\
-  ${base_libdir}/libmudflap*.so \
+  ${base_libdir}/libmudflap*.so"
+FILES_libmudflap-staticdev = "\
   ${base_libdir}/libmudflap*.a \
   ${base_libdir}/libmudflap*.la"

@@ -313,6 +326,19 @@ FILES_libgomp-dev = "\
 FILES_libgomp-staticdev = "\
   ${base_libdir}/libgomp*.a \
   "
+
+FILES_libasan = "\
+  ${base_libdir}/libasan.so.* \
+  "
+FILES_libasan-dev = "\
+  ${base_libdir}/libasan.so \
+  "
+FILES_libatomic ="\
+  ${base_libdir}/libatomic.so.* \
+  "
+FILES_libatomic-dev = "\
+  ${base_libdir}/libatomic.so \
+  "
 ELT_VER_MAIN ??= ""

 python () {
-- 
1.7.9.5

--001a1139b43ae21d2d04f6ab7456
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>From: Kazuya Nishimura &lt;<a href=3D"mailto:kazuya.n=
isimura@gmail.com" target=3D"_blank">kazuya.nisimura@gmail.com</a>&gt;</div=
><div><br></div><div><div>Use ld-linux-armhf.so.3 if call convention hard.<=
/div>
<div>Fix QA issue errors by packaging approprieately.</div>
<div>Add eglibc-locale_2.19.bbappend to fix QA issue error.</div><div>=A0 A=
n empty directory is created while do_install.</div><div><br></div><div>Sig=
ned-off-by: Kazuya Nishimura &lt;<a href=3D"mailto:kazuya.nisimura@gmail.co=
m" target=3D"_blank">kazuya.nisimura@gmail.com</a>&gt;</div>

<div>---</div><div>=A0.../conf/distro/include/tcmode-external-linaro.inc | =
=A0 =A01 +</div><div>=A0.../eglibc/eglibc-locale_2.19.bbappend =A0 =A0 =A0 =
=A0 =A0 =A0 | =A0 23 ++++++++++++</div><div>=A0.../<a href=3D"http://extern=
al-linaro-toolchain.bb" target=3D"_blank">external-linaro-toolchain.bb</a> =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0 38 ++++++++++++++++----</div>

<div>=A03 files changed, 56 insertions(+), 6 deletions(-)</div><div>=A0crea=
te mode 100755 meta-linaro-toolchain/recipes-core/eglibc/eglibc-locale_2.19=
.bbappend</div><div><br></div><div>diff --git a/meta-linaro-toolchain/conf/=
distro/include/tcmode-external-linaro.inc b/meta-linaro-toolchain/conf/dist=
ro/include/tcmode-external-linaro.inc</div>

<div>index 1d9fd59..26d464c 100644</div><div>--- a/meta-linaro-toolchain/co=
nf/distro/include/tcmode-external-linaro.inc</div><div>+++ b/meta-linaro-to=
olchain/conf/distro/include/tcmode-external-linaro.inc</div><div>@@ -41,6 +=
41,7 @@ DISTRO_FEATURES_LIBC =3D &quot;ipv4 ipv6 libc-backtrace libc-big-ma=
cros libc-bsd libc-c</div>

<div>=A0<span style=3D"white-space:pre-wrap">			</span>libc-getlogin libc-i=
dn libc-inet-anl libc-libm libc-libm-big \</div><div>=A0<span style=3D"whit=
e-space:pre-wrap">			</span>libc-memusage libc-nis libc-nsswitch libc-rcmd =
libc-rtld-debug libc-spawn libc-streams libc-sunrpc \</div>

<div>=A0<span style=3D"white-space:pre-wrap">			</span>libc-utmp libc-utmpx=
 libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-gl=
ibc \</div><div>+<span style=3D"white-space:pre-wrap">			</span>libc-charse=
ts libc-locales libc-locale-code \</div>

<div>=A0<span style=3D"white-space:pre-wrap">			</span>libc-posix-wchar-io&=
quot;</div><div>=A0</div><div>=A0ENABLE_BINARY_LOCALE_GENERATION =3D &quot;=
0&quot;</div><div>diff --git a/meta-linaro-toolchain/recipes-core/eglibc/eg=
libc-locale_2.19.bbappend b/meta-linaro-toolchain/recipes-core/eglibc/eglib=
c-locale_2.19.bbappend</div>

<div>new file mode 100755</div><div>index 0000000..3e91e74</div><div>--- /d=
ev/null</div><div>+++ b/meta-linaro-toolchain/recipes-core/eglibc/eglibc-lo=
cale_2.19.bbappend</div><div>@@ -0,0 +1,23 @@</div><div>+do_install () {</d=
iv>

<div>+<span style=3D"white-space:pre-wrap">	</span>mkdir -p ${D}${datadir}<=
/div><div>+<span style=3D"white-space:pre-wrap">	</span>if [ -n &quot;$(ls =
${LOCALETREESRC}/${bindir})&quot; ]; then</div><div>+<span style=3D"white-s=
pace:pre-wrap">		</span>mkdir -p ${D}${bindir}</div>

<div>+<span style=3D"white-space:pre-wrap">		</span>cp -fpPR ${LOCALETREESR=
C}/${bindir}/* ${D}${bindir}</div><div>+<span style=3D"white-space:pre-wrap=
">	</span>fi</div><div>+<span style=3D"white-space:pre-wrap">	</span>if [ -=
n &quot;$(ls ${LOCALETREESRC}/${localedir})&quot; ]; then</div>

<div>+<span style=3D"white-space:pre-wrap">		</span>mkdir -p ${D}${localedi=
r}</div><div>+<span style=3D"white-space:pre-wrap">		</span>cp -fpPR ${LOCA=
LETREESRC}/${localedir}/* ${D}${localedir}</div><div>+<span style=3D"white-=
space:pre-wrap">	</span>fi</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>if [ -e ${LOCALETREESRC}=
/${libdir}/gconv ]; then</div><div>+<span style=3D"white-space:pre-wrap">		=
</span>mkdir -p ${D}${libdir}</div><div>+<span style=3D"white-space:pre-wra=
p">		</span>cp -fpPR ${LOCALETREESRC}/${libdir}/gconv ${D}${libdir}</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>fi</div><div>+<span styl=
e=3D"white-space:pre-wrap">	</span>if [ -e ${LOCALETREESRC}/${datadir}/i18n=
 ]; then</div><div>+<span style=3D"white-space:pre-wrap">		</span>cp -fpPR =
${LOCALETREESRC}/${datadir}/i18n ${D}${datadir}</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>fi</div><div>+<span styl=
e=3D"white-space:pre-wrap">	</span>if [ -e ${LOCALETREESRC}/${datadir}/loca=
le ]; then</div><div>+<span style=3D"white-space:pre-wrap">		</span>cp -fpP=
R ${LOCALETREESRC}/${datadir}/locale ${D}${datadir}</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>fi</div><div>+<span styl=
e=3D"white-space:pre-wrap">	</span>chown root.root -R ${D}</div><div>+<span=
 style=3D"white-space:pre-wrap">	</span>cp -fpPR ${LOCALETREESRC}/SUPPORTED=
 ${WORKDIR}</div>

<div>+}</div><div>diff --git a/meta-linaro-toolchain/recipes-devtools/exter=
nal-linaro-toolchain/<a href=3D"http://external-linaro-toolchain.bb" target=
=3D"_blank">external-linaro-toolchain.bb</a> b/meta-linaro-toolchain/recipe=
s-devtools/external-linaro-toolchain/<a href=3D"http://external-linaro-tool=
chain.bb" target=3D"_blank">external-linaro-toolchain.bb</a></div>

<div>index 240d550..47fd4ca 100644</div><div>--- a/meta-linaro-toolchain/re=
cipes-devtools/external-linaro-toolchain/<a href=3D"http://external-linaro-=
toolchain.bb" target=3D"_blank">external-linaro-toolchain.bb</a></div><div>
+++ b/meta-linaro-toolchain/recipes-devtools/external-linaro-toolchain/<a h=
ref=3D"http://external-linaro-toolchain.bb" target=3D"_blank">external-lina=
ro-toolchain.bb</a></div>
<div>@@ -41,6 +41,12 @@ PROVIDES +=3D &quot;\</div><div>=A0<span style=3D"w=
hite-space:pre-wrap">	</span>libitm \</div><div>=A0<span style=3D"white-spa=
ce:pre-wrap">	</span>libitm-dev \</div><div>=A0<span style=3D"white-space:p=
re-wrap">	</span>libitm-staticdev \</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>libasan \</div><div>+<sp=
an style=3D"white-space:pre-wrap">	</span>libasan-dev \</div><div>+<span st=
yle=3D"white-space:pre-wrap">	</span>libasan-staticdev \</div><div>
+<span style=3D"white-space:pre-wrap">	</span>libatomic \</div><div>+<span =
style=3D"white-space:pre-wrap">	</span>libatomic-dev \</div><div>+<span sty=
le=3D"white-space:pre-wrap">	</span>libatomic-staticdev \</div><div>
=A0<span style=3D"white-space:pre-wrap">	</span>virtual/linux-libc-headers =
\</div><div>=A0&quot;</div><div>=A0</div><div>@@ -50,12 +56,11 @@ PR =3D &q=
uot;r2&quot;</div><div>=A0# <a href=3D"https://launchpad.net/linaro-toolcha=
in-binaries" target=3D"_blank">https://launchpad.net/linaro-toolchain-binar=
ies</a></div>

<div>=A0SRC_URI =3D &quot;file://SUPPORTED&quot;</div><div>=A0</div><div>+L=
DLINUX32 =3D &quot;${@base_contains(&quot;TUNE_FEATURES&quot;, &quot;callco=
nvention-hard&quot;, &quot;ld-linux-armhf.so.3&quot;, &quot;ld-linux.so.3&q=
uot;,d)}&quot;</div>

<div>+</div><div>=A0do_install() {</div><div>=A0<span style=3D"white-space:=
pre-wrap">	</span>install -d ${D}${base_libdir}</div><div>-<span style=3D"w=
hite-space:pre-wrap">	</span>install -d ${D}${bindir}</div><div>-<span styl=
e=3D"white-space:pre-wrap">	</span>install -d ${D}${sbindir}</div>

<div>=A0<span style=3D"white-space:pre-wrap">	</span>install -d ${D}${libdi=
r}</div><div>-<span style=3D"white-space:pre-wrap">	</span>install -d ${D}$=
{libexecdir}</div><div>=A0<span style=3D"white-space:pre-wrap">	</span>inst=
all -d ${D}${datadir}</div>

<div>=A0<span style=3D"white-space:pre-wrap">	</span>install -d ${D}${inclu=
dedir}</div><div>=A0</div><div>@@ -79,7 +84,7 @@ do_install() {</div><div>=
=A0<span style=3D"white-space:pre-wrap">	</span>fi</div><div>=A0</div><div>=
=A0<span style=3D"white-space:pre-wrap">	</span># fix up the copied symlink=
s (they are still pointing to the multiarch directory)</div>

<div>-<span style=3D"white-space:pre-wrap">	</span>linker_name=3D&quot;${@b=
ase_contains(&quot;TUNE_FEATURES&quot;, &quot;aarch64&quot;, &quot;ld-linux=
-aarch64.so.1&quot;, &quot;ld-linux.so.3&quot;,d)}&quot;</div><div>+<span s=
tyle=3D"white-space:pre-wrap">	</span>linker_name=3D&quot;${@base_contains(=
&quot;TUNE_FEATURES&quot;, &quot;aarch64&quot;, &quot;ld-linux-aarch64.so.1=
&quot;, &quot;${LDLINUX32}&quot;,d)}&quot;</div>

<div>=A0<span style=3D"white-space:pre-wrap">	</span>ln -sf ld-${ELT_VER_LI=
BC}.so ${D}${base_libdir}/${linker_name}</div><div>=A0<span style=3D"white-=
space:pre-wrap">	</span>ln -sf ../../lib/libnsl.so.1 ${D}${libdir}/libnsl.s=
o</div>

<div>=A0<span style=3D"white-space:pre-wrap">	</span>ln -sf ../../lib/librt=
.so.1 ${D}${libdir}/librt.so</div><div>@@ -144,6 +149,12 @@ PACKAGES =3D+ &=
quot;\</div><div>=A0<span style=3D"white-space:pre-wrap">	</span>libitm \</=
div>
<div>=A0<span style=3D"white-space:pre-wrap">	</span>libitm-dev \</div><div=
>=A0<span style=3D"white-space:pre-wrap">	</span>libitm-staticdev \</div><d=
iv>+<span style=3D"white-space:pre-wrap">	</span>libasan \</div><div>
+<span style=3D"white-space:pre-wrap">	</span>libasan-dev \</div><div>+<spa=
n style=3D"white-space:pre-wrap">	</span>libasan-staticdev \</div><div>+<sp=
an style=3D"white-space:pre-wrap">	</span>libatomic \</div><div>+<span styl=
e=3D"white-space:pre-wrap">	</span>libatomic-dev \</div>

<div>+<span style=3D"white-space:pre-wrap">	</span>libatomic-staticdev \</d=
iv><div>=A0&quot;</div><div>=A0</div><div>=A0INSANE_SKIP_${PN}-dbg =3D &quo=
t;staticdev&quot;</div><div>@@ -282,14 +293,16 @@ FILES_libssp-staticdev =
=3D &quot; \</div>

<div>=A0</div><div>=A0FILES_libgfortran =3D &quot;${base_libdir}/libgfortra=
n.so.*&quot;</div><div>=A0FILES_libgfortran-dev =3D &quot; \</div><div>- =
=A0${base_libdir}/libgfortran.so&quot;</div><div>+ =A0${base_libdir}/libgfo=
rtran.so \</div>

<div>+ =A0${base_libdir}/libgfortran.spec&quot;</div><div>=A0FILES_libgfort=
ran-staticdev =3D &quot; \</div><div>=A0 =A0${base_libdir}/libgfortran.a \<=
/div><div>=A0 =A0${base_libdir}/libgfortranbegin.a&quot;</div><div>=A0</div=
><div>=A0FILES_libmudflap =3D &quot;${base_libdir}/libmudflap*.so.*&quot;</=
div>

<div>=A0FILES_libmudflap-dev =3D &quot;\</div><div>- =A0${base_libdir}/libm=
udflap*.so \</div><div>+ =A0${base_libdir}/libmudflap*.so&quot;</div><div>+=
FILES_libmudflap-staticdev =3D &quot;\</div><div>=A0 =A0${base_libdir}/libm=
udflap*.a \</div>

<div>=A0 =A0${base_libdir}/libmudflap*.la&quot;</div><div>=A0</div><div>@@ =
-313,6 +326,19 @@ FILES_libgomp-dev =3D &quot;\</div><div>=A0FILES_libgomp-=
staticdev =3D &quot;\</div><div>=A0 =A0${base_libdir}/libgomp*.a \</div><di=
v>=A0 =A0&quot;</div>

<div>+</div><div>+FILES_libasan =3D &quot;\</div><div>+ =A0${base_libdir}/l=
ibasan.so.* \</div><div>+ =A0&quot;</div><div>+FILES_libasan-dev =3D &quot;=
\</div><div>+ =A0${base_libdir}/libasan.so \</div><div>+ =A0&quot;</div><di=
v>+FILES_libatomic =3D&quot;\</div>

<div>+ =A0${base_libdir}/libatomic.so.* \</div><div>+ =A0&quot;</div><div>+=
FILES_libatomic-dev =3D &quot;\</div><div>+ =A0${base_libdir}/libatomic.so =
\</div><div>+ =A0&quot;</div><div>=A0ELT_VER_MAIN ??=3D &quot;&quot;</div><=
div>=A0</div>

<div>=A0python () {</div><div>--=A0</div><div>1.7.9.5</div><div><br></div><=
/div></div>

--001a1139b43ae21d2d04f6ab7456--
