Return-Path: <lizhijian@cn.fujitsu.com>
Received: from song.cn.fujitsu.com (unknown [222.73.24.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C08E01624;
	Wed, 25 Sep 2013 20:57:47 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.90,982,1371052800"; 
   d="scan'208";a="8625330"
Received: from unknown (HELO tang.cn.fujitsu.com) ([10.167.250.3])
	by song.cn.fujitsu.com with ESMTP; 26 Sep 2013 11:54:30 +0800
Received: from fnstmail02.fnst.cn.fujitsu.com (tang.cn.fujitsu.com [127.0.0.1])
	by tang.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id r8Q3vh2r015147;
	Thu, 26 Sep 2013 11:57:43 +0800
Received: from [127.0.0.1] ([10.167.226.56])
	by fnstmail02.fnst.cn.fujitsu.com (Lotus Domino Release 8.5.3)
	with ESMTP id 2013092611555987-1802349 ;
	Thu, 26 Sep 2013 11:55:59 +0800 
Message-ID: <5243B0A2.2060001@cn.fujitsu.com>
Date: Thu, 26 Sep 2013 11:57:22 +0800
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
	<523C228F.7060700@cn.fujitsu.com>
	<20130920110021.GD14107@lpalcu-linux>
In-Reply-To: <20130920110021.GD14107@lpalcu-linux>
X-MIMETrack: Itemize by SMTP Server on mailserver/fnst(Release 8.5.3|September
	15, 2011) at 2013/09/26 11:55:59,
	Serialize by Router on mailserver/fnst(Release 8.5.3|September 15,
	2011) at 2013/09/26 11:56:00
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
X-List-Received-Date: Thu, 26 Sep 2013 03:57:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi=EF=BC=8CLaurentiu

I think it could be something wrong with binutils(2.23.1 or later)
there is different behavior at binutils-2.23.1/ld/ldfile.c=EF=BC=88ldfile=
=5Fopen=5Ffile=5Fsearch) from binutils-2.22

If both --sysroot directory and -L directory include libc.so , ld don't work
In my case=EF=BC=8C there are double libc.so(/yocto/fnst/lizj/build=5Fyocto=
/x86-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux=
/usr/lib/libc.so and tmp/sysroots/qemux86-64/usr/lib/libc.so)

ld will link tmp/sysroots/qemux86-64/usr/lib/libc.so=EF=BC=88ld always sear=
chs -L directory at first)
then link /lib/libc.so.6 specified at tmp/sysroots/qemux86-64/usr/lib/libc.=
so instead of
append sysroot directory path before /lib/libc.so.6

here is a sample method reproduce it

lizj@suika x86-64-yocto-1.3]$ source toolchain-1.3-tcmode-default/environme=
nt-setup-x86=5F64-poky-linux
[lizj@suika x86-64-yocto-1.3]$ echo $CC
x86=5F64-poky-linux-gcc -m64 --sysroot=3D/yocto/fnst/lizj/build=5Fyocto/x86=
-64-yocto-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux
[lizj@suika x86-64-yocto-1.3]$ $LD --version
GNU ld (GNU Binutils) 2.23.1.20121113
[lizj@suika x86-64-yocto-1.3]$ mkdir -p fake=5Frootfs/usr/lib
[lizj@suika x86-64-yocto-1.3]$ cp /yocto/fnst/lizj/build=5Fyocto/x86-64-yoc=
to-1.3/toolchain-1.3-tcmode-default/sysroots/x86=5F64-poky-linux/usr/lib/li=
bc.so fake=5Frootfs/usr/lib/
[lizj@suika x86-64-yocto-1.3]$ ls fake=5Frootfs/usr/lib/
libc.so
[lizj@suika x86-64-yocto-1.3]$ $CC -o test test.c -L ./fake=5Frootfs/usr/li=
b/
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
-------------------------------------------------------------------------

It seems that ld don=E2=80=98t  really reasonable to do like that=EF=BC=8Cw=
hich binutils-2.22 can handle correctly
Does poky mind this behavior


=E4=BB=A5=E4=B8=8A

--=20
Best regards.
Li Zhijian



at 2013-9-20 19:00, Laurentiu Palcu wrote:
> Hi,
>
> On Fri, Sep 20, 2013 at 06:25:19PM +0800, Li Zhijian wrote:
>>>>>>> III=EF=BC=89 compile a simple C program
>>>>>>> # cat test.c
>>>>>>> int main ()
>>>>>>> {
>>>>>>> printf("hello world\n");
>>>>>>> return 0;
>>>>>>> }
>>>>>>> # source toolchain-1.3-tcmode-default/environment-setup-x86=5F64-po=
ky-linux
>>>>>>> # $CC -o test test.c -L tmp/sysroots/qemux86-64/usr/lib/ -lm
> OK, it looks like something strange happens in your setup.
>
> To debug it, let's add '-Wl,--verbose' at the end of your command and you
> should be able to see where the linker is looking for libraries. Also,
> the linker script will be printed.
>
> You should see it try your directory first
> tmp/sysroots/qemux86-64/usr/lib/, and then fall through the default ones
> with the sysroot prefix added and, at the end, the system ones:
> /lib:/usr/lib.
>
> Thanks,
> Laurentiu
>
>



=

