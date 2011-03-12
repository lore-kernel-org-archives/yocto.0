Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 691794C80050
	for <yocto@yoctoproject.org>; Sat, 12 Mar 2011 10:22:20 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2011 08:22:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,308,1297065600"; d="scan'208";a="612216250"
Received: from unknown (HELO [10.255.12.198]) ([10.255.12.198])
	by orsmga002.jf.intel.com with ESMTP; 12 Mar 2011 08:22:19 -0800
Message-ID: <4D7B9DB4.6070105@linux.intel.com>
Date: Sat, 12 Mar 2011 08:22:12 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <AANLkTinC_Efgpq8s8QMYvjhmTfTaX-mQSzpafPp27iZh@mail.gmail.com>
	<4D7B35CC.3070900@linux.intel.com>
	<24F5F982-85A4-413E-BB66-55244E2701D7@dominion.thruhere.net>
In-Reply-To: <24F5F982-85A4-413E-BB66-55244E2701D7@dominion.thruhere.net>
Cc: yocto@yoctoproject.org
Subject: Re: Please add build ID to bugs
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
X-List-Received-Date: Sat, 12 Mar 2011 16:22:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/12/2011 01:12 AM, Koen Kooi wrote:
>
> Op 12 mrt 2011, om 09:58 heeft Darren Hart het volgende geschreven:
>
>> On 03/07/2011 11:05 AM, Jeff Osier-Mixon wrote:
>>> Hi all
>>>
>>> I have added the following item to the Bugzilla guidelines:
>>>
>>> *IMPORTANT*: please include the build/commit ID as reported by BitBake,
>>
>> s/BitBake/git/ I presume?
>
> I think he means this one:
>
> Build Configuration:
> BB_VERSION        = "1.13.0"
> METADATA_BRANCH   = "org.openembedded.dev"
> METADATA_REVISION = "0671ad1"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "angstrom"
> DISTRO_VERSION    = "v20110312"
> TARGET_FPU        = "hard"
>

Ah, yes, that makes more sense.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

