Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by mx1.pokylinux.org (Postfix) with ESMTP id B9CFA4C81069
	for <yocto@yoctoproject.org>; Mon, 27 Dec 2010 19:40:49 -0600 (CST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=fosstel.com;
	h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:CC:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding:X-A2-Score:X-A2-checked;
	b=iDHk0Ip7n45lZ290Y+JJAalYqCJfmo6HN+8/wTBQN/PxRUuVx33FngC0daGljrJsYu2meXHIatTcS2037Un7s/pgwTtVHLGxiqV+vhrJZWkozWnMwtMkwrnt1QC5ncFv;
Received: from cpe0014d14df253-cm001e6b1a7260.cpe.net.cable.rogers.com
	([99.224.55.53] helo=[192.168.1.160])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <psanchez@fosstel.com>)
	id 1PXOYD-0000dY-IL; Mon, 27 Dec 2010 20:40:47 -0500
Message-ID: <4D19400F.1000909@fosstel.com>
Date: Mon, 27 Dec 2010 20:40:31 -0500
From: Pedro Sanchez <psanchez@fosstel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D191170.20103@fosstel.com> <4D1916E3.7020703@mlbassoc.com>
	<4D192AF5.5080304@fosstel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D64C309B0@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D64C309B0@shsmsx502.ccr.corp.intel.com>
X-A2-Score: -3.7 (---)
X-A2-checked: Yes
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Failing to compile Yocto (acl package)
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
X-List-Received-Date: Tue, 28 Dec 2010 01:40:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/27/2010 08:13 PM, Tian, Kevin wrote:
>> From: Pedro Sanchez
>> Sent: Tuesday, December 28, 2010 8:10 AM
>>
>> On 12/27/2010 05:44 PM, Gary Thomas wrote:
>>> On 12/27/2010 03:21 PM, Pedro Sanchez wrote:
>>>> Hello,
>>>>
>>>> I'm trying to compile Yocto from sources as described in the quick
>>>> start documentation but the build fails as follows:
>>>>
>>>> $ wget
>>>> http://www.yoctoproject.org/downloads/poky/poky-laverne-4.0.tar.bz2
>>>> $ tar xjf poky-laverne-4.0.tar.bz2
>>>> $ (edited conf/local.conf to select qemuarm)
>>>> $ source poky-laverne-4.0/poky-init-build-env poky-4.0-build
>>>> $ bitbake poky-image-minimal
>>>>
>>>>
>>>> ... (30 minutes of work)
>>>>
>>>> NOTE: package acl-2.2.49-r0: task do_fetch: Succeeded
>>>> NOTE: Running task 582 of 1621 (ID: 1261,
>>>> /home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb,
>>>> do_unpack)
>>>> NOTE: package acl-2.2.49-r0: task do_unpack: Started
>>>> NOTE: Unpacking
>>>> /home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to
>>>>
>> /home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl-2.2.49
>> -r0/
>>>>
>>>> ERROR: Task failed:
>>>> NOTE: package acl-2.2.49-r0: task do_unpack: Failed
>>>> ERROR: Task 1261
>>>> (/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb,
>>>> do_unpack) failed with 1
>>>> ERROR:
>>>> '/home/psanchez/Oven/poky-laverne-4.0/meta/recipes-support/attr/acl_2.2.49.bb'
>>>> failed
>>>>
>>>>
>>>> I tried compiling the Laverne branch on a cloned Poky git repo. It
>>>> also fails when processing the acl package. Any workarounds? Is there
>>>> any log file I can look at for more details?
>>>
>>> You can find log files in the build directory with a relative
>>> path like .../tmp/work/*/acl*/temp
>>>
>>> In particular, look at the log.do_unpack file for clues
>>>
>>
>> Thanks,
>>
>> This is what I see:
>>
>> $ cat armv5te-poky-linux-gnueabi/acl-2.2.49-r0/temp/log.do_unpack
>> gzip: stdin: not in gzip format
>> tar: Child returned status 1
>> tar: Exiting with failure status due to previous errors
>> NOTE: Unpacking
>> /home/psanchez/Oven/poky-4.0-build/downloads/acl-2.2.49.src.tar.gz to
>> /home/psanchez/Oven/poky-4.0-build/tmp/work/armv5te-poky-linux-gnueabi/acl-2.2.49
>> -r0/
>> ERROR: Task failed:
>>
>> $ file poky-4.0-build/downloads/acl-2.2.49.src.tar.gz
>> poky-4.0-build/downloads/acl-2.2.49.src.tar.gz: HTML document text
>>
>> The mirror where bb is configured to get acl from, mirror.cinquix.com,
>> is down. I'll try to get it from the Savannah site.
>>
>
> I've sent out the SRC_URI fixes to use correct Savannah site.
>
> BTW, if the mirror site is down, you should still get a correct tar ball from
> pre-configured poky mirrors (pokylinux.org, ...). Please let's know if those
> mirrors don't take effect to you.
>
> Thanks
> Kevin

First of all thank for the quick fix! My laptop is busy building Yocto 
now as I write.

As for the poky mirrors, they clearly didn't work for me. The bitbake 
command just stopped working when it failed to process the acl package. 
As far as I can say no attempts were made to reach any poky mirrors at 
all. Is there something we have to do to enable them before compiling 
the project?

-- 
Pedro

