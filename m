Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5EAEE004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 13:45:11 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 13:45:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="112996818"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 13:45:10 -0800
Message-ID: <4F29B248.4060202@linux.intel.com>
Date: Wed, 01 Feb 2012 13:44:40 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
	<4F298A58.5030700@linux.intel.com>
	<63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49002A3CC@ORSMSX103.amr.corp.intel.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Wed, 01 Feb 2012 21:45:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/01/2012 01:36 PM, Saxena, Rahul wrote:
> Hi Darren,
> 
> Thanks for the clarification.
> 
> I am building on Edison.  I found that ogg music files play
> OK on my gaku player.  I think that should be good enough, but just for my information purposes
> can you help me understand how does one accept the commercial iirc license ?

This has changed relatively recently, and I'm not finding the details in
the current docs. For example, the gst-fluendo-mp3 recipe includes:

LICENSE_FLAGS = "commercial"

Taking a look at the git logs with "LICENSE_FLAGS" in them, in order to
allow for building of such recipes, you must include "commercial" in the
LICENSE_FLAGS_WHITELIST variable. I would attempt this with something
like the following in my local.conf:

LICENSE_FLAGS_WHITELIST += "commercial"

Tom, can you confirm I've got this right?

Scott, once Tom confirms, this is a mechanism we need to get documented
in the reference manual.

--
Darren


> 
> Thanks
> Rahul
> 
> -----Original Message-----
> From: Darren Hart [mailto:dvhart@linux.intel.com] 
> Sent: Wednesday, February 01, 2012 10:54 AM
> To: Saxena, Rahul
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Gaku music player
> 
> 
> 
> On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
>> Hello,
>>
>>  
>>
>> What type of music files is the Gaku music player on Sato desk top
>> supposed to play ?
>>
>> For me it did not work with mp3 files..however it is playing the
>> soundtrack from a .ogg video file
> 
> It depends on which licenses you allow (the gstreamer mp3 plugin
> requires acceptance of the commercial license iirc). Are you building on
> edison or master?
> 
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

