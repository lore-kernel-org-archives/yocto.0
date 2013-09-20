Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7BBE015AB;
	Thu, 19 Sep 2013 23:45:51 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.90,938,1371052800"; 
   d="scan'208";a="8569339"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 20 Sep 2013 14:42:35 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r8K6jkN3016104;
	Fri, 20 Sep 2013 14:45:46 +0800
Received: from [127.0.0.1] ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013092014441241-1650808 ;
	Fri, 20 Sep 2013 14:44:12 +0800 
Message-ID: <523BEF04.5070308@cn.fujitsu.com>
Date: Fri, 20 Sep 2013 14:45:24 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/09/20 14:44:12,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/09/20 14:44:12
Subject: Is this a bug of binutils
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
X-List-Received-Date: Fri, 20 Sep 2013 06:45:55 -0000
Content-Type: text/plain; charset=Shift_JIS
Content-Transfer-Encoding: quoted-printable

Hi=81Call

I got a big problem when using the cross-toolchain to compile a simple C pr=
ogram.
This problem since 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
which is to upgrade the binutils from 2.22 to 2.23.1

what I do is as follows, any help or ideas ?

I) Build my cross-toolchain
# git clone http://git.yoctoproject.org/git/poky/.git
# cd poky
# git checkout 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 -b tcmode-default
...skip some steps...
# bitbake meta-toolchain
Loading cache: 100% |######################################################=
######################################| ETA: 00:00:00
Loaded 1122 entries from dependency cache.

Build Configuration:
BB=5FVERSION =3D "1.17.0"
BUILD=5FSYS =3D "x86=5F64-linux"
NATIVELSBSTRING =3D "CentOS-6.3"
TARGET=5FSYS =3D "x86=5F64-poky-linux"
MACHINE =3D "qemux86-64"
DISTRO =3D "poky"
DISTRO=5FVERSION =3D "1.3+snapshot-20130912"
TUNE=5FFEATURES =3D "m64"
TARGET=5FFPU =3D ""
meta
meta-yocto
meta-yocto-bsp =3D "tcmode-default:3ae71c74c71f13a390b21b4c3ead04e51aaa82b8"

..cost a long time..
all of the build work successfully

II) Install my cross-toolchain
# ./poky-eglibc-x86=5F64-x86=5F64-toolchain-1.3+snapshot-20130912.sh
Enter target directory for SDK (default: /opt/poky/1.3+snapshot): toolchain=
-1.3-tcmode-default

III=81j compile a simple C program
# cat test.c
int main ()
{
printf("hello world\n");
return 0;
}
# source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-linux
# $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
test.c: In function 'main':
test.c:3:9: warning: incompatible implicit declaration of built-in function=
 'printf' [enabled by default]
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompatibl=
e /lib/libc.so.6 when searching for /lib/libc.so.6
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /lib/lib=
c.so.6
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompatibl=
e /usr/lib/libc=5Fnonshared.a when searching for /usr/lib/libc=5Fnonshared.a
/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-defaul=
t/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libexec=
/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /usr/lib=
/libc=5Fnonshared.a
collect2: error: ld returned 1 exit status


#cat toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-linux
export PATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3=
-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin:/yocto/fnst/lizj/bu=
ild=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64=
-pokysdk-linux/usr/bin/x86=5F64-poky-linux:$PATH
export PKG=5FCONFIG=5FSYSROOT=5FDIR=3D/yocto/fnst/lizj/build=5Fyocto/x86-64=
-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux
export PKG=5FCONFIG=5FPATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.=
3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/pkgconf=
ig
export CONFIG=5FSITE=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/tool=
chain-1.3-tcmode-default/site-config-x86=5F64-poky-linux
export CC=3D"x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/lizj/buil=
d=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-p=
oky-linux"
export CXX=3D"x86=5F64-poky-linux-g++ -m64 --sysroot=3D/yocto/fnst/lizj/bui=
ld=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-=
poky-linux"
export CPP=3D"x86=5F64-poky-linux-gcc -E -m64 --sysroot=3D/yocto/fnst/lizj/=
build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F=
64-poky-linux"
export AS=3D"x86=5F64-poky-linux-as "
export LD=3D"x86=5F64-poky-linux-ld --sysroot=3D/yocto/fnst/lizj/build=5Fyo=
cto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-li=
nux"
export GDB=3Dx86=5F64-poky-linux-gdb
export STRIP=3Dx86=5F64-poky-linux-strip
export RANLIB=3Dx86=5F64-poky-linux-ranlib
export OBJCOPY=3Dx86=5F64-poky-linux-objcopy
export OBJDUMP=3Dx86=5F64-poky-linux-objdump
export AR=3Dx86=5F64-poky-linux-ar
export NM=3Dx86=5F64-poky-linux-nm
export M4=3Dm4
export TARGET=5FPREFIX=3Dx86=5F64-poky-linux-
export CONFIGURE=5FFLAGS=3D"--target=3Dx86=5F64-poky-linux --host=3Dx86=5F6=
4-poky-linux --build=3Dx86=5F64-linux --with-libtool-sysroot=3D/yocto/fnst/=
lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x=
86=5F64-poky-linux"
export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types"
export CXXFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fpermissiv=
e"
export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
export CPPFLAGS=3D""
export OECORE=5FNATIVE=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x86-64-y=
octo-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux"
export OECORE=5FTARGET=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x86-64-y=
octo-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux"
export OECORE=5FACLOCAL=5FOPTS=3D"-I /yocto/fnst/lizj/build=5Fyocto/x86-64-=
yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/=
share/aclocal"
export OECORE=5FDISTRO=5FVERSION=3D"1.3+snapshot-20130912"
export OECORE=5FSDK=5FVERSION=3D"1.3+snapshot"

--=20
Best regards.
Li Zhijian (8555)


=

