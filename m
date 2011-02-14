Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DAF74C808E6
	for <yocto@yoctoproject.org>; Mon, 14 Feb 2011 11:34:03 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Feb 2011 09:34:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="602521707"
Received: from unknown (HELO [10.255.14.142]) ([10.255.14.142])
	by orsmga002.jf.intel.com with ESMTP; 14 Feb 2011 09:34:01 -0800
Message-ID: <4D59678E.60406@linux.intel.com>
Date: Mon, 14 Feb 2011 09:34:06 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <BC794782-AADE-4A58-8837-29ACC0497B1E@keylevel.com>
	<4D58AB54.90506@windriver.com>
In-Reply-To: <4D58AB54.90506@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Where is 'my' defconfig ?
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
X-List-Received-Date: Mon, 14 Feb 2011 17:34:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/13/2011 08:11 PM, Bruce Ashfield wrote:
> On 11-02-13 8:40 AM, Chris Tapp wrote:
>> I've created my own machine ('MyMachine') that has virtual/kernel set to
>> 'linux-yocto-stable'. I would now like to change the kernel
>> configuration to enable some drivers that aren't enabled by default.
>>
>> This leads me to a couple of questions:
>>
>> 1) Where is the defconfig file for 'linux-yocto-stable'? Or does this
>> just use the default configuration provided by the kernel?
>
> A defconfig is constructed on the fly for each board, using
> a series of inherited configuration values that are grouped
> to provide some sort of useful functionality. On top of being
> useful, they provide a common / consistent set of configuration
> values for BSPs that have been explicitly selected to meet some
> sort of functional requirement. As a result, test results are
> transitive (largely), a common feature set is available for a
> a supported board and a single configuration change can be
> made across all boards immediately.
>
> On top of that common base are the board specific configuration.
> In the perfect world, these are specific to the hardware of the
> board and are not logical in nature. You'll note the 'perfect'.
> Some boards do deviate from the common base. After configuring
> a board, an audit is run and a notification is generated if a board
> overrides a common feature, but it is just a notification.
>
>> 2) Where do I place the defconfig file for MyMachine? Should this be in
>> meta/recipes-kernel/linux/linux-yocto-stable/MyMachine/defconfig?
>
> The kernel architecture docs should have this covered
> in the section about cloning an existing BSP. I don't point
> this out as RTFM, but more along the lines of 'if you can,
> check and see if it is there, and if it works for you'.
>

In case anyone isn't sure which document Bruce is refering to:

http://www.yoctoproject.org/sites/default/files/kernel-manual_9.pdf


> But the jist of it is that a defconfig placed in that directory
> and added to the SRC_URI will definitely work. But it isn't
> ideal, since it will clobber all common settings. Since this
> is your board, you are definitely free to do just that.
>
> If you want to just add your hardware settings, then you can
> create a configuration fragment. A configuration fragment is
> just a file <your name here>.cfg, and it contains standard
> Kconfig values, but doesn't have to be (and shouldn't) be
> a complete configuration.
>
> Put it in that same directory, and add it to the SRC_URI.
> It will be picked up and added to the constructed configuration.
>
> Hope that helps,
>
> Bruce
>
>>
>> Chris Tapp
>>
>> opensource@keylevel.com
>> www.keylevel.com
>>
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

