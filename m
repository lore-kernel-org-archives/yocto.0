Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E77BE00E14; Fri, 16 Aug 2019 06:41:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D0F5E00D38
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2019 06:41:53 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x7GDfDao012939
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 16 Aug 2019 06:41:24 -0700
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Fri, 16 Aug 2019 06:41:03 -0700
To: <jaymin.dabhi@vivaldi.net>
References: <279ea8172bf6d37d284e8d5cb4efb077@vivaldi.net>
	<1997fc5b-2e25-c56a-c423-dd2c62404971@windriver.com>
	<be9ad8cf60e0401975f8b35bd22944de@vivaldi.net>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <581b32aa-8d6e-d6f6-71fe-a71f55354b33@windriver.com>
Date: Fri, 16 Aug 2019 09:41:01 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <be9ad8cf60e0401975f8b35bd22944de@vivaldi.net>
X-Originating-IP: [172.25.44.5]
Cc: yocto@yoctoproject.org
Subject: Re: Segmentation fault | bitbake machine-image.bb | core dumped
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
X-List-Received-Date: Fri, 16 Aug 2019 13:41:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 8/16/19 12:40 AM, jaymin.dabhi@vivaldi.net wrote:
> Hi Randy,
> 
> Thanks for your information regarding Yocto Jethro branch.
> 
> Yes, this core dumped issue is reproducible.
> When I add python3-pip package in local.conf file and build complete 
> image, this core dumped is happening.
> 
> Randy, it would be much helpful if you explain me how to adjust core 
> file limits using ulimit, and how get the backtrace?

Via google:
https://jvns.ca/blog/2018/04/28/debugging-a-segfault-on-linux/

../Randy

> 
> I have added python3-pip package in local.conf file, this is the one 
> change only I did in local.conf.
> Yes, I am able to generate the image successfully after reverting this 
> one change.
> 
> Please let me know if more information require.
> 
> On 15-08-2019 07:30 AM, Randy MacLeod wrote:
>> On 8/12/19 10:42 AM, jaymin.dabhi@vivaldi.net wrote:
>>> Hello All,
>>>
>>> Facing segmentation fault (core dumped) while doing bitbake.
>>> I am using Yocto Jethro branch.
>>
>> Jethro isn't officially supported by the Yocto Project.
>> The support cycle is ~ 1 year.
>>
>> https://wiki.yoctoproject.org/wiki/Releases
>>
>> Can you reproduce the issue on master or a newer supported branch?
>> If so you could file a bug in:
>>    https://wiki.yoctoproject.org/wiki/Releases
>>
>> Also, see below for some tips.
>>
>>>
>>> When I added python3-pip recipe (in local.conf) and started building 
>>> image, segmentation fault occurred.
>>> Although, I am able to bitbake python3-pip individually (i.e. bitbake 
>>> python3-pip).
>>> As per log my assumption is, core dumped is occurring at make_ext4fs 
>>> execution.
>>>
>>> Following are the error logs:
>>>
>>> ERROR: Function failed: do_makesystem (log file is located at 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>> ERROR: Logfile of failure stored in: 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059 
>>> Log data follows:
>>> | DEBUG: Executing shell function do_makesystem
>>> | 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059: 
>>> line 105: 15073 Segmentation fault      (core dumped) make_ext4fs -J 
>>> -b 1024 -s -a / -S
>>
>> Odd, I've never see that happen before.
>> Is it reproducible?
>>
>> Can you adjust the core file limits using 'ulimit',
>> generate a core file and get a backtrace?
>>
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>> -l 768000000 
>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>> | WARNING: 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059:1 
>>> exit 139 from
>>> |   make_ext4fs -J -b 1024 -s -a / -S 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>> -l 768000000 
>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>> | ERROR: Function failed: do_makesystem (log file is located at 
>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>> ERROR: Task 11 ( 
>>> poky/meta-qti-bsp/recipes-products/images/machine-image.bb, 
>>> do_makesystem) failed with exit code '1'
>>>
>>>
>>> Whether python3-pip recipe is creating an issue or something else? 
>>> (attached the python3-pip recipe file)
>>
>> What did you change in your conf/local.conf file?
>> If you revert that change, then you are able to generate the image
>> again?
>>
>> ../Randy
>>
>>> Please let me know.
>>> Any suggestions are welcome.
>>>
>>> Regards,
>>> Jaymin
>>>
>>
>>
>> -- 
>> # Randy MacLeod
>> # Wind River Linux


-- 
# Randy MacLeod
# Wind River Linux

