Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4867E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 14:58:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jul 2012 14:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="172376937"
Received: from unknown (HELO envy.home) ([10.255.12.238])
	by orsmga001.jf.intel.com with ESMTP; 27 Jul 2012 14:58:48 -0700
Message-ID: <50130EB2.7010300@linux.intel.com>
Date: Fri, 27 Jul 2012 14:57:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
	<5011A43F.50904@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
	<501212EE.8030507@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318EA3C@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C0318EA3C@ORSMSX106.amr.corp.intel.com>
X-Enigmail-Version: 1.4.3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/6] crownbay: customize the xorg.conf for the flat panel on the corwnbay kit
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
X-List-Received-Date: Fri, 27 Jul 2012 21:58:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/26/2012 10:31 PM, Kamble, Nitin A wrote:
>>>> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
>>>>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>>>> 
>>>>> The kit has Auo 800x600 LCD screen. Configuring Xorg for it.
>>>> 
>>>> I presume the crownbay has additional display options? how does
>>>> this impact those?
>>>> 
>>> This change sets the resolution of the screen to 800x600. And
>>> this is applicable to LCD screen on the kit as well as external
>>> monitor. I will add a note about it in the log.
>> 
>> I presume that without this change it was able to detect the
>> appropriate resolution of the connected monitor, but not of the
>> LCD?
>> 
>> If so, this change effectively breaks that autodetection and forces
>> everything to the 800x600 display which is arguably very
>> low-resolution by today's standards. Why should this be the
>> default? When you refer to "the kit", what exactly are you
>> referring to?
>> 
>> Also, is this a discussion you have already had with Tom? I don't
>> want to contradict what he has said regarding this BSP.
> 
> 
> EMGD driver on crownbay gives few resolutions as options. By default
> it tries to set 1366x768 resolution for both LCD and external
> monitor. The Crownbay kit is a suitcase kind of box, which has
> builtin LCD screen of resolution 800x600. This LCD screen shows only
> 800x600 of the default 1366x768 area. So The LCD is not able to show
> all the screen, and IMO it is a functional issue.
> 
> For my Dell 1704FPTi monitor which has 1280x1024 native resolution;
> When connected to the crownbay,  X cannot find a working mode for
> this monitor. But if I set 800x600 in the xorg.conf as this commit
> does, then both LCD & external monitor can show the X screen without
> any issues.

This seems like a bug to me. The driver should be able to probe the
display and use the optimal resolution without it being specified in the
Xorg.conf. So far as I know we don't specify resolution in any of the
meta-intel BSPs:

dvhart@envy:~/source/poky/layers/meta-intel [denzil]
$ find . -name xorg.conf | xargs grep -i Modes

So while I agree the kit screen should work out of the box, the fact
that even your dell lcd monitor doesn't work is cause for concern. Is
there anything in the Xorg log that indicates why it isn't able to get
the EDID data?

--
Darren

> 
> I guess if a 1366x768 resolution monitor is connected to crownbay, it
> will show the X screen fine, but I don't have such monitor now. And
> also I think a BSP should not have such resolution requirement for
> the attached monitor, and attached LCD screen of the kit work without
> issues.
> 
> So the point of this commit is, make default config such that it will
> work for the LCD screen on the kit as well as any monitor attached.
> And if someone wants to get better resolution with their external
> monitor then they need to adjust the xorg.conf accordingly.
> 
> BTW I did not have much discussion with Tom on this topic.
> 
> Thanks, Nitin
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

