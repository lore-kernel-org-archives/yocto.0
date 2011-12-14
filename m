Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11A59E0072A
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2011 11:06:28 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 14 Dec 2011 11:06:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="87322018"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by orsmga002.jf.intel.com with ESMTP; 14 Dec 2011 11:06:27 -0800
Message-ID: <4EE8F3A1.3040109@linux.intel.com>
Date: Wed, 14 Dec 2011 11:06:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4EE2911E.3090708@linux.intel.com> <4EE58DA5.9070301@windriver.com>
	<4EE68B9A.8080602@linux.intel.com> <4EE8D5D9.5070201@windriver.com>
	<4EE8E5D8.7060800@linux.intel.com> <4EE8EE57.1060608@windriver.com>
In-Reply-To: <4EE8EE57.1060608@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto: ktypes/tiny and some questions along the way
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
X-List-Received-Date: Wed, 14 Dec 2011 19:06:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/14/2011 10:43 AM, Bruce Ashfield wrote:
> On 11-12-14 01:07 PM, Darren Hart wrote:

Heavily trimmed down to the remaining points of discussion...

>> So what does that mean here? Well, I suggest we put all the sources in
>> standard (minus evil BSP patches obviously) and then create a ktype per
>> DISTRO definition:
> 
> And minus -rt at the moment.

Yes, sorry, I intended that, but didn't make that clear. Agreed.

>>
>> yocto/base
>> yocto/standard/base
>> yocto/standard/poky
>> yocto/standard/poky-rt
>> yocto/standard/poky-tiny
> 
> I'd want the distro not to be named in the branches, but yes,
> that looks ok to me.

Hrm, that's too bad. I really like the explicit coupling of the OE
distro definition to the linux-yocto branch. It helps reinforce the
concept of distro defined policy. I think I know where you are coming
from though.

> Yep, I'm not sold on a distro name, but if you change this to:
> 
>        yocto/base
>        yocto/standard/cfg (bad name, but I wanted something)
>        yocto/standard/rt
>        yocto/standard/tiny

How about:
        yocto/base
        yocto/standard/default
        yocto/standard/rt
        yocto/standard/tiny

"default" makes sense to me since, well, it is what we would use as the
default if no specification in made. Also, it's a shorter way of saying
"general purpose", which describes this policy/config fairly well.

> Then the tree is more of a common base ... they are just names after
> all! We already have 'yocto' in there, so that's enough specifics for
> my taste.
> 
> or we flip it around ...
> 
>     base
>     standard/yocto
>     standard/yocto-rt
>     standard/yocto-tiny
> 
> Which looks more like what you proposed, but without the double
> specific names.

It's less typing! I like less typing. But if we're going to do that, why
not:

     base
     standard/poky
     standard/poky-rt
     standard/poky-tiny

If you would prefer to keep the branches build-system/distro agnostic,
then I think the ideal would be:


     base
     standard/default
     standard/rt
     standard/tiny

And, it's even LESS typing! Fingers, wrists, and keyboards everywhere
will be thanking us. ;-)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

