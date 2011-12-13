Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35951E00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 15:43:45 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2011 15:43:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="46915183"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Dec 2011 15:43:44 -0800
Message-ID: <4EE7E31D.5040005@linux.intel.com>
Date: Tue, 13 Dec 2011 15:43:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4EE7E0B6.5020009@linux.intel.com> <4EE7E298.5030905@windriver.com>
In-Reply-To: <4EE7E298.5030905@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-libc-headers 2.6.37
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
X-List-Received-Date: Tue, 13 Dec 2011 23:43:45 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 12/13/2011 03:41 PM, Bruce Ashfield wrote:
> On 11-12-13 6:33 PM, Darren Hart wrote:
>> We currently build at least some MACHINES with 2.6.37 of
>> linux-libc-headers. This can cause problems for newer packages (such as
>> connman) that expect more recent headers (if_alg.h is missing prior to
>> 2.6.39). While the proper fix is to ensure these packages can cope with
>> older headers, for MACHINES shipping 3.0+ kernels, seems to me we should
>> be using the linux-libc-headers matching the kernels. I know this has
>> come up in the past, but I don't recall if we have clearly stated and
>> justified what our policy is here.
> 
> They should match were possible. I updated master to have 3.0 and 3.1
> headers and no longer have .37 as the default.
> 
> Where is the 2.6.37 trickling in ? i.e. which boards/branch ?

This was on fri2 yocto/standard/fri2.

> 
> Bruce
> 
>>
>> Any thoughts on this?
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

