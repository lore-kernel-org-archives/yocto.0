Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C71674C80A74
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 16:58:33 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2010 14:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,226,1288594800"; d="scan'208";a="679249553"
Received: from doubt.jf.intel.com (HELO [10.7.199.159]) ([10.7.199.159])
	by orsmga001.jf.intel.com with ESMTP; 19 Nov 2010 14:58:33 -0800
Message-ID: <4CE7011A.4060607@linux.intel.com>
Date: Fri, 19 Nov 2010 14:58:34 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CE5A9EE.2080306@windriver.com> <1290168514.1272.12249.camel@rex>
In-Reply-To: <1290168514.1272.12249.camel@rex>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Request for Reviews and future package updates
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
X-List-Received-Date: Fri, 19 Nov 2010 22:58:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/2010 04:08 AM, Richard Purdie wrote:
> On Thu, 2010-11-18 at 16:34 -0600, Mark Hatle wrote:
>> I'd like to request that future reviews and package updates include "SUMMARY"
>> information in the recipe files.
>>
>> For people who are not aware of the issue, a policy was created in Yocto 0.9
>> that we want each package to contain both a summary and description.  The
>> summary should be short and fewer then 80 characters if possible.  While the
>> description may be arbitrarily long and should explain the functionality of the
>> package.
>>
>> By default, the SUMMARY is set to equal the DESCRIPTION if it was not previously
>> set.
>>
>> So if the DESCRIPTION is short, a SUMMARY may not be required, such as:
>>
>> DESCRIPTION = "A multi-purpose linux bootloader"
>>
>>
>> However, in a package with a more complicated description, such as chrpath:
>>
>> DESCRIPTION = "chrpath allows you to change the rpath (where the application \
>> looks for libraries) in an application. It does not (yet) allow you to add an \
>> rpath if there isn't one already."
>>
>> A short summary should be added to the recipe:
>>
>> SUMMARY = "Tool to edit rpath in ELF binaries"
>>
>> ---
>>
>> I'm currently going through Poky updating many of the recipes by updating
>> descriptions as necessary and adding SUMMARY fields.  In the future, or as
>> packages are updated, we should ensure that both the SUMMARY and DESCRIPTION are
>> present and up-to-date.
>
> It would be nice to have a section in the wiki with the minimum recipe
> requirements documented. We certainly have some but I'm not sure
> everything is written down in one place?

There is already a section in the handbook on adding recipes, wouldn't 
it make sense to make those examples complete and mention which fields 
are required?

-- 
Darren Hart
Yocto Linux Kernel

