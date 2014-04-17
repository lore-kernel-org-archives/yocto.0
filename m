Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACFE5E00C1B
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 14:31:44 -0700 (PDT)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id s3HLVfEX014099;
	Thu, 17 Apr 2014 16:31:41 -0500
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id s3HLVfNQ026330;
	Thu, 17 Apr 2014 16:31:41 -0500
Received: from dlep32.itg.ti.com (157.170.170.100) by DFLE72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 17 Apr 2014 16:31:40 -0500
Received: from gtwmills.gt.design.ti.com (ileax41-snat.itg.ti.com
	[10.172.224.153])	by dlep32.itg.ti.com (8.14.3/8.13.8) with ESMTP id
	s3HLVeE0017064;	Thu, 17 Apr 2014 16:31:40 -0500
Message-ID: <5350483C.6060400@ti.com>
Date: Thu, 17 Apr 2014 17:31:40 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <534DBB9E.2030608@mlbassoc.com>
	<20140417191042.GK11339@denix.org>
In-Reply-To: <20140417191042.GK11339@denix.org>
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Thu, 17 Apr 2014 21:31:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 04/17/2014 03:10 PM, Denys Dmytriyenko wrote:
> On Tue, Apr 15, 2014 at 05:07:10PM -0600, Gary Thomas wrote:
>> On 2014-04-15 13:43, Denys Dmytriyenko wrote:
>>> On Tue, Apr 15, 2014 at 01:41:12PM -0400, Denys Dmytriyenko wrote:
>>>>>>>> Some other things I tried with a "long" TMPDIR path (note that it's the
>>>>>>>> TMPDIR path that makes the difference - in my tests I've been using
>>>>>>>> /home/paul/poky/build2/much/longer/path/to/tmp). None of this helped:
>>>>>>>>
>>>>>>>> * kernel built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>> * u-boot built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>> * u-boot from http://downloads.angstrom-distribution.org/demo/beaglebone/
>>>>>>>> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
>>>>>>>>
>>>>>>>> I think we're now at the point where we'd benefit from someone with better
>>>>>>>> knowledge debugging the issue.
>>>>>>>
>>>>>>> Ok, should we expand the search area? Since this is supposed to be vanilla
>>>>>>> 3.14 kernel, can we try other platforms and see if they are similarly
>>>>>>> affected? I'll try pinging our kernel guys for any ideas...
>>>>>>
>>>>>> As far as I know it has only been observed with beaglebone (both white and
>>>>>> black, if it makes a difference). FWIW, qemuarm images from the autobuilder
>>>>>> boot just fine, and apparently the same is true of edgerouter (different
>>>>>> architecture but also uses u-boot).
>>>>>
>>>>> But do those other platforms use uImage or zImage?
>>>
>>> I don't yet know what is going on, but building in the same directory with
>>> sources (B = S) makes it work regarless of the path length:
>>>
>>> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>>>
>>> So, I just commented out setting kernel-specific B in linux-yocto.inc and any
>>> kernel now boots with long path:
>>>
>>> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>>>
>>> I'm copying Richard and Bruce directly to see if they may have a quick insight
>>> and/or accept it as a workaround for the release. I'll keep digging further,
>>> but if anyone cares to verify the above workaround works for them, I would
>>> appreciate. Thanks!
>>>
>>
>> Verified - I rebuilt the kernel in a working tree with a longer
>> path (one in fact that had failed before) and it boots fine.
>>
>> Wonder what ${B} != ${S} is doing wacky...?
>
> Gary, et al,
>
> I've just submitted a patch to oe-core and yocto MLs that fixes this issue -
> could you please test it in your setup and confirm? Thanks!
>

I updated Stefan's bug w/ more explanation.
I verified that Stefan's uImage-bad failed for me and then added the 
following to uEnv.txt:
fdtaddr=0x88000000

uImage-bad (and uImage-good) worked w/ the above change to uEnv.txt.
Denys' patch fixes all the defaults in u-boot so that no uEnv.txt change 
is needed.

