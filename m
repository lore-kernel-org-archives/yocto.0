Return-Path: <wmills@ti.com>
Received: from bear.ext.ti.com (bear.ext.ti.com [192.94.94.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C0D6E00C27
	for <yocto@yoctoproject.org>; Fri, 18 Apr 2014 10:52:10 -0700 (PDT)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id s3IHq8cd031672;
	Fri, 18 Apr 2014 12:52:08 -0500
Received: from DLEE71.ent.ti.com (dlee71.ent.ti.com [157.170.170.114])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id s3IHq8TV030679;
	Fri, 18 Apr 2014 12:52:08 -0500
Received: from dlep32.itg.ti.com (157.170.170.100) by DLEE71.ent.ti.com
	(157.170.170.114) with Microsoft SMTP Server id 14.3.174.1;
	Fri, 18 Apr 2014 12:52:08 -0500
Received: from [172.22.147.84] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dlep32.itg.ti.com (8.14.3/8.13.8) with ESMTP id s3IHq7qt019699;
	Fri, 18 Apr 2014 12:52:08 -0500
Message-ID: <53516647.70507@ti.com>
Date: Fri, 18 Apr 2014 13:52:07 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>
References: <3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org> <534DBB9E.2030608@mlbassoc.com>
	<20140417191042.GK11339@denix.org> <5350483C.6060400@ti.com>
	<CAMKF1so9KGnhQKiHvXu-Uh2zJDyYZs1psM6QQAP-y_Uzp53Ytg@mail.gmail.com>
	<20140418001344.GM11339@denix.org>
In-Reply-To: <20140418001344.GM11339@denix.org>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 18 Apr 2014 17:52:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 04/17/2014 08:13 PM, Denys Dmytriyenko wrote:
> On Thu, Apr 17, 2014 at 04:25:51PM -0700, Khem Raj wrote:
>> On Thu, Apr 17, 2014 at 2:31 PM, William Mills <wmills@ti.com> wrote:
>>> On 04/17/2014 03:10 PM, Denys Dmytriyenko wrote:
>>>>
>>>> On Tue, Apr 15, 2014 at 05:07:10PM -0600, Gary Thomas wrote:
>>>>>
>>>>> On 2014-04-15 13:43, Denys Dmytriyenko wrote:
>>>>>>
>>>>>> On Tue, Apr 15, 2014 at 01:41:12PM -0400, Denys Dmytriyenko wrote:
>>>>>>>>>>>
>>>>>>>>>>> Some other things I tried with a "long" TMPDIR path (note that it's
>>>>>>>>>>> the
>>>>>>>>>>> TMPDIR path that makes the difference - in my tests I've been using
>>>>>>>>>>> /home/paul/poky/build2/much/longer/path/to/tmp). None of this
>>>>>>>>>>> helped:
>>>>>>>>>>>
>>>>>>>>>>> * kernel built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>>>>> * u-boot built with gcc 4.7.2 and binutils 2.23.2
>>>>>>>>>>> * u-boot from
>>>>>>>>>>> http://downloads.angstrom-distribution.org/demo/beaglebone/
>>>>>>>>>>> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
>>>>>>>>>>>
>>>>>>>>>>> I think we're now at the point where we'd benefit from someone with
>>>>>>>>>>> better
>>>>>>>>>>> knowledge debugging the issue.
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Ok, should we expand the search area? Since this is supposed to be
>>>>>>>>>> vanilla
>>>>>>>>>> 3.14 kernel, can we try other platforms and see if they are
>>>>>>>>>> similarly
>>>>>>>>>> affected? I'll try pinging our kernel guys for any ideas...
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> As far as I know it has only been observed with beaglebone (both
>>>>>>>>> white and
>>>>>>>>> black, if it makes a difference). FWIW, qemuarm images from the
>>>>>>>>> autobuilder
>>>>>>>>> boot just fine, and apparently the same is true of edgerouter
>>>>>>>>> (different
>>>>>>>>> architecture but also uses u-boot).
>>>>>>>>
>>>>>>>>
>>>>>>>> But do those other platforms use uImage or zImage?
>>>>>>
>>>>>>
>>>>>> I don't yet know what is going on, but building in the same directory
>>>>>> with
>>>>>> sources (B = S) makes it work regarless of the path length:
>>>>>>
>>>>>>
>>>>>> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>>>>>>
>>>>>> So, I just commented out setting kernel-specific B in linux-yocto.inc
>>>>>> and any
>>>>>> kernel now boots with long path:
>>>>>>
>>>>>> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>>>>>>
>>>>>> I'm copying Richard and Bruce directly to see if they may have a quick
>>>>>> insight
>>>>>> and/or accept it as a workaround for the release. I'll keep digging
>>>>>> further,
>>>>>> but if anyone cares to verify the above workaround works for them, I
>>>>>> would
>>>>>> appreciate. Thanks!
>>>>>>
>>>>>
>>>>> Verified - I rebuilt the kernel in a working tree with a longer
>>>>> path (one in fact that had failed before) and it boots fine.
>>>>>
>>>>> Wonder what ${B} != ${S} is doing wacky...?
>>>>
>>>>
>>>> Gary, et al,
>>>>
>>>> I've just submitted a patch to oe-core and yocto MLs that fixes this issue
>>>> -
>>>> could you please test it in your setup and confirm? Thanks!
>>>>
>>>
>>> I updated Stefan's bug w/ more explanation.
>>> I verified that Stefan's uImage-bad failed for me and then added the
>>> following to uEnv.txt:
>>> fdtaddr=0x88000000
>>
>> hmmm so it seems kernel size grew enough to overwrite the area where
>> uboot would put divice tree ?
> 
> Exactly! The overall kernel size was very close to the limit of previous space m,
> allocation in U-boot and enabling another feature or growing the build path a 
> bit would overflow into and corrupt the device tree.
> 
> 
>> has happened to me on ppc with kernel+initramfs where initramfs kept growing
> 
> I was told no other platforms were affected, including qemuarm! :) Yeah, I 
> know, it can happen to anyone, even though by default it works fine...
> 

I did not look at qemuarm but I assume it was using different values for
for loadaddr & fdtaddr. (qemuarm is using fdt now right?)

Khem, yes this would have effected initrd also if the kernel was just a
touch bigger.  The patch Denys pushed moves the intrd load address as
well.  We should be good now.

If initramfs gets trashed you get a message when the kernel tries to
decompresses it that it is invalid.  If fdt gets trashed the kernel
does not know how to send messages to uart so you get nothing.  I am
not sure but when I was debugging with JTAG, it looked like the kernel
had actually started and was doing _something_.  It just had no
hardware to talk to.

If a kernel boots in a forest and has no way to talk, does it have any
bogomips?


> 
>>> uImage-bad (and uImage-good) worked w/ the above change to uEnv.txt.
>>> Denys' patch fixes all the defaults in u-boot so that no uEnv.txt change is
>>> needed.
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>


