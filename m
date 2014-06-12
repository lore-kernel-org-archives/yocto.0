Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F006EE00BE2; Thu, 12 Jun 2014 07:59:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F3CEE00BB3
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 07:59:38 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 81C1627E02B;
	Thu, 12 Jun 2014 14:59:37 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uXpHzuV-Aoj9; Thu, 12 Jun 2014 14:59:36 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6329327E02A;
	Thu, 12 Jun 2014 14:59:36 +0000 (UTC)
Message-ID: <5399C054.3050506@dynamicdevices.co.uk>
Date: Thu, 12 Jun 2014 15:59:32 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	Yocto <yocto@yoctoproject.org>
References: <5399AF51.1030605@dynamicdevices.co.uk>	<5399B0F1.7040508@windriver.com>
	<5399B248.2070002@dynamicdevices.co.uk>
	<5399BEB7.2070001@dynamicdevices.co.uk>
	<5399BF15.60308@windriver.com>
In-Reply-To: <5399BF15.60308@windriver.com>
X-Enigmail-Version: 1.6
Subject: Re: Linux Yocto style kernel errors with no config fragments
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 Jun 2014 14:59:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 12/06/2014 15:54, Bruce Ashfield wrote:
> On 14-06-12 10:52 AM, Alex J Lennon wrote:
>>
>> On 12/06/2014 14:59, Alex J Lennon wrote:
>>> On 12/06/2014 14:53, Bruce Ashfield wrote:
>>>> On 14-06-12 09:46 AM, Alex J Lennon wrote:
>>>>> Hi,
>>>>>
>>>>> I was taking a quick look at converting the meta-raspberrypi kernel
>>>>> recipes to be linux-yocto style, to provide config frag support.
>>>>>
>>>>> I'm working with poky master, referencing linux-yocto-custom.bb in
>>>>> meta-skeleton
>>>>>
>>>>> This seems to be working as far as it goes, but I get an error when
>>>>> there are no configuration fragments supplied on the SRC_URI.
>>>>>
>>>>> | DEBUG: Executing shell function do_kernel_configme
>>>>> | [INFO] doing kernel configme
>>>>> | [INFO] Configuring target/machine combo: "standard/raspberrypi"
>>>>> | [INFO] collecting configs in ./.meta/meta-series
>>>>> | cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such
>>>>> file or
>>>>> directory
>>>>> | cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such
>>>>> file or
>>>>> directory
>>>>> | mv: cannot stat
>>>>> `[.....]/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.12.21+gitcb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe-r0/linux-raspberrypi-standard-build/.tmp.config*':
>>>>>
>>>>>
>>>>> No such file or directory
>>>>> | creation of pre-processed config data failed
>>>>> | config of "standard/raspberrypi" failed
>>>>>
>>>>> When I add an empty file://dummy.cfg file to the SRC_URI then I can
>>>>> build successfully.
>>>>>
>>>>> When I add a dummy option CONFIG_DUMMY=y into that fragment file
>>>>> do_kernel_configcheck correctly flags up that this is an unknown
>>>>> option
>>>>> for the kernel so it seems to be pulled in ok.
>>>>>
>>>>> Can anybody advise?
>>>> I have a fix for a similar issue in a patch queue that I'm going to
>>>> finish work on short (as part of 1.7 development work) .. the error
>>>> message that is generated in that scenario is certainly not much
>>>> help to anyone.
>>>>
>>>> To see if this is the same issue, I'll ask a quick clarification
>>>> question.
>>>>
>>>>  From what you describe .. when you see the message, do you also
>>>> have a defconfig on the SRC_URI ?
>>> Hi Bruce,
>>>
>>> Currently I'm using -
>>>
>>> SRC_URI =
>>> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y
>>> \
>>>             file://sl030raspberrypii2ckernel.patch \
>>>             file://dummy.cfg \
>>>            "
>>>
>>> The original RPi recipe seems to be trying to use KERNEL_DEFCONFIG
>>> to use
>>> an existing config within the tree so I had left that alone thus far,
>>> but I'm not sure it
>>> is being pulled in so am looking at this now too,
>>>
>>> # NOTE: For now we pull in the default config from the RPi kernel
>>> GIT tree.
>>> KERNEL_DEFCONFIG = "bcmrpi_defconfig"
>>>
>>
>> I think I see the problem now. A defconfig must be provided on SRC_URI
>> (or a fragment) or we see the failure.
>>
>> I'll add in a SRC_URI defconfig instead of it reusing the in-tree
>> config.
>
> We crossed in the air. I just sent something similar, and I was going
> to go dig into the details .. but you are already there.
>
> Let me know if you have further issues, and I can also say that the error
> message will be more informative in the future :)

Thanks for the pointer :)


