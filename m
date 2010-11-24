Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id A32854C80BEF
	for <yocto@yoctoproject.org>; Wed, 24 Nov 2010 14:29:26 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAOKTOfM006487;
	Wed, 24 Nov 2010 12:29:24 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 12:29:23 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 24 Nov 2010 12:29:23 -0800
Message-ID: <4CED75A2.6060907@windriver.com>
Date: Wed, 24 Nov 2010 14:29:22 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>	<4CED6ED4.8020609@windriver.com>
	<AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
In-Reply-To: <AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
X-OriginalArrivalTime: 24 Nov 2010 20:29:23.0851 (UTC)
	FILETIME=[4830ADB0:01CB8C16]
Cc: yocto@yoctoproject.org
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Wed, 24 Nov 2010 20:29:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/24/10 2:21 PM, Frans Meulenbroeks wrote:
> Mark, thanks for your reply!
> 
> 2010/11/24 Mark Hatle <mark.hatle@windriver.com>:
>> On 11/24/10 1:36 PM, Frans Meulenbroeks wrote:
>>> I was trying to build poky-image-minimal (git head of nov 20).
>>> | Processing task-poky-boot...
>>> | Processing rpm...
>>> | Unable to find package rpm!
>>> | ERROR: Task failed: ('function do_rootfs failed',
>>> '/home/frans/poky/poky/build/tmp/work/sheevaplug-poky-linux-gnueabi/poky-image-minimal-1.0-r0/temp/log.do_rootfs.6436')
>>
>> The task you build had an explicit requirement for 'rpm' (the package).  It's
>> saying it was unable to find that package.
>>
>> I'm not sure how to track down where that requirement came from though.
>>
>> You might be able to work around it by doing a "bitbake rpm"...

The files in question would be tmp/deploy/rpm/mips/rpm-5.1.10-r7.mips.rpm (or
similar)

That should exist..  If it doesn't something went wrong with the build of the
package.

If it does, look in the directory (that has the RPM package) for a directory
called "solvedb".  Assuming that exists.. then the solver should be setup/loaded
and the package should be available.

But the actual failure is rpm unable to find a package called "rpm" within the
resolver databases that are being consulted.

The other thing to look at is the tmp/deploy/rpm  .. there is a solvedb.conf and
solvedb.macro

Both of those should list out the solvers that it consults.  If the directory
that the rpm package is in, is not in that list.. then something went wrong
during that setup.

--Mark

> Nope, tried that.
> Here is a snippet from my history:
>  1004  . poky-init-build-env
>  1005  bitbake poky-image-minimal
>  1006  bitbake rpm
>  1007  bitbake poky-image-minimal
>  1008  rpm
>  1009  git log
>  1010  bitbake rpm-native
>  1011  time bitbake poky-image-minimal
> even the last one gives the rpm error (and inbetween I did build rpm,
> check for a native rpm and build rpm-native)
> 
> It comes from the image recipe which contains:
> ./images/poky-image-minimal.bb:IMAGE_INSTALL = "task-poky-boot
> ${ROOTFS_PKGMANAGE}"
> I assume by default I get rpm as package management (I am using the
> default values afaik).
> If it is rpm this comes from:
> ./classes/rootfs_rpm.bbclass:ROOTFS_PKGMANAGE = "rpm zypper"
> 
> I guess this is something beyond a missing dependency.
> 
> 
>>
>>> NOTE: package poky-image-minimal-1.0-r0: task do_rootfs: Failed
>>> ERROR: Task 10 (/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb,
>>> do_rootfs) failed with 1
>>> ERROR: '/home/frans/poky/poky/meta/recipes-core/images/poky-image-minimal.bb'
>>> failed
>>>
>>> rpm is installed on the host
>>> packaged rpm and rpm-native build so it does not seem to be a missing
>>> dependency.
>>>
>>> Anyone an idea?
>>>
>>> BTW: I feel that building poky-image-minimal takes quite long.
>>> I don't have a very high end PC (D920, core2 duo at 3Ghz or so, with
>>> 4GB DDR2), but  when I tried to build poky-image-minimal a second
>>> time, no work needed to be done, apart from do_rootfs.
>>> Yet running the 1839 (of 1842) tasks took 11min25.
>>
>> There is currently a lot of extra processing during task executation.  Each task
>> takes approx 1-2 seconds of processing.  A large number of the 1839 were likely
>> skipped.. thus the 11 minutes.
>>
>> We're already working on a solution to this.  Between optimizing the setup of
>> the bitbake environment and changes in pseudo -- to facilitate the task executor
>> avoiding exec unless necessary.
> 
> don't know all differences between OE and yocto yet.
> poky always seems to execute do_build, do_package_write and do_rm_work
> OE does seem to skip all steps if the stamps say everything is build.
> 
> 
> Frans (eFfeM on irc)


