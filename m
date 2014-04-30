Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44905E0096C; Wed, 30 Apr 2014 08:00:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
X-Greylist: delayed 9099 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Apr 2014 08:00:52 PDT
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC010E003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 08:00:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3UCT848013839
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Apr 2014 05:29:08 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 30 Apr 2014 05:29:08 -0700
Message-ID: <5360EC86.1070308@windriver.com>
Date: Wed, 30 Apr 2014 08:28:54 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>
	<5360CF6B.1020007@gmx.de>
In-Reply-To: <5360CF6B.1020007@gmx.de>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Wed, 30 Apr 2014 15:00:55 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-30 06:24 AM, Neuer User wrote:
> Hi Bruce
>
> Have you got any further?

Your timing is good. I was preeempted by another issue yesterday, but
I have the fsl-imx layers cloned and am about to start a build. I'll
send a follow up when I know more.

Bruce

>
> I currently use a "defconfig" replacement, but honestly, it feels very
> dumb. Fragments seem to be much smarter to combine and test different
> configurations.
>
> Cheers
>
> Michael
>
> Am 28.04.2014 15:37, schrieb Bruce Ashfield:
>> On 14-04-28 09:35 AM, Neuer User wrote:
>>> Am 28.04.2014 15:16, schrieb Bruce Ashfield:
>>>> It all depends on how adventurous you are today :) Using a defconfig
>>>> will work, and you can generate one without much trouble. Using
>>>> fragments will allow you to keep your changes separate from the
>>>> baseline configuration, but you'll need to tweak the recipe .. which
>>>> always carries a risk of some unexpected side effects.
>>>>
>>>> I'm around to help regardless of which way you chose.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>
>>> Well, I looked at the linux-yocto file and tried a couple of
>>> combinations in my bbappend. All of them geenrated lots of different
>>> errors.
>>
>> If you send me pointers to your bblayers and local.conf settings, I'll
>> run a build to see what happens here as well.
>>
>> I'm always interested in tracking these down regardless.
>>
>> Bruce
>>
>>>
>>> e.g. I used:
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>
>>> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
>>>
>>> SRC_URI += "file://videoin.cfg"
>>>
>>> addtask kernel_configme before do_configure after do_patch
>>>
>>> # Pick up shared functions
>>> inherit kernel
>>> inherit kernel-yocto
>>> #require linux-dtb.inc
>>>
>>> # extra tasks
>>> addtask kernel_configcheck after do_configure before do_compile
>>>
>>>
>>> The error messages are too long to include here :-/
>>>
>>> Guess, it is probably best to go the defconfig way.
>>>
>>
>
>


