Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D797FE00DB1; Thu, 31 Oct 2019 10:07:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2AB9E00DA7
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2019 10:07:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9VH7gs3015859
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 31 Oct 2019 10:07:43 -0700
Received: from [147.11.119.104] (147.11.119.104) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 31 Oct 2019 10:07:42 -0700
To: <pwr@iae.nl>, <yocto@yoctoproject.org>
References: <111d936e-8879-6190-9287-32fcc5b192b5@iae.nl>
	<1b104a0b-55e8-4b9e-91bc-cadbefebe442@windriver.com>
	<0f14685e-8b77-8fe2-06a5-ed165a57b88c@iae.nl>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <d315d3e0-add0-423a-915c-d5cc7d627404@windriver.com>
Date: Thu, 31 Oct 2019 10:07:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <0f14685e-8b77-8fe2-06a5-ed165a57b88c@iae.nl>
X-Originating-IP: [147.11.119.104]
Subject: Re: NooB: applying new patches to older files, where do I find the older files?
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
X-List-Received-Date: Thu, 31 Oct 2019 17:07:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 8bit

On 10/31/19 6:36 AM, R wrote:
> On 31-10-2019 01:52, Randy MacLeod wrote:
>> On 10/30/19 8:16 AM, R wrote:
>>> Hello List,
>>>
>>> First I'm working on a unsupported distro (Manjaro) and try to get an 
>>> older version (2.7.1) of poky working. I have ask a question before 
>>> and Ross Burton pointed me in the direction of a patch.
>>> Now I'm trying to apply that patch, however the patch is for a newer 
>>> version of the original files, so I need to make my own patch for the 
>>> older version of these files.
>>> (reason: WARNING: Some of the context lines in patches were ignored. 
>>> This can lead to incorrectly applied patches.)
>>>
>>> The patch says: the file to be patch is e.g. /linux-user/syscall.c
>>> My question is where can I find the original syscall.c before any 
>>> patches are applied to it?
>>
>> Hi Robert,
>>
>> This file and the patch are for the qemu package.
>>
>> You can run:
>> $ bitbake -c patch qemu-native <--- host build
>> or
>> $ bitbake -c patch qemu <--- target build
>> to get all the patches that are listed in the qemu recipe in poky:
>>    meta/recipes-devtools/qemu/qemu_3.1.1.1.bb
>> and
>>    meta/recipes-devtools/qemu/qemu.inc
>> applied to unpacked source.
>>
>> The patched source will be in (this is on master branch):
>>
>> <build_area>/tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0/qemu-4.1.0/linux-user/syscall.c 
>>
>>
>> poky might just be /tmp/ instead of /tmp-glibc/
>>
>> In my case the log of the patching is in:
>> tmp-glibc/work/x86_64-linux/qemu-native/4.1.0-r0/temp/log.do_patch
>>
>>>
>>> Just to be complete: I have tried the latest warrior branch and that 
>>> worked fine. My objective is not just to get it working be also to 
>>> get a grip on how the system works :-)
>>
>> Super.
>>
>> Have you looked at:
>> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
>>
>> and perhaps:
>>
>> https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#finding-the-temporary-source-code 
>>
>>
>> will be useful now.
>>
>> Manipulating patches by hand can be tedious. There's a tool
>> called wiggle:
>>    https://linux.die.net/man/1/wiggle
>> which can help but may be too much for you to deal with initially.
>>
>> Actually, I suggest that you build on a supported distro initially
>> to understand the basic workflow and then decide if you want to figure
>> out how to make Arch/Manjaro work.
>>
>> ../Randy
>>
>>> Thanks,
>>> Robert.
> 
> Thanks Randy,
> Very helpful, especially the trigger to look into the development manual.
> I know starting with a supported distro would be the smarter choice. But 
> then it would just work and I would probably make tiny steps in changes, 
> this way I'm pulled right into the belly of the "beast" and I will learn 
> much faster how it works :-) Disadvantage is that I maybe overwhelmed, 
> so I will ask a question like this one, occasionally.
> Robert

Makes sense I suppose, good luck, questioned welcomed.
There are also people on freenode IRC #oe if you are interested.

A few Yocto devs have used ArchLinux so you're not breaking completely
new ground, FYI.

../Randy
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

