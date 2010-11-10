Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 475384C80FA8
	for <yocto@yoctoproject.org>; Wed, 10 Nov 2010 09:07:19 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oAAF7HR7025232;
	Wed, 10 Nov 2010 07:07:17 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 07:07:17 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Wed, 10 Nov 2010 07:07:17 -0800
Message-ID: <4CDAB524.3060104@windriver.com>
Date: Wed, 10 Nov 2010 10:07:16 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: Kumar Gala <galak@kernel.crashing.org>
References: <414DA7D8-2E3E-4DEE-9C36-24EF976D7A99@kernel.crashing.org>
	<4CDAA03C.8090004@windriver.com> <4CDAA4F0.1060802@windriver.com>
	<BE6DB51E-F39B-4C61-9EA1-9AFBE5E397FA@kernel.crashing.org>
	<4CDAAACD.1070206@windriver.com>
	<64CB5A01-C87F-43FA-BD52-43694E5E5908@kernel.crashing.org>
In-Reply-To: <64CB5A01-C87F-43FA-BD52-43694E5E5908@kernel.crashing.org>
X-OriginalArrivalTime: 10 Nov 2010 15:07:17.0765 (UTC)
	FILETIME=[F7297B50:01CB80E8]
Cc: yocto@yoctoproject.org
Subject: Re: TARGET_FPU for mpc8315e-rdb listed as SPE??
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
X-List-Received-Date: Wed, 10 Nov 2010 15:07:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-10 10:03 AM, Kumar Gala wrote:
>
> On Nov 10, 2010, at 8:23 AM, Bruce Ashfield wrote:
>
>> On 10-11-10 09:11 AM, Kumar Gala wrote:
>>>
>>> On Nov 10, 2010, at 7:58 AM, Bruce Ashfield wrote:
>>>
>>>> On 10-11-10 08:38 AM, Bruce Ashfield wrote:
>>>>> On 10-11-10 01:46 AM, Kumar Gala wrote:
>>>>>> Why does the meta/conf/machine/mpc8315e-rdb.conf list TARGET_FPU as
>>>>>> SPE. This isn't correct for an MPC8313 SoC.
>>>>>
>>>>> It isn't used at the moment, so we can safely
>>>>> ignore this.
>>>>>
>>>>> It was a hold over from when I initially created
>>>>> the BSP, and I've since changed it locally, but
>>>>> haven't sent the updated BSP yet.
>>>>
>>>> To clarify on this point, the kernel configuration
>>>> is NOT using SPE for this, and I was attempting to
>>>> use the FPU setting to trigger some different gcc
>>>> flags during development the base of that test was
>>>> an e500 board, so the SPE setting leaked in, but is
>>>> unused.
>>>>
>>>> At the moment, it is actually using soft-float, and
>>>> I had planned to submit a change to clarify that.
>>>>
>>>> If there's another option, let me know and I'll
>>>> rebase my patches and change it again.
>>>
>>> We should NOT be using soft-float for mpc8315e (it has HW floating point on this chip).
>>
>> Indeed. I fell back to a safe multilib. I'm willing
>> to try again and see if the gcc bootstrap phases will
>> build.
>>
>> The kernel was fine, and is fine, it was userspace
>> that caused problems for me .. and that's definitely not
>> an area where my expertise lies :)
>>
>> I needed something that worked, and had to excplicitly
>> chose to ignore the FPU temporarily, but revisiting that
>> now seems like a good idea.
>>
>>>
>>> Any plans to get an e500 based system going before the rev1.0 release?
>>
>> We've got tonnes of experience and BSPs to draw from
>> here. The selection of some of these BSPs was (largely)
>> based on cost and availability. If we can get our
>> hands on a suitable e500 replacement .. the switch is
>> trivial.
>
> If we can get a toolchain and basic build I'm happy to help on the HW side and getting kernel, etc worked out.

Agreed. For me, this is the slightly harder part. I'll
start a few builds and see if the errors are still here.

>
> I'd like to get a semi-generic setup going for an e500v2 based system.

Should be doable. I've already got a generic set of configs/
patches/features in place for all powerpc/FSL boards,
(largely due to the lineage of the base kernel we use).
But getting some assistance with  further tuning of the
options would be appreciated, since I can use that to springboard
the creation of new BSPs.

Cheers,

Bruce



>
> - k


