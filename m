Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 098C2E004E9
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2011 13:15:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Oct 2011 13:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="62630118"
Received: from unknown (HELO envy.home) ([10.255.14.198])
	by orsmga002.jf.intel.com with ESMTP; 12 Oct 2011 13:15:27 -0700
Message-ID: <4E95F55F.3080808@linux.intel.com>
Date: Wed, 12 Oct 2011 13:15:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4E933C41.4000207@linux.intel.com> <4E94D624.1020107@am.sony.com>
	<4E95B87E.6050300@linux.intel.com> <4E95E020.7070201@gmail.com>
In-Reply-To: <4E95E020.7070201@gmail.com>
X-Enigmail-Version: 1.3.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
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
X-List-Received-Date: Wed, 12 Oct 2011 20:15:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 10/12/2011 11:44 AM, Khem Raj wrote:
> On 10/12/2011 8:55 AM, Darren Hart wrote:
>> Hi Tim,
>>
>> On 10/11/2011 04:49 PM, Tim Bird wrote:
>>> On 10/10/2011 11:41 AM, Darren Hart wrote:
>>>> As part of working on meta-tiny, I've come across a need (want?) to
>>>> present users with the ability to select some set of features in a local
>>>> configuration file that will impact the build of the image and a set of
>>>> recipes.
>>>
>>> Can you tell me more about meta-tiny?  this is the first I've heard
>>> about this (sorry if discussion went by on the mailing list and I
>>> missed it), and I'm very interested.
>>
>>
>> Tim,
>>
>> I'll be presenting things in more detail at ELCE, Friday @ 3:45 PM in
>> the Kepler room. The summary is that I have received a lot of questions
>> along the lines of "How small of an image can I build with Yocto?".
> 
> I guess yocto needs to define another profile(distro) to really 
> demonstrate how small it can get. There are other distros based on 
> oe-core e.g. micro and even slugos where the image sizes are really 
> small slugos/uclibc image is around 2.7M eglibc based image is 3.5M

That's right about what I'm seeing as well, and it's not particularly
difficult to get there. It was mostly just time consuming. If we can
make it easy to start there and let people build up from there, I think
taht would be a win.

> 
>> core-image-minimal does a decent job at a small general purpose image,
>> but it still has a lot of baggage that a truly size conscious developer
>> doesn't need for a custom BSP.
>>
>> meta-tiny is my experimental layer where I'm looking at what we can
>> build with our existing sources and infrastructure. I've found that we
>> can cut the image size to about 10% of core-image-minimal without
>> changes to source code, but dropping a lot of functionality. We can get
>> to something like 20% while still maintaining ipv4 networking.
>>
>> This "recipe features" thread stems from this work. Before I can
>> integrate something like this into Yocto, it needs a more suitable user
>> exposed configuration mechanism.
> 
> this has a downside. I still favour that distro/machine should be one to 
> dictate the features which should control recipe feature enable/disable 
> behavior.


I don't disagree. The configuration mechanism is still needed though.
For example, the only way to configure bitbake as things stand is with a
new defconfig. By adding config fragment management and some sort of
selectable feature set, each distro definition could provide it's own
config and build from the same recipe. Much the way uclibc and eglibc
can be configured now (and use distro defined variables).

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

