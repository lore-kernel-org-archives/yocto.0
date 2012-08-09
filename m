Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F53E0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 10:24:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q79HO9Sm000365
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 Aug 2012 10:24:09 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 9 Aug 2012 10:24:09 -0700
Message-ID: <5023F236.6030503@windriver.com>
Date: Thu, 9 Aug 2012 13:24:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
	<CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
	<20120809171242.f3f42cd3-3ca6-4924-88b1-a982a4bfe7e1.mhubig@imko.de>
In-Reply-To: <20120809171242.f3f42cd3-3ca6-4924-88b1-a982a4bfe7e1.mhubig@imko.de>
Subject: Re: Problem with BSP supporting different machines
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
X-List-Received-Date: Thu, 09 Aug 2012 17:24:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-09 12:32 PM, Markus Hubig wrote:
> On Thu, Aug 09, 2012 at 10:48:30AM -0400, Bruce Ashfield wrote:
>> On Thu, Aug 9, 2012 at 10:46 AM, Markus Hubig<mhubig@imko.de>  wrote:
>
> <snip>
>
>>> Comparing the output of "bitbake -e linux-yocto" for both MACHINE settings
>>> I notice that for stamp9g20 KMACHINE is "stamp9g20" but for portuxg20 it's
>>> "common-pc", which results in these "updateme" command:
>>>
>>> | updateme --branch standard/default/arm-versatile-926ejs -DKDESC=common-pc:standard
>>> |  --feature features/netfilter --feature features/taskstats arm common-pc
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/hardware.cfg
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/non-hardware.cfg
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.cfg
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-preempt-rt.scc
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.scc
>>> |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-standard.scc
>>>
>>> Which again (I think ...) leads to a kernel compile error ...
>>>
>>> Unfortunately I was not able to find out why the KMACHINE variable is not setup
>>> correctly with my BSP for PortuxG20 ...
>
> Damn! Found the problem, just a typo :-)
>
> | -KMACHINE_portux9g20  = "portuxg20"
> | +KMACHINE_portuxg20  = "portuxg20"
>
>> Is this the same BSP producing the kconf check warnings on denzil ? I
>> ran tests this morning and denzil itself is clean, so there's definitely
>> something wrong in the layer.
>
> Yes it's the same BSP and the kconf_check warnings are persistent!
>
> | WARNING: Can't find any BSP hardware or required configuration fragments.
> | WARNING: Looked at
> |  linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
> | and
> |  linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
> | in directory:
> |  linux/meta/cfg/standard/default/arm-versatile-926ejs
>
> As I mentiond before the files kconf_check should (IMHO) have a look
> at are in:
>
> | linux/meta/cfg/standard/default/portuxg20
>
> If I ran the kconf_check manually I get an output, but not a very
> promissing one :(
>
> | This BSP sets 4 invalid/obsolete kernel options.
> | These config options are not offered anywhere within this kernel.
> | The full list can be found in your workspace at:
> |  linux/meta/cfg/standard/default/portuxg20/invalid.cfg
> |
> | This BSP sets 10 kernel options that are possibly non-hardware related.
> | The full list can be found in your workspace at:
> |  linux/meta/cfg/standard/default/portuxg20/specified_non_hdw.cfg
> |
> | WARNING: There were 17 hardware options requested that do not
> |          have a corresponding value present in the final ".config" file.
> |          This probably means you aren't getting the config you wanted.
> | The full list can be found in your workspace at:
> |  linux/meta/cfg/standard/default/portuxg20/mismatch.cfg
> |
> | Waiting a second to make sure you get a chance to see this...
> | ** NOTE: There were 0 required options requested that do not
> |          have a corresponding value present in the final ".config" file.
> |          This is a violation of the policy defined by the higher level config
> | The full list can be found in your workspace at:
> |  linux/meta/cfg/standard/default/portuxg20/missing_required.cfg
>
> So I'm not shure if my BSP is creating the kernel I wanna have ...
>
>> If this is the same BSP, I can have a look and see about solving the
>> two problems at once.
>
> This would be very nice! I really stuck here ... The BSP can be found at:
>
> https://bitbucket.org/imko/meta-stamp9g20 (branch denzil)

I have a clone and started a build. When I have some results .. I'll
send more email.

Cheers,

Bruce

>
> Cheers, Markus
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


