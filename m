Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03AA2E00BB3; Thu, 12 Jun 2014 07:54:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF37CE00BB3
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 07:53:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5CErW1a006188
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jun 2014 07:53:32 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 12 Jun 2014 07:53:32 -0700
Message-ID: <5399BED8.7090004@windriver.com>
Date: Thu, 12 Jun 2014 10:53:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>, Yocto
	<yocto@yoctoproject.org>
References: <5399AF51.1030605@dynamicdevices.co.uk>
	<5399B0F1.7040508@windriver.com>
	<5399B248.2070002@dynamicdevices.co.uk>
In-Reply-To: <5399B248.2070002@dynamicdevices.co.uk>
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
X-List-Received-Date: Thu, 12 Jun 2014 14:54:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-06-12 09:59 AM, Alex J Lennon wrote:
>
> On 12/06/2014 14:53, Bruce Ashfield wrote:
>> On 14-06-12 09:46 AM, Alex J Lennon wrote:
>>> Hi,
>>>
>>> I was taking a quick look at converting the meta-raspberrypi kernel
>>> recipes to be linux-yocto style, to provide config frag support.
>>>
>>> I'm working with poky master, referencing linux-yocto-custom.bb in
>>> meta-skeleton
>>>
>>> This seems to be working as far as it goes, but I get an error when
>>> there are no configuration fragments supplied on the SRC_URI.
>>>
>>> | DEBUG: Executing shell function do_kernel_configme
>>> | [INFO] doing kernel configme
>>> | [INFO] Configuring target/machine combo: "standard/raspberrypi"
>>> | [INFO] collecting configs in ./.meta/meta-series
>>> | cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such file or
>>> directory
>>> | cat: .meta/cfg/standard/raspberrypi/config_frag.txt: No such file or
>>> directory
>>> | mv: cannot stat
>>> `[.....]/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.12.21+gitcb53ea88f75180cc1ba74f7f197c8e3fd4f47cfe-r0/linux-raspberrypi-standard-build/.tmp.config*':
>>>
>>> No such file or directory
>>> | creation of pre-processed config data failed
>>> | config of "standard/raspberrypi" failed
>>>
>>> When I add an empty file://dummy.cfg file to the SRC_URI then I can
>>> build successfully.
>>>
>>> When I add a dummy option CONFIG_DUMMY=y into that fragment file
>>> do_kernel_configcheck correctly flags up that this is an unknown option
>>> for the kernel so it seems to be pulled in ok.
>>>
>>> Can anybody advise?
>>
>> I have a fix for a similar issue in a patch queue that I'm going to
>> finish work on short (as part of 1.7 development work) .. the error
>> message that is generated in that scenario is certainly not much
>> help to anyone.
>>
>> To see if this is the same issue, I'll ask a quick clarification
>> question.
>>
>>  From what you describe .. when you see the message, do you also
>> have a defconfig on the SRC_URI ?
>
> Hi Bruce,
>
> Currently I'm using -
>
> SRC_URI =
> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.12.y \
>             file://sl030raspberrypii2ckernel.patch \
>             file://dummy.cfg \
>            "
>
> The original RPi recipe seems to be trying to use KERNEL_DEFCONFIG to use
> an existing config within the tree so I had left that alone thus far,
> but I'm not sure it
> is being pulled in so am looking at this now too,

Aha, so yes, that is likely the same thing that I was seeing before. If
you have no configuration at all, the tools don't have anything to seed
into the config_frag.txt file (and in earlier versions they didn't
touch the file to ensure it is present, or use the missing file as a
trigger for a more useful message).

Bruce

>
> # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
> KERNEL_DEFCONFIG = "bcmrpi_defconfig"
>
> Thanks,
>
> Alex
>


