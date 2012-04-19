Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38920E013A6
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2012 07:12:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Apr 2012 07:12:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155579808"
Received: from unknown (HELO envy.home) ([10.255.12.120])
	by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2012 07:12:22 -0700
Message-ID: <4F901D26.1000903@linux.intel.com>
Date: Thu, 19 Apr 2012 07:11:50 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Bj=F6rn_Stenberg?= <bjst@enea.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <20120413084702.GA9382@giant>
	<4F883B0D.1010605@linux.intel.com> <20120419072437.GB30737@giant>
In-Reply-To: <20120419072437.GB30737@giant>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 19 Apr 2012 14:12:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 04/19/2012 12:24 AM, Björn Stenberg wrote:
> Darren Hart wrote:
>> Right, gnuplot likes evenly spaced values of BB and PM. So you could
>> have done: 8,12,16,24,28,32
> 
> I did that, and uploaded it to the wiki: 
>   https://wiki.yoctoproject.org/wiki/Build_Performance#parallelism
> 
> Looks like 24/32 is the sweet spot for this system, for this build.
> 

Fantastic! I'm glad to see a sweet spot above 12x12. I'll have to rerun
on my system to see if things have improved for me as well. Thanks for
taking the time to summarize the discussion and get it on the wiki!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

