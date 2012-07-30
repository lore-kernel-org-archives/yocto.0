Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A2AAE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 11:49:25 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so5913856yhf.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 11:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=JuEHirSCzi8+aKyzAxsogYm4/rU7B0G9HnPlisaohxQ=;
	b=mM607Q1MHW5hkXPLWXjrnlN1Y/gpuVMmsAAzguO8A+1dW4ar1VSONY87cnc/SIFdkE
	3tLT0whTQ5B5VJKWzPuP7zs0nhJPvTZppSVN1xP7mpmmYPE19n1tI6fhlpQmpbSenxg0
	dj8K41dUx49YYA+ysQ+WtmnkrLZNtLtZ36Icb+7hblOiVgqtCyQz5rDBGqcY4v8qYYq9
	Y4B6zAGxb/0pDOysneaC/vLaeMaTVcx/r1B2TqgkvNtx41RBfpiaFWwvVuP8+bE4BaCj
	Ca7KjWCZqh/DT9TEipOaJv82GJmdpiMYzNsrRcgHX+i4m/E3X64W4+W7/OX27Un9IXhg
	qDtQ==
Received: by 10.236.76.3 with SMTP id a3mr10846950yhe.86.1343674163891;
	Mon, 30 Jul 2012 11:49:23 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id a4sm20830788yhj.11.2012.07.30.11.49.23
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 11:49:23 -0700 (PDT)
Message-ID: <5016D732.3000305@gmail.com>
Date: Mon, 30 Jul 2012 14:49:22 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <501683DE.5030904@gmail.com> <50168905.4090608@mlbassoc.com>
	<501690C7.9030605@gmail.com> <50169277.1090400@mlbassoc.com>
	<5016960E.9060305@gmail.com> <5016985D.7010805@mlbassoc.com>
	<5016BB44.8070202@gmail.com> <5016BD14.1020807@mlbassoc.com>
	<5016BFC4.8060307@gmail.com> <5016C18B.60200@mlbassoc.com>
In-Reply-To: <5016C18B.60200@mlbassoc.com>
Subject: Re: build error pandaboard on master
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
X-List-Received-Date: Mon, 30 Jul 2012 18:49:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/30/2012 01:16 PM, Gary Thomas wrote:
> On 2012-07-30 11:09, Jim Abernathy wrote:
>> On 07/30/2012 12:57 PM, Gary Thomas wrote:
>>> On 2012-07-30 10:50, Jim Abernathy wrote:
>>>> On 07/30/2012 10:21 AM, Gary Thomas wrote:
>>>>> On 2012-07-30 08:11, Jim Abernathy wrote:
>>>>>> On 07/30/2012 09:56 AM, Gary Thomas wrote:
>>>>>>> On 2012-07-30 07:48, Jim Abernathy wrote:
>>>>>>>> On 07/30/2012 09:15 AM, Gary Thomas wrote:
>>>>>>>>> On 2012-07-30 06:53, Jim Abernathy wrote:
>>>>>>>>>> I'm on master branch trying to build core-image-minimal for 
>>>>>>>>>> the machine "pandaboard". Besides the basics, I put in a 
>>>>>>>>>> license statement for cloud9 into local.conf.
>>>>>>>>>>
>>>>>>>>>> My bblayer.conf is as follows:
>>>>>>>>>>
>>>>>>>>>> # LAYER_CONF_VERSION is increased each time 
>>>>>>>>>> build/conf/bblayers.conf
>>>>>>>>>> # changes incompatibly
>>>>>>>>>> LCONF_VERSION = "5"
>>>>>>>>>>
>>>>>>>>>> BBPATH = "${TOPDIR}"
>>>>>>>>>> BBFILES ?= ""
>>>>>>>>>>
>>>>>>>>>> BBLAYERS ?= " \
>>>>>>>>>>    /home/jim/poky/meta \
>>>>>>>>>>    /home/jim/poky/meta-yocto \
>>>>>>>>>>    /home/jim/meta-openembedded/meta-oe \
>>>>>>>>>>    /home/jim/meta-ti \
>>>>>>>>>>    "
>>>>>>>>>>
>>>>>>>>>> The error I'm getting is:
>>>>>>>>>>
>>>>>>>>>> ERROR: ParseError at 
>>>>>>>>>> /home/jim/meta-ti/recipes-misc/payload/bonescript.bb:5: Could 
>>>>>>>>>> not inherit file classes/systemd.bbclass
>>>>>>>>>>
>>>>>>>>>> Build Configuration:
>>>>>>>>>> BB_VERSION        = "1.15.3"
>>>>>>>>>> TARGET_ARCH       = "arm"
>>>>>>>>>> TARGET_OS         = "linux-gnueabi"
>>>>>>>>>> MACHINE           = "pandaboard"
>>>>>>>>>> DISTRO            = "poky"
>>>>>>>>>> DISTRO_VERSION    = "1.2+snapshot-20120730"
>>>>>>>>>> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
>>>>>>>>>> TARGET_FPU        = "vfp-neon"
>>>>>>>>>> meta
>>>>>>>>>> meta-yocto        = 
>>>>>>>>>> "master:7411158e1f980cd71c432026fa2f68ab80e3541e"
>>>>>>>>>> meta-oe           = 
>>>>>>>>>> "master:9afc488a1b97bfc5378f139ba04a7a5297b15fdb"
>>>>>>>>>> meta-ti           = 
>>>>>>>>>> "master:9bc77dff5f84578e259f8225bfa0656d94a2a60a"
>>>>>>>>>>
>>>>>>>>>> ERROR: Nothing PROVIDES 'pseudo-native'
>>>>>>>>>
>>>>>>>>> Try adding this in local.conf:
>>>>>>>>>   BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>>>>>
>>>>>>>> BBMASK by itself didn't solve my particular problem. I'll try 
>>>>>>>> the other suggestions and report back.
>>>>>>>
>>>>>>> What other problem do you have?  That BBMASK should keep bitbake 
>>>>>>> from
>>>>>>> trying to parse the recipe mentioned above.
>>>>>>>
>>>>>>> Note: I use these layers with Yocto all the time with that mask...
>>>>>>>
>>>>>>
>>>>>> When I just used the statement:
>>>>>>
>>>>>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>>>>>
>>>>>> I got the same error as my original post.
>>>>>
>>>>> The only way you could get that same error is if you already have 
>>>>> a BBMASK
>>>>> statement somewhere and this one is being ignored because of the 
>>>>> ?= assignment.
>>>>>
>>>> So I started with a clean build again. This time I only added the 
>>>> BBMASK statement you suggested.  I got the following error:
>>>>
>>>> ERROR: No recipes available for:
>>>> /home/jim/meta-openembedded/meta-systemd/meta-gnome/recipes-gnome/gdm/gdm_2.32.2.bbappend 
>>>>
>>>> /home/jim/meta-openembedded/meta-systemd/meta-efl/recipes-efl/efl/elsa_svn.bbappend 
>>>>
>>>> ERROR: Command execution failed: Exited with 1
>>>>
>>>> I'm guessing the BBMASK needs to call out 
>>>> meta-openembedded/meta-systemd/meta-gnome and meta-efl?
>>>
>>> Or don't include those layers - meta-systemd isn't needed by your 
>>> yocto build.
>>>
>> Thanks, that makes more sense now.  I removed the layer meta-systemd 
>> from bblayers.conf and used the
>>
>> BBMASK ?= ".*/meta-ti/recipes-(misc|bsp/formfactor)/"
>>
>> statement in local.conf to solves the problem.
>>
>> What is really causing the problem?  Without it dependencies on 
>> meta-systemd are there, but the mask removes that??  Why can you 
>> remove a dependency?
>
> The dependency on systemd comes from this recipe: 
> meta-ti/recipes-misc/payload/bonescript.bb
> The BBMASK is making bitbake ignore that recipe (you don't need it), 
> hence no dependency.
>
I got core-image-minimal built without errors, Thanks, now I need to ask 
some questions about booting that image.  I'm assuming that I can follow 
the instructions on pandaboard.org for creating the SD card format and 
just copy the deploy/image/ u-boot, MLO, uImage, and rootfs to the right 
places and boot the sdcard in the pandaboard. Anyway, that's what I 
tried.  I'm connected to the panadboard via serial port and the U-Boot 
works and the uImage seems to be found, but I don't get a login console 
on the serial port:

U-Boot SPL 2011.12-dirty (Jul 30 2012 - 13:44:03)
Texas Instruments OMAP4430 ES2.1
OMAP SD/MMC: 0
reading u-boot.img
reading u-boot.img


U-Boot 2011.12-dirty (Jul 30 2012 - 13:44:03)

CPU  : OMAP4430 ES2.1
Board: OMAP4 Panda
I2C:   ready
DRAM:  1 GiB
MMC:   OMAP SD/MMC: 0
Using default environment

In:    serial
Out:   serial
Err:   serial
Hit any key to stop autoboot:  0
reading boot.scr

** Unable to read "boot.scr" from mmc 0:1 **
reading uImage

4176404 bytes read
Booting from mmc0 ...
## Booting kernel from Legacy Image at 82000000 ...
    Image Name:   Linux-3.1.0
    Image Type:   ARM Linux Kernel Image (uncompressed)
    Data Size:    4176340 Bytes = 4 MiB
    Load Address: 80008000
    Entry Point:  80008000
    Verifying Checksum ... OK
    Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.



