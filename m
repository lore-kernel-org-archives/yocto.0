Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79E2E002AB
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 16:03:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 09 Oct 2012 16:03:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="203635653"
Received: from unknown (HELO envy.home) ([10.255.14.86])
	by orsmga001.jf.intel.com with ESMTP; 09 Oct 2012 16:03:54 -0700
Message-ID: <5074AD2C.4000007@intel.com>
Date: Tue, 09 Oct 2012 16:03:08 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<3259734fca50f6ffd7e70ed7829c0a398d4795b0.1349820369.git.nitin.a.kamble@intel.com>
	<5074A7D9.9080906@intel.com>
	<ADD6A3980E8C39419A432FF422031B4C15730EF4@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C15730EF4@ORSMSX106.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/5] xf86-video-intel: Bring 2.20.0 version to match released graphics stack
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
X-List-Received-Date: Tue, 09 Oct 2012 23:03:59 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

CC'ing Ross, which of course I had meant to do in the first place...

On 10/09/2012 04:01 PM, Kamble, Nitin A wrote:
> 
>>> --- /dev/null
>>> +++ b/common/recipes-graphics/xorg-driver/xf86-video-intel_2.20.0.bb
>>> @@ -0,0 +1,26 @@
>>> +require xorg-driver-video.inc
>>> +
>>> +SUMMARY = "X.Org X server -- Intel integrated graphics chipsets driver"
>>> +
>>> +DESCRIPTION = "intel is an Xorg driver for Intel integrated graphics
>>> +\ chipsets. The driver supports depths 8, 15, 16 and 24. On some
>>> +chipsets, \ the driver supports hardware accelerated 3D via the
>>> +Direct Rendering \ Infrastructure (DRI)."
>>> +
>>> +LIC_FILES_CHKSUM =
>> "file://COPYING;md5=8730ad58d11c7bbad9a7066d69f7808e"
>>> +
>>> +PR = "${INC_PR}.0"
>>> +
>>> +DEPENDS += "virtual/libx11 drm xf86driproto glproto \
>>> +	    virtual/libgl xineramaproto xf86driproto libpciaccess"
>>> +
>>> +
>>> +EXTRA_OECONF += "--disable-xvmc"
>>
>> I think Ross's version enables xvmc. Any reason to disable it?
> 
> I basically took the recipe from oecore, and updated to the desired version. That way it is very close to what is in oecore, and all the testing of oecore is on our side.
> 
>>
>> Is the new method to use PACKAGECONF instead of EXTRA_OECONF now?
>> Again, this is what I saw in Ross's layer.
>>
> Not sure, I will see the differences with Ross's recipe, and test it out here.
> 
> Thanks,
> Nitin
> 
> 
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

