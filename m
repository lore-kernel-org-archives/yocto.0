Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0074E015AB;
	Fri, 20 Sep 2013 02:40:28 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.90,938,1371052800"; 
   d="scan'208";a="8569953"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 20 Sep 2013 17:37:13 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r8K9eOCH025337;
	Fri, 20 Sep 2013 17:40:25 +0800
Received: from [127.0.0.1] ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013092017385056-1654949 ;
	Fri, 20 Sep 2013 17:38:50 +0800 
Message-ID: <523C17F3.3050404@cn.fujitsu.com>
Date: Fri, 20 Sep 2013 17:40:03 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
In-Reply-To: <20130920084330.GA14107@lpalcu-linux>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/09/20 17:38:50,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/09/20 17:38:50
Cc: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: Is this a bug of binutils
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
X-List-Received-Date: Fri, 20 Sep 2013 09:40:29 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

at 2013-9-20 16:43, Laurentiu Palcu wrote:
> Hi,
>
> On Fri, Sep 20, 2013 at 02:45:24PM +0800, Li Zhijian wrote:
>> Hi=EF=BC=8Call
>>
>> I got a big problem when using the cross-toolchain to compile a simple C=
 program.
>> This problem since 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
>> which is to upgrade the binutils from 2.22 to 2.23.1
>>
>> what I do is as follows, any help or ideas ?
>>
>> I) Build my cross-toolchain
>> # git clone http://git.yoctoproject.org/git/poky/.git
>> # cd poky
>> # git checkout 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 -b tcmode-default
>> ...skip some steps...
>> # bitbake meta-toolchain
>> Loading cache: 100% |###################################################=
#########################################| ETA: 00:00:00
>> Loaded 1122 entries from dependency cache.
>>
>> Build Configuration:
>> BB=5FVERSION =3D "1.17.0"
>> BUILD=5FSYS =3D "x86=5F64-linux"
>> NATIVELSBSTRING =3D "CentOS-6.3"
>> TARGET=5FSYS =3D "x86=5F64-poky-linux"
>> MACHINE =3D "qemux86-64"
>> DISTRO =3D "poky"
>> DISTRO=5FVERSION =3D "1.3+snapshot-20130912"
>> TUNE=5FFEATURES =3D "m64"
>> TARGET=5FFPU =3D ""
>> meta
>> meta-yocto
>> meta-yocto-bsp =3D "tcmode-default:3ae71c74c71f13a390b21b4c3ead04e51aaa8=
2b8"
>>
>> ..cost a long time..
>> all of the build work successfully
>>
>> II) Install my cross-toolchain
>> # ./poky-eglibc-x86=5F64-x86=5F64-toolchain-1.3+snapshot-20130912.sh
>> Enter target directory for SDK (default: /opt/poky/1.3+snapshot): toolch=
ain-1.3-tcmode-default
>>
>> III=EF=BC=89 compile a simple C program
>> # cat test.c
>> int main ()
>> {
>> printf("hello world\n");
>> return 0;
>> }
>> # source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-li=
nux
>> # $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
> Technically, for this simple program, it's enough to do:
>
> $CC -o test test.c
i know that is enough and it is compiled OK
but in the case with -L option ,it is failed


> The $CC contains the sysroot option and the linker will automatically
> prefix /lib and /usr/lib with the target sysroot. So, it should be able
> to compile just fine.

I haved source the toolchian environment which is installed by
./poky-eglibc-x86=5F64-x86=5F64-toolchain-1.3+snapshot-20130912.sh and i th=
ink
that would include all the correct environment value

# source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-linux
this file's detail is at the last of this thread

# echo $CC
x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/lizj/build=5Fyocto/x86=
-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux

the sysroot points to directory which is install by ./poky-eglibc-x86=5F64-=
x86=5F64-toolchain-1.3+snapshot-20130912.sh
this directory includes a basic target sysroot

>
> The -L option just adds another search path for libraries which will be
> searched before the default ones. So, it shouldn't be a problem.
>
> Somehow, it looks like it tries to link against the host's libraries.
yes, it seems that ld try to link to host's libraries
but i am not sure that if i had do some wrong steps



> Before compiling, do a 'echo $CC' and make sure the --sysroot points to
> the correct directory.
you means that i must make --sysroot points to the sysroot build by myself =
instead
of the sysroot provided by poky-eglibc-x86=5F64-x86=5F64-toolchain-1.3+snap=
shot-20130912.sh ??

--=20
Best regards.
Li Zhijian

>
> Laurentiu
>
>> test.c: In function 'main':
>> test.c:3:9: warning: incompatible implicit declaration of built-in funct=
ion 'printf' [enabled by default]
>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-def=
ault/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libe=
xec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompat=
ible /lib/libc.so.6 when searching for /lib/libc.so.6
>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-def=
ault/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libe=
xec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /lib/=
libc.so.6
>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-def=
ault/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libe=
xec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incompat=
ible /usr/lib/libc=5Fnonshared.a when searching for /usr/lib/libc=5Fnonshar=
ed.a
>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-def=
ault/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../libe=
xec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /usr/=
lib/libc=5Fnonshared.a
>> collect2: error: ld returned 1 exit status
>>
>>
>> #cat toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-linux
>> export PATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-=
1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin:/yocto/fnst/lizj=
/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=
=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux:$PATH
>> export PKG=5FCONFIG=5FSYSROOT=5FDIR=3D/yocto/fnst/lizj/build=5Fyocto/x86=
-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux
>> export PKG=5FCONFIG=5FPATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto=
-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/pkgc=
onfig
>> export CONFIG=5FSITE=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/t=
oolchain-1.3-tcmode-default/site-config-x86=5F64-poky-linux
>> export CC=3D"x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/lizj/b=
uild=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F6=
4-poky-linux"
>> export CXX=3D"x86=5F64-poky-linux-g++ -m64 --sysroot=3D/yocto/fnst/lizj/=
build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F=
64-poky-linux"
>> export CPP=3D"x86=5F64-poky-linux-gcc -E -m64 --sysroot=3D/yocto/fnst/li=
zj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=
=5F64-poky-linux"
>> export AS=3D"x86=5F64-poky-linux-as "
>> export LD=3D"x86=5F64-poky-linux-ld --sysroot=3D/yocto/fnst/lizj/build=
=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-po=
ky-linux"
>> export GDB=3Dx86=5F64-poky-linux-gdb
>> export STRIP=3Dx86=5F64-poky-linux-strip
>> export RANLIB=3Dx86=5F64-poky-linux-ranlib
>> export OBJCOPY=3Dx86=5F64-poky-linux-objcopy
>> export OBJDUMP=3Dx86=5F64-poky-linux-objdump
>> export AR=3Dx86=5F64-poky-linux-ar
>> export NM=3Dx86=5F64-poky-linux-nm
>> export M4=3Dm4
>> export TARGET=5FPREFIX=3Dx86=5F64-poky-linux-
>> export CONFIGURE=5FFLAGS=3D"--target=3Dx86=5F64-poky-linux --host=3Dx86=
=5F64-poky-linux --build=3Dx86=5F64-linux --with-libtool-sysroot=3D/yocto/f=
nst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroo=
ts/x86=5F64-poky-linux"
>> export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types"
>> export CXXFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fpermis=
sive"
>> export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
>> export CPPFLAGS=3D""
>> export OECORE=5FNATIVE=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x86-6=
4-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux"
>> export OECORE=5FTARGET=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x86-6=
4-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux"
>> export OECORE=5FACLOCAL=5FOPTS=3D"-I /yocto/fnst/lizj/build=5Fyocto/x86-=
64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/u=
sr/share/aclocal"
>> export OECORE=5FDISTRO=5FVERSION=3D"1.3+snapshot-20130912"
>> export OECORE=5FSDK=5FVERSION=3D"1.3+snapshot"
>>
>> --=20
>> Best regards.
>> Li Zhijian (8555)
>>
>>
>> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>



=

