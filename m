Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EDE674C801BF
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 22:12:28 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 21 Oct 2010 20:12:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,221,1286175600"; d="scan'208";a="566345734"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by orsmga002.jf.intel.com with ESMTP; 21 Oct 2010 20:12:28 -0700
Message-ID: <4CC1011C.9050904@linux.intel.com>
Date: Thu, 21 Oct 2010 20:12:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.9) Gecko/20100922 Thunderbird/3.1.4
MIME-Version: 1.0
To: "You, Yongkang" <yongkang.you@intel.com>
References: <F26D193E20BBDC42A43B611D1BDEDE712151801BB8@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <F26D193E20BBDC42A43B611D1BDEDE712151801BB8@shsmsx502.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Please verify the fixed bug in bugzilla.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 03:12:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/2010 12:44 AM, You, Yongkang wrote:
> Hi all,
>
> I just had a quick search in bugzilla and found a lot of bugs are resolved but not verified. We'd better to verify the fix before 0.9 launch.
>
> The M4 resolved (but not verified) bugs (88):
> http://bugzilla.pokylinux.org/buglist.cgi?bug_status=RESOLVED&query_format=advanced&target_milestone=0.9%20M4&query_based_on=&columnlist=bug_severity%2Creporter%2Cpriority%2Cop_sys%2Cassigned_to%2Cbug_status%2Cresolution%2Cshort_desc%2Cproduct%2Ccomponent
>
> All resolved (but not verified) bugs (198):
> http://bugzilla.pokylinux.org/buglist.cgi?query_format=advanced&bug_status=RESOLVED

Bug 468 needs confirmation by someone in PRC with the HP Mini netbook. 
I've verified the other 4 I opened.

-- 
Darren Hart
Embedded Linux Kernel

