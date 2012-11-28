Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26304E00294
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 09:58:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id qASHwC1O018408
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 28 Nov 2012 09:58:12 -0800 (PST)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 28 Nov 2012 09:58:11 -0800
Message-ID: <50B650AF.6040809@windriver.com>
Date: Wed, 28 Nov 2012 12:58:07 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Yu Pan <panyu2000@gmail.com>
References: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
	<50B4DB1F.2070904@windriver.com>
	<CAPeyoXY=72u_CiQhMv2FRmiOSQ-DLbRQUrRSg=NiUufzEZAjAw@mail.gmail.com>
In-Reply-To: <CAPeyoXY=72u_CiQhMv2FRmiOSQ-DLbRQUrRSg=NiUufzEZAjAw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preempt-rt kernel build for beagleboard
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
X-List-Received-Date: Wed, 28 Nov 2012 17:58:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-11-28 01:07 AM, Yu Pan wrote:
> Hi Bruce,
>
> Thanks for commenting :-)
>
>     You shouldn't have needed to do this part, since the board already has
>     a preempt-rt BSP description:
>
>     http://git.yoctoproject.org/__cgit/cgit.cgi/linux-yocto-3.4/__tree/meta/cfg/kernel-cache/__bsp/beagleboard/beagleboard-__preempt-rt.scc?h=meta
>     <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/tree/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc?h=meta>
>
>     And when you build the linux-yocto-rt kernel with that board, that
>     description should be found, and it enables all the base options
>     already.
>
>     If you look in your build, what does the file 'linux/meta/top_tgt'
>     contain ?
>
>
> This was what puzzles me as well. I thought bitbake should pickup what
> is specified in beagleboard-preempt-rt.scc to produce the .config in the
> kernel build directory. But it did not, at least for the PREEMPT part.
> Below is the PREEMPT related configs in the .config without manually
> doing the menuconfig:
>
> # CONFIG_PREEMPT_RCU is not set
> CONFIG_PREEMPT_NONE=y
> # CONFIG_PREEMPT_VOLUNTARY is not set
> # CONFIG_PREEMPT__LL is not set
> # CONFIG_PREEMPT_RTB is not set
> # CONFIG_PREEMPT_RT_FULL is not set
>
> Follow your pointer, I checked linux/meta/top_tgt, it indeed points to
> meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc, which
> includes ktypes/preempt-rt (why not ktypes/preempt-rt.scc?). In
> ktypes/preempt-rt.cfg (included by ktypes/preempt-rt.scc),
> CONFIG_PREEMPT_RT_FULL=y is there. So why not this configuration
> fragment not picked up in the final .config?

Mystery solved. The fragment is picked up properly in the build and
everything is operating as expected.

We had an old commit (that is still required for some configurations)
that disabled preemption for the beagleboard due to SD card boot
issues.

That being said, the entire point of trying out preempt-rt is for the
extra preemption, and without it, why bother. So I moved the preempt
disable to the standard kernel only in this commit:

http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-cache/commit/?id=551c7ad8c46d371c6b135357ed2d388d45af13d8

Once I update the SRCREVs for the meta branch of the linux-yocto-3.4
tree, you'll get the expected preempt settings out of the box:

 > grep PREEMPT linux-beagleboard-preempt-rt-build/.config
CONFIG_TINY_PREEMPT_RCU=y
CONFIG_PREEMPT_RCU=y
CONFIG_PREEMPT=y
CONFIG_PREEMPT_RT_BASE=y
# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT__LL is not set
# CONFIG_PREEMPT_RTB is not set
CONFIG_PREEMPT_RT_FULL=y
CONFIG_PREEMPT_COUNT=y
CONFIG_DEBUG_PREEMPT=y
# CONFIG_PREEMPT_TRACER is not set

Cheers,

Bruce


>
> Cheers
> Pan Yu


