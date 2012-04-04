Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA945E0044D
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 08:07:03 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7335BF8122B; Wed,  4 Apr 2012 09:07:03 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 13FBCF81228;
	Wed,  4 Apr 2012 09:06:57 -0600 (MDT)
Message-ID: <4F7C6391.3010206@mlbassoc.com>
Date: Wed, 04 Apr 2012 09:06:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Andrea Galbusera <gizero@gmail.com>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<CAC+thW0Z1wbifRONhVGNMhXX1JKt2asa0973GpvFxVFHR857+Q@mail.gmail.com>
In-Reply-To: <CAC+thW0Z1wbifRONhVGNMhXX1JKt2asa0973GpvFxVFHR857+Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Wed, 04 Apr 2012 15:07:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-04 08:58, Andrea Galbusera wrote:
> Hi Gary,
>
> On Wed, Apr 4, 2012 at 4:10 PM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> On 2012-04-04 06:50, Bruce Ashfield wrote:
>>>
>>> On 12-04-04 08:04 AM, Andrea Galbusera wrote:
>>>>
>>>> Hi Tomas,
>>>>
>>>> On Wed, Apr 4, 2012 at 12:14 PM, Tomas Frydrych
>>>> <tf+lists.yocto@r-finger.com>  wrote:
>>>>>
>>>>> Hi,
>>>>>
>>>>> I am trying to get Yocto image built from yesterday's master
>>>>> (Linux-3.0.23-yocto-standard) to boot on the NAND-less version of
>>>>> BeagleBoard xM, but the kernel panics with:
>>>>>
>>>>> ----------------- console log start ------------
>>>>>
>>>>> Waiting for root device /dev/mmcblk0p2...
>>>>> mmc0: new SDHC card at address 1234
>>>>> mmcblk0: mmc0:1234 SA04G 3.67 GiB (ro)
>>>>> mmcblk0: p1 p2
>>>>>
>>>>> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
>>>>> Please append a correct "root=" boot option; here are the available
>>>>> partitions:
>>>>>
>>>>> b300 3858432 mmcblk0 driver: mmcblk
>>>>> b301 120456 mmcblk0p1 00000000-0000-0000-0000-000000000mmcblk0p1
>>>>> b302 3445942 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk0p2
>>>>>
>>>>> VFS: Unable to mount root fs on unknown-block(179,2)
>>>>> User configuration error - no valid root filesystem found
>>>>> Kernel panic - not syncing: Invalid configuration from end user prevents
>>>>> continuing
>>>>>
>>>>> -------------- console log end ------------------------------------
>>>>>
>>>>> My guess would be the problem is the card being detected as 'ro' (line
>>>>> 3), but I do not know why that is (there is no lock switch on mmc
>>>>> cards).
>>>>>
>>>>> The card itself is fine, it's the original card that came with the
>>>>> board, the original Angstrom demo boots fine from it, and yocto kernel
>>>>> 2.6.37 also used to boot.
>>>>>
>>>>> Tomas
>>>>
>>>>
>>>> Looks related to the comment I wrote here:
>>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1892
>>>> I have a slightly different failure with yocto 1.2 beta snapshot (same
>>>> kernel) but seems related. Needs more investigation.
>>>> Anyone else having problem booting on beagleboard xM? Seems something
>>>> wrong happened after 1.1 release...
>>>
>>>
>>> We are working on several bugs on our reference beagleboard. The problem
>>> is that my beagleboard died (a horrible painful death) and the other
>>> boards
>>> that are directly available to are RevC and they are booting. So things
>>> are slowed down a bit .. but we are trying to get to the bottom of it,
>>> as fast as possible.
>>
>>
>> Just FYI, it also doesn't boot on my rev-C3 (not xM), albeit with a
>> different
>> error pattern.  It hangs at this point:
>>
>>   Waiting for root device /dev/mmcblk0p2...
>>   mmc0: error -110 whilst initialising SD card
>
> That's exactly the same error I see! Happy to know am not alone...
>
>> Looks like you might need the attached patch?
>
> I'm going to give it a try as soon as I can. Did you already submit it
> somewhere?

I haven't had a chance to try it yet.  I got it from the meta-ti layer.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

