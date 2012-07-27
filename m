Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 779B2E002AB
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 21:04:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2012 21:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="178145173"
Received: from unknown (HELO envy.home) ([10.255.12.238])
	by orsmga002.jf.intel.com with ESMTP; 26 Jul 2012 21:04:36 -0700
Message-ID: <501212EE.8030507@linux.intel.com>
Date: Thu, 26 Jul 2012 21:02:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <c24a8e51027f36cb1c0395ca0c90cbd54b685100.1343037893.git.nitin.a.kamble@intel.com>
	<118e9c4c78b61e5debac285efa420486c145993b.1343037893.git.nitin.a.kamble@intel.com>
	<5011A43F.50904@linux.intel.com>
	<ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C0318E9CE@ORSMSX106.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 27 Jul 2012 04:04:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 07/26/2012 09:00 PM, Kamble, Nitin A wrote:
> 
> 
>> -----Original Message-----
>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>> Sent: Friday, July 27, 2012 1:41 AM
>> To: Kamble, Nitin A
>> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com; Zanussi, Tom
>> Subject: Re: [yocto] [PATCH 2/6] crownbay: customize the xorg.conf for the
>> flat panel on the corwnbay kit
>>
>> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
>>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>>
>>> The kit has Auo 800x600 LCD screen. Configuring Xorg for it.
>>
>> I presume the crownbay has additional display options? how does this impact
>> those?
>>
> This change sets the resolution of the screen to 800x600. And this is applicable to 
> LCD screen on the kit as well as external monitor.
>   I will add a note about it in the log.

I presume that without this change it was able to detect the appropriate
resolution of the connected monitor, but not of the LCD?

If so, this change effectively breaks that autodetection and forces
everything to the 800x600 display which is arguably very low-resolution
by today's standards. Why should this be the default? When you refer to
"the kit", what exactly are you referring to?

Also, is this a discussion you have already had with Tom? I don't want
to contradict what he has said regarding this BSP.

--
Darren

> 
> Thanks,
> Nitin
> 
> 
>> --
>> Darren
>>
>>>
>>> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
>>> ---
>>>  .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
>>>  1 files changed, 14 insertions(+), 0 deletions(-)
>>>
>>> diff --git
>>> a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
>> config/crow
>>> nbay/xorg.conf
>>> b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
>> config/crow
>>> nbay/xorg.conf
>>> index 662f60f..d71173c 100644
>>> ---
>>> a/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-
>> config/crow
>>> nbay/xorg.conf
>>> +++ b/meta-crownbay/recipes-graphics/xorg-xserver/xserver-xf86-config/
>>> +++ crownbay/xorg.conf
>>> @@ -4,12 +4,26 @@
>>>  ## DriverVer=
>>>  ##
>>>
>>> +# AUO G084SN05 V8 lcd flat panel
>>> +Section "Monitor"
>>> +    Identifier     "Monitor0"
>>> +    VendorName     "Auo"
>>> +#    HorizSync       33.6 - 48.3
>>> +#    VertRefresh     60.0 - 60.0
>>> +    Option         "DPMS"
>>> +EndSection
>>> +
>>>  Section "Screen"
>>>      Identifier    "Screen0"
>>>      Device        "IntelEMGD-0"
>>>      Monitor       "Monitor0"
>>> +
>>> +    # for the AUO flat screen
>>>      SubSection    "Display"
>>> +        Depth      24
>>> +        Modes      "800x600"
>>>      EndSubSection
>>> +
>>>  EndSection
>>>
>>>  # Primary (First/only) display
>>>
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Technical Lead - Linux Kernel

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

