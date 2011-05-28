Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8903F4C80228
	for <yocto@yoctoproject.org>; Sat, 28 May 2011 00:14:11 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 22:14:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,284,1304319600"; 
   d="scan'208";a="8845772"
Received: from unknown (HELO [10.255.12.245]) ([10.255.12.245])
	by fmsmga002.fm.intel.com with ESMTP; 27 May 2011 22:14:10 -0700
Message-ID: <4DE084A3.40109@intel.com>
Date: Fri, 27 May 2011 22:14:11 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Zanussi, Tom" <tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>	
	<4DE066D4.2030308@intel.com> <1306552807.23639.33.camel@elmorro>
In-Reply-To: <1306552807.23639.33.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/3][KERNEL] base patches needed for romley
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
X-List-Received-Date: Sat, 28 May 2011 05:14:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/27/2011 08:20 PM, Zanussi, Tom wrote:
> On Fri, 2011-05-27 at 20:07 -0700, Hart, Darren wrote:
>> On 05/27/2011 01:45 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi <tom.zanussi@intel.com>
>>>
>>> These upstreamed post-2.6.37 patches are needed by the romley BSP
>>> for 2.6.37.
>>>
>>> Note that I've removed the e-mail addresses from these posted patches,
>>> but the git branch retains them.
>>
>> I understand the reason, but this should no longer be necessary. The new
>> send-pull-request script only matches on "^Signed-off-by" and
>> "^[Cc][Cc]:", and you can do a dry run by answering "no" when prompted
>> and you can see where it would try and send the patches. If you notice
>> that a commit adding patches to recipe pulls in emails included in the
>> patches, PLEASE let me know. This should no longer be the case.
>>
> 
> I didn't try that, just decided I didn't want to risk it, but did try it
> now and get:
> 
> Send this email? ([y]es|[n]o|[q]uit|[a]ll): n
> (mbox) Adding cc: Seth Heasley from line 'From: Seth Heasley'
> (body) Adding cc: Seth Heasley from line 'Signed-off-by: Seth Heasley'
> (body) Adding cc: Jeff Garzik from line 'Signed-off-by: Jeff Garzik'


Ah... that's really unfortunate. I fixed our script from harvesting
those, but git send-email still picks them out :-(

Thanks for testing and confirming the behavior.

--
Darren

> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
> W: unable to extract a valid address from: Seth Heasley
> W: unable to extract a valid address from: Seth Heasley
> W: unable to extract a valid address from: Jeff Garzik
> W: unable to extract a valid address from: Seth Heasley
> W: unable to extract a valid address from: Seth Heasley
> W: unable to extract a valid address from: Jeff Garzik
> 
> It looks like it is trying to cc the e-mails in the patch, or am I
> reading that wrong?
> 
> The poky/master commit I'm using is:
> 
> 1169f1b066d0028bd2ef7915440450bd42ef165e
> 
> Tom
> 
>> --
>> Darren
>>
>>>
>>> Please pull into linux-yocto-2.6.37.
>>>
>>> Thanks,
>>>
>>> Tom
>>>
>>> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>>>   Branch: tzanussi/romley-new-options-and-refactor-base
>>>   Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base
>>>
>>> Greg Rose (1):
>>>   Remove extra struct page member from the buffer info structure
>>>
>>> Seth Heasley (2):
>>>   x86/PCI: irq and pci_ids patch for Intel Patsburg
>>>   ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
>>>
>>>  arch/x86/pci/irq.c        |    3 ++-
>>>  drivers/ata/ahci.c        |    1 +
>>>  drivers/net/igbvf/igbvf.h |    1 -
>>>  include/linux/pci_ids.h   |    3 ++-
>>>  4 files changed, 5 insertions(+), 3 deletions(-)
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

