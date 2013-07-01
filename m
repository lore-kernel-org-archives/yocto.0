Return-Path: <vidal.develone@gmail.com>
Received: from mail-ea0-f179.google.com (mail-ea0-f179.google.com
	[209.85.215.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50F0E0140D
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 05:37:15 -0700 (PDT)
Received: by mail-ea0-f179.google.com with SMTP id b15so2018464eae.38
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 05:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lTnKAja5L7gE+RaiJBUYtlpGDOdEvTKc+RuFUxt9cYY=;
	b=tRjj47sUSr9SmMeMFXk6c7bRIISazIU343BTURH1yVHgxYqMGCV/pU4KUKqJIHXvG/
	S6/Hd5Z0S5qLOdbQLDRPuHxi4Q1R5sZ+UexhInIFnoqN+APQq3y4NOBFDDHwhlU3a+UX
	QnRHR+nRRKZnU4CutPCY9xPdYlsXNwTLlUh0XgsTA/XrGFV3Y/XoeNdLevnJrzuzfjNA
	SKdyecggi9FykjBE1RkcoSLOGy4Mi7qG6M86jf6cBYMUkSPrzD8vmyYsu5nRDHY0sCU4
	i6HlQT2RW9vQTZeMZrLesef5IhSVEPcuJqA7jh8HeD0ZFeWQYeh4ydpgElLUpqMIhXTm
	lm8A==
MIME-Version: 1.0
X-Received: by 10.15.31.198 with SMTP id y46mr21211212eeu.135.1372682234114;
	Mon, 01 Jul 2013 05:37:14 -0700 (PDT)
Received: by 10.223.74.139 with HTTP; Mon, 1 Jul 2013 05:37:13 -0700 (PDT)
Date: Mon, 1 Jul 2013 06:37:13 -0600
Message-ID: <CANwz6nwTb=h0mMevpb07eHGjtaf+fKv3R7-KR=MaAhPNscQOZg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Fedora 18 CentOS 6.4 yocto difference
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
X-List-Received-Date: Mon, 01 Jul 2013 12:37:16 -0000
Content-Type: multipart/alternative; boundary=089e0160c5cef458d604e0727cfd

--089e0160c5cef458d604e0727cfd
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I build images for beagleboard, pandaboard, and beaglebone.  The base
core-image-sato-sdk with the additonal
boost qt-mobility-x11 gsl gnuplot gnuradio
openjdk-7-jdk openjdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao
python-netserver

Build Configuration:
BB_VERSION        = "1.18.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Fedora-18"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "pandaboard"
DISTRO            = "poky"
DISTRO_VERSION    = "1.4.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f"
meta-ti           = "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01"
meta-oe           = "master:ed84e64d22400595b68da4e75b48ab7ecc342aa9"
meta-java         = "master:59696d89fd33df6953dcb2dd54ccd3b362513f28"
meta-yocto-bsp    = "dylan:73f103bf9b2cdf985464dc53bf4f1cfd71d4531f"
These build okay on a Fedora18 x86_64.
On CentOS-6.4-x86_64 I have a problem building the same images. The problem
is with numpy which is required by gnuradio.
This is the error that I get.
| /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
build/temp.linux-x86_64-2.7/numpy/linalg/lapack_litemodule.o
build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -L/usr/lib64
-L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/beagleboard/usr/lib
-Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7 -lgfortran -o
build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so
| ERROR: Function failed: do_compile (see
/home/vidal/POKY/build062913_dylan/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0-r0/temp/log.do_compile.11041
for further information)
ERROR: Task 1470
(/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/python/
python-numpy_1.7.0.bb, do_compile) failed with exit code '1'

If I remove gnuradio I get a rootfs.
NOTE: Tasks Summary: Attempted 7827 tasks of which 681 didn't need to be
rerun and all succeeded.

Summary: There were 11 WARNING messages shown.

After I transfer to a mmc these boot okay.
I am thinking that it is python or gcc that is the problem.
I have found some sites that show how to upgrade Centos 6.4 to a new python
and gcc.  These install in non-standard locations.  Does anyone know how to
tell bitbake where these non-standard locations are located?

The version of python on the CentOS-6.4-x86_64 is
python-2.6.6-36.el6.x86_64.
How to install Python 2.7 and 3.3 on CentOS 6 is at the site below.
                                                              1,1
Top
http://toomuchdata.com/2012/06/25/how-to-install-python-2-7-3-on-centos-6-2/
After running the commands above your newly installed Python interpreter
will be available as /usr/local/bin/python2.7 or /usr/local/bin/python3.3.
The system version of Python 2.6.6 will continue to be available as
/usr/bin/python and /usr/bin/python2.6.
This now has both python 2.6 and python 2.7.  Is this the direction that I
should be trying?

Installing gcc-4.7
cd /etc/yum.reps.d
wget http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo

[testing-1.1-devtools-$releasever]
name=testing 1.1 devtools for CentOS $releasever
baseurl=http://people.centos.org/tru/devtools-1.1/$releasever/$basearch/RPMS
gpgcheck=0

yum --enablerepo=testing-1.1-devtools-6 install devtoolset-1.1-gcc
devtoolset-1.1-gcc-c++ devtoolset-1.1-gcc-gfortran
Installed:
  devtoolset-1.1-gcc.x86_64 0:4.7.2-5.el6
  devtoolset-1.1-gcc-c++.x86_64 0:4.7.2-5.el6
  devtoolset-1.1-gcc-gfortran.x86_64 0:4.7.2-5.el6

Dependency Installed:
  devtoolset-1.1-libquadmath-devel.x86_64 0:4.7.2-5.el6
  devtoolset-1.1-libstdc++-devel.x86_64 0:4.7.2-5.el6
  devtoolset-1.1-runtime.noarch 0:1-13.el6

Complete!

export CPP=/opt/centos/devtoolset-1.1/root/usr/bin/cpp
export CXX=/opt/centos/devtoolset-1.1/root/usr/bin/c++
export CC=/opt/centos/devtoolset-1.1/root/usr/bin/gcc

This is the default gfortran
 gfortran -v
Using built-in specs.
Target: x86_64-redhat-linux
Configured with: ../configure --prefix=/usr --mandir=/usr/share/man
--infodir=/usr/share/info --with-bugurl=http://bugzilla.redhat.com/bugzilla
--enable-bootstrap --enable-shared --enable-threads=posix
--enable-checking=release --with-system-zlib --enable-__cxa_atexit
--disable-libunwind-exceptions --enable-gnu-unique-object
--enable-languages=c,c++,objc,obj-c++,java,fortran,ada --enable-java-awt=gtk
--disable-dssi --with-java-home=/usr/lib/jvm/java-1.5.0-gcj-1.5.0.0/jre
--enable-libgcj-multifile --enable-java-maintainer-mode
--with-ecj-jar=/usr/share/java/eclipse-ecj.jar --disable-libjava-multilib
--with-ppl --with-cloog --with-tune=generic --with-arch_32=i686
--build=x86_64-redhat-linux
Thread model: posix
gcc version 4.4.7 20120313 (Red Hat 4.4.7-3) (GCC)
This is the non-standard gfortran
 /opt/centos/devtoolset-1.1/root/usr/bin/gfortran -v
Using built-in specs.
COLLECT_GCC=/opt/centos/devtoolset-1.1/root/usr/bin/gfortran
COLLECT_LTO_WRAPPER=/opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-linux/4.7.2/lto-wrapper
Target: x86_64-redhat-linux
Configured with: ../configure --prefix=/opt/centos/devtoolset-1.1/root/usr
--mandir=/opt/centos/devtoolset-1.1/root/usr/share/man
--infodir=/opt/centos/devtoolset-1.1/root/usr/share/info
--with-bugurl=http://bugzilla.redhat.com/bugzilla --enable-bootstrap
--enable-shared --enable-threads=posix --enable-checking=release
--disable-build-with-cxx --disable-build-poststage1-with-cxx
--with-system-zlib --enable-__cxa_atexit --disable-libunwind-exceptions
--enable-gnu-unique-object --enable-linker-build-id
--enable-languages=c,c++,fortran,lto --enable-plugin
--with-linker-hash-style=gnu --enable-initfini-array --disable-libgcj
--with-ppl --with-cloog
--with-mpc=/home/centos/rpm/BUILD/gcc-4.7.2-20121015/obj-x86_64-redhat-linux/mpc-install
--with-tune=generic --with-arch_32=i686 --build=x86_64-redhat-linux
Thread model: posix
gcc version 4.7.2 20121015 (Red Hat 4.7.2-5) (GCC)
Any and all help will be appreciated.
thanks
Ed Vidal
vidal.develone@gmail.com or develone@sbcgloabol.net

--089e0160c5cef458d604e0727cfd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br>I build images for beagleboa=
rd, pandaboard, and beaglebone.=A0 The base core-image-sato-sdk with the ad=
ditonal<br>boost qt-mobility-x11 gsl gnuplot gnuradio<br>openjdk-7-jdk open=
jdk-7-jre openjdk-7-vm-jamvm openjdk-7-vm-cacao<br>
python-netserver<br><br>Build Configuration:<br>BB_VERSION=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;1.18.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quo=
t;x86_64-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Fedora-18&quot;<br>=
TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gnueabi&quot;<br>
MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;pandaboard&quot;<br>DISTRO=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DISTRO_VERSION=A0=
=A0=A0 =3D &quot;1.4.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D &quot;armv7a =
vfp neon&quot;<br>TARGET_FPU=A0=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<=
br>
meta<br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 =3D &quot;dylan:73f103bf9b2cdf98546=
4dc53bf4f1cfd71d4531f&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &q=
uot;(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01&quot;<br>meta-oe=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:ed84e64d22400595b68da4e75b48ab=
7ecc342aa9&quot;<br>
meta-java=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;master:59696d89fd33df6953dcb2dd=
54ccd3b362513f28&quot;<br>meta-yocto-bsp=A0=A0=A0 =3D &quot;dylan:73f103bf9=
b2cdf985464dc53bf4f1cfd71d4531f&quot;<br>These build okay on a Fedora18 x86=
_64.<br>On CentOS-6.4-x86_64 I have a problem building the same images. The=
 problem is with numpy which is required by gnuradio.<br>
This is the error that I get.<br>| /usr/bin/gfortran -Wall -Wl,-O1 -Wl,--ha=
sh-style=3Dgnu -Wl,--as-needed build/temp.linux-x86_64-2.7/numpy/linalg/lap=
ack_litemodule.o build/temp.linux-x86_64-2.7/numpy/linalg/python_xerbla.o -=
L/usr/lib64 -L/home/vidal/POKY/build062913_dylan/poky/build/tmp/sysroots/be=
agleboard/usr/lib -Lbuild/temp.linux-x86_64-2.7 -llapack -lblas -lpython2.7=
 -lgfortran -o build/lib.linux-x86_64-2.7/numpy/linalg/lapack_lite.so<br>
| ERROR: Function failed: do_compile (see /home/vidal/POKY/build062913_dyla=
n/poky/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python-numpy/1.7.0=
-r0/temp/log.do_compile.11041 for further information)<br>ERROR: Task 1470 =
(/home/vidal/POKY/build062913_dylan/poky/meta-oe/meta-oe/recipes-devtools/p=
ython/<a href=3D"http://python-numpy_1.7.0.bb">python-numpy_1.7.0.bb</a>, d=
o_compile) failed with exit code &#39;1&#39;<br>
<br>If I remove gnuradio I get a rootfs.<br>NOTE: Tasks Summary: Attempted =
7827 tasks of which 681 didn&#39;t need to be rerun and all succeeded.<br><=
br>Summary: There were 11 WARNING messages shown.<br><br>After I transfer t=
o a mmc these boot okay.<br>
I am thinking that it is python or gcc that is the problem.<br>I have found=
 some sites that show how to upgrade Centos 6.4 to a new python<br>and gcc.=
=A0 These install in non-standard locations.=A0 Does anyone know how to<br>
tell bitbake where these non-standard locations are located?<br><br>The ver=
sion of python on the CentOS-6.4-x86_64 is python-2.6.6-36.el6.x86_64.<br>H=
ow to install Python 2.7 and 3.3 on CentOS 6 is at the site below.<br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 1,1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 Top<br>
<a href=3D"http://toomuchdata.com/2012/06/25/how-to-install-python-2-7-3-on=
-centos-6-2/">http://toomuchdata.com/2012/06/25/how-to-install-python-2-7-3=
-on-centos-6-2/</a><br>After running the commands above your newly installe=
d Python interpreter will be available as /usr/local/bin/python2.7 or /usr/=
local/bin/python3.3. The system version of Python 2.6.6 will continue to be=
 available as /usr/bin/python and /usr/bin/python2.6.<br>
This now has both python 2.6 and python 2.7.=A0 Is this the direction that =
I should be trying?<br><br>Installing gcc-4.7<br>cd /etc/yum.reps.d<br>wget=
 <a href=3D"http://people.centos.org/tru/devtools-1.1/devtools-1.1.repo">ht=
tp://people.centos.org/tru/devtools-1.1/devtools-1.1.repo</a><br>
<br>[testing-1.1-devtools-$releasever]<br>name=3Dtesting 1.1 devtools for C=
entOS $releasever<br>baseurl=3D<a href=3D"http://people.centos.org/tru/devt=
ools-1.1/$releasever/$basearch/RPMS">http://people.centos.org/tru/devtools-=
1.1/$releasever/$basearch/RPMS</a><br>
gpgcheck=3D0<br><br>yum --enablerepo=3Dtesting-1.1-devtools-6 install devto=
olset-1.1-gcc devtoolset-1.1-gcc-c++ devtoolset-1.1-gcc-gfortran<br>Install=
ed:<br>=A0 devtoolset-1.1-gcc.x86_64 0:4.7.2-5.el6<br>=A0 devtoolset-1.1-gc=
c-c++.x86_64 0:4.7.2-5.el6<br>
=A0 devtoolset-1.1-gcc-gfortran.x86_64 0:4.7.2-5.el6<br><br>Dependency Inst=
alled:<br>=A0 devtoolset-1.1-libquadmath-devel.x86_64 0:4.7.2-5.el6<br>=A0 =
devtoolset-1.1-libstdc++-devel.x86_64 0:4.7.2-5.el6<br>=A0 devtoolset-1.1-r=
untime.noarch 0:1-13.el6<br>
<br>Complete!<br><br>export CPP=3D/opt/centos/devtoolset-1.1/root/usr/bin/c=
pp<br>export CXX=3D/opt/centos/devtoolset-1.1/root/usr/bin/c++<br>export CC=
=3D/opt/centos/devtoolset-1.1/root/usr/bin/gcc<br><br>This is the default g=
fortran<br>
=A0gfortran -v<br>Using built-in specs.<br>Target: x86_64-redhat-linux<br>C=
onfigured with: ../configure --prefix=3D/usr --mandir=3D/usr/share/man<br>-=
-infodir=3D/usr/share/info --with-bugurl=3D<a href=3D"http://bugzilla.redha=
t.com/bugzilla">http://bugzilla.redhat.com/bugzilla</a><br>
--enable-bootstrap --enable-shared --enable-threads=3Dposix<br>--enable-che=
cking=3Drelease --with-system-zlib --enable-__cxa_atexit<br>--disable-libun=
wind-exceptions --enable-gnu-unique-object<br>--enable-languages=3Dc,c++,ob=
jc,obj-c++,java,fortran,ada --enable-java-awt=3Dgtk<br>
--disable-dssi --with-java-home=3D/usr/lib/jvm/java-1.5.0-gcj-1.5.0.0/jre<b=
r>--enable-libgcj-multifile --enable-java-maintainer-mode<br>--with-ecj-jar=
=3D/usr/share/java/eclipse-ecj.jar --disable-libjava-multilib<br>--with-ppl=
 --with-cloog --with-tune=3Dgeneric --with-arch_32=3Di686<br>
--build=3Dx86_64-redhat-linux<br>Thread model: posix<br>gcc version 4.4.7 2=
0120313 (Red Hat 4.4.7-3) (GCC)<br>This is the non-standard gfortran<br>=A0=
/opt/centos/devtoolset-1.1/root/usr/bin/gfortran -v<br>Using built-in specs=
.<br>
COLLECT_GCC=3D/opt/centos/devtoolset-1.1/root/usr/bin/gfortran<br>COLLECT_L=
TO_WRAPPER=3D/opt/centos/devtoolset-1.1/root/usr/libexec/gcc/x86_64-redhat-=
linux/4.7.2/lto-wrapper<br>Target: x86_64-redhat-linux<br>Configured with: =
../configure --prefix=3D/opt/centos/devtoolset-1.1/root/usr<br>
--mandir=3D/opt/centos/devtoolset-1.1/root/usr/share/man<br>--infodir=3D/op=
t/centos/devtoolset-1.1/root/usr/share/info<br>--with-bugurl=3D<a href=3D"h=
ttp://bugzilla.redhat.com/bugzilla">http://bugzilla.redhat.com/bugzilla</a>=
 --enable-bootstrap<br>
--enable-shared --enable-threads=3Dposix --enable-checking=3Drelease<br>--d=
isable-build-with-cxx --disable-build-poststage1-with-cxx<br>--with-system-=
zlib --enable-__cxa_atexit --disable-libunwind-exceptions<br>--enable-gnu-u=
nique-object --enable-linker-build-id<br>
--enable-languages=3Dc,c++,fortran,lto --enable-plugin<br>--with-linker-has=
h-style=3Dgnu --enable-initfini-array --disable-libgcj<br>--with-ppl --with=
-cloog<br>--with-mpc=3D/home/centos/rpm/BUILD/gcc-4.7.2-20121015/obj-x86_64=
-redhat-linux/mpc-install<br>
--with-tune=3Dgeneric --with-arch_32=3Di686 --build=3Dx86_64-redhat-linux<b=
r>Thread model: posix<br>gcc version 4.7.2 20121015 (Red Hat 4.7.2-5) (GCC)=
<br></div>Any and all help will be appreciated.<br></div>thanks<br></div>Ed=
 Vidal<br>
</div><a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com<=
/a> or <a href=3D"mailto:develone@sbcgloabol.net">develone@sbcgloabol.net</=
a><br><br><div><div><div><div><div><br></div></div></div></div></div></div>

--089e0160c5cef458d604e0727cfd--
