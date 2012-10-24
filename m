Return-Path: <darren.hart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB58E00346
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 10:07:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2012 10:07:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,640,1344236400"; d="scan'208";a="237674788"
Received: from unknown (HELO envy.home) ([10.255.14.87])
	by fmsmga001.fm.intel.com with ESMTP; 24 Oct 2012 10:07:14 -0700
Message-ID: <50882002.4010907@intel.com>
Date: Wed, 24 Oct 2012 10:06:10 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121009 Thunderbird/16.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1351023743.git.nitin.a.kamble@intel.com>
	<eafcdbdb3843e08adc7385d0f1cec2b316d1b691.1351023743.git.nitin.a.kamble@intel.com>
	<1351026976.12186.70.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C2D90DEAA@ORSMSX106.amr.corp.intel.com>
	<1351096988.27553.19.camel@empanada>
In-Reply-To: <1351096988.27553.19.camel@empanada>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance information
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
X-List-Received-Date: Wed, 24 Oct 2012 17:07:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/24/2012 09:43 AM, Tom Zanussi wrote:
> On Wed, 2012-10-24 at 11:06 -0500, Kamble, Nitin A wrote:
>>
>>> -----Original Message-----
>>> From: Zanussi, Tom
>>> Sent: Tuesday, October 23, 2012 2:16 PM
>>> To: Kamble, Nitin A
>>> Cc: yocto@yoctoproject.org; Hart, Darren
>>> Subject: Re: [PATCH 3/6] crownbay README: add WebTitle & Compliance
>>> information
>>>
>>> On Tue, 2012-10-23 at 13:24 -0700, nitin.a.kamble@intel.com wrote:
>>>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>>>
>>>> The WebTitle will be used to publish the BSP on the Yocto Project Website.
>>>> And adding the Yocto Project Compliance information for the 1.3 release.
>>>> Also specifying all the layers used from meta-intel repository.
>>>>
>>>> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
>>>> ---
>>>>  meta-crownbay/README |   13 +++++++++++--
>>>>  1 files changed, 11 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/meta-crownbay/README b/meta-crownbay/README index
>>>> 4bc9f31..3996a94 100644
>>>> --- a/meta-crownbay/README
>>>> +++ b/meta-crownbay/README
>>>> @@ -2,13 +2,22 @@ This README file contains information on building
>>>> the meta-crownbay  BSP layer, and booting the images contained in the
>>> /binary directory.
>>>>  Please see the corresponding sections below for details.
>>>>
>>>> -The Crown Bay platform consists of the Intel Atom Z6xx processor,
>>>> +The Crown Bay platform consists of the Intel Atom E6xx processor,
>>>>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>>>>
>>>>  It also supports the E6xx embedded on-chip graphics via the Intel
>>>> Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>>>>
>>>>
>>>> +WebTitle: Intel Atom E6xx processor with Intel EG20T Controller Hub
>>>> +development kit (crownbay)
>>>> +
>>>
>>> I'm not sure this kind of thing should be in the README since we can have
>>> multiple downloadable BSPs per layer e.g. crownbay vs crownbay-noemgd.  I
>>> suppose in keeping with the build system you could have separate
>>> WebTitle_crownbay and WebTitle_crownbay-noemgd lines. ;-) (and it would
>>> be nice if you could get rid of the CamelCaps too)
>>>
>>> Why not put this info in the machine.conf, where we already have fields
>>> meant to be machine parseable e.g.
>>>
>>> #@TYPE: Machine
>>> #@NAME: crownbay
>>>
>>> #@WEBTITLE: ...
>>>
>>> Or maybe just use the exisiting #@DESCRIPTION for that...
>>
>> For example in the current way the BSPs are published, this is shown on the YP website for crownbay 
>>
>> Intel Atom Processor E660 with Intel Platform Controller Hub EG20T Development Kit
>> Version: 7.0 "Denzil"
>> Release date: 29 Jun 2012
>> Type: BSP
>> Download Links:
>> Crown Bay
>> Crown Bay no EMGD
>> Release Notes
>>
>> So there is one BSP list item per h/w with multiple links to different BSP tarballs for the same hardware.
>> If we move the WebTitle in machine file, then we will have multiple items in the BSP list for the same hardware.
>> I am not sure which is better from the downloader's point of view. But this is worth considering for this change.
>>
> 
> Yeah, on the one hand if we have text that's the same for all BSPs in
> the layer, it could go in the README for lack of a better common place.
> 
> But we should consider whether we want to lay things out as the crownbay
> above, or more like the cedartrail, which has:
> 
> Intel® Atom™ Processor N2000 and D2000 Series-based Platform (CEDAR
> TRAIL) with PowerVR Graphics
> 
> (there's no corresponding -nopvr version available, though I suspect
> that's an oversight and would have been something like:
> 
> Intel® Atom™ Processor N2000 and D2000 Series-based Platform (CEDAR
> TRAIL) with VESA Graphics
> 
> I'm not sure the field(s) need to map exactly to the page layout, but
> all the information should be there to allow the page to be generated or
> laid out by hand without having to ask questions, in either case.  Did
> you have any idea as to how for example to distinguish between the emgd
> and -noemgd versions (side note: there's nothing in the current entry
> that tells the user what EMGD even is - should it at least be spelled
> out in the title, or do we need a separate subtext element to describe
> that?)

I like the Cedar Trail description with the graphics mentioned
explicitly. Doing this in the machine conf as Tom original suggested
makes perfect sense to me. If that means two entries for some machines,
that's preferable to me than extra complexity of subtexts, etc.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

