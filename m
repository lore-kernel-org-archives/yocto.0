Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F18C84C8009D
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 09:59:12 -0500 (CDT)
Received: by wyb40 with SMTP id 40so1695903wyb.35
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2011 07:59:11 -0700 (PDT)
Received: by 10.227.156.70 with SMTP id v6mr1043701wbw.21.1308236351510;
	Thu, 16 Jun 2011 07:59:11 -0700 (PDT)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id m8sm205159wbh.62.2011.06.16.07.59.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 16 Jun 2011 07:59:10 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4DFA1722.7000008@linux.intel.com>
Date: Thu, 16 Jun 2011 16:59:08 +0200
Message-Id: <78F917CB-E518-4DCF-A2B1-2F71A16190A9@dominion.thruhere.net>
References: <cover.1308133815.git.jingdong.lu@windriver.com>	<4DF8B1D7.8050208@windriver.com>	<E44DE684-78F8-4C17-8FF8-837A46CECD58@dominion.thruhere.net>	<4DF8B44B.6080104@windriver.com>
	<4DF8E279.1040206@linux.intel.com>	<4DF8E369.10000@windriver.com>
	<4DF8ECD0.8090900@linux.intel.com> <4DF9692C.6010201@windriver.com>
	<4DF985CB.7050801@windriver.com> <4DFA1722.7000008@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
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
X-List-Received-Date: Thu, 16 Jun 2011 14:59:13 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 16 jun 2011, om 16:45 heeft Darren Hart het volgende geschreven:

> 
> On 06/15/2011 09:25 PM, Bruce Ashfield wrote:
>> On 11-06-15 10:23 PM, Lu Jingdong wrote:
>>> On 06/16/2011 01:33 AM, Darren Hart wrote:
>>>> 
>>>> On 06/15/2011 09:52 AM, Bruce Ashfield wrote:
>>>>> On 06/15/11 12:48, Darren Hart wrote:
>>>>>> 
>>>>>> On 06/15/2011 06:31 AM, Bruce Ashfield wrote:
>>>>>>> On 06/15/11 09:25, Koen Kooi wrote:
>>>>>>>> Op 15 jun 2011, om 15:21 heeft Bruce Ashfield het volgende
>>>>>>>> geschreven:
>>>>>>>> 
>>>>>>>>> On 06/15/11 06:41, Jingdong Lu wrote:
>>>>>>>>>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>>>>>>>>> 
>>>>>>>>>> Ensure msecure is mux'd to be able to set the RTC for
>>>>>>>>>> beagleboard. Fixes bug [YOCTO #767]
>>>>>>>>> Jingdong,
>>>>>>>>> 
>>>>>>>>> The fix looks reasonable to me, Darren has been refreshing the
>>>>>>>>> beagleboard support as well, so I've cc'd him here to see if we
>>>>>>>>> have this change present in the work in progress trees.
>>>>>>>>> 
>>>>>> 
>>>>>> I do not have something similar queued.
>>>>>> 
>>>>>> 
>>>>>>>>> What tests did you run to ensure that the RTC worked on the
>>>>>>>>> beagleboard ? There was some debate around whether or not you
>>>>>>>>> needed an add-on card to get this functionality available ?
>>> The signal "msecure" on TPS65950 connects to "msecure" on OMAP3530 and
>>> setting/writing RTC register is controlled by
>>> OMAP3530 "msecure". So we should pull the "msecure" high on OMAP3530 so
>>> that we can set/write RTC register on TPS65950.
>>> 
>>> We test RTC on beagleboard by adding this patch. RTC can be set a
>>> correct date and
>>> it works well when power on.
>>>>>>>> You need to remove some resistors and add a battery, or add an
>>>>>>>> expansionboard like the zippy or zippy2, which have a DS1307 RTC
>>>>>>>> with battery.
>>> Because there is no backup battery on beagleboard C4, RTC can not be
>>> saved when
>>> power off. If we want to keep RTC without power, we should remove R66
>>> and install
>>> a battery on board.
>> 
>> Ack'd. For me, this is reasonable. Having a working RTC even
>> if it doesn't survive power cycle is worth having. In particular,
>> since the patch is simple.
> 
> 
> Agreed.

FWIW, it survives warm resests.

regards,

Koen

