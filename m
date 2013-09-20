Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A079E015F1;
	Fri, 20 Sep 2013 03:25:43 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.90,938,1371052800"; 
   d="scan'208";a="8570172"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 20 Sep 2013 18:22:30 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r8KAPfCq027287;
	Fri, 20 Sep 2013 18:25:41 +0800
Received: from [127.0.0.1] ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013092018240686-1656189 ;
	Fri, 20 Sep 2013 18:24:06 +0800 
Message-ID: <523C228F.7060700@cn.fujitsu.com>
Date: Fri, 20 Sep 2013 18:25:19 +0800
From: Li Zhijian <lizhijian@cn.fujitsu.com>
Organization: fnst-ulinux
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
References: <523BEF04.5070308@cn.fujitsu.com>
	<20130920084330.GA14107@lpalcu-linux>
	<20130920085039.GB14107@lpalcu-linux>
	<523C1BC9.5070303@cn.fujitsu.com>
	<20130920100227.GC14107@lpalcu-linux>
In-Reply-To: <20130920100227.GC14107@lpalcu-linux>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/09/20 18:24:06,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/09/20 18:24:08
Cc: Yocto list discussion <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: [poky] Is this a bug of binutils
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
X-List-Received-Date: Fri, 20 Sep 2013 10:25:48 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

at 2013-9-20 18:02, Laurentiu Palcu wrote:
> On Fri, Sep 20, 2013 at 05:56:25PM +0800, Li Zhijian wrote:
>> at 2013-9-20 16:50, Laurentiu Palcu wrote:
>>> On Fri, Sep 20, 2013 at 11:43:31AM +0300, Laurentiu Palcu wrote:
>>>> Hi,
>>>>
>>>> On Fri, Sep 20, 2013 at 02:45:24PM +0800, Li Zhijian wrote:
>>>>> Hi=EF=BC=8Call
>>>>>
>>>>> I got a big problem when using the cross-toolchain to compile a simpl=
e C program.
>>>>> This problem since 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
>>>>> which is to upgrade the binutils from 2.22 to 2.23.1
>>> Apparently I missed this... Make sure you checkout
>>> 0333796a6b167dd754806700d7f771dd4a74e4ab (binutils=5F2.23.1.bb: Correct
>>> typo in enable-targets configure option). This might be your problem.
>>>
>>> Laurentiu
>> i am sorry=EF=BC=8Ci don't understand what do you mean
> My bad, I copy-pasted the wrong sha1 (the summary was good though).
> Here's the correct sha1: a8fa49fbc21d460479ecadeb1996a800cc4e3e07

not really this fix=EF=BC=8Ci build meta-toolchain on yocto-1.4.1(73f103bf9=
b2cdf985464dc53bf4f1cfd71d4531f)
and got the same problem

even at the latest poky, got the same problem

--=20
Best regards.
Li Zhijian


> Laurentiu
>> in poky git tree=EF=BC=8C
>>
>> 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 is newer than 0333796a6b167dd75=
4806700d7f771dd4a74e4ab
>>
>> this checkout 0333796a6b167dd754806700d7f771dd4a74e4ab =EF=BC=8C toolcha=
in work fine
>>
>> # git log
>> commit 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8
>> Author: Khem Raj <raj.khem@gmail.com>
>> Date:   Wed Aug 8 10:33:41 2012 -0700
>>
>>      tcmode-default.inc: Use binutils 2.23.1
>> ...skip...
>>
>> commit 0333796a6b167dd754806700d7f771dd4a74e4ab
>> Author: Khem Raj <raj.khem@gmail.com>
>> Date:   Wed Aug 8 07:57:46 2012 -0700
>>
>>      oprofile: Include config.h before bfd.h
>>
>>      oprofile uses bfd.h from binutils which now in 2.23+ expects config=
.h
>>      so lets include it
>> ...skip...
>>
>>
>> --=20
>> Best regards.
>> Li Zhijian
>>
>>
>>>>> what I do is as follows, any help or ideas ?
>>>>>
>>>>> I) Build my cross-toolchain
>>>>> # git clone http://git.yoctoproject.org/git/poky/.git
>>>>> # cd poky
>>>>> # git checkout 3ae71c74c71f13a390b21b4c3ead04e51aaa82b8 -b tcmode-def=
ault
>>>>> ...skip some steps...
>>>>> # bitbake meta-toolchain
>>>>> Loading cache: 100% |################################################=
############################################| ETA: 00:00:00
>>>>> Loaded 1122 entries from dependency cache.
>>>>>
>>>>> Build Configuration:
>>>>> BB=5FVERSION =3D "1.17.0"
>>>>> BUILD=5FSYS =3D "x86=5F64-linux"
>>>>> NATIVELSBSTRING =3D "CentOS-6.3"
>>>>> TARGET=5FSYS =3D "x86=5F64-poky-linux"
>>>>> MACHINE =3D "qemux86-64"
>>>>> DISTRO =3D "poky"
>>>>> DISTRO=5FVERSION =3D "1.3+snapshot-20130912"
>>>>> TUNE=5FFEATURES =3D "m64"
>>>>> TARGET=5FFPU =3D ""
>>>>> meta
>>>>> meta-yocto
>>>>> meta-yocto-bsp =3D "tcmode-default:3ae71c74c71f13a390b21b4c3ead04e51a=
aa82b8"
>>>>>
>>>>> ..cost a long time..
>>>>> all of the build work successfully
>>>>>
>>>>> II) Install my cross-toolchain
>>>>> # ./poky-eglibc-x86=5F64-x86=5F64-toolchain-1.3+snapshot-20130912.sh
>>>>> Enter target directory for SDK (default: /opt/poky/1.3+snapshot): too=
lchain-1.3-tcmode-default
>>>>>
>>>>> III=EF=BC=89 compile a simple C program
>>>>> # cat test.c
>>>>> int main ()
>>>>> {
>>>>> printf("hello world\n");
>>>>> return 0;
>>>>> }
>>>>> # source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky=
-linux
>>>>> # $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
>>>> Technically, for this simple program, it's enough to do:
>>>>
>>>> $CC -o test test.c
>>>>
>>>> The $CC contains the sysroot option and the linker will automatically
>>>> prefix /lib and /usr/lib with the target sysroot. So, it should be able
>>>> to compile just fine.
>>>>
>>>> The -L option just adds another search path for libraries which will be
>>>> searched before the default ones. So, it shouldn't be a problem.
>>>>
>>>> Somehow, it looks like it tries to link against the host's libraries.
>>>>
>>>> Before compiling, do a 'echo $CC' and make sure the --sysroot points to
>>>> the correct directory.
>>>>
>>>> Laurentiu
>>>>
>>>>> test.c: In function 'main':
>>>>> test.c:3:9: warning: incompatible implicit declaration of built-in fu=
nction 'printf' [enabled by default]
>>>>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-=
default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../l=
ibexec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incom=
patible /lib/libc.so.6 when searching for /lib/libc.so.6
>>>>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-=
default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../l=
ibexec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /l=
ib/libc.so.6
>>>>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-=
default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../l=
ibexec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: skipping incom=
patible /usr/lib/libc=5Fnonshared.a when searching for /usr/lib/libc=5Fnons=
hared.a
>>>>> /yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-=
default/sysroots/x86=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux/../../l=
ibexec/x86=5F64-poky-linux/gcc/x86=5F64-poky-linux/4.7.2/ld: cannot find /u=
sr/lib/libc=5Fnonshared.a
>>>>> collect2: error: ld returned 1 exit status
>>>>>
>>>>>
>>>>> #cat toolchain-1.3-tcmode-default/environment-setup-x86=5F64-poky-lin=
ux
>>>>> export PATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolcha=
in-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux/usr/bin:/yocto/fnst/l=
izj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x8=
6=5F64-pokysdk-linux/usr/bin/x86=5F64-poky-linux:$PATH
>>>>> export PKG=5FCONFIG=5FSYSROOT=5FDIR=3D/yocto/fnst/lizj/build=5Fyocto/=
x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux
>>>>> export PKG=5FCONFIG=5FPATH=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yo=
cto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/p=
kgconfig
>>>>> export CONFIG=5FSITE=3D/yocto/fnst/lizj/build=5Fyocto/x86-64-yocto-1.=
3/toolchain-1.3-tcmode-default/site-config-x86=5F64-poky-linux
>>>>> export CC=3D"x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/liz=
j/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=
=5F64-poky-linux"
>>>>> export CXX=3D"x86=5F64-poky-linux-g++ -m64 --sysroot=3D/yocto/fnst/li=
zj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=
=5F64-poky-linux"
>>>>> export CPP=3D"x86=5F64-poky-linux-gcc -E -m64 --sysroot=3D/yocto/fnst=
/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/=
x86=5F64-poky-linux"
>>>>> export AS=3D"x86=5F64-poky-linux-as "
>>>>> export LD=3D"x86=5F64-poky-linux-ld --sysroot=3D/yocto/fnst/lizj/buil=
d=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-p=
oky-linux"
>>>>> export GDB=3Dx86=5F64-poky-linux-gdb
>>>>> export STRIP=3Dx86=5F64-poky-linux-strip
>>>>> export RANLIB=3Dx86=5F64-poky-linux-ranlib
>>>>> export OBJCOPY=3Dx86=5F64-poky-linux-objcopy
>>>>> export OBJDUMP=3Dx86=5F64-poky-linux-objdump
>>>>> export AR=3Dx86=5F64-poky-linux-ar
>>>>> export NM=3Dx86=5F64-poky-linux-nm
>>>>> export M4=3Dm4
>>>>> export TARGET=5FPREFIX=3Dx86=5F64-poky-linux-
>>>>> export CONFIGURE=5FFLAGS=3D"--target=3Dx86=5F64-poky-linux --host=3Dx=
86=5F64-poky-linux --build=3Dx86=5F64-linux --with-libtool-sysroot=3D/yocto=
/fnst/lizj/build=5Fyocto/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysr=
oots/x86=5F64-poky-linux"
>>>>> export CFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types"
>>>>> export CXXFLAGS=3D" -O2 -pipe -g -feliminate-unused-debug-types -fper=
missive"
>>>>> export LDFLAGS=3D"-Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed"
>>>>> export CPPFLAGS=3D""
>>>>> export OECORE=5FNATIVE=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x8=
6-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linux"
>>>>> export OECORE=5FTARGET=5FSYSROOT=3D"/yocto/fnst/lizj/build=5Fyocto/x8=
6-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux"
>>>>> export OECORE=5FACLOCAL=5FOPTS=3D"-I /yocto/fnst/lizj/build=5Fyocto/x=
86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-pokysdk-linu=
x/usr/share/aclocal"
>>>>> export OECORE=5FDISTRO=5FVERSION=3D"1.3+snapshot-20130912"
>>>>> export OECORE=5FSDK=5FVERSION=3D"1.3+snapshot"
>>>>>
>>>>> --=20
>>>>> Best regards.
>>>>> Li Zhijian (8555)
>>>>>
>>>>>
>>>>> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
>>>> poky mailing list
>>>> poky@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>


=

