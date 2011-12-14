Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89AAEE01370
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 21:49:04 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Dec 2011 21:49:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="87055507"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by orsmga002.jf.intel.com with ESMTP; 13 Dec 2011 21:49:04 -0800
Message-ID: <4EE838BD.5040605@linux.intel.com>
Date: Tue, 13 Dec 2011 21:48:45 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4EE7E3F3.8010003@linux.intel.com> <4EE833C1.9010705@windriver.com>
In-Reply-To: <4EE833C1.9010705@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using yocto/standard by default
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
X-List-Received-Date: Wed, 14 Dec 2011 05:49:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/13/2011 09:27 PM, Bruce Ashfield wrote:
> On 11-12-13 6:46 PM, Darren Hart wrote:
>> We hit another lock-step SRCREV bug earlier on the FRI2 BSP. This was
>> due mostly to my pushing the efi changes to meta-intel too early - but,
>> it highlights a maintenance step that I believe could be eliminated for
>> most boards.
>>
>> We have a yocto/standard/fri2 branch, but it doesn't contain any
>> additional changes over yocto/standard/base. If we were to make
>> yocto/standard/base the default for KBRANCH, shouldn't we be able to
>> eliminate all the BSP branches that are identical to
>> yocto/standard/base? This would significantly reduce the number of
>> SRCREV updates that are required and likely reduce the number of
>> Autobuilder failures we experience as a result. Seems like it would also
>> help make the git tree easier to deal with.
>>
>> Any opinions here?
> 
> It's a valid config, and something that works now. So there's no
> reason to not use it. New branches can be created IF a board really
> does need to merge conflicting patches. The emgd stuff was a problem
> and required branches, but if we have nothing like that, squashing the
> branches is a nice simplification.
> 

Hrm maybe I missed that in the fri2 branches. It does need emgd, so I'll
double check that.

> Cheers,
> 
> Bruce
> 
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

