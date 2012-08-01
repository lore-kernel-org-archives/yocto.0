Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 809AAE01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 15:37:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Aug 2012 15:37:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="201149980"
Received: from unknown (HELO envy.home) ([10.255.13.51])
	by fmsmga002.fm.intel.com with ESMTP; 01 Aug 2012 15:37:23 -0700
Message-ID: <5019AF37.4040406@linux.intel.com>
Date: Wed, 01 Aug 2012 15:35:35 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
	<20120801061552.GB15199@jama.jama.net>
	<501957C4.7010401@linux.intel.com>
	<CAMKF1soAoCiihcn7OGMfQS29L80zLLvoAWkc2D9AV37ku98idw@mail.gmail.com>
	<50196467.50903@linux.intel.com>
	<80F8A591-0E46-404A-AAC0-59546ACB1ADC@gmail.com>
In-Reply-To: <80F8A591-0E46-404A-AAC0-59546ACB1ADC@gmail.com>
X-Enigmail-Version: 1.4.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 22:37:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/01/2012 03:34 PM, Khem Raj wrote:
> 
> On Aug 1, 2012, at 10:16 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> 
>>
>>
>> On 08/01/2012 10:09 AM, Khem Raj wrote:
>>> On Wed, Aug 1, 2012 at 9:22 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>>>> (gdb) target extended-remote 127.0.0.1:1234
>>>
>>> this should be ip of target which in your case is qemu prolly
>>> something like 192.168.7.2 or somesuch
>>>
>>
>> I was trying to use the "redir" feature of qemu which supposedly allows
>> you to connect to 1234 on the host instead. After looking at this for a
>> bit and not making any progress, I setup tun/tap networking with qemu
>> and easily connected using the target IP as you mention above. I'd like
>> to understand why redir didn't work - as debugging without a full
>> network on the client would be nice - but for now, I'm moving along.
>>
> 
> well redir is visible to qemu gdb stub not to the software stack that qemu is running
> in your case. although you can use that to debug kernel using qemu. Pass -s option 
> and qemu will boot kernel using gdb stub and you can debug the kernel from address 0
> kind of JTAG debugger for poor :)


Oh. Duh. :-)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

