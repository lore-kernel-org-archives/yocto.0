Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B047E0070C
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 22:31:51 -0700 (PDT)
Received: from [192.168.0.2] (host86-132-175-15.range86-132.btcentralplus.com
	[86.132.175.15]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 4D49499C2
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 06:31:50 +0100 (BST)
Message-ID: <4F7D2E45.2020408@r-finger.com>
Date: Thu, 05 Apr 2012 06:31:49 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
In-Reply-To: <4F7C5651.60209@mlbassoc.com>
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
X-List-Received-Date: Thu, 05 Apr 2012 05:31:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 04/04/12 15:10, Gary Thomas wrote:
> On 2012-04-04 06:50, Bruce Ashfield wrote:
>> On 12-04-04 08:04 AM, Andrea Galbusera wrote:
>>> Hi Tomas,
>>>
>>> On Wed, Apr 4, 2012 at 12:14 PM, Tomas Frydrych
>>> <tf+lists.yocto@r-finger.com> wrote:
>>>> Hi,
>>>>
>>>> I am trying to get Yocto image built from yesterday's master
>>>> (Linux-3.0.23-yocto-standard) to boot on the NAND-less version of
>>>> BeagleBoard xM, but the kernel panics with:
>>>>
>>>> ----------------- console log start ------------
>>>>
>>>> Waiting for root device /dev/mmcblk0p2...
>>>> mmc0: new SDHC card at address 1234
>>>> mmcblk0: mmc0:1234 SA04G 3.67 GiB (ro)
>>>> mmcblk0: p1 p2
>>>>
>>>> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
>>>> Please append a correct "root=" boot option; here are the available
>>>> partitions:
>>>>
>>>> b300 3858432 mmcblk0 driver: mmcblk
>>>> b301 120456 mmcblk0p1 00000000-0000-0000-0000-000000000mmcblk0p1
>>>> b302 3445942 mmcblk0p2 00000000-0000-0000-0000-000000000mmcblk0p2
>>>>
>>>> VFS: Unable to mount root fs on unknown-block(179,2)
>>>> User configuration error - no valid root filesystem found
>>>> Kernel panic - not syncing: Invalid configuration from end user
>>>> prevents
>>>> continuing
>>>>
>>>> -------------- console log end ------------------------------------
>>>>
>>>> My guess would be the problem is the card being detected as 'ro' (line
>>>> 3), but I do not know why that is (there is no lock switch on mmc
>>>> cards).
>>>>
>>>> The card itself is fine, it's the original card that came with the
>>>> board, the original Angstrom demo boots fine from it, and yocto kernel
>>>> 2.6.37 also used to boot.
>>>>
>>>> Tomas
>>>
>>> Looks related to the comment I wrote here:
>>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1892
>>> I have a slightly different failure with yocto 1.2 beta snapshot (same
>>> kernel) but seems related. Needs more investigation.
>>> Anyone else having problem booting on beagleboard xM? Seems something
>>> wrong happened after 1.1 release...
>>
>> We are working on several bugs on our reference beagleboard. The problem
>> is that my beagleboard died (a horrible painful death) and the other
>> boards
>> that are directly available to are RevC and they are booting. So things
>> are slowed down a bit .. but we are trying to get to the bottom of it,
>> as fast as possible.
> 
> Just FYI, it also doesn't boot on my rev-C3 (not xM), albeit with a
> different
> error pattern.  It hangs at this point:
>   Waiting for root device /dev/mmcblk0p2...
>   mmc0: error -110 whilst initialising SD card
> 
> Looks like you might need the attached patch?

This is a different issue. I get this too with one particular MMC card,
but with 2.6.37 kernel, if I unplug this card and plug it back in the
boot resumes and completes successfully. If I do this with the 3.0.2
kernel, the bug I described with the associated kernel panic then kicks in.

Tomas

> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


