Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92BC04C800FB
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2011 21:23:16 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5G2NFCx019677
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 15 Jun 2011 19:23:15 -0700 (PDT)
Received: from [128.224.162.215] (128.224.162.215) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Wed, 15 Jun 2011 19:23:14 -0700
Message-ID: <4DF9692C.6010201@windriver.com>
Date: Thu, 16 Jun 2011 10:23:40 +0800
From: Lu Jingdong <jingdong.lu@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>
References: <cover.1308133815.git.jingdong.lu@windriver.com>	<4DF8B1D7.8050208@windriver.com>	<E44DE684-78F8-4C17-8FF8-837A46CECD58@dominion.thruhere.net>	<4DF8B44B.6080104@windriver.com>
	<4DF8E279.1040206@linux.intel.com>	<4DF8E369.10000@windriver.com>
	<4DF8ECD0.8090900@linux.intel.com>
In-Reply-To: <4DF8ECD0.8090900@linux.intel.com>
X-Originating-IP: [128.224.162.215]
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Enable to set RTC for beagleboard
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
X-List-Received-Date: Thu, 16 Jun 2011 02:23:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/16/2011 01:33 AM, Darren Hart wrote:
>
> On 06/15/2011 09:52 AM, Bruce Ashfield wrote:
>> On 06/15/11 12:48, Darren Hart wrote:
>>>
>>> On 06/15/2011 06:31 AM, Bruce Ashfield wrote:
>>>> On 06/15/11 09:25, Koen Kooi wrote:
>>>>> Op 15 jun 2011, om 15:21 heeft Bruce Ashfield het volgende
>>>>> geschreven:
>>>>>
>>>>>> On 06/15/11 06:41, Jingdong Lu wrote:
>>>>>>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>>>>>>
>>>>>>> Ensure msecure is mux'd to be able to set the RTC for
>>>>>>> beagleboard. Fixes bug [YOCTO #767]
>>>>>> Jingdong,
>>>>>>
>>>>>> The fix looks reasonable to me, Darren has been refreshing the
>>>>>> beagleboard support as well, so I've cc'd him here to see if we
>>>>>> have this change present in the work in progress trees.
>>>>>>
>>>
>>> I do not have something similar queued.
>>>
>>>
>>>>>> What tests did you run to ensure that the RTC worked on the
>>>>>> beagleboard ? There was some debate around whether or not you
>>>>>> needed an add-on card to get this functionality available ?
The signal "msecure" on TPS65950 connects to "msecure" on OMAP3530 and 
setting/writing RTC register is controlled by
OMAP3530 "msecure". So we should pull the "msecure" high on OMAP3530 so 
that we can set/write RTC register on TPS65950.

We test RTC on beagleboard by adding this patch. RTC can be set a 
correct date and
it works well when power on.
>>>>> You need to remove some resistors and add a battery, or add an
>>>>> expansionboard like the zippy or zippy2, which have a DS1307 RTC
>>>>> with battery.
Because there is no backup battery on beagleboard C4, RTC can not be 
saved when
power off. If we want to keep RTC without power, we should remove R66 
and install
a battery on board.

>>>> Thanks Koen,
>>>>
>>>> This confirms what I thought (zippy*), so clearly this is either a
>>>> board with that setup, or runtime testing was .. unique. Either way,
>>>> more details and research is needed for this one.
>>>
>>> I'll wait to hear upstream status on this. Given the requirements for
>>> use, I wouldn't mind just closing 767 as will not fix as it can't work
>>> with the beagleboard out of the box anyway.
>> I'm ok with that resolution .. for the bug. But if the patch
>> isn't already in another upstream tree, it's worth having
>> (if benign to the rest of the variants) and then we can get
>> it sent upstream from there.
>>
>> I can change the bug's status if you like.
>
> I want to hear back from Jingdong regarding this patch first. Is this
> new code? If so, then yes, let's get it to mainline as Bruce suggested.
>

This patch can be found on linux-omap tree.
http://git.kernel.org/?p=linux/kernel/git/tmlind/linux-omap-2.6.git;a=commit;h=e2a346a2a054f702fd76f328ff747b9ad9264a4c

arm: omap3: beagle: Ensure msecure is mux'd to be able to set the RTC
Without msecure beeing high it isn't possible to set (or start)
the RTC.

Tested with a BeagleBoard C4.

Signed-off-by: Alexander Holler <holler@ahsoftware.de>
Signed-off-by: Tony Lindgren <tony@atomide.com>

So maybe I should recommit it by adding some upstream status and author.

regards,

Jingdong
>> Cheers,
>>
>> Bruce
>>
>>>
>>> --
>>> Darren
>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> regards,
>>>>>
>>>>> Koen
>>>> _______________________________________________ yocto mailing list
>>>> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


