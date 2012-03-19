Return-Path: <jfabernathy@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FCABE013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 13:49:40 -0700 (PDT)
Received: by qcsd1 with SMTP id d1so1689022qcs.35
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 13:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TrxTSKzKbMu/RhLJlnGmka5kGC3u22ETSM9OE+eSiiw=;
	b=QmRzZCoJV7TdRJwgsr71+JU82M3XTTG28jFY5wNDIsC0MLRQZOD0Voza8ooy0JIam7
	6C3QWsXPdbCkhXf7gO/wsYyyllMD518bX9FUJGfDGnK0Cg8F9AQTQ9DNVOvmHcStkubh
	KiEOuklDt9S62oAHzEIwJqg8ONbwCG0WC5Phr0eV8RHhErZ4YlGSbeQhTXXKL+tOd94b
	Du1ZnWP7Vnm035+fdXNfPf7QOTDb8iR4IBQgzV23lgq/EV+llldNx6KryZ4ry7jmjdry
	2qc1T+mSAF7dD3x08UMDcEIpUYb1dVfCg6Bxm3SlEO9ITKiqjpOYIfIBJhRxLDCLNVZG
	VSXQ==
Received: by 10.224.214.68 with SMTP id gz4mr16652442qab.68.1332190179220;
	Mon, 19 Mar 2012 13:49:39 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id cw5sm28246965qab.20.2012.03.19.13.49.38
	(version=SSLv3 cipher=OTHER); Mon, 19 Mar 2012 13:49:38 -0700 (PDT)
Message-ID: <4F679BE2.2040802@gmail.com>
Date: Mon, 19 Mar 2012 16:49:38 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F675879.3050304@gmail.com> <4F678139.7020704@mlbassoc.com>
	<4F67822D.6030700@gmail.com> <4F6782E5.6090900@mlbassoc.com>
	<4F67834C.5090802@gmail.com> <4F678544.9010606@mlbassoc.com>
	<4F67882D.6030903@gmail.com> <4F679649.9070105@mlbassoc.com>
In-Reply-To: <4F679649.9070105@mlbassoc.com>
Subject: Re: build error after recent pull
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
X-List-Received-Date: Mon, 19 Mar 2012 20:49:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/19/2012 04:25 PM, Gary Thomas wrote:
> On 2012-03-19 13:25, jfabernathy wrote:
>> On 03/19/2012 03:13 PM, Gary Thomas wrote:
>>> On 2012-03-19 13:04, jfabernathy wrote:
>>>> On 03/19/2012 03:03 PM, Gary Thomas wrote:
>>>>> On 2012-03-19 12:59, jfabernathy wrote:
>>>>>> On 03/19/2012 02:55 PM, Gary Thomas wrote:
>>>>>>> On 2012-03-19 10:02, jfabernathy wrote:
>>>>>>>> Just did a git pull today on poky and meta-intel. I tried to 
>>>>>>>> rebuild meta-sugarbay again and got a build error. Not sure why 
>>>>>>>> yet. Not critical, just a spot check of things.
>>>>>>>> ------------------
>>>>>>>>
>>>>>>>>
>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_configure: Succeeded
>>>>>>>> NOTE: Running task 1723 of 5148 (ID: 1928, 
>>>>>>>> /home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, 
>>>>>>>> do_compile)
>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Started
>>>>>>>> ERROR: Function failed: do_compile (see 
>>>>>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
>>>>>>>> for further information)
>>>>>>>> ERROR: Logfile of failure stored in: 
>>>>>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687
>>>>>>>> Log data follows:
>>>>>>>> | DEBUG: SITE files ['endian-little', 'common-linux', 
>>>>>>>> 'common-glibc', 'bit-64', 'x86_64-linux', 'common']
>>>>>>>> | ERROR: Function failed: do_compile (see 
>>>>>>>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
>>>>>>>> for further information)
>>>>>>>> | NOTE: make -j 8
>>>>>>>> | make[1]: Entering directory 
>>>>>>>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>>>>>>>> | Making sources for autoconf
>>>>>>>> | make[2]: Entering directory 
>>>>>>>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>>>>>>>> | make[2]: *** No rule to make target 
>>>>>>>> `/build/sugarbay-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/include/stddef.h', 
>>>>>>>> needed by
>>>>>>>> `glapi_dispatch.o'. Stop.
>>>>>>>> | make[2]: Leaving directory 
>>>>>>>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>>>>>>>> | make[1]: *** [subdirs] Error 1
>>>>>>>> | make[1]: Leaving directory 
>>>>>>>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>>>>>>>> | make: *** [default] Error 1
>>>>>>>> | ERROR: oe_runmake failed
>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Failed
>>>>>>>> ERROR: Task 1928 
>>>>>>>> (/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, 
>>>>>>>> do_compile) failed with exit code '1'
>>>>>>>
>>>>>>> What's your build host?
>>>>>>>
>>>>>>> Was this build from scratch? There was a discussion of much the
>>>>>>> same error on the meta-ti list last week where the host GCC was
>>>>>>> updated between two subsequent builds that gave this error.
>>>>>>>
>>>>>> Building on latest release Ubuntu 11.10 (Linux ubuntu-x64 
>>>>>> 3.0.0-16-generic #29-Ubuntu SMP)
>>>>>>
>>>>>> gcc is 4.6.1
>>>>>>
>>>>>
>>>>> Was your build from scratch? Do you use [extant] sstate cache?
>>>>>
>>>> I had a preview successful build and just reran that after bitbake 
>>>> -c cleanall core-image-sato
>>>
>>> Do you have rm_work in your local.conf?
>>
>> No to question on rm_work in local.conf
>>>
>>> Try this:
>>> % bitbake -c cleansstate mesa-dri
>>> % bitbake mesa-dri
>>
>> This work without errors. I'm now doing bitbake core-image-sato to 
>> see if it completes.
>>
>>>
>>> BTW, 'bitbake -c cleanall core-image-sato' doesn't really do much - 
>>> images don't have much (any?)
>>> stuff that needs to get cleaned. You can run 'bitbake 
>>> core-image-sato' as many times as you like
>>> and it will completely rebuild the image every time.
>>>
>>>
>> So if I do a git pull and want to retest with new stuff, just bitbake 
>> core-image-sato or should I do something with cleansstate??
>
> If you run just 'bitbake core-image-sato', any packages (recipes)
> which have been changed that are used by the image will be rebuilt.
> You should not have to clean anything for this to work properly.
>

After I fixed mesa-dri and started bitbake core-image-sato, it ran for a 
long time and had a build failure similar to the first one on 
kexec-tools.  I did the bitbake -c cleansstate kexec-tools trick again 
and restarted bitbake core-image-sato.  Not sure why this is, but it 
seems to work.

Jim a



