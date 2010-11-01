Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 857FF4C80287
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 10:37:07 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA1Fb6vD022864;
	Mon, 1 Nov 2010 08:37:06 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 08:37:05 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 1 Nov 2010 08:37:05 -0700
Message-ID: <4CCEDE9F.7000707@windriver.com>
Date: Mon, 01 Nov 2010 10:37:03 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <20101021083308.GB18344@qhe2-db> <4CC059D9.8050208@windriver.com>
	<20101022014714.GE18344@qhe2-db>
In-Reply-To: <20101022014714.GE18344@qhe2-db>
X-OriginalArrivalTime: 01 Nov 2010 15:37:05.0654 (UTC)
	FILETIME=[A31BF160:01CB79DA]
Cc: yocto@yoctoproject.org
Subject: Re: zypper and poky architectures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 15:37:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

(Sorry for the late response, today's my first day back from CELF)

On 10/21/10 8:47 PM, Qing He wrote:
> On Thu, 2010-10-21 at 23:18 +0800, Mark Hatle wrote:
>> On 10/21/10 3:33 AM, Qing He wrote:
>>>     1. what uses for independent packages is called "noarch", "all" is not
>>>        recognized, something depends on update-rc.d won't be installed
>>>        because of missing dependency
>>
>> We can certainly look into translating "all" to "noarch" post 0.9.  That might
>> make it easier for people coming from the RPM world, to understand what is in
>> the package.
>>
>>>     1. rename *.all.rpm to *.noarch.rpm
>>
>> We can certainly do this easily.
>
> If noarch is universally used in RPM word, I think we should use it.

My preference is staying with the Poky 'arch' naming...  but renaming to noarch 
is fine, and unless Richard or someone else sees an issue it could be used as a 
temporary workaround.  (There are a few places like rootfs generation that we'll 
have to translate "all" to "noarch".. if we decide to do this.)

>>
>>>     2. the arch automatic detection system uses "uname -m", thus producing
>>>        armv5tejl, which can only be resolved as armv5tel, conflicting with
>>>        "armv5te" in rpm
>>
>> This is a bug in Zypper.  The machine names should come from somewhere other
>> then uname -m.  (The value of uname -m is very much ia32 specific for the most
>> part.. other architectures have way too many possible namings for it to be
>> useful.)   There is a line in "/etc/rpm/platform" that contains the name of Poky
>> architecture.  This file should be referenced (instead of -m) for all cases.
>>
>>>     3. enhance zypper arch module, make the addition more flexible,
>>>        allowing arch alias (e.g. armv5te = armv5tel = armel = arm)
>>
>> Zypper should read the rpm platform file.
>
> Sounds reasonable. After all, zypper is only intended to be a frontend
> utility to the lower end package tool. Then we won't need to worry about
> alias and different naming, and this detaches zypper from hardware.
>
>>
>>>     3. many archs are missing in zypper, like mips, armeb, etc.
>>>     4. there is no concept of machine-dependent packages (task-base) in
>>>        zypper, although we can work around.
>>
>> Generally speaking, this is true of most RPM installations.  However, within RPM
>> itself.. there really isn't any concept of "arch" anymore.. They're really only
>> used for grouping and ordering.  So Zypper may need to be updated to query the
>> arch of a package and use it for it's various operations.
>>
>>>     2. removing the concept of machine-dependent packages, change all
>>>        *.qemuarm.rpm to *.armv5te.rpm
>>
>> I'm a bit worried about doing this, as we'll end up with (potentially)
>> incompatible packages with exactly the same name and versions...  Perhaps we
>> need to think about embedding the machine type into the name of the packages
>> instead?
>
> Thanks for the info. If we are going for dynamic platform specs, it
> doesn't really matter whether we have things like qemuarm or not, does it?

Ya, if we are able to do things dynamically, then the naming is no longer 
important.  That's really my hope as to how we implement the RPM components.

>>
>>
>>> That would be some work to do, maybe 1.0 is a good time to get zypper
>>> and package upgrade truely working.
>>
>> Yes, we also need to get multi-arch as well.. (i.e. 32-bit and 64-bit at the
>> same time) working.  I'm guessing there will be some Zypper interactions there
>> as well.
>>
>
> I don't really have ideas how this is done. I think on debian this is
> actually avoided and i386 packages are repackaged as lib32xxx for x86_64
> platform.

Since Poky does not yet have the ability to deal with Multiarch builds, this is 
something we will have to work on designing as we get closer to Yocto 1.0.

Within RPM, the rpm package manager understands all of the "types" of each file 
in the system.  When you ask to install (note, not upgrade) two packages of the 
same name the system checks the files.

When a conflict is identified, if the contents of the files are the same, 
nothing is done -- no error is generated.

If the contents of the file are different, and the file is tagged as a 
configuration file, then either first or last in wins (I don't remember which) 
-- no error is generated.

If the contents of the file are different, and the file type is NOT ELF (and the 
above has no already detected), then an error is generated and installation stops.

if the contents of the file are different, and the file type is ELF... then 
there is a weighting algorithm that is used.  Depending on the configuration the 
following could happen:

multiarch is not allowed -- an error is generated

multiarch is allowed -- one of the components though is not an allowed multiarch 
-- an error is generated (this could be the mips case of o32, n32 and n64 on the 
same system.  You could prevent someone from installing say o32 binaries.)

multiarch is allowed -- a 'winner' is chosen based on the system configuration. 
  The winner is installed, and the loser is not installed -- no error is generated.

---

If DEB and IPK don't support this (which I wouldn't be surprised if they don't), 
then we'll need to: extend them, modify the package naming to include some type 
of architecture keying to avoid conflicts, or simply state multiarch support 
isn't available if the rootfs type is DEB or IPK.  (I suspect the middle case is 
what we'll end up with.)

--Mark

> Thanks,
> Qing


