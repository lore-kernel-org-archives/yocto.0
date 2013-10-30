Return-Path: <msvilans@aeonyx.ca>
Received: from homiemail-a29.g.dreamhost.com (caiajhbdcahe.dreamhost.com
	[208.97.132.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 405D4E017A7
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 19:28:21 -0700 (PDT)
Received: from homiemail-a29.g.dreamhost.com (localhost [127.0.0.1])
	by homiemail-a29.g.dreamhost.com (Postfix) with ESMTP id D4C06674058;
	Tue, 29 Oct 2013 19:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=aeonyx.ca; h=message-id
	:date:from:mime-version:to:cc:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=aeonyx.ca; bh=TJVXvm+
	Sgo7dkzaKZtZ3V2zYx2U=; b=czaOgyWeJ4D11ipipjapkBq7n0E4xAeUFCKWbV5
	K+GZLLk3U+qMrqeFkJ20FSsUMoqlCw5SH5ErcX76S1Q/LL8cRTPygOcOwsv9B26P
	WH5rVVE9IfaPUKHMceajCb3gpGg22gkZ6VljI0t5kaYly/vb5IoqSgAXDKwJVfiS
	s5+E=
Received: from [192.168.1.127] (216-167-250-35.eastlink.ca [216.167.250.35])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: msvilans@aeonyx.ca)
	by homiemail-a29.g.dreamhost.com (Postfix) with ESMTPSA id 57CF5674059; 
	Tue, 29 Oct 2013 19:28:20 -0700 (PDT)
Message-ID: <52706EC2.1020409@aeonyx.ca>
Date: Tue, 29 Oct 2013 22:28:18 -0400
From: Markus Svilans <msvilans@aeonyx.ca>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <52702B41.1040504@aeonyx.ca> <52703CE8.9020306@aeonyx.ca>
	<CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
In-Reply-To: <CAMKF1spWtCmptujJk_N3AUz3v961+T+JibJtbFpZmF7ZEB3VFA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fail to build core-image-minimal when MACHINE=genericx86-64
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
X-List-Received-Date: Wed, 30 Oct 2013 02:28:27 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Thanks, Khem.

Following your suggestion, I tried removing the com32/ subdirectory from =

the build, by modifying the do_configure() routine in syslinux_6.01.bb=20
recipe. It did not work, there were errors related to missing .o files=20
in a later step.

Your response prompted me to look further.

It appears that in the do_install() step, the syslinux recipe is using=20
the host gcc and ld, and not the cross-compiler gcc and ld.

For example, from the do_install log:
> gcc -Wp,-MT,ctime.o,-MD,./.ctime.o.d -std=3Dgnu99     -fno-stack-protec=
tor -fwrapv -freg-struct-return -Os -fPIC -fno-exceptions -fno-asynchrono=
us-unwind-tables -fno-strict-aliasing -falign-functions=3D0 -falign-jumps=
=3D0 -falign-labels=3D0 -falign-loops=3D0 -mregparm=3D3 -DREGPARM=3D3 -W =
-Wall -Wstrict-prototypes  -fomit-frame-pointer -D__COM32__ -nostdinc -iw=
ithprefix include -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tm=
p/work/x86_64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/libutil/i=
nclude -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_=
64-linux/syslinux-native/6.01-r0/syslinux-6.01/com32/include -I/home/mark=
us/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-n=
ative/6.01-r0/syslinux-6.01/com32/include/sys -I/home/markus/yocto/generi=
cx86-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/s=
yslinux-6.01/com32/gplinclude -c -o ctime.o /home/markus/yocto/genericx86=
-64-dora-10.0.0/build/tmp/work/x86_64-linux/syslinux-native/6.01-r0/sysli=
nux-6.01/com32/libupload/ctime.c

Additionally, according to the makefile fragment "com32.mk" (in the=20
directory=20
~/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky-linux/syslin=
ux/6.02-r0/syslinux-6.02/mk/)=20
there should be some architecture related parameters following "-std=3Dgn=
u99".
To see why not, I had a look in the file "syslinux.mk" (in the same=20
directory). The architecture selection is done via the SUBARCH and ARCH=20
variables. I tried various sed commands in the BB recipe do_configure()=20
step to force ARCH to "x86_64", but nothing seemed to make it work.

Next I tried the following change in the do_install() step in the BB reci=
pe:

Before:
     oe_runmake install INSTALLROOT=3D"${D}" firmware=3D"bios"

After:
     oe_runmake install CC=3D"${CC} ${CFLAGS}" LDFLAGS=3D"${LDFLAGS} -A=20
i386" INSTALLROOT=3D"${D}" ${SYSLINUX_ARCH} firmware=3D"bios"

Now the cross-compiler was being invoked, but with conflicting flags:

> x86_64-poky-linux-gcc  -m64=20
> --sysroot=3D/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/sysr=
oots/genericx86-64=20
> -O2 -pipe -g -feliminate-unused-debug-types=20
> -Wp,-MT,ctime.o,-MD,./.ctime.o.d -std=3Dgnu99 -m32 -march=3Di386=20
> -mpreferred-stack-boundary=3D2  -fno-stack-protector -fwrapv=20
> -freg-struct-return -Os -fPIC -fno-exceptions=20
> -fno-asynchronous-unwind-tables -fno-strict-aliasing=20
> -falign-functions=3D0 -falign-jumps=3D0 -falign-labels=3D0 -falign-loop=
s=3D0=20
> -mregparm=3D3 -DREGPARM=3D3 -W -Wall -Wstrict-prototypes =20
> -fomit-frame-pointer -D__COM32__ -nostdinc -iwithprefix include=20
> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-po=
ky-linux/syslinux/6.02-r0/syslinux-6.02/com32/libutil/include=20
> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-po=
ky-linux/syslinux/6.02-r0/syslinux-6.02/com32/include=20
> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-po=
ky-linux/syslinux/6.02-r0/syslinux-6.02/com32/include/sys=20
> -I/home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-po=
ky-linux/syslinux/6.02-r0/syslinux-6.02/com32/gplinclude=20
> -c -o ctime.o=20
> /home/markus/yocto/genericx86-64-dora-10.0.0/build/tmp/work/x86_64-poky=
-linux/syslinux/6.02-r0/syslinux-6.02/com32/libupload/ctime.c

The build didn't work, there were more errors during the link stage.

Basically it looks like the syslinux recipe cannot handle=20
cross-compilation to x86_64 at the moment. Making it work is a little=20
bit outside my experience level. I feel like I am feeling around in the=20
dark here. Maybe could someone else take a look at this?

Thanks very much
Markus




On 10/29/2013 07:11 PM, Khem Raj wrote:
> On Tue, Oct 29, 2013 at 3:55 PM, Markus Svilans <msvilans@aeonyx.ca> wr=
ote:
>> Dear list,
>>
>> A quick update:
>>
>> - The same build failure occurred when I tried "bitbake core-image-min=
imal"
>> using a fresh poky 1.5 downloaded from the Yocto web site, with MACHIN=
E set
>> to genericx86-64.
>> - The same build failure occurred when I manually created a recipe for=

>> syslinux 6.02 and tried to build it directly "bitbake syslinux"
>>
>> Any assistance would be greatly appreciated.
> its failing while building syslinux-native package and as it seems
> from errors, its not building com32 bits by passing -m32
> flags to compiler. Seems like you need to hack syslinux build and add
> -m32 when building com32/ subdir or alternatively
> remove it from build
>
> sed -e 's,com32/\S*,,g' -i Makefile
>
> but that may not be best thing to do.
>
>
>> Thanks very much
>> Markus
>>
>>
>>
>> On 10/29/2013 05:40 PM, Markus Svilans wrote:
>>
>> Dear list,
>>
>> I'm trying to build a core-image-minimal recipe using MACHINE=3Dgeneri=
cx86-64
>> but it always fails at syslinux-native-6.01 recipe. I've tried deletin=
g my
>> tmp and build folders several times, but it will not build. I am using=
 the
>> genericx86-64 BSP package downloaded from the Yocto website, located a=
t:
>>
>> https://www.yoctoproject.org/download/intel-x86-64-based-pcs-and-devic=
es-genericx86-64
>>
>> File: genericx86-64-dora-10.0.0.tar.bz2
>>
>> I extracted it to:
>> /home/markus/yocto/genericx86-64-dora-10.0.0
>>
>> Then ran the "oe-init-build-env" script and editted local.conf to enab=
le
>> parallel make, and changed MACHINE to genericx86-64. (I've attached a =
copy
>> of my local.conf file.)
>>
>> After that, I ran the command "bitbake core-image-minimal" and sat bac=
k,
>> waiting for it to build.
>>
>> The build always fails at syslinux-native.
>>
>> I tried several things:
>> - deleted tmp directory, re-try build =3D failure
>> - deleted build directory, re-try build =3D failure
>> - deleted build directory, build only syslinux =3D failure
>> - deleted build directory, build only syslinux-native =3D failure
>>
>> I think I may be doing something wrong, because about an hour of Googl=
e
>> searching did not turn up anybody having a similar issue.
>>
>> I am running Kubuntu 13.10 64-bit.
>>
>> Can anyone please offer any advice, so that I can successfully build x=
86-64
>> images?
>>
>> Thanks very much
>> Markus
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>



