Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A5554C8007E
	for <yocto@yoctoproject.org>; Fri,  4 Feb 2011 12:14:17 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 04 Feb 2011 10:14:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,427,1291622400"; d="scan'208";a="599551919"
Received: from unknown (HELO [10.255.14.192]) ([10.255.14.192])
	by orsmga002.jf.intel.com with ESMTP; 04 Feb 2011 10:14:16 -0800
Message-ID: <4D4C41F7.6010704@intel.com>
Date: Fri, 04 Feb 2011 10:14:15 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <9AFCD584B0B67B48AE8D8585BE30BA950D9782E2@orsmsx504.amr.corp.intel.com>	<4D4C0A48.2020504@windriver.com>
	<4D4C2A3B.6090005@intel.com>
	<9AFCD584B0B67B48AE8D8585BE30BA950D9783E2@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA950D9783E2@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky] meta-toolchain build failed on fetch
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
X-List-Received-Date: Fri, 04 Feb 2011 18:14:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/04/2011 08:43 AM, Zhang, Jessica wrote:
> Wold, Saul wrote:
>> On 02/04/2011 06:16 AM, Bruce Ashfield wrote:
>>> On 11-02-04 12:20 AM, Zhang, Jessica wrote:
>>>> Has anyone run into the following failure, this is for
>>>> meta-toolchain for x86_64:
>>>
>>> This is lurking in various forms at the moment, the fetcher
>>> updates + new branches and the mirrors with old copies (my
>>> guess), is causing this undesirable behaviour.
>>>
>>>>> Fetcher accessed the network with the command git fetch
>>>> git.pokylinux.org/linux-yocto-2.6.37
>>>>> NOTE: Fetcher accessed the network with the command git fetch
>>>> git.pokylinux.org/linux-yocto-2.6.37
>>>>> Fetching origin
>>>>> error: unable to resolve reference
>>>> refs/remotes/origin/yocto/standard/common-pc-64/base: Not a
>>>> directory
>>>>>  From git://git.pokylinux.org/linux-yocto-2.6.37
>>>>> ! [new branch] yocto/standard/common-pc-64/base ->
>>>> origin/yocto/standard/common-pc-64/base (unable to update local ref)
>>>>> error: unable to resolve reference
>>>
>>> This is due to the way that git manages things on disk. In
>>> this case, make sure to completely remove your old downloaded
>>> copy of the repo and re-fetch.
>>>
>> Yes, I am working from clean downloads,
> Saul, you're saying that you're testing the clean downloads or the fetch
> failures you ran into was from a clean download?
>
Both,  I am pretty much dead in the water right now, I can't build a 
complete system at all.

I have removed git* from my downloads and started with a clean build 
area.  Git fetches are not working.

Sau!

> I remembered hearing this
>> before I am going to test some of Richard's changes in a private
>> branch but right now, I am deal in the water getting more testing
>> done!
>>
>> Sau!
>>
>>> I'm trying to find a way to have git properly deal with
>>> this at the moment.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>> refs/remotes/origin/yocto/standard/common-pc-64/sugarbay: Not a
>>>> directory
>>>>> ! [new branch] yocto/standard/common-pc-64/sugarbay ->
>>>> origin/yocto/standard/common-pc-64/sugarbay (unable to update local
>>>> ref)
>>>>> error: some local refs could not be updated; try running
>>>>> 'git remote prune origin' to remove any old, conflicting branches
>>>>> error: Could not fetch origin Function 'Fetch failed: Unable to
>>>>> fetch URL
>>>>
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=y
> octo/standard/base;name=machine
>>>>
>>>> from any source.' failed
>>>>> ERROR: Function 'Fetch failed: Unable to fetch URL
>>>>
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=y
> octo/standard/base;name=machine
>>>>
>>>> from any source.' failed
>>>> NOTE: package
>>>>
> linux-libc-headers-yocto-2.6.37+git-0+a9d833fda90e2f1257888a97e092135610b5f2
> 59_0+standard-r2:
>>>>
>>>> task Fetch failed: Unable to fetch URL
>>>>
> git://git.pokylinux.org/linux-yocto-2.6.37;protocol=git;fullclone=1;branch=y
> octo/standard/base;name=machine
>>>>
>>>> from any source.: Failed
>>>> NOTE: package gcc-cross-4.5.1-r2: task do_unpack: Started
>>>> ERROR: Task 441
>>>>
> (/home/jzhang/poky-master/meta/recipes-kernel/linux-libc-headers/linux-libc-
> headers-yocto_git.bb,
>>>>
>>>> do_fetch) failed with exit code '1'
>>>> Thanks,
>>>> Jessica
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto


