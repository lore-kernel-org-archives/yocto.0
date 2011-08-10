Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFF65E011EC
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2011 06:21:38 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7ADLjSC012723
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Aug 2011 06:21:45 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 10 Aug 2011 06:21:45 -0700
Message-ID: <4E4285E7.3070904@windriver.com>
Date: Wed, 10 Aug 2011 09:21:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E420695.4030804@linux.intel.com> <4E420864.2030107@windriver.com>
	<4E422371.4020007@linux.intel.com>
In-Reply-To: <4E422371.4020007@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto_3.0: pull powerpc compile fix for -0s in BOOTFLAGS
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
X-List-Received-Date: Wed, 10 Aug 2011 13:21:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-10 02:21 AM, Darren Hart wrote:
>
>
> On 08/09/2011 09:26 PM, Bruce Ashfield wrote:
>> On 11-08-10 12:18 AM, Darren Hart wrote:
>>> Bruce,
>>>
>>> The following patch is needed for qemuppc and fsl-mpc8315e-rdb (same
>>> reasons as before). Can you pull this in from the 2.6.37 yocto tree?
>>
>> It should already be there for the fsl-mpc:
>>
>>   >  git show f6a70a6408a5d173d69fe3dc26fdaece38b4be3c
>> commit f6a70a6408a5d173d69fe3dc26fdaece38b4be3c
>> Author: Bruce Ashfield<bruce.ashfield@windriver.com>
>> Date:   Thu Oct 14 16:38:00 2010 -0400
>>
>>       powerpc/boot: remove -Os from BOOTFLAGS
>>
>>       Some variants of gcc 4.5 have issues with -Os and will
>>       throw:
>>
>>         cc1: error: Do not use -Os option if --enable-target-optspace is
>> not set.
>>
>>       -Os is not required to build a valid boot environment,
>>       so the easiest solution is to simply remove the boot
>>       flag.
>>
>>       Signed-off-by: Bruce Ashfield<bruce.ashfield@windriver.com>
>>
>>   >  git branch --contains f6a70a6408a5d173d69fe3dc26fdaece38b4be3c
>> * yocto/standard/fsl-mpc8315e-rdb
>>
>>
>> I can add it for qemuppc, but I've been building it all along and
>> have never seen the failure. What configuration are you building
>> that is showing this ?
>
> yocto/standard/preempt-rt/base
>
> So we can create preempt-rt/fsl-mpc8315e-rdb and qemuppc, or we can just
> push the patch down into standard. As it only impacts powerpc builds, I
> don't see the harm in having it just in standard/base.

It can definitely be pushed down. This is all the proof that
we need that it actually belongs there.

Bruce

>
> --
> Darren
>
>>
>> Bruce
>>
>>>
>>> commit 5ff609967ffe87c49d534d7861a7e0b150517726
>>> Author: Bruce Ashfield<bruce.ashfield@windriver.com>
>>> Date:   Thu Oct 14 16:38:00 2010 -0400
>>>
>>>       powerpc/boot: remove -Os from BOOTFLAGS
>>>
>>> Thanks,
>>>
>>
>


