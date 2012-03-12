Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43230E01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 08:24:50 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2012 08:24:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120187332"
Received: from unknown (HELO envy.home) ([10.7.199.57])
	by orsmga002.jf.intel.com with ESMTP; 12 Mar 2012 08:23:49 -0700
Message-ID: <4F5E14D9.7060706@linux.intel.com>
Date: Mon, 12 Mar 2012 08:23:05 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F59F59F.4040807@enea.com> <4F5A0913.20207@windriver.com>
	<4F5A1577.1010600@mindchasers.com> <4F5A1700.3080501@windriver.com>
In-Reply-To: <4F5A1700.3080501@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: yocto and LTSI
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
X-List-Received-Date: Mon, 12 Mar 2012 15:24:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 03/09/2012 06:43 AM, Bruce Ashfield wrote:
> On 12-03-09 09:36 AM, Bob Cochran wrote:
>> On 03/09/2012 08:43 AM, Bruce Ashfield wrote:
>>> On 12-03-09 07:20 AM, David Nyström wrote:
>>>> Hi All,
>>>>
>>>> Whats yoctos take on LTSI ?
>>>>
>>>> http://git.linuxfoundation.org/?p=ltsi-kernel.git;a=summary
>>>> http://lwn.net/Articles/484337/
>>>>
>>>> I've noticed that LTT-ng and other kernel patches are independently
>>>> ported and maintained by the yocto project.
>>>> Are there any plans for yocto to have ltsi-kernel patches as upstream ?
>>>
>>> We'll be syncing up with the ltsi kernel parts over the summer.
>>> But yes, LTSI will be one of the sources used for yocto kernel trees.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>
>> I just finished reviewing the slides for LTSI given at ELC:
>> (https://events.linuxfoundation.org/images/stories/pdf/lf_elc12_shibata.pdf).
>>
>>
>> Why does the Linux Foundation need to get behind yet another effort to
>> maintain a kernel repository for embedded? It seems that many of the
>> objectives are the same for the two projects regarding the kernel. Why
>> not just branch a yearly Yocto kernel as long-term stable and add the
>> support methodology outlined in the LTSI slides to this branch? Perhaps
>> this could also be done with the Poky repo?
> 
> LTSI is still relatively new, a bit of patience is required for
> us to effectively collaborate between the two areas.
> 
> But yocto will always have a newer kernel than LTSI as we work
> throughout any given period. Quite simply put, there is no way to
> have one kernel version that meets everyone's needs. That's always
> been the case, and will likely continue to be the case for the
> forseeable future.
> 
>>
>> How is a developer supposed to view Yocto and LTSI? The former is
>> cutting edge, developer friendly with all the bells & whistles, and
>> experimental but use the latter for production??? Or maybe use the tools
>> and rootfs from Yocto but the kernel from LTSI?
> 
> These sorts of things are still being worked out, when we actually
> have a LSTI based yocto option, some sort of messaging will be
> created.
> 
>>
>> It seems Greg K-H of LTSI should join forces with Yocto and keep things
>> simple & unified for us embedded developers (or Yocto should dump
>> maintaining its own kernel repos and just draw from LTSI).
> 
> I already have initial conact with Greg on sync'ing up my efforts with
> LSTI.  Perhaps someday there will be a more complete overlap in the
> two, but today there isn't a complete overlap, so there will be
> additions to  LTSI that some boards/features/etc that yocto requires.
> Those additions may degrade to zero over time. In fact, if everything
> would just go mainline .. that would be even better.


Another point to make is that Yocto Project recipes (applications,
system libraries, and Linux kernels) will always be based on some
upstream, and should not be considered an upstream themselves.

In future releases, the linux-yocto recipes will use LTSI as a base, and
continue to work to push any changes we have to make by way of
integration and stablization to mainline as well as LTSI.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

