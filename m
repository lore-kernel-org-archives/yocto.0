Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10837E012AA
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 14:22:51 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Sep 2011 14:22:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="46912304"
Received: from unknown (HELO envy.home) ([10.255.14.250])
	by orsmga001.jf.intel.com with ESMTP; 09 Sep 2011 14:22:50 -0700
Message-ID: <4E6A83AA.3030005@linux.intel.com>
Date: Fri, 09 Sep 2011 14:22:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <cover.1315509303.git.tom.zanussi@intel.com>
	<1315574255.1986.0.camel@ted> <1315576643.2367.25.camel@elmorro>
	<1315590304.1986.10.camel@ted> <1315595628.2367.67.camel@elmorro>
	<4E6A70A5.3090204@windriver.com>
In-Reply-To: <4E6A70A5.3090204@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] More fixes for bug 1428
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
X-List-Received-Date: Fri, 09 Sep 2011 21:22:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/09/2011 01:01 PM, Mark Hatle wrote:

> We need to keep the older grub 0.97 as well.  grub2 is GPLv3 and a lot of people
> will refuse to use it based on that.

This is a concern, iirc we needed GRUB 2 for x86_64. I was considering
dropping grub entirely and using syslinux in the 1.2 timeframe. I asked
on list if there were any non-x86 grub users and didn't get any responses.

--
Darren

> 
> --Mark
> 
>> Tom
>>
>>> Cheers,
>>>
>>> Richard
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

