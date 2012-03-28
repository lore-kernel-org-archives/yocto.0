Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 719AAE00596
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2012 16:53:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 Mar 2012 16:53:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="82822836"
Received: from unknown (HELO envy.home) ([10.255.12.24])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Mar 2012 16:53:48 -0700
Message-ID: <4F73A462.4010707@linux.intel.com>
Date: Wed, 28 Mar 2012 16:53:06 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <1332524095-8135-1-git-send-email-trini@ti.com>
	<1332958601-24500-1-git-send-email-trini@ti.com>
	<CAMKF1srabV0SzD9XpufjMvJAcvyiHbP_Pd+SeAxP=5__FuP89Q@mail.gmail.com>
	<20120328220613.GD4903@bill-the-cat>
In-Reply-To: <20120328220613.GD4903@bill-the-cat>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH v2] ia32-base.inc: Use '=+' for IMAGE_FSTYPES
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
X-List-Received-Date: Wed, 28 Mar 2012 23:53:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/28/2012 03:06 PM, Tom Rini wrote:
> On Wed, Mar 28, 2012 at 02:42:36PM -0700, Khem Raj wrote:
>> On Wed, Mar 28, 2012 at 11:16 AM, Tom Rini <trini@ti.com> wrote:
>>>
>>> -IMAGE_FSTYPES += "ext3 cpio.gz live"
>>> +IMAGE_FSTYPES =+ "ext3 cpio.gz live"
>>
>> whats the difference ?
> 
> Consistency.  Or blame Richard for saying "no, wait, =+" :)
> 

+= append
=+ prepend

Doesn't seem to me that it would impact the final output at all.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

