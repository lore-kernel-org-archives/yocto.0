Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E359E00307
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 13:16:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 17 Nov 2011 13:16:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="76908041"
Received: from amabrams-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.53])
	by orsmga002.jf.intel.com with ESMTP; 17 Nov 2011 13:16:26 -0800
Message-ID: <4EC579AA.3090105@linux.intel.com>
Date: Thu, 17 Nov 2011 13:16:26 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <CAF6CgHwhhBJ05zK2A4YdddTDNZVeZ_is7G0V-09jMYMADLFeOQ@mail.gmail.com>
	<4EC2C423.6010502@linux.intel.com>
In-Reply-To: <4EC2C423.6010502@linux.intel.com>
X-Enigmail-Version: 1.3.3
Cc: yocto@yoctoproject.org
Subject: Re: changing kernel config on a project built by Hob
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
X-List-Received-Date: Thu, 17 Nov 2011 21:16:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/15/2011 11:57 AM, Joshua Lock wrote:
> Hi Jitendra,
> 
> On 11/11/11 11:37, Jitendra Shekhawat wrote:
>> Newbie here. I think I've looked at the relevant documents and couldn't
>> find how to do this.
>>
>> What is the procedure for doing a kernel 'make menuconfig' on hob
>> assisted projects?
>>
>> I created a simple project using following steps:
>> 1. source poky-edison-6.0/oe-init-build-env
>> 2. hob
>> 3. configuration under hob:
>>  - Machine: atom-pc
>>  - Base image: core-image-minimal 
>>  - Added openssh
>> 4. save the image as test.bb <http://test.bb>
>> 5. Baked the image in hob
>> 6. Booted the result in Virtualbox after creating a bootable disk image,
>> etc.
>>
>> I need to now modify the kernel by adding CP210x USB/Serial converter
>> driver.
>>
>> What is the procedure for doing a 'make menuconfig' on this hob assisted
>> project?
> 
> Unfortunately we don't currently support modifying the kernel config via
> the hob GUI although it's certainly something we'd like to enable in the
> future.

Really what were talking about here is development of recipes versus
building them. Hob builds images - and offers some help configuring
which packages go into an image - but it doesn't modify the packages
themselves. "make menuconfig" is a development tool which makes
transient changes to the kernel build. In order for Hob (in its current
state anyway) to take advantage of those changes, they need to be made
permanent.  To do this, I suggest iterating on your kernel config using
the command line tools. Once you are happy with it, update the recipe to
use the new config, and then resume work with Hob. The final state of a
kernel config should be incorporated into the kernel recipes and source
repositories.

This isn't to say this process can't be improved, but such is the state
of things as they stand now.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

