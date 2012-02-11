Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF32E003E3
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 16:40:30 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 10 Feb 2012 16:40:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="65509055"
Received: from unknown (HELO [10.255.14.248]) ([10.255.14.248])
	by AZSMGA002.ch.intel.com with ESMTP; 10 Feb 2012 16:40:20 -0800
Message-ID: <4F35B8F4.1080301@linux.intel.com>
Date: Fri, 10 Feb 2012 16:40:20 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1328920359-18646-1-git-send-email-josh@linux.intel.com>
In-Reply-To: <1328920359-18646-1-git-send-email-josh@linux.intel.com>
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH] netbase: put sys940x specific interfaces file in MACHINE directory
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
X-List-Received-Date: Sat, 11 Feb 2012 00:40:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 10/02/12 16:32, josh@linux.intel.com wrote:
> From: Joshua Lock<josh@linux.intel.com>
>
> Move the interfaces file to a MACHINE appropriate subdirectory of
> files so that:
> a) base.bbclass appropriately marks the resultant package MACHINE
> specific.

Note: after writing this patch, but before submitting it, I discovered 
that this doesn't currently work for layers.
However I've just proposed a fix to the OE-Core list which once merged, 
or once something like it is merged, this will behave as claimed.

You can follow the thread relating to this fix here:
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-February/017682.html

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

