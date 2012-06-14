Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31952E013A6
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 17:41:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 13 Jun 2012 17:41:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="152870194"
Received: from unknown (HELO envy.home) ([10.255.12.119])
	by orsmga001.jf.intel.com with ESMTP; 13 Jun 2012 17:41:12 -0700
Message-ID: <4FD932DC.5020107@linux.intel.com>
Date: Wed, 13 Jun 2012 17:39:56 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
	<CDED78A957032E45B3239CDDA7642D151C848C34@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C848C34@ORSMSX105.amr.corp.intel.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Thu, 14 Jun 2012 00:41:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/13/2012 03:50 PM, Stewart, David C wrote:
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Ross Burton
>> Sent: Wednesday, June 13, 2012 1:45 PM
>>
>> Hi,
>>
>> My current test hardware for Yocto work is a Celeron-class Sandy Bridge-
>> based micro PC. As is to be expected for a machine like this, it's got modern
>> Intel graphics and wireless. Neither of which are supported by atom-pc, as
>> it's nominally a "generic netbook" image.
>>
>> Let's face it -- it's a really bad generic netbook image, it's really a Asus
>> eeePC701-and-similar image. Specifically, only one wifi driver, only i915 GPU
>> driver, and so on.
> 
> I thought we had some Sandy Bridge BSP already?

We do. The problem is that doesn't define things like which wifi device
is used. There seems to be a reasonable amount of interest in a much
more generally useful x86 BSP. This seems to fit the goals of the
atom-pc BSP, which has become a bit stale.

> 
>> I'm not arguing for a true generic kernel such as Fedora maintains which
>> boots on almost everything, just a new machine with more flexibility.
>> Including both i915 and i965 GPU drivers covers everything Intel-driven from
>> the earliest netbook to the latest Ivy Bridge[1].  Including the iwl wifi drivers
>> at least covers a good proportion of devices out there.  There are probably a
>> few more drivers that are common and give big gains in support.  Not exactly
>> boot on everything, but certainly boot on many.
>>
>> Thoughts?
>>
>> Ross
>>
>> [1] Ignoring Cedar Trail, but that's already in meta-intel
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



