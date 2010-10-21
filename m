Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 142444C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 10:29:42 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9LFTf6S016361
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 08:29:41 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:29:41 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:29:40 -0700
Message-ID: <4CC05C64.2030207@windriver.com>
Date: Thu, 21 Oct 2010 10:29:40 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20101021083308.GB18344@qhe2-db> <1287660099.16386.450.camel@rex>
In-Reply-To: <1287660099.16386.450.camel@rex>
X-OriginalArrivalTime: 21 Oct 2010 15:29:41.0479 (UTC)
	FILETIME=[C7D0F770:01CB7134]
Subject: Re: zypper and poky architectures
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
X-List-Received-Date: Thu, 21 Oct 2010 15:29:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/10 6:21 AM, Richard Purdie wrote:
> On Thu, 2010-10-21 at 16:33 +0800, Qing He wrote:
>> I recently reported several zypper bugs specifically for arm, after
>> some deeper investigation, the problem seems to be of higher level than
>> I originally thought.
>>
>> The root cause is that zypper and poky use different way to represent
>> architectures, as we are putting them together, these two ways are
>> not compatible, causing many minor glitches that need to modify at
>> least one of them.
>>
>> Poky has three kinds of representations in a single target image, which
>> are independent, cpu-dependent and machine-dependent (all, armv5te,
>> qemuarm, respectively), e.g.
>>
>> 	update-rc.d-0.7-r3.all.rpm
>> 	curl-7.21.0-r0.armv5te.rpm
>> 	task-base-1.0-r69.qemuarm.rpm
>>
>> (note that armv5te is the same with gcc's -march option, meaning little
>> endian)
>
> This is a good analysis and summary. It actually gets more complicated
> as for some machines we have a long list of compatible package types
> that can be installed, e.g. for qemuarm, if you list PACKAGE_ARCHES
> you'll see armv4t armv5 armv5t armv5te which are all accepted by the
> opkg backend.
>
>> This is natural until zypper is involved. Zypper supports only one arch
>> at one time (and this arch should not be changed in fly), and use the
>> idea of arch compatibility (e.g. _noarch is compatible with _i586), it
>> then hardcodes the available archs in a different way than poky does,
>> thus creating several problems:
>>    1. what uses for independent packages is called "noarch", "all" is not
>>       recognized, something depends on update-rc.d won't be installed
>>       because of missing dependency
>>    2. the arch automatic detection system uses "uname -m", thus producing
>>       armv5tejl, which can only be resolved as armv5tel, conflicting with
>>       "armv5te" in rpm
>>    3. many archs are missing in zypper, like mips, armeb, etc.
>>    4. there is no concept of machine-dependent packages (task-base) in
>>       zypper, although we can work around.
>>
>> Currently, at least zypper is broken on all of mips, arm, ppc, with
>> slightly different problems.
>>
>> The ideal situation is to use consistent arch specification, the
>> following can be a solution:
>>    1. rename *.all.rpm to *.noarch.rpm
>
> This would only solve part of the problem though?
>
>>    2. removing the concept of machine-dependent packages, change all
>>       *.qemuarm.rpm to *.armv5te.rpm
>
> This could mean making a copy of each rpm per machine so I'm not keen on
> this.
>
>>    3. enhance zypper arch module, make the addition more flexible,
>>       allowing arch alias (e.g. armv5te = armv5tel = armel = arm)
>>
>> That would be some work to do, maybe 1.0 is a good time to get zypper
>> and package upgrade truely working.
>>
>> Any ideas and comments?
>
> I think we're going to have to teach zypper to read a list of compatible
> "architectures" from a configuration file. There is a config file opkg
> writes to the filesystem continaing this list and we'll have to do
> similar for RPM.
>
> It does raise the question of how given two possible rpm's it would
> chose between the two (for opkg, the list is in order).
>
> Is the problem just in zypper and is rpm free from any issues in this
> area?

We will need to do some additional verification on RPM -- but it appears to me 
that RPM should not have a problem with this.  As far as I'm aware, RPM5 simply 
ignores the ARCH field for the most part.  (My concern as we move in this 
direction will be ordering of priority between architecture types..  perhaps 
thats not even in the scope of RPM to worry about... but replacing say an armv4 
w/ an armv5 is...)

--Mark

> Cheers,
>
> Richard
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


