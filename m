Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D7CCA4C810C0
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 09:08:24 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA3E8Nk3017009;
	Wed, 3 Nov 2010 07:08:23 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 07:08:22 -0700
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 3 Nov 2010 07:08:22 -0700
Message-ID: <4CD16CD4.7040902@windriver.com>
Date: Wed, 03 Nov 2010 09:08:20 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Qing He <qing.he@intel.com>
References: <20101021083308.GB18344@qhe2-db> <4CC059D9.8050208@windriver.com>
	<20101022014714.GE18344@qhe2-db> <4CCEDE9F.7000707@windriver.com>
	<20101103075833.GA26968@qhe2-db>
In-Reply-To: <20101103075833.GA26968@qhe2-db>
X-OriginalArrivalTime: 03 Nov 2010 14:08:22.0590 (UTC)
	FILETIME=[932455E0:01CB7B60]
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
X-List-Received-Date: Wed, 03 Nov 2010 14:08:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/3/10 2:58 AM, Qing He wrote:
> On Mon, 2010-11-01 at 23:37 +0800, Mark Hatle wrote:
>> (Sorry for the late response, today's my first day back from CELF)
>>
>> On 10/21/10 8:47 PM, Qing He wrote:
>>> On Thu, 2010-10-21 at 23:18 +0800, Mark Hatle wrote:
>>>> On 10/21/10 3:33 AM, Qing He wrote:
>>>>>      1. what uses for independent packages is called "noarch", "all" is not
>>>>>         recognized, something depends on update-rc.d won't be installed
>>>>>         because of missing dependency
>>>>
>>>> We can certainly look into translating "all" to "noarch" post 0.9.  That might
>>>> make it easier for people coming from the RPM world, to understand what is in
>>>> the package.
>>>>
>>>>>      1. rename *.all.rpm to *.noarch.rpm
>>>>
>>>> We can certainly do this easily.
>>>
>>> If noarch is universally used in RPM word, I think we should use it.
>>
>> My preference is staying with the Poky 'arch' naming...  but renaming to noarch
>> is fine, and unless Richard or someone else sees an issue it could be used as a
>> temporary workaround.  (There are a few places like rootfs generation that we'll
>> have to translate "all" to "noarch".. if we decide to do this.)
>
> This is good. I may test if this works and let's see if Richard has any
> comments on it.
>
>>> Thanks for the info. If we are going for dynamic platform specs, it
>>> doesn't really matter whether we have things like qemuarm or not, does it?
>>
>> Ya, if we are able to do things dynamically, then the naming is no longer
>> important.  That's really my hope as to how we implement the RPM components.
>
> It seems to be an elegant solution, but need some efforts to find out
> how this can fit in current zypper.
>
>>
>>>>
>>>>
>>>>> That would be some work to do, maybe 1.0 is a good time to get zypper
>>>>> and package upgrade truely working.
>>>>
>>>> Yes, we also need to get multi-arch as well.. (i.e. 32-bit and 64-bit at the
>>>> same time) working.  I'm guessing there will be some Zypper interactions there
>>>> as well.
>>>>
>>>
>>> I don't really have ideas how this is done. I think on debian this is
>>> actually avoided and i386 packages are repackaged as lib32xxx for x86_64
>>> platform.
>>
>> Since Poky does not yet have the ability to deal with Multiarch builds, this is
>> something we will have to work on designing as we get closer to Yocto 1.0.
>>
>> Within RPM, the rpm package manager understands all of the "types" of each file
>> in the system.  When you ask to install (note, not upgrade) two packages of the
>> same name the system checks the files.
>>
>> When a conflict is identified, if the contents of the files are the same,
>> nothing is done -- no error is generated.
>>
>> If the contents of the file are different, and the file is tagged as a
>> configuration file, then either first or last in wins (I don't remember which)
>> -- no error is generated.
>>
>> If the contents of the file are different, and the file type is NOT ELF (and the
>> above has no already detected), then an error is generated and installation stops.
>>
>> if the contents of the file are different, and the file type is ELF... then
>> there is a weighting algorithm that is used.  Depending on the configuration the
>> following could happen:
>>
>> multiarch is not allowed -- an error is generated
>>
>> multiarch is allowed -- one of the components though is not an allowed multiarch
>> -- an error is generated (this could be the mips case of o32, n32 and n64 on the
>> same system.  You could prevent someone from installing say o32 binaries.)
>>
>> multiarch is allowed -- a 'winner' is chosen based on the system configuration.
>>    The winner is installed, and the loser is not installed -- no error is generated.
>>
>
> Hmm, this is not quite what I've been thinking about. The problem is
> the shared library, and the library path renaming.
>
> The above winner works fine for executables, nobody needs different arch
> versions of a same binary, but it's possible that several different
> archs are used for different binaries, that's where the library problem
> comes in.

Thats the full purpose of the winner is to deal with conflicts.  Libraries 
should never conflict, if they do it's a bug in the library.

> Let's say we have an i586 `ls', and an x86_64 `cp' that coexist in the same
> box, they would possibly link to two different ld-linux.so and libc.so (this
> scenario is common requirement on x86, esp. x86_64). If 32bit rpms can
> be installed to 64bit platforms directly without any modification, that
> would be great.

The file dependencies that I added in the 0.9 work will resolve this.  Each 
library (file) is tagged with various dependency information.  The information 
includes ELF types and will automatically choose the correct version (or 
versions) of a given library in order to resolve dependencies.   (We'll have to 
double check it's working correctly of course, but the work is already there, 
just not verified.  This is true for all packaging mechanisms...)

> I guess the deb way to solve this is to create a special kind of
> package, namely `lib32c_2.10.1-r1.x86_64.deb', which installs something
> like /lib32/ld-linux-i586.so.2. If the executable can links to it, the
> dedicated ld.so cache can get most of its library path right. However,
> sadly, this special lib32 and maybe the 32bit executable package, may
> not be installable on pure i586 archs.

That is something I would like to avoid as we move toward multiarch support in 
Poky.  I want to be able to re-use packages from any architecture and not 
generate "special" 32-bit versions.  There really should be no reason to do so 
in any packaging method.  (The 32-bit/64-bit executable collision workaround 
really shouldn't be necessary if the rest of the system is done right..)

> So should this kind of multiarch be concerned, where multiarch packages
> coexist instead of being exlusive?

Multiarch need to co-exist.. The three primary cases I'm worried about are:

ia32:  x86_32 & x86_64
ppc:  ppc32 & ppc64
mips: mips_o32 & mips_n32 & mips_n64

I've seen situations in each where the "default" ABI type is different depending 
on customer needs, but generally speaking the defaults become:

ia32: x86_64
ppc: ppc32
mips: mips_o32 or mips_n32

(note the mips case is only for a mips64 compatible processor)

> Thanks,
> Qing
>
>


