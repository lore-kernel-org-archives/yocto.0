Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4B72E4C80121
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 11:26:23 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Oct 2010 09:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,218,1286175600"; d="scan'208";a="669543616"
Received: from doubt.jf.intel.com (HELO [10.24.148.210]) ([10.24.148.210])
	by orsmga001.jf.intel.com with ESMTP; 21 Oct 2010 09:26:22 -0700
Message-ID: <4CC069B3.8020107@linux.intel.com>
Date: Thu, 21 Oct 2010 09:26:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <1287595139.2635.16.camel@scimitar>	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D63D@shsmsx501.ccr.corp.intel.com>	<D5AB6E638E5A3E4B8F4406B113A5A19A2FF0D7F8@shsmsx501.ccr.corp.intel.com>
	<1287658228.2325.3.camel@scimitar>
In-Reply-To: <1287658228.2325.3.camel@scimitar>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UPnP demo - call for testing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 16:26:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/2010 03:50 AM, Joshua Lock wrote:
> On Thu, 2010-10-21 at 13:32 +0800, Xu, Dongxiao wrote:
>> Xu, Dongxiao wrote:
>>> I'd also like to have a try, and building the demo image now.
>>>
>>> Thanks,
>>> Dongxiao
>>>
>>> Joshua Lock wrote:
>>>> Hi all,
>>>>
>>>> I've successfully tested the UPnP demo in my office but would
>>>> appreciate someone else taking a bash.
>>>>
>>>> Unfortunately you currently need my branch from poky-contrib
>>>> (josh/demo) and the corresponding branch from meta-demo (josh/demo).
>>>>
>>>> The renderer and controller are installed together in the
>>>> poky-image-rygel image (I've been using the -live variant).
>>>>
>>>> I needed to use amixer to enable the soundcard and increase the
>>>> volume on the netbook I was using.
>>>>
>>>> "amixer set Master on
>>>>   amixer set Master 75"
>>>>
>>>> Run rygel from a terminal and launch gupnp-av-cp and you should be
>>>> able to set play music from a content store on the device. I haven't
>>>> tested video...
>>
>> I just setup the environment and gupnp-av-cp could play music from
>> another host within the network. However it seems that video doesn't
>> work yet. Does gupnp-av-cp supports video play?
>
> Thanks for testing this Dongxiao!
>
> I'm not sure whether video is required for the demo, but it should be
> supported by gupnp-av-cp and Rygel so long as required gstreamer plugins
> are installed. What type of video where you trying to play?

Video is a nice to have, but not required for the UK demo.

-- 
Darren Hart
Embedded Linux Kernel

