Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B20CCE00321
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 09:55:50 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Aug 2011 09:55:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="41397062"
Received: from unknown (HELO envy.home) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2011 09:55:50 -0700
Message-ID: <4E53DB94.80106@linux.intel.com>
Date: Tue, 23 Aug 2011 09:55:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <cover.1313792192.git.dvhart@linux.intel.com>
	<0c8f4cdc6cf96da157b4c4bae8f4e13fca6d46e8.1313792192.git.dvhart@linux.intel.com>
	<CAD08DEC-FD47-4799-9871-289CA89279FE@dominion.thruhere.net>
	<4E53ABC1.3050906@linux.intel.com>
	<CA+M6bXn7z4+y+PF3AOm+vCJ8y_7rpM2A8Q0JoXVOLhg9dwz1ag@mail.gmail.com>
In-Reply-To: <CA+M6bXn7z4+y+PF3AOm+vCJ8y_7rpM2A8Q0JoXVOLhg9dwz1ag@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] beagleboard: enable hard floating point abi
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
X-List-Received-Date: Tue, 23 Aug 2011 16:55:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/23/2011 08:34 AM, Tom Rini wrote:
> On Tue, Aug 23, 2011 at 8:31 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> On 08/23/2011 05:38 AM, Koen Kooi wrote:
>>>
>>> Op 20 aug. 2011, om 00:23 heeft Darren Hart het volgende geschreven:
>>>
>>>> Fixes [YOCTO #1203]
>>>>
>>>> Using the hard floating point abi is incompatible with some binary
>>>> libaries and 3D support for the Beagleboard. As we do not provide
>>>> these in poky and meta-yocto, we can take advantage of the hard
>>>> floating point abi.
>>>
>>> What advantage are you talking about? So far everyone has been unable
>>> to provide real-world numbers[1] that show hardfp making a difference
>>> compared to a properly configured softfp. The numbers debian and
>>> meego are showing are comparing it against completely vfpless builds,
>>
>>
>> That's good reasoning to stick with softfp+neon. Unfortunately I can't
>> find the mail threads that first got me looking into adding hardfp
>> support. As I said, I'm not sold on the idea, but it was requested so I
>> looked into how to address it.
>>
>> If nobody comes forward saying they would really like to have this, I'm
>> going to modify the patch series to disable hardfp by default, but leave
>> the infrastructure in place so people can enable if they like.
> 
> Well, are there some softfp related config bits we need on the yocto
> side that meta-ti has, in order to bring that performance back in
> line?

Are you referring to a specific performance measure?

Jason, Koen, are there any such config bits? We are currently using the
cortexa8-neon tune configuration from oe-core.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

