Return-Path: <laurentiu.palcu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 897DCE006C2
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 06:21:33 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Nov 2012 06:21:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,279,1352102400"; d="scan'208";a="219690890"
Received: from lpalcu-linux (HELO [10.237.105.165]) ([10.237.105.165])
	by azsmga001.ch.intel.com with ESMTP; 19 Nov 2012 06:21:31 -0800
Message-ID: <50AA406A.60605@intel.com>
Date: Mon, 19 Nov 2012 16:21:30 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20121119123504.22FAF20032F@gemini.denx.de>
	<50AA2EE4.1000207@communistcode.co.uk> <50AA31D8.5020700@intel.com>
	<20121119135023.5927D20032F@gemini.denx.de>
In-Reply-To: <20121119135023.5927D20032F@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Alternative SDK installation directory working?
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
X-List-Received-Date: Mon, 19 Nov 2012 14:21:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 11/19/2012 03:50 PM, Wolfgang Denk wrote:
> Dear Laurentiu,
> 
> In message <50AA31D8.5020700@intel.com> you wrote:
>>
>>>> -> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi
>>>> -> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c
>>
>> Just do: $CC -o /tmp/x /tmp/x.c
>>
>> It should work.
>>
>> echo $CC
>> arm-poky-linux-gnueabi-gcc -march=armv5te -marm -mthumb-interwork
>> -mtune=arm926ej-s --sysroot=/tests/sdk/sysroots/armv5te-poky-linux-gnueabi
> 
> Argh... Isn't it somewhat ... unconventional (to avoid stonger words)
> to encode compiler options in a variable which is supposed to define
> the "Program for compiling C programs" ?
It is unconventional, I admit. Unfortunately, it's not clear to me why
this was done in the first place. I've just read the commit message for
these changes and it didn't make it clearer. Maybe Mark, who made these
changes, can give us a better answer.

> 
> Should such options not go to one of the *FLAGS variables instead?
I personally don't see any reason why they shouldn't.

Thanks,
Laurentiu
> 
> Best regards,
> 
> Wolfgang Denk
> 

