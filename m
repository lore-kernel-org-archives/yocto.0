Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C527E0070D
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2012 15:49:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jan 2012 15:49:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102876464"
Received: from unknown (HELO [10.255.13.92]) ([10.255.13.92])
	by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2012 15:49:07 -0800
Message-ID: <4F0393F3.7020608@linux.intel.com>
Date: Tue, 03 Jan 2012 15:49:07 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1324545669-5023-1-git-send-email-wd@denx.de>
	<CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com>
	<20111228194634.32DC819082F8@gemini.denx.de>
In-Reply-To: <20111228194634.32DC819082F8@gemini.denx.de>
Subject: Re: [PATCH] clutter-1.6: make build for armv4t
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
X-List-Received-Date: Tue, 03 Jan 2012 23:49:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 28/12/11 11:46, Wolfgang Denk wrote:
> Dear Matthew,
>
> In message<CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com>  you wrote:
>> On Thu, Dec 22, 2011 at 3:21 AM, Wolfgang Denk<wd@denx.de>  wrote:
>>> GCC will define __ARM_ARCH_4T__ when building with "-march=3Darmv4t" so
>>> we can check this to turn off the use of 'clz' instructions, which
>>> otherwise would cause compile errors like "selected processor does
>>> not support ARM mode `clz r3,r0'".
> ...
>> This version was dropped recently... Is this possibly for the 1.1.1
>> edison release? If so, I would CC: Joshua Lock.
>
> yes, this patch was for the edison series (mainline has updated to
> clutter-1.8 in the meantime).

Wolfgang, I've pulled this patch into my edison branch. Unless you 
object I'll also apply the patch for cogl in master and send it upstream.

Thanks,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

