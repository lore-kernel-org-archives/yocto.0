Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5AEAA4C800BB
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 08:07:35 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5SD7YMl027294
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2011 06:07:34 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 28 Jun 2011 06:07:34 -0700
Message-ID: <4E09D214.1090704@windriver.com>
Date: Tue, 28 Jun 2011 09:07:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Lu Jingdong <jingdong.lu@windriver.com>
References: <cover.1308898789.git.jingdong.lu@windriver.com>
	<1e861537dffff5c5cd7f3f959e9b5e735e7747b2.1308898789.git.jingdong.lu@windriver.com>
	<4E049740.1080102@windriver.com> <4E09A277.7070306@windriver.com>
In-Reply-To: <4E09A277.7070306@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] routerstationpro: IPC config
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
X-List-Received-Date: Tue, 28 Jun 2011 13:07:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/28/11 05:44, Lu Jingdong wrote:
>
>
> On 06/24/2011 09:55 PM, Bruce Ashfield wrote:
>> On 06/24/11 03:02, Jingdong Lu wrote:
>>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>>
>>> Add IPC config for routestationpro
>>>
>>> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
>>> ---
>>> .../bsp/routerstationpro/routerstationpro.cfg | 10 +++++++---
>>> 1 files changed, 7 insertions(+), 3 deletions(-)
>>>
>>> diff --git
>>> a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>>> b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>>> index f58dfe8..88222ca 100644
>>> --- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>>> +++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>>> @@ -209,14 +209,18 @@ CONFIG_CONSTRUCTORS=y
>>> #
>>> # General setup
>>> #
>>> -# CONFIG_EXPERIMENTAL is not set
>>> +CONFIG_EXPERIMENTAL=y
>>
>> We typically do not want to enable this. What options is
>> this triggering that are essential to the IPC config ?
> Configuration "POSIX_MQUEUE" depends on "CONFIG_EXPERIMENTAL=y", so it
> should be enabled.
> This configuration has been enabled in
> meta/cfg/kernel-cache/ktypes/base/base.cfg
> #
> # Code maturity level options
> #
> CONFIG_EXPERIMENTAL=y
>
> But it was redefined in
> meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> #
> # General setup
> #
> # CONFIG_EXPERIMENTAL is not set
>
> So CONFIG_EXPERIMENTAL is not set in the final kernel config.
>
> I also can find the redefinition in
> .../meta/cfg/yocto/standard/routerstationpro/redefinition.txt
>
> Value of CONFIG_EXPERIMENTAL is redefined by fragment
> /home/eric/poky/poky/build-routerstation/tmp/work/routerstationpro-poky-linux/linux-yocto-2.6.37+git1+06d3793d459048ee1b4db7170f24670c479e8b29_1+d6aadb767fdcbb9886c430e90b92f49cd3a9ddcc-r18/linux/meta/cfg//kernel-cache/bsp/routerstationpro/routerstationpro.cfg:
>
> Old value: CONFIG_EXPERIMENTAL=y
> New value: # CONFIG_EXPERIMENTAL is not set

Indeed. So in this case, we should just be dropping the
# CONFIG_EXPERIMENTAL is not set from this fragment.

>>
>>> CONFIG_BROKEN_ON_SMP=y
>>> CONFIG_INIT_ENV_ARG_LIMIT=32
>>> CONFIG_LOCALVERSION=""
>>> CONFIG_LOCALVERSION_AUTO=y
>>> CONFIG_SWAP=y
>>> -# CONFIG_SYSVIPC is not set
>>> -# CONFIG_BSD_PROCESS_ACCT is not set
>>> +CONFIG_SYSVIPC=y
>>> +CONFIG_SYSVIPC_SYSCTL=y
>>> +CONFIG_POSIX_MQUEUE=y
>>
>> These options are already provided by the base configuration
>> and are supposed to be baseline options for any BSP. Can
>> you elaborate on why you needed these here ?
>>
> These options also were redefined in
> meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
> # CONFIG_SYSVIPC is not set
> # CONFIG_BSD_PROCESS_ACCT is not set
>
> So these options were disabled in kernel configure file. But they are
> needed by LTP test.
>
> I took a look at the routerstationpro.cfg and found that it is a
> complete configure file. It is different
> from other BSPs. So I think we should modify routerstationpro.cfg and
> only leave some special platform,

This definitely needs to be done, it was on our list to revisit, so
perhaps this is a good time.

> hardware configure options in it. Or at least we should omit the above
> options which conflict with
> the base configurations.

At the minimum we should do this, BSPs should not be overriding
base settings without good reasons .. and we definitely do not
have good reasons here!

Bruce

>> Bruce
>>
>>> +CONFIG_POSIX_MQUEUE_SYSCTL=y
>>> +CONFIG_BSD_PROCESS_ACCT=y
>>> +CONFIG_BSD_PROCESS_ACCT_V3=y
>>> # CONFIG_TASKSTATS is not set
>>> # CONFIG_AUDIT is not set
>>>
>>
>>
>


