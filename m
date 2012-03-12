Return-Path: <john.toomey@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF475E01363
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 08:20:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Mar 2012 08:20:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="120186312"
Received: from jtoomey-mobl9.ger.corp.intel.com (HELO [163.33.228.212])
	([163.33.228.212])
	by orsmga002.jf.intel.com with ESMTP; 12 Mar 2012 08:19:41 -0700
Message-ID: <4F5E140C.40400@linux.intel.com>
Date: Mon, 12 Mar 2012 15:19:40 +0000
From: John Toomey <john.toomey@linux.intel.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.1) Gecko/20120208 Thunderbird/10.0.1
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <4F5A1F48.4040601@linux.intel.com>
	<CAMKF1sp+rEg4CRbRjyRTOtHaFLnxEKpqk++F5pE1xei-Tejnaw@mail.gmail.com>
	<4F5A257D.3000508@linux.intel.com>
	<CAMKF1sqcWquNrzz-1Q5bdYx7G9M7y-GqQZgpuA1-0RygSyWSRw@mail.gmail.com>
In-Reply-To: <CAMKF1sqcWquNrzz-1Q5bdYx7G9M7y-GqQZgpuA1-0RygSyWSRw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc
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
X-List-Received-Date: Mon, 12 Mar 2012 15:20:42 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/03/2012 16:45, Khem Raj wrote:
> On Fri, Mar 9, 2012 at 7:45 AM, John Toomey<john.toomey@linux.intel.com>  wrote:
>> Anything else I can try?
>>
> Do you have UCLIBC_HAS_RESOLVER_SUPPORT=y
> in uclibc .config ?
>

I dont think so, is there an easy way to check?

How would I set it to try this?

