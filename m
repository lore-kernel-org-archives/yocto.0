Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F01E00747;
	Fri,  1 Jun 2012 14:43:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Jun 2012 14:43:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="173819563"
Received: from unknown (HELO envy.home) ([10.255.12.201])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2012 14:43:44 -0700
Message-ID: <4FC93751.4060606@linux.intel.com>
Date: Fri, 01 Jun 2012 14:42:41 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4FC009CD.9030201@yoctoproject.org>
	<4FC7B80E.1020802@linux.intel.com> <4FC83910.9050302@windriver.com>
	<4FC8FFBC.6060002@linux.intel.com>
	<1338586414.28421.11.camel@elmorro>
In-Reply-To: <1338586414.28421.11.camel@elmorro>
X-Enigmail-Version: 1.4.1
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	yocto-infrastructure@yoctoproject.org
Subject: Re: Bugzilla Re-organization
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
X-List-Received-Date: Fri, 01 Jun 2012 21:43:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06/01/2012 02:33 PM, Tom Zanussi wrote:
> On Fri, 2012-06-01 at 10:45 -0700, Darren Hart wrote:

>> The other Kernel related path would include
>> Build System & Metadata
>>   Layers - OpenEmbedded-Core
>>     kernel
>>
>> This would be for the kernel.bbclass and other recipes and classes.
>>
> 
> It would be nice to have that fact reflected in the name somehow, to
> avoid confusion for users with Yocto Project Components->Kernel, but I'm
> not coming up with anything wieldy.

kernel-recipes ?

>> So, the final layout would be:
>>
>> Yocto Project Components
>>    BSPs
>>      bsps-runtime
>>      bsps-configuration (these top too being "generic" buckets)
>>      bsps-meta-yocto
> 
> On the other hand this naming is clean and consistent with the rest, so
> is probably better.

Ah, but you remind me that we probably also need:

        bsps-oe-core

> 
>>      bsps-meta-fsl-ppc
>>      bsps-meta-intel
>>      bsps-meta-ti
>>      bsps-tools
>>      bsps-xilinx (meta-xilinx?)
>>
>>    Kernel
>>      linux-yocto
>>      kernel-configuration
>>      kernel-tooling
>>
>> I believe this would make it much easier for us to manage Kernel related
>> issues across the project.
>>
> 
> I agree. Acked-by-me...

Great. Michael, the kernel-team is now in agreement.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

