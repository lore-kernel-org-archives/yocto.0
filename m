Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3CEDE006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 12:44:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5CJi9rN022896
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 12 Jun 2013 12:44:09 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 12 Jun 2013 12:44:08 -0700
Message-ID: <51B8CF87.3070402@windriver.com>
Date: Wed, 12 Jun 2013 15:44:07 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC22E@pluto.melinkcorp.local>
	<CADkTA4PkMUc8rzBWewZWwygE=XcXLBAQwHFEXcUPZX6mqzmADA@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE4013B910EC264@pluto.melinkcorp.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems fetching branch for linux-yocto-custom
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
X-List-Received-Date: Wed, 12 Jun 2013 19:44:16 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-12 03:37 PM, Bryan Evenson wrote:
>
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
>> Sent: Wednesday, June 12, 2013 3:15 PM
>> To: Bryan Evenson
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Problems fetching branch for linux-yocto-custom
>>
>> On Wed, Jun 12, 2013 at 3:10 PM, Bryan Evenson
>> <bevenson@melinkcorp.com> wrote:
>>> All,
>>>
>>> I have a custom linux recipe that I would like to fetch the head of a
>> specific branch on a Git repository.  During the build it always
>> fetches the master branch, not the branch I am specifying.  I've tried
>> adding every relavant flag to the SRC_URI that I can think of and it
>> still fetches and builds the master branch.  Any ideas on what I am
>> doing wrong?
>>>
>>
>> What release are you using ?
>>
>> Have you tried setting KBRANCH ?
>
> I didn't know about the KBRANCH variable.  That sure helped.  I changed my recipe as shown below, and it is switching branches and checking out the specified commit.
>

Hmmm. I swear it had been documented, that's a gap. I'll double
check and get things updated if it is missing.

Bruce

> Thanks!
> Bryan
>
>>
>> Cheers,
>>
>> Bruce
>>
>>> Here is my build environment details:
>>>
>>> Build Configuration:
>>> BB_VERSION        = "1.16.0"
>>> TARGET_ARCH       = "arm"
>>> TARGET_OS         = "linux-gnueabi"
>>> MACHINE           = "at91sam9x5ek"
>>> DISTRO            = "poky"
>>> DISTRO_VERSION    = "1.3.2"
>>> TUNE_FEATURES     = "armv5 dsp thumb arm926ejs"
>>> TARGET_FPU        = "soft"
>>> meta-atmel        = "master:a3b649c46c6f48cea4c95d35028e950d8d5b3a13"
>>> meta
>>> meta-yocto
>>> meta-yocto-bsp    = "danny:c3505828f267ca68aaf454355466f54772545a22"
>>>
>>> -----------------------------------------
>>>
>>> Here is my kernel recipe (Removed the boilerplate comments at top of
>> linux-yocto-custom recipe to reduce clutter):
>>>
>>> inherit kernel
>>> require recipes-kernel/linux/linux-yocto.inc
>>>
> # Added KBRANCH spec
> KBRANCH = "linux-3.9-at91"
>>> # Override SRC_URI in a bbappend file to point at a different source
>> #
>>> tree if you do not want to build from Linus' tree.
>>> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=linux-
>> 3.9-
>> at91;tag=dcdf169e24c0cb6d7dc69e0a09d2395934e95075;protocol=git;nochecko
>> ut=1"
>
> # Changed SRC_URI to following
> SRC_URI = "git://github.com/linux4sam/linux-at91.git;branch=${KBRANCH};protocol=git;nocheckout=1"
>
>>> SRC_URI += "file://${MACHINE}/defconfig"
>>>
>>> LINUX_VERSION ?= "3.9.0"
>>> LINUX_VERSION_EXTENSION ?= "-custom"
>>>
>>> # Override SRCREV to point to a different commit in a bbappend file
>> to
>>> # build a different release of the Linux kernel.
>>> # tag: v3.4 76e10d158efb6d4516018846f60c2ab5501900bc
>>> # tag: linux-3.9-at91 as of 2013-06-12,
>>> dcdf169e24c0cb6d7dc69e0a09d2395934e95075
>>> SRCREV="dcdf169e24c0cb6d7dc69e0a09d2395934e95075"
>>> PV = "${LINUX_VERSION}+${SRCREV}"
>>>
>>> PR = "r1"
>>>
>>> # Override COMPATIBLE_MACHINE to include your machine in a bbappend #
>>> file. Leaving it empty here ensures an early explicit build failure.
>>> COMPATIBLE_MACHINE = "(sama5d3xek|at91sam9x5ek)"
>>>
>>> ---------------------------------------------
>>>
>>> And here is my bbappend:
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>> COMPATIBLE_MACHINE_sama5d3xek = "at91sama5d3xek"
>>> COMPATIBLE_MACHINE_at91sam9x5ek = "at91sam9x5ek"
>>>
>>> Any insight would be appreciated.
>>>
>>> Thanks,
>>> Bryan
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> --
>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>> thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


