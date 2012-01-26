Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 116F9E0059A
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 05:51:13 -0800 (PST)
Received: from [192.168.0.16] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 00AED272D6
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 13:37:08 +0000 (GMT)
Message-ID: <4F215A28.4030409@communistcode.co.uk>
Date: Thu, 26 Jan 2012 13:50:32 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
	<4F21409C.9080807@communistcode.co.uk>
	<4F21487D.3030406@mlbassoc.com> <4F2154AA.5040103@mlbassoc.com>
In-Reply-To: <4F2154AA.5040103@mlbassoc.com>
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
X-List-Received-Date: Thu, 26 Jan 2012 13:51:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/01/12 13:27, Gary Thomas wrote:
> On 2012-01-26 05:35, Gary Thomas wrote:
>> On 2012-01-26 05:01, Jack Mitchell wrote:
>>> On 26/01/12 12:00, Koen Kooi wrote:
>>>> Op 26 jan. 2012, om 12:06 heeft Jack Mitchell het volgende geschreve=
n:
>>>>
>>>>> Hello everyone,
>>>>>
>>>>> I will soon be receiving a Beaglebone and I wish to transfer the=20
>>>>> work I have been doing with Yocto on the Beagleboard over to the=20
>>>>> Beaglebone, to show my company how the same
>>>>> application codebase can be run different platforms using=20
>>>>> Linux/Yocto/etc..
>>>>>
>>>>> I have been looking at the meta-ti layer and trying to figure out=20
>>>>> how it works and how I will integrate it into the yocto build=20
>>>>> environment, but I thought I would just throw a
>>>>> query out to see if anybody is doing this and if there are any=20
>>>>> pitfalls I should avoid.
>>>> There's a README in the meta-ti layer, follow the instructions in=20
>>>> there.
>>>
>>> Hi Koen,
>>>
>>> I understand that there is a readme in the meta-ti layer however=20
>>> this refers specifically to using Angstrom and associated layers,=20
>>> where as I want to build specifically for yocto.
>>> So I was looking for pointers for abstracting the meta-ti layer form =

>>> angstrom over to Yocto.
>>
>> I gave this a try, just adding the meta-ti layer into my stack.
>> Sadly, it blew up right away with this error:
>>
>> ERROR: Failure expanding variable FILESPATH, expression was=20
>> ${@base_contains('DISTRO_FEATURES', 'tipspkernel',
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3=
=2E1/tipspkernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-ker=
nel/linux/linux-ti33x-psp-3.1/tipspkernel/arm:/home/local/poky-multi/meta=
-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/build-linux:/hom=
e/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipsp=
kernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta-ti/recipes-kernel/l=
inux/linux-ti33x-psp-3.1/tipspkernel/beaglebone:/home/local/poky-multi/me=
ta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/armv7a:/home/l=
ocal/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspker=
nel/amltd:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x=
-psp-3.1/tipspkernel/forcevariable:/home/local/poky-multi/meta-ti/recipes=
-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/${FEED_ARCH}:/home/local/po=
ky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/ti3=
3x:/home/local/poky-multi/meta-ti/recipes-ke=20
>>
> rn
>>
>> el/linux/linux-ti33x-psp-3.1/tipspkernel/libc-glibc:/home/local/poky-m=
ulti/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3.1/tipspkernel/:/home/=
local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel=
/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-=
ti33x-psp/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/l=
inux/linux-ti33x-psp/tipspkernel/build-linux:/home/local/poky-multi/meta-=
ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/pn-linux-ti33x-psp:/h=
ome/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspke=
rnel/beaglebone:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux=
-ti33x-psp/tipspkernel/armv7a:/home/local/poky-multi/meta-ti/recipes-kern=
el/linux/linux-ti33x-psp/tipspkernel/amltd:/home/local/poky-multi/meta-ti=
/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/forcevariable:/home/loc=
al/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/${=
FEED_ARCH}:/home/local/poky-multi/meta-ti/=20
>>
> re
>>
>> cipes-kernel/linux/linux-ti33x-psp/tipspkernel/ti33x:/home/local/poky-=
multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tipspkernel/libc-glibc=
:/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp/tips=
pkernel/:/home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspk=
ernel/linux-gnueabi:/home/local/poky-multi/meta-ti/recipes-kernel/linux/f=
iles/tipspkernel/arm:/home/local/poky-multi/meta-ti/recipes-kernel/linux/=
files/tipspkernel/build-linux:/home/local/poky-multi/meta-ti/recipes-kern=
el/linux/files/tipspkernel/pn-linux-ti33x-psp:/home/local/poky-multi/meta=
-ti/recipes-kernel/linux/files/tipspkernel/beaglebone:/home/local/poky-mu=
lti/meta-ti/recipes-kernel/linux/files/tipspkernel/armv7a:/home/local/pok=
y-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/amltd:/home/local/=
poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/forcevariable:/=
home/local/poky-multi/meta-ti/recipes-kernel/linux/files/tipspkernel/${FE=
ED_ARCH}:/home/local/poky-multi/meta-ti/re=20
>>
> ci
>>
>> pes-kernel/linux/files/tipspkernel/ti33x:/home/local/poky-multi/meta-t=
i/recipes-kernel/linux/files/tipspkernel/libc-glibc:/home/local/poky-mult=
i/meta-ti/recipes-kernel/linux/files/tipspkernel/:",=20
>>
>> "", d)}${@base_set_filespath([=20
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3=
=2E1-r0",
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3=
=2E1",=20
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp",=

>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp-3=
=2E1",=20
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/linux-ti33x-psp",=

>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux/files",=20
>> "/home/local/poky-multi/meta-ti/recipes-kernel/linux" ], d)} which=20
>> triggered exception SyntaxError: EOL while scanning
>> string literal (FILESPATH, line 1)
>> ERROR: Command execution failed: Exited with 1
>>
>> I'm not sure what this means or how to diagnose what's wrong.
>
> I worked past this.  I turns out that my <DISTRO>.conf file had
> this line in it (needed by some of the OLD meta-texasinstruments
> recipes):
>   OVERRIDES .=3D ":${FEED_ARCH}:${SOC_FAMILY}"
> I took out the FEED_ARCH and now I'm getting farther.
>
> Next hurdle:
>   Could not include required file=20
> recipes-images/angstrom/systemd-image.bb
>
>>
>> n.b. I have done the same thing successfully before with the
>> Angstrom meta-texasinstruments layer (which I know has been
>> deprecated and replaced by meta-ti), so I know the process can
>> work.
>>
>
 From a clean poky edison build directory with machine_beagleboard=20
selected and the meta-ti layer enabled last in my bblayers conf I=20
receive this error:

ERROR: Could not inherit file classes/systemd.bbclass

However I cannot find where this is being called from in the meta-ti=20
layer.. it seems very similar to what Gary has run into...


