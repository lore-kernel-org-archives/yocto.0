Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CFF7E01490
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 10:18:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Apr 2013 10:18:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,410,1363158000"; d="scan'208";a="289449205"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.54])
	by orsmga001.jf.intel.com with ESMTP; 04 Apr 2013 10:18:45 -0700
Message-ID: <515DB5F5.5010300@linux.intel.com>
Date: Thu, 04 Apr 2013 10:18:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130110 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <E32C22186F664AC79D0019B49275C4EE@PAULD><515C4D0D.7030708@linux.intel.com><1FA14170446D481E9E3DB9080F55EEB9@PAULD>
	<515C8FEF.2090201@linux.intel.com>
	<7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
In-Reply-To: <7FEC659FC16A466C9B7671C5BADEDB81@PAULD>
X-Enigmail-Version: 1.5.1
Cc: yocto@yoctoproject.org
Subject: Re: This one can't be me...
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
X-List-Received-Date: Thu, 04 Apr 2013 17:18:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/03/2013 05:21 PM, Paul D. DeRocco wrote:
>> From: Darren Hart
>>
>> Are you building with the rm work setting? Otherwise, that 
>> should not be
>> empty unless you have more than one linux-yocto* directory 
>> and the other
>> is populated.
>>
>> If not, verify rm work is not on and just build the kernel:
>>
>> $ bitbake linux-yocto -c cleansstate
>> $ bitbake linux-yocto
> 
> After doing that (with two esses), I now have a .config file, along with a
> ton of other stuff, in that folder. I have no idea what made it disappear,
> because I don't use the rm_work option.
> 
> However, the only BLK_DEV_RAM line is
> 
> 	# CONFIG_BLK_DEV_RAM is not set
> 
> I haven't been fiddling with the kernel, because I don't know how to fiddle
> with the kernel. This should be a plain vanilla build.
> 

So that would result in this exact failure. Kishore, can you verify the
BSP linux-yocto meta-data and either fix the BLK_DEV_RAM issue or help
Paul sort out what he may have done that resulted in this breakage?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

