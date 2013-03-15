Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9B17E003DB
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 08:58:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 15 Mar 2013 08:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,850,1355126400"; d="scan'208";a="215170588"
Received: from unknown (HELO envy.home) ([10.24.37.119])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Mar 2013 08:58:24 -0700
Message-ID: <5143451E.9000807@linux.intel.com>
Date: Fri, 15 Mar 2013 08:58:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
	<5140B150.7050606@linux.intel.com>
	<CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
	<51422FD2.6070605@linux.intel.com>
	<CACzyEJ9TQd-ORK-ndiNi9ZrshPrbmSiwt6JiQF4AGyTwD0q9Rw@mail.gmail.com>
In-Reply-To: <CACzyEJ9TQd-ORK-ndiNi9ZrshPrbmSiwt6JiQF4AGyTwD0q9Rw@mail.gmail.com>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Fri, 15 Mar 2013 15:58:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/15/2013 02:26 AM, Insop Song wrote:
> On Thu, Mar 14, 2013 at 1:15 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 03/14/2013 12:56 PM, Insop Song wrote:
>>> Hi Darren,
>>>
>>> mkefidisk.sh works, thank you.
>>>
>>> What I found was, USB still doesn't work even with mkefidisk.sh.
>>> So I used micro sd card instead.
>>
>> Aha, yes. You will need to add "rootwait" to your kernel command line
>> for reliable booting over usb. There is no way I see to determine if USB
>> is being used (/dev/sda could just as easily be SATA). Perhaps mkefidisk
>> should just use rootwait by default. Patches accepted.
>>
> 
> 
> "rootwait" was there.
> 
> 1. when I run "sudo ~/bin/mkefidisk.sh /dev/sda
> core-image-sato-sdk-fri2-20130309091839.hddimg /dev/mmcblk0"
> but "root=" was set to mmcblk0.
> So I changed "root=" manually to sda2, usb is booted as well.
> 
> yes, I should have put the last parameter to be "/dev/sda" instead..


This also explains why rootwait was there. The script tests for mmcblk0
and sets rootwait if so (if I remember correctly).


> 2. so when I run "sudo ~/bin/mkefidisk.sh /dev/sda
> core-image-sato-sdk-fri2-20130309091839.hddimg /dev/sda"
> USB is also working fine.


Check this image, I think you'll find that rootwait is missing for this
image.


> Thank you very much for the help, now I can use fri2 to test "meta-realtime"
> 
> Insop
> 

Great.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

