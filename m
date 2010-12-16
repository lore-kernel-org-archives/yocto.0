Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id C77A34C80B71
	for <yocto@yoctoproject.org>; Thu, 16 Dec 2010 17:19:20 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 16 Dec 2010 15:19:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,357,1288594800"; d="scan'208";a="362866610"
Received: from unknown (HELO [10.255.14.3]) ([10.255.14.3])
	by azsmga001.ch.intel.com with ESMTP; 16 Dec 2010 15:19:19 -0800
Message-ID: <4D0A9E77.5010607@linux.intel.com>
Date: Thu, 16 Dec 2010 15:19:19 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Yu, Ke" <ke.yu@intel.com>
References: <4D096431.2000107@linux.intel.com>
	<33AB447FBD802F4E932063B962385B3531A37556@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B3531A37556@shsmsx501.ccr.corp.intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [poky] Recipe Updating Status and call to action
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
X-List-Received-Date: Thu, 16 Dec 2010 23:19:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/16/2010 06:17 AM, Yu, Ke wrote:
> Thanks Saul for working out this list.
>
> I am a bit surprised on the large number of to-be-upgraded list: 160, because according to our plan, we actually upgrade most of the recipes in M2, and only a small number of recipes are supposed to be left for M3. To find out the reason why, PRC team collect some data to analysis, and here is the result:
>
I am sorry I gave everyone a scare with my numbers, as Kevin points out, 
currently this information is stateless, I am going my best to gather 
the information that I have at hand

> Among the 160, PRC team (Dexuan, Dongxiao, Edwin, Ke, Qing) owns 105 recipes. the 105 recipes can be grouped into 3 cases:
> Case A: the recipe is not planned to upgrade in M2, mostly due to that it is up-to-update in M2 planning time, and later has new version available.
> Case B: the recipe is planned to upgrade in M2, but not upgrade and leave it to M3
> Case C: the recipe is planned to upgrade in M2, and it is upgraded in M2, but later has new version available.
Can you send me a list of the Case C recipes, I would like to review if 
we need to update all of them.  As I said in the past some of these may 
be the Xserver and libraries which we do want to update since we went to 
an RC release first.

Sau!


>
> According to our data collection, Case A has 31 recipes, Case B has 21 recipes, Case C has 53 recipes. In other word, in M2 time, we leave 21 recipes (Case B) for M3, but due to new version available after the planning, there are extra 84 recipes (case A + case C) added to be upgraded. Even only count Case C, we can see almost 50% ofM3  to-be-upgraded recipes are already upgraded in M2. This is probably one area we can improved in the future.
>
Thanks

> Regards
> Ke
>
>> -----Original Message-----
>> From: poky-bounces@yoctoproject.org [mailto:poky-
>> bounces@yoctoproject.org] On Behalf Of Saul Wold
>> Sent: Thursday, December 16, 2010 8:58 AM
>> To: Yocto Project Discussion; poky@yoctoproject.org
>> Subject: [poky] Recipe Updating Status and call to action
>>
>>
>> Folks,
>>
>> As we get ready for M3 opening up shortly, I wanted to get folks aware of where
>> we are with M2 and the recipe updating process.  Based on my rough reckoning,
>> we had about 266 recipes that needed updating at the start of M2, we updated
>> about 110 (possibly more).  There are now about 160 recipes in the update list
>> that need tackling.
>>
>> Also, the distro tracking data for Version information is getting stale, there are
>> about 135 RECIPE_LATEST_VERSION metadata tags that need to be updated.
>>
>> I have attached a spreadsheet that shows the update status of both the
>> upstream (RMatch Column) and tracking data (TMatch Column).
>>
>> I would like to see the team and community pitch in and complete these 160
>> recipe updates for the 1.0 Release. Please be sure the ownership /
>> RECIPE_MAINTAINER information is correct.
>>
>> IMPORTANT: Please use distro/stage in poky-contrib to update the
>> distro_tracking_fields.inc file, I have many updates in that already, I will do my
>> best not to rebase that until we get it updated.
>>
>> The attached spread sheet contains 3 Sheets, please review the 2nd and 3rd
>> sheets (Labeled Tracking Updates and Recipe Updates respectively).
>>
>> Thanks.
>>
>> --
>>       Sau!
>>
>> Saul Wold
>> Yocto Component Wrangler @ Intel
>> Yocto Project / Poky Build System
>
>

