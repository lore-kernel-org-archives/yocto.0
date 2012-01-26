Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A234E00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 07:29:35 -0800 (PST)
Received: from [192.168.0.16] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 51A39272D6
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 15:15:24 +0000 (GMT)
Message-ID: <4F217135.209@communistcode.co.uk>
Date: Thu, 26 Jan 2012 15:28:53 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
	<4F215A28.4030409@communistcode.co.uk>
	<4F215DF0.4020503@mlbassoc.com> <4F216C3F.6040901@mlbassoc.com>
	<4F217046.2090306@mlbassoc.com>
In-Reply-To: <4F217046.2090306@mlbassoc.com>
Subject: Re: BeagleBone with meta-ti layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Jan 2012 15:29:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/01/12 15:24, Gary Thomas wrote:
> On 2012-01-26 08:07, Gary Thomas wrote:
>> On 2012-01-26 07:06, Gary Thomas wrote:
>>> On 2012-01-26 06:50, Jack Mitchell wrote:
>>>> On 26/01/12 13:27, Gary Thomas wrote:
>>>>> On 2012-01-26 05:35, Gary Thomas wrote:
>>>>>> On 2012-01-26 05:01, Jack Mitchell wrote:
>>>>>>> On 26/01/12 12:00, Koen Kooi wrote:
>>>>>>>> Op 26 jan. 2012, om 12:06 heeft Jack Mitchell het volgende=20
>>>>>>>> geschreven:
>>>>>>>>
>>>>>>>>> Hello everyone,
>>>>>>>>>
>>>>>>>>> I will soon be receiving a Beaglebone and I wish to transfer=20
>>>>>>>>> the work I have been doing with Yocto on the Beagleboard over=20
>>>>>>>>> to the Beaglebone, to show my company how the same
>>>>>>>>> application codebase can be run different platforms using=20
>>>>>>>>> Linux/Yocto/etc..
>>>>>>>>>
>>>>>>>>> I have been looking at the meta-ti layer and trying to figure=20
>>>>>>>>> out how it works and how I will integrate it into the yocto=20
>>>>>>>>> build environment, but I thought I would just throw a
>>>>>>>>> query out to see if anybody is doing this and if there are any =

>>>>>>>>> pitfalls I should avoid.
>>>>>>>> There's a README in the meta-ti layer, follow the instructions=20
>>>>>>>> in there.
>>>>>>>
>>>>>>> Hi Koen,
>>>>>>>
>>>>>>> I understand that there is a readme in the meta-ti layer however =

>>>>>>> this refers specifically to using Angstrom and associated=20
>>>>>>> layers, where as I want to build specifically for
>>>>>>> yocto.
>>>>>>> So I was looking for pointers for abstracting the meta-ti layer=20
>>>>>>> form angstrom over to Yocto.
>>>>>>
>>>>>> I gave this a try, just adding the meta-ti layer into my stack.
>>>>>> Sadly, it blew up right away with this error:
>>>>>>
>>>>>> ERROR: Failure expanding variable FILESPATH, expression was=20
>>>>>> ${@base_contains('DISTRO_FEATURES', 'tipspkernel',
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp-3.1/tipspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-k=
ernel/linux/linux-ti33x-psp-3.1/tipspkernel/arm:/home/local/poky-multi/me=
ta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/build-linux:/h=
ome/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tip=
spkernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta-ti/recipes-kernel=
/linux/linux-ti33x-psp-3.1/tipspkernel/beaglebone:/home/local/poky-multi/=
meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/armv7a:/home=
/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspk=
ernel/amltd:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti3=
3x-psp-3.1/tipspkernel/forcevariable:/home/local/poky-multi/meta-ti/recip=
es-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/${FEED_ARCH}:/home/local/=
poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/t=
i33x:/home/local/poky-multi/meta-ti/recipe=20
>>>>>>
> s
>>>>>>
>> -
>>>>>>
>>> k
>>>>>>
>>>> e
>>>>>>
>>>>> rn
>>>>>>
>>>>>> el/linux/linux-ti33x-psp-3.1/tipspkernel/libc-glibc:/home/local/po=
ky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/:/h=
ome/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspke=
rnel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/li=
nux-ti33x-psp/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kern=
el/linux/linux-ti33x-psp/tipspkernel/build-linux:/home/local/poky-multi/m=
eta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/pn-linux-ti33x-ps=
p:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tip=
spkernel/beaglebone:/home/local/poky-multi/meta-ti/recipes-kernel/linux/l=
inux-ti33x-psp/tipspkernel/armv7a:/home/local/poky-multi/meta-ti/recipes-=
kernel/linux/linux-ti33x-psp/tipspkernel/amltd:/home/local/poky-multi/met=
a-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/forcevariable:/home=
/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkerne=
l/${FEED_ARCH}:/home/local/poky-multi/meta=20
>>>>>>
> -
>>>>>>
>> t
>>>>>>
>>> i
>>>>>>
>>>> /
>>>>>>
>>>>> re
>>>>>>
>>>>>> cipes-kernel/linux/linux-ti33x-psp/tipspkernel/ti33x:/home/local/p=
oky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/libc-g=
libc:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/=
tipspkernel/:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/ti=
pspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/lin=
ux/files/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/li=
nux/files/tipspkernel/build-linux:/home/local/poky-multi/meta-ti/recipes-=
kernel/linux/files/tipspkernel/pn-linux-ti33x-psp:/home/local/poky-multi/=
meta-ti/recipes-kernel/linux/files/tipspkernel/beaglebone:/home/local/pok=
y-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/armv7a:/home/local=
/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/amltd:/home/lo=
cal/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/forcevariab=
le:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/=
${FEED_ARCH}:/home/local/poky-multi/meta-t=20
>>>>>>
> i
>>>>>>
>> /
>>>>>>
>>> r
>>>>>>
>>>> e
>>>>>>
>>>>> ci
>>>>>>
>>>>>> pes-kernel/linux/files/tipspkernel/ti33x:/home/local/poky-multi/me=
ta-ti/recipes-kernel/linux/files/tipspkernel/libc-glibc:/home/local/poky-=
multi/meta-ti/recipes-kernel/linux/files/tipspkernel/:",=20
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> "", d)}${@base_set_filespath([=20
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp-3.1-r0",=20
>>>>>>
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp-3.1",=20
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp",=20
>>>>>>
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp-3.1",=20
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-p=
sp",=20
>>>>>>
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/files",=20
>>>>>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux" ], d)}=20
>>>>>> which triggered exception SyntaxError: EOL while
>>>>>> scanning
>>>>>> string literal (FILESPATH, line 1)
>>>>>> ERROR: Command execution failed: Exited with 1
>>>>>>
>>>>>> I'm not sure what this means or how to diagnose what's wrong.
>>>>>
>>>>> I worked past this. I turns out that my <DISTRO>.conf file had
>>>>> this line in it (needed by some of the OLD meta-texasinstruments
>>>>> recipes):
>>>>> OVERRIDES .=3D ":${FEED_ARCH}:${SOC_FAMILY}"
>>>>> I took out the FEED_ARCH and now I'm getting farther.
>>>>>
>>>>> Next hurdle:
>>>>> Could not include required file=20
>>>>> recipes-images/angstrom/systemd-image.bb
>>>>>
>>>>>>
>>>>>> n.b. I have done the same thing successfully before with the
>>>>>> Angstrom meta-texasinstruments layer (which I know has been
>>>>>> deprecated and replaced by meta-ti), so I know the process can
>>>>>> work.
>>>>>>
>>>>>
>>>> From a clean poky edison build directory with machine_beagleboard=20
>>>> selected and the meta-ti layer enabled last in my bblayers conf I=20
>>>> receive this error:
>>>>
>>>> ERROR: Could not inherit file classes/systemd.bbclass
>>>>
>>>> However I cannot find where this is being called from in the=20
>>>> meta-ti layer.. it seems very similar to what Gary has run into...
>>>
>>> Try adding this to local.conf
>>> BBMASK =3D ".*/meta-ti/recipes-misc/"
>>> This will let bitbake skip the troublesome recipes. Since you're
>>> interested in building Yocto, it should be OK.
>>
>> Next, problem: I tried to build for my BeagleBone, but the kernel
>> build failed with this error:
>> | arch/arm/boot/compressed/head.S: Assembler messages:
>> | arch/arm/boot/compressed/head.S:127: Error: selected processor does =

>> not support requested special purpose register -- `mrs r2,cpsr'
>> | arch/arm/boot/compressed/head.S:134: Error: selected processor does =

>> not support requested special purpose register -- `mrs r2,cpsr'
>> | arch/arm/boot/compressed/head.S:136: Error: selected processor does =

>> not support requested special purpose register -- `msr cpsr_c,r2'
>> | make[2]: *** [arch/arm/boot/compressed/head.o] Error 1
>> | make[2]: *** Waiting for unfinished jobs....
>> | make[1]: *** [arch/arm/boot/compressed/vmlinux] Error 2
>> | make: *** [uImage] Error 2
>> | ERROR: oe_runmake failed
>> NOTE: package linux-ti33x-psp-3.1-r0: task do_compile: Failed
>> ERROR: Task 352=20
>> (/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp_3=
=2E1.bb,=20
>> do_compile) failed with exit code '1'
>>
>> Looks like an incompatibility with the tools
>> Angstrom =3D gcc-cross-4.5-r45+svnr181733
>> Yocto =3D gcc-cross-4.6.2+svnr181430-r20
>
> Or possibly:
>   Angstrom =3D binutils-cross-2.20.1-r9
>   Yocto =3D binutils-cross-2.22-r2
>
>>
>> Oh well...
>>
>

So are these pre-compiled binaries that cannot be linked... or something =

along those lines?


