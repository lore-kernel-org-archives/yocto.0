Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 06F2E4C800AD
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2011 14:46:27 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5KJkQH3009720
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 20 Jun 2011 12:46:26 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 20 Jun 2011 12:46:25 -0700
Message-ID: <4DFFA390.1020600@windriver.com>
Date: Mon, 20 Jun 2011 15:46:24 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110516 Thunderbird/3.1.10 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1308351938.git.dvhart@linux.intel.com>
	<E7D9CEE2-98E3-42F4-B2C2-CF1B72049AB8@dominion.thruhere.net>
	<4DFCBF67.4000808@linux.intel.com>
	<430B8D35-8952-4193-9C39-445651FD25A7@dominion.thruhere.net>
	<855B477A-4466-49C8-9886-36E2FC6AC9C8@dominion.thruhere.net>
	<4DFCCDD5.2040005@windriver.com>
	<6E8B5151-B486-4769-ACCD-DF97C0F77954@dominion.thruhere.net>
In-Reply-To: <6E8B5151-B486-4769-ACCD-DF97C0F77954@dominion.thruhere.net>
Cc: yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PULL][linux-yocto] beagleboard: sync with meta-ti linux-omap_2.6.37
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
X-List-Received-Date: Mon, 20 Jun 2011 19:46:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/18/11 12:32, Koen Kooi wrote:
>
> Op 18 jun 2011, om 18:09 heeft Bruce Ashfield het volgende geschreven:
>
>> On 11-06-18 11:13 AM, Koen Kooi wrote:
>>>
>>> Op 18 jun 2011, om 17:10 heeft Koen Kooi het volgende geschreven:
>>>
>>>>
>>>> Op 18 jun 2011, om 17:08 heeft Darren Hart het volgende geschreven:
>>>>
>>>>>
>>>>>
>>>>> On 06/18/2011 01:11 AM, Koen Kooi wrote:
>>>>>>
>>>>>> Op 18 jun 2011, om 01:18 heeft Darren Hart het volgende geschreven:
>>>>>>
>>>>>>> From: Darren Hart<dvhart@linux.intel.com>
>>>>>>>
>>>>>>> The following commits have been pulled in from the meta-ti
>>>>>>> linux-omap_2.6.37 recipe, with the exception of: USB: ehci: remove
>>>>>>> structure packing from ehci_def which hails from mainline and
>>>>>>> should be applied to yocto/base, while the rest should be applied
>>>>>>> to yocto/standard/beagleboard.
>>>>>>>
>>>>>>> Fixes [YOCTO #764] Fixes [YOCTO #765] Fixes [YOCTO #767]
>>>>>>>
>>>>>>> This brings linux-yocto in sync with the meta-ti linux-omap_2.6.37
>>>>>>> recipe and significantly improves Beagleboard support in
>>>>>>> linux-yocto. As there are 115 patches in total, and none of them
>>>>>>> are new, I have omitted them from the email.
>>>>>>
>>>>>>
>>>>>> You seem to be including the patches that patch the  kernel from
>>>>>> 37rc7 (or rc8, I forget) to .37 final, which shouldn't apply. So
>>>>>> basically leave out the patches in the 'linus' directory.
>>>>>
>>>>> There were about 200 patches in total, I've removed all those that
>>>>> reverse applied and failed do to a conflict that was obviously a merge
>>>>> of a very similar patch. That accounted for most of the 37-rc[78] to 37
>>>>> patches from the linus directory.
>>>>>
>>>>>> The camera
>>>>>> interface also doesn't work, so the 'media' directory can be left out
>>>>>> as well.
>>>>>
>>>>> The goal was to stay as close to the meta-ti/linux-omap_2.6.37 recipe as
>>>>> possible with the linux-yocto kernel repository. Will you be removing
>>>>> all of the media directory from there as well? I don't want to remove
>>>>> them from here if you'll be *adding* to them there. However, if you'll
>>>>> be sure to just be replacing them there, then I can drop them here.
>>>>
>>>> The .37 isn't used, developed or supported for beagleboard anymore, .39 is all the rage now :)
>>>
>>> Speaking of .39, is there a 'linux-yocto' type of tree for .39 mainline with a skeleton for machine support? If there is, I'd like to fork it to see if it can improve my current workflow which consist of self written scripts that emulate guilt.
>>
>> I've got the linux-yocto-dev recipe in poky-extras, meta-kernel-dev
>> layer. That recipe tracked 2.6.39, and has now jumped to 3.0 (with
>> a minor cheat as I work through the 3.0 naming issues). The kernel
>> repo is hosted on git.yoctoproject.org as the linux-yocto-dev repo.
>>
>> The repo is fast forward for a given version, and then is re-generated
>> when I jump it from version to version. I carry forward all the existing
>> patches and keep the qemu machines working. Although at the moment,
>> qemuppc is losing interrupts and can't get past init :)
>>
>> That's also the repo where I'm testing out some changes to kern-tools
>> (but they are stable), which will show up shortly.
>
> Thanks, I'll have a look at that. Is there already some doc out on how to create such a structure from scratch?

At the moment, they are carried forward from kernel version
to kernel version and then interpreted by the tools. But I
do have some notes and other information that describe how to
take upstream tree <foo>, feed it a kernel-cache (what you see
in the meta branch) and create a new kernel tree ready to
build.

I've got to get a bit of 3.0-rcX behind me, but I'm writing this
up and will contribute it, if that's what you are thinking
of here.

Cheers,

Bruce



