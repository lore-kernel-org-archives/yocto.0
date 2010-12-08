Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id D67F94C8122E
	for <yocto@yoctoproject.org>; Wed,  8 Dec 2010 13:05:37 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oB8J5aIU027732;
	Wed, 8 Dec 2010 11:05:36 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 11:05:35 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 8 Dec 2010 11:05:35 -0800
Message-ID: <4CFFD6FE.2040707@windriver.com>
Date: Wed, 08 Dec 2010 14:05:34 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: rpurdie@linux.intel.com
References: <cover.1291786378.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1291786378.git.bruce.ashfield@windriver.com>
X-OriginalArrivalTime: 08 Dec 2010 19:05:36.0011 (UTC)
	FILETIME=[E525ADB0:01CB970A]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3] linux-yocto: refactor recipes and update the	kernel
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
X-List-Received-Date: Wed, 08 Dec 2010 19:05:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-08 09:35 AM, Bruce Ashfield wrote:
> Richard,
>

FYI: Darren pointed out that these should go to poky@
as well, so any follow ups will go to both lists. Sorry
about the initial miss!

Cheers,

Bruce

> Consider these patches for merging. I've been building and working
> with these for 2 weeks now, and while they aren't perfect, they
> work and we need more eyes on 2.6.37.
>
> What we get is the following:
>
>   - factoring of the code into some reusable routines in the form
>     of a linux-yocto bbclass. The -stable, -devel and libc headers
>     recipes are all using this common code
>
>   - A new branching scheme for the 2.6.37 kernel that generalizes
>     the branch names and shows their hierarchy. The tools that
>     process the kernel needed a lot of 'unlearning' about the
>     old structure (this took a lot of my time working on this).
>
>     If this needs to be tweaked more, we can do it later, since
>     the big changes are done and agreed on, and we can't delay
>     scaling this out to more boards much longer.
>
>   - A -stable recipe that continues to build the 2.6.34 kernel
>     and a move of the main recipe to track the development
>     2.6.37-rc5 tree. The qemu* targets have their defaults
>     changed to 2.6.37-rc, while the hardware targets remain
>     on 2.6.34 for a bit longer. To ease the switch over, I
>     put the SRCREVs for 2.6.37 into the recipe itself. We
>     can move these as .37 becomes the default.
>
>   - perf is moved into a linux-tools.inc, we can add more to
>     this and re-use it more easily from here
>
>   - BSP boostrapping is streamlined (docs to follow).
>
> The temporary commenting of the preferred libc-headers provider
> was intentional. There is something strange happening when
> headers are generated for 2.6.34 that was breaking libc builds.
> To avoid holding up this series, we'll go with the default
> libc headers for a short while.
>
> I've built and booted all the qemu* targets on 2.6.37
> (minimal and sato), I've built most of the hardware
> targets. I noticed some strangeness with the mouse on
> ARM, and that will need to be looked at further. I've done
> some audits on the kernel configuration in 2.6.37, and
> while it looks sane, full BSP testing will tell us if
> anything major changed (that I missed).
>
> If there are better suggestions on how we can stage and
> get mileage on this code, I'm all ears, but this is a kernel
> uprev, so I expect some issues (there always is even though
> I've done plenty of these). If we don't want anything
> destabilizing in the tree, I'm fine with this and we just
> need to come up with a plan.
>
> What remains (I'm only one person!):
>
>   - BSP porting and full BSP testing
>   - Investigation into the libc-headers issue
>   - Continued cleanup
>   - Feature merging into 2.6.37 (lttng, yaffs, etc)
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (3):
>    yocto-kernel: factor common routes, update to 2.6.37 and branch
>      renaming
>    linux-libc-headers-yocto: use common linux-yocto routines
>    qemu: update arm timer handling
>
>   meta-emenlow/conf/machine/emenlow.conf             |    3 +-
>   meta/classes/kernel-yocto.bbclass                  |  202 +++++++++++++++++
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/conf/machine/atom-pc.conf                     |    3 +-
>   meta/conf/machine/beagleboard.conf                 |    3 +-
>   meta/conf/machine/include/qemu.inc                 |    1 +
>   meta/conf/machine/mpc8315e-rdb.conf                |    3 +-
>   meta/conf/machine/routerstationpro.conf            |    3 +-
>   .../qemu-0.12.4/arm_timer-fix-oneshot-mode.patch   |   32 +++
>   .../arm_timer-reload-timer-when-enabled.patch      |   40 ++++
>   meta/recipes-devtools/qemu/qemu_0.12.4.bb          |    4 +-
>   .../linux-libc-headers-yocto_git.bb                |   25 +--
>   meta/recipes-kernel/linux/linux-tools.inc          |   19 ++
>   .../recipes-kernel/linux/linux-yocto-stable_git.bb |   41 ++++
>   meta/recipes-kernel/linux/linux-yocto.inc          |   23 ++
>   meta/recipes-kernel/linux/linux-yocto_git.bb       |  232 +++-----------------
>   16 files changed, 415 insertions(+), 221 deletions(-)
>   create mode 100644 meta/classes/kernel-yocto.bbclass
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-fix-oneshot-mode.patch
>   create mode 100644 meta/recipes-devtools/qemu/qemu-0.12.4/arm_timer-reload-timer-when-enabled.patch
>   create mode 100644 meta/recipes-kernel/linux/linux-tools.inc
>   create mode 100644 meta/recipes-kernel/linux/linux-yocto-stable_git.bb
>   create mode 100644 meta/recipes-kernel/linux/linux-yocto.inc
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


