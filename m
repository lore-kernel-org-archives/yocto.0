Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E6F3E00C1E
	for <yocto@yoctoproject.org>; Thu, 17 Apr 2014 15:48:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5E4CFF811EE; Thu, 17 Apr 2014 16:48:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7BF81F811DF;
	Thu, 17 Apr 2014 16:48:16 -0600 (MDT)
Message-ID: <53505A3B.2090007@mlbassoc.com>
Date: Thu, 17 Apr 2014 16:48:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <534C0415.20701@mlbassoc.com>	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>	<20140415162639.GC11339@denix.org>	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>	<20140415194307.GG11339@denix.org>
	<534DBB9E.2030608@mlbassoc.com> <20140417191042.GK11339@denix.org>
In-Reply-To: <20140417191042.GK11339@denix.org>
X-Enigmail-Version: 1.5.2
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
X-List-Received-Date: Thu, 17 Apr 2014 22:48:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-04-17 13:10, Denys Dmytriyenko wrote:
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

Yes, verified it works great!  Thanks for figuring this one out.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

