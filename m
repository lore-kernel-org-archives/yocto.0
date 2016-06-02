Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFC73E00D1B; Thu,  2 Jun 2016 10:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BADD3E00D13
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 10:06:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u52H69Ow009099
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 2 Jun 2016 10:06:09 -0700
Received: from server.local (147.11.116.160) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 2 Jun 2016 10:06:08 -0700
To: =?UTF-8?Q?Eystein_M=c3=a5l=c3=b8y_Stenberg?= <eystein@mender.io>,
	<yocto@yoctoproject.org>
References: <574F9E80.3000107@mender.io>
	<22017b4d-f2cf-e56f-44da-780ce2dc0a41@windriver.com>
	<57505FD8.4070009@mender.io>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <edbbed1a-4e35-ee3b-2514-6e359ed254fb@windriver.com>
Date: Thu, 2 Jun 2016 13:06:07 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <57505FD8.4070009@mender.io>
Subject: Re: poky master issue with kernel and gcc version
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
X-List-Received-Date: Thu, 02 Jun 2016 17:06:15 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-06-02 12:33 PM, Eystein Måløy Stenberg wrote:
> On 01/06/16 19:53, Bruce Ashfield wrote:
>> On 2016-06-01 10:48 PM, Eystein Måløy Stenberg wrote:
>>> Hi,
>>>
>>> I am trying to build a vexpress-qemu machine targe from poky's master
>>> branch, but I get this error compiling the kernel:
>>>
>>> |
>>> /home/yocto/poky/build/tmp/work-shared/vexpress-qemu/kernel-source/include/linux/compiler-gcc.h:121:30:
>>>
>>>
>>> fatal error: linux/compiler-gcc6.h: No such file or directory
>>>
>>> Apparently it is picking gcc 6.1 and kernel 4.1.24, which do not play
>>> well together.
>>>
>>> The best approach is probably to use kernel 4.2 or newer. Is there a bug
>>> filed for this? I would think this is affecting quite a lot of people as
>>> I am not doing any special configuration for my build.
>>
>> We've already fixed all the gcc6.x builds for the supported machines
>> in linux-yocto 4.1/4.4.
>>
>> What kernel tree is that building ? upstream ? linux-yocto ? And if
>> linux-yocto, what branch ?
>
> It is building linux-yocto 4.1. I have attached the compilation log, in
> case that helps.
>
> What I am doing is simply building a vexpress-qemu machine with poky's
> master, so it should be quite straightforward to reproduce.
>
> In particular, I am following our projects guide for creating a Mender
> build at
> https://github.com/mendersoftware/meta-mender/blob/master/README.md, but
> I don't think it reaches the Mender-specific layers.
>
> Thanks for the help and let me know if there's anything else you need.

I'm only validating the oe-core qemu* and yocto reference BSPs. My hands
are full with them at the moment.

So setting up to build with that config isn't something I can do at
the moment.

But I can assure you that qemuarm, and the beaglebone have both been
built and booted with gcc6.x, so the relevant patches are present.

qemuarm login: root
root@qemuarm:~# uname -a
Linux qemuarm 4.1.24-yocto-standard #1 PREEMPT Thu May 26 13:35:31 EDT 
2016 armv5tejl GNU/Linux
root@qemuarm:~# cat /proc/version
Linux version 4.1.24-yocto-standard (bruce@yow-bashfiel-d4) (gcc version 
6.1.1 20160511 (GCC) ) #1 PREEMPT Thu May 26 13:35:31 EDT 2016


Bruce

>
>
>>
>> Bruce
>>
>>>
>>> Thank you.
>>>
>>
>


