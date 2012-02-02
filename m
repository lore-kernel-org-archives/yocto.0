Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF177E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 10:08:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2012 10:08:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103213558"
Received: from unknown (HELO envy.home) ([10.7.199.59])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 10:08:29 -0800
Message-ID: <4F2AD0FF.3090903@linux.intel.com>
Date: Thu, 02 Feb 2012 10:07:59 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <cover.1328135056.git.dvhart@linux.intel.com>
	<9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F29BE90.1010707@linux.intel.com>
	<4F29C51D.5080103@linux.intel.com>
In-Reply-To: <4F29C51D.5080103@linux.intel.com>
X-Enigmail-Version: 1.3.5
Cc: yocto@yoctoproject.org
Subject: Re: [pull-sys940x 1/4] meta-intel: Add Inforce SYS940x BSP
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
X-List-Received-Date: Thu, 02 Feb 2012 18:08:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/01/2012 03:05 PM, Joshua Lock wrote:
> On 01/02/12 14:37, Joshua Lock wrote:
>>> http://www.inforcecomputing.com/SYS940X_ECX.html
>>>
>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>> ---
>>> meta-sys940x/COPYING.MIT | 17 +++
>>> meta-sys940x/README | 140 ++++++++++++++++++++
>>> meta-sys940x/README.sources | 18 +++
>>> meta-sys940x/conf/layer.conf | 10 ++
>>> meta-sys940x/conf/machine/sys940x-noemgd.conf | 19 +++
>>
>> When I played around with an earlier version of this branch recently the
>> kernel for the noemgd machine didn't build, is that now fixed?
> 
> Apologies, I got that the wrong way around. The kernel for the MACHINE 
> *with* emgd didn't build. The noemgd version worked fine.

Should be good now. Now that Bruce has pulled in the sys940x BSP patches
to linux-yocto, I'll need to update the meta SRCREV, and will do that
before a push.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

