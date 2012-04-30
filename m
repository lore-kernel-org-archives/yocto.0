Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AFD6E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 10:37:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Apr 2012 10:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138355934"
Received: from schen9-mobl2.amr.corp.intel.com (HELO envy.home)
	([10.7.199.147])
	by orsmga002.jf.intel.com with ESMTP; 30 Apr 2012 10:37:04 -0700
Message-ID: <4F9ECDA2.4030308@linux.intel.com>
Date: Mon, 30 Apr 2012 10:36:34 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: William Mills <wmills@ti.com>
References: <e181fc2fd029f7853acab1ba7b66bc9f5c87126d.1334784305.git.tom.zanussi@intel.com>	<266faf71ffdb15e1f6777b520fbe4acaeb26457d.1334784305.git.tom.zanussi@intel.com>
	<4F9B334D.9060508@linux.intel.com> <4F9ECC59.6070708@ti.com>
In-Reply-To: <4F9ECC59.6070708@ti.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] yocto-bsp: clarify help with reference to meta-intel
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
X-List-Received-Date: Mon, 30 Apr 2012 17:37:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/30/2012 10:31 AM, William Mills wrote:
> nit of nit
> 
> On 04/27/2012 08:01 PM, Darren Hart wrote:
>> On 04/27/2012 12:00 PM, tom.zanussi@intel.com wrote:
>>> From: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> + NOTE for x86- and x86_64-based BSPs: The generated BSP assumes the
>>> + presence of the of the meta-intel layer, so you should also have a
>>> + meta-intel layer present and added to your bblayers.conf as well.
>> Consider:
>>
>> + NOTE: For x86- and x86_64-based BSPs, the generated BSP assumes the
>> + presence of the of the meta-intel layer. Ensure the meta-intel layer
>> + is present and added to bblayers.conf.
>>
> 
> Unless I am really mis-reading this I think "presence of the of the" 
> should just be "presence of the"

Oh wow. :-)

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

