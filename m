Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78563E0120B
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 08:26:15 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Jan 2013 08:25:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,424,1355126400"; d="scan'208";a="243031795"
Received: from envy.jf.intel.com (HELO envy.home) ([10.7.199.53])
	by orsmga001.jf.intel.com with ESMTP; 07 Jan 2013 08:26:15 -0800
Message-ID: <50EAF727.6060107@linux.intel.com>
Date: Mon, 07 Jan 2013 08:26:15 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
	<50D4A7B6.6040603@r-finger.com>
In-Reply-To: <50D4A7B6.6040603@r-finger.com>
X-Enigmail-Version: 1.4.6
Cc: yocto@yoctoproject.org
Subject: Re: I think my kernel image just went back in time...
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
X-List-Received-Date: Mon, 07 Jan 2013 16:26:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/21/2012 10:17 AM, Tomas Frydrych wrote:
> On 09/12/12 23:17, Chris Tapp wrote:
>> In tmp/deploy/images:
>>
>> 1) bzImage had a timestamp of 2012-12-09 21:49 and the file ended
>> -20121209214459.bin
>>
>> 2) Cleaned the image and the task it contained (to pick up some
>> changes on rebuild) and deleted the image files (.hddimg, etc.) in
>> tmp/deploy/images making sure to leave the kernel files intact.
> 
> Did you cleansstate it? I find that without cleaning the state kernel
> image gets always pulled out of sstate rather than properly rebuilt.
> 
> Tomas

Do you still experience this on the master branch?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

