Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D64B6E01200
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 11:10:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Aug 2011 11:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="41423509"
Received: from unknown (HELO envy.home) ([10.7.199.154])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2011 11:10:28 -0700
Message-ID: <4E53ED13.9020203@linux.intel.com>
Date: Tue, 23 Aug 2011 11:10:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1313968374.git.sgw@linux.intel.com>
	<4E53DC59.1090202@linux.intel.com>
	<4E53E975.1070901@linux.intel.com>
In-Reply-To: <4E53E975.1070901@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Add Time-Limited-Kernel Layer to meta-intel
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
X-List-Received-Date: Tue, 23 Aug 2011 18:10:29 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/23/2011 10:55 AM, Saul Wold wrote:
> On 08/23/2011 09:59 AM, Darren Hart wrote:
>>
>>
>> On 08/21/2011 04:15 PM, Saul Wold wrote:
>>> Tom, Darren:
>>>
>>> This adds Bruce's changes to allow for a time limited kernel, the
>>> default is set for 10 days.
>>
>> I presume we need a linux-yocto-rt_3.0.bbappend as well?
>>
> Are we building and delivering RT images for the release?  If not then 
> there is no need.

Given the increased interest in preempt-rt support, I think it would
make sense to do so. It certainly adds a further burden to the release
process.

Beth?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

