Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 759F64C80B71
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 19:29:36 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 17:29:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,214,1288594800"; d="scan'208";a="350170822"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 17:29:35 -0800
Message-ID: <4CE4817F.3070007@linux.intel.com>
Date: Wed, 17 Nov 2010 17:29:35 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4CE46608.1010708@linux.intel.com>
In-Reply-To: <4CE46608.1010708@linux.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Bugzilla Reorg Take 2
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
X-List-Received-Date: Thu, 18 Nov 2010 01:29:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 03:32 PM, Saul Wold wrote:
>
> Folks,
>
> After reviewing the emails from the first attempt and review bugzilla,
> there are a couple of different approaches that can be taken. It's
> important to note that bugzilla supports 3 layers, Classification,
> Product and Components, version are tracked at the Product level.
>
> Since we have 3 Layers, there are 2 possible scenarios:
>
> This is the Yocto Projects Bugzilla, so each "project" can have it's
> own classification, I am not sure that this is the best since some of
> the projects are pretty flat the extra level does not make sense.
>
> I am proposing the following top level classifications, containing the
> following projects (products/components) :
>
> Yocto Projects
...
> - Kernel
>   - build
>   - configuration
>   - runtime

Acked-by: Darren Hart <dvhart@linux.intel.com>

> - BSPs
>   - by board??

Let's start off simple - by board might not scale well. Just "BSP" would 
be my vote - Bruce might have additional thoughts.

-- 
Darren Hart
Yocto Linux Kernel

