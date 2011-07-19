Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E86124C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 10:32:05 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 19 Jul 2011 08:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,228,1309762800"; d="scan'208";a="28990557"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by azsmga001.ch.intel.com with ESMTP; 19 Jul 2011 08:32:04 -0700
Message-ID: <4E25A374.5010108@linux.intel.com>
Date: Tue, 19 Jul 2011 08:32:04 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org>	<AB1A5241-0B13-4DFF-A453-BECBB1ADD408@dominion.thruhere.net>
	<9C2FF9D1-726F-45C2-A22B-DF4E07D48809@kernel.crashing.org>
In-Reply-To: <9C2FF9D1-726F-45C2-A22B-DF4E07D48809@kernel.crashing.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/5] Add support for PowerPC e500v2/SPE
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
X-List-Received-Date: Tue, 19 Jul 2011 15:32:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/19/2011 06:17 AM, Kumar Gala wrote:
>
> On Jul 19, 2011, at 2:44 AM, Koen Kooi wrote:
>
>>
>> Op 19 jul 2011, om 07:21 heeft Kumar Gala het volgende geschreven:
>>
>>> The majority of support for the PowerPC e500v2/SPE target already
>>> exists.  However some minor cleans are required to get things working
>>> completely.
>>>
>>> The e500v2 utilizes a unique floating point programming model / ABI from
>>> other PowerPC targets and thus requires special handling.
>>
>>
>> These should be sent to the oe-core list against the oe-core tree, not the poky list against the poky tree
>
> Will do so, it was unclear to me how patches go from oe-core to/from yocto.
>
Kumar,

If it goes into the meta/recipes or meta/conf area then it goes to 
oe-core, if the patch is the PPC machine-specific and changes are in 
meta-yocto, then it should go to the yocto ml.

As mentioned above, all these patches should go to oe-core

I hope that clears things up.

Sau!

> - k
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

