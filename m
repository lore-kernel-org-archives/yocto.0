Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DD344C804FF
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2011 13:51:30 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Apr 2011 11:51:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,270,1301900400"; d="scan'208";a="425875715"
Received: from unknown (HELO [10.255.13.96]) ([10.255.13.96])
	by azsmga001.ch.intel.com with ESMTP; 26 Apr 2011 11:51:10 -0700
Message-ID: <4DB7141C.9080207@linux.intel.com>
Date: Tue, 26 Apr 2011 11:51:08 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Yocto Project Discussions <yocto@linux.intel.com>
References: <4DB055DC.4020306@linux.intel.com>	<1303485017.29588.138.camel@elmorro>
	<4DB711BA.8050107@windriver.com>
In-Reply-To: <4DB711BA.8050107@windriver.com>
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: Image Creator and Config Creator, design thoughts
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
X-List-Received-Date: Tue, 26 Apr 2011 18:51:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/26/2011 11:40 AM, Bruce Ashfield wrote:
> On 11-04-22 11:10 AM, Tom Zanussi wrote:
>> On Thu, 2011-04-21 at 09:05 -0700, Darren Hart wrote:
>>> I sat down with Josh earlier this week to discuss how I might use the
>>> Image Creator in my development and to address any issues that might
>>> pose as blockers to my finding such a tool useful. This led to various
>>> feature discussions, scope setting, etc. I wanted to capture that here
>>> and also ask for comments from other users and developers.
>>>
>>>
>>> Image Recipe Generation
>>> -----------------------
>>> The image creator Josh is working on currently facilitates specifying
>>> the policy (bitbake term "distro", such as poky, poky-bleeding, or
>>> poky-lsb), image, and any additional packages you may want to include.
>>> It then provides a simple wrapper to bitbake and it's output. This is
>>> useful in and of itself as sorting out which variables to modify
>>> (IMAGE_INSTALL, MACHINE(_ESSENTIAL?)_R?DEPENDS_append(_$MACHINE), etc)
>>> and which tasks to rebuild (task_base, task_machine_base, poky-image-*,
>>> etc.) can be a frustrating exercise (or at least it has been for me).
>>>
>>> In order for this feature to be the most useful, it needs to be able to
>>> save the result of the user's selection. This involves saving off the
>>> "distro" selection (typically in local.conf) as well as an image recipe
>>> defining which packages to include in the resulting image. This could be
>>> done by writing to local.conf and saving a new *image*.bb file in a
>>> suitable location.
>>>
>>>
>>> Writing Layers
>>> --------------
>>> The suitable location is most likely a layer, which suggests the Image
>>> Builder should probably know how to construct a basic layer skeleton and
>>> prompt the user to fill in the descriptive bits required for layer.conf.
>>>
>>> I could see this as having been useful for the recent Yocto Project 1.0
>>> launch demo we worked on, which added rygel upnp video renderers to the
>>> the 0.9 audio only demo. This implies the Image Builder should also be
>>> able to work with an existing layer - perhaps only those that it created
>>> - and save the changes back to that layer.
>>>
>>>
>>> Configuration Fragments
>>> -----------------------
>>> In order to properly build the demo images (poky-image-rygel
>>> specifically) some specific license related variables need to be set,
>>> typically in local.conf:
>>>
>>> COMMERCIAL_LICENSE = ""
>>> COMMERCIAL_AUDIO_PLUGINS ?= "gst-plugins-ugly-mad
>>> gst-plugins-ugly-mpegaudioparse"
>>> COMMERCIAL_VIDEO_PLUGINS ?= "gst-plugins-ugly-mpeg2dec
>>> gst-plugins-ugly-mpegstream gst-plugins-bad-mpegvideoparse"
>>>
>>> Without the above, the upnp demo is mostly non-functional. Having to
>>> manually add these sorts of settings significantly reduces the value of
>>> the Image Builder in my mind. This led to the discussion of providing a
>>> graphical mechanism to set the variables that have some impact on how
>>> the generated image recipe is built.
>>>
>>> Something like a Linux kernel kconfig mechanism, which only shows the
>>> user relevant options (albeit still WAY too many), might be really nice
>>> here. Perhaps an interface that parsed the recipes included in the image
>>> recipe and determined which variables would be relevant to the user and
>>> present those in the UI with help derived from documentation.conf
>>> doctags (or perhaps a new mechanism).
>>>
>>
>> Input we got from the ELC talk suggested that people did think it would
>> be intuitive and useful to expand the kernel menuconfig 'UI' down to all
>> the other packages in the image.
>>
>> I've used UIs designed like that in other build systems and it was very
>> useful, so I'd add my +1 to the ELC requests...
> 
> And I'd add another +1 to that.
> 

So the kernel guys agree that menuconfig should used everywhere.
Surprise, Surprise. ;-)

--
Darren

> Bruce
> 
>>
>> Tom
>>
>>> As this would be a considerable effort, and would surely delay the
>>> progress of the image builder itself, perhaps a Configuration Editor
>>> would be a good companion tool which the Image Builder could launch to
>>> do the relevant configurations
>>>
>>>
>>> Conclusions
>>> -----------
>>> The goal of any user interface should be to abstract away to
>>> implementation details that are not particularly relevant to task at
>>> hand, or to the user's perception of the task at hand.  I feel these
>>> tools as discussed above would help contain feature creep, while still
>>> allowing for a more complete graphical interface to configuring and
>>> building images.
>>>
>>>
>>> Thoughts? Criticisms?
>>>
>>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

