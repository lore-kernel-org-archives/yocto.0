Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1E3D4C80054
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 10:18:51 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9LFIp7R014567
	for <yocto@yoctoproject.org>; Thu, 21 Oct 2010 08:18:51 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:18:51 -0700
Received: from Macintosh-5.local ([172.25.36.230]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 21 Oct 2010 08:18:50 -0700
Message-ID: <4CC059D9.8050208@windriver.com>
Date: Thu, 21 Oct 2010 10:18:49 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20101021083308.GB18344@qhe2-db>
In-Reply-To: <20101021083308.GB18344@qhe2-db>
X-OriginalArrivalTime: 21 Oct 2010 15:18:51.0285 (UTC)
	FILETIME=[44453C50:01CB7133]
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
X-List-Received-Date: Thu, 21 Oct 2010 15:18:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/21/10 3:33 AM, Qing He wrote:
> I recently reported several zypper bugs specifically for arm, after
> some deeper investigation, the problem seems to be of higher level than
> I originally thought.
>
> The root cause is that zypper and poky use different way to represent
> architectures, as we are putting them together, these two ways are
> not compatible, causing many minor glitches that need to modify at
> least one of them.
>
> Poky has three kinds of representations in a single target image, which
> are independent, cpu-dependent and machine-dependent (all, armv5te,
> qemuarm, respectively), e.g.
>
> 	update-rc.d-0.7-r3.all.rpm
> 	curl-7.21.0-r0.armv5te.rpm
> 	task-base-1.0-r69.qemuarm.rpm
>
> (note that armv5te is the same with gcc's -march option, meaning little
> endian)
>
> This is natural until zypper is involved. Zypper supports only one arch
> at one time (and this arch should not be changed in fly), and use the
> idea of arch compatibility (e.g. _noarch is compatible with _i586), it
> then hardcodes the available archs in a different way than poky does,
> thus creating several problems:
>    1. what uses for independent packages is called "noarch", "all" is not
>       recognized, something depends on update-rc.d won't be installed
>       because of missing dependency

We can certainly look into translating "all" to "noarch" post 0.9.  That might 
make it easier for people coming from the RPM world, to understand what is in 
the package.

>    2. the arch automatic detection system uses "uname -m", thus producing
>       armv5tejl, which can only be resolved as armv5tel, conflicting with
>       "armv5te" in rpm

This is a bug in Zypper.  The machine names should come from somewhere other 
then uname -m.  (The value of uname -m is very much ia32 specific for the most 
part.. other architectures have way too many possible namings for it to be 
useful.)   There is a line in "/etc/rpm/platform" that contains the name of Poky 
architecture.  This file should be referenced (instead of -m) for all cases.

>    3. many archs are missing in zypper, like mips, armeb, etc.
>    4. there is no concept of machine-dependent packages (task-base) in
>       zypper, although we can work around.

Generally speaking, this is true of most RPM installations.  However, within RPM 
itself.. there really isn't any concept of "arch" anymore.. They're really only 
used for grouping and ordering.  So Zypper may need to be updated to query the 
arch of a package and use it for it's various operations.

> Currently, at least zypper is broken on all of mips, arm, ppc, with
> slightly different problems.
>
> The ideal situation is to use consistent arch specification, the
> following can be a solution:
>    1. rename *.all.rpm to *.noarch.rpm

We can certainly do this easily.

>    2. removing the concept of machine-dependent packages, change all
>       *.qemuarm.rpm to *.armv5te.rpm

I'm a bit worried about doing this, as we'll end up with (potentially) 
incompatible packages with exactly the same name and versions...  Perhaps we 
need to think about embedding the machine type into the name of the packages 
instead?

>    3. enhance zypper arch module, make the addition more flexible,
>       allowing arch alias (e.g. armv5te = armv5tel = armel = arm)

Zypper should read the rpm platform file.

> That would be some work to do, maybe 1.0 is a good time to get zypper
> and package upgrade truely working.

Yes, we also need to get multi-arch as well.. (i.e. 32-bit and 64-bit at the 
same time) working.  I'm guessing there will be some Zypper interactions there 
as well.

--Mark

> Any ideas and comments?
>
> Thanks,
> Qing
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.pokylinux.org/listinfo/yocto


