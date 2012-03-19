Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC3BCE013A3
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 14:27:19 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 2CC7FF811F8; Mon, 19 Mar 2012 15:27:19 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E6BA5F811E8;
	Mon, 19 Mar 2012 15:27:17 -0600 (MDT)
Message-ID: <4F67A4B5.2020302@mlbassoc.com>
Date: Mon, 19 Mar 2012 15:27:17 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F675879.3050304@gmail.com> <4F678139.7020704@mlbassoc.com>
	<4F67822D.6030700@gmail.com> <4F6782E5.6090900@mlbassoc.com>
	<4F67834C.5090802@gmail.com> <4F678544.9010606@mlbassoc.com>
	<4F67882D.6030903@gmail.com> <4F679649.9070105@mlbassoc.com>
	<4F679BE2.2040802@gmail.com>
In-Reply-To: <4F679BE2.2040802@gmail.com>
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
X-List-Received-Date: Mon, 19 Mar 2012 21:27:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-19 14:49, jfabernathy wrote:
> On 03/19/2012 04:25 PM, Gary Thomas wrote:
>> On 2012-03-19 13:25, jfabernathy wrote:
>>> On 03/19/2012 03:13 PM, Gary Thomas wrote:
>>>> On 2012-03-19 13:04, jfabernathy wrote:
>>>>> On 03/19/2012 03:03 PM, Gary Thomas wrote:
>>>>>> On 2012-03-19 12:59, jfabernathy wrote:
>>>>>>> On 03/19/2012 02:55 PM, Gary Thomas wrote:
>>>>>>>> On 2012-03-19 10:02, jfabernathy wrote:
>>>>>>>>> Just did a git pull today on poky and meta-intel. I tried to rebuild meta-sugarbay again and got a build error. Not sure why yet. Not critical, just a spot check of things.
>>>>>>>>> ------------------
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_configure: Succeeded
>>>>>>>>> NOTE: Running task 1723 of 5148 (ID: 1928, /home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile)
>>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Started
>>>>>>>>> ERROR: Function failed: do_compile (see /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 for further information)
>>>>>>>>> ERROR: Logfile of failure stored in: /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687
>>>>>>>>> Log data follows:
>>>>>>>>> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 'bit-64', 'x86_64-linux', 'common']
>>>>>>>>> | ERROR: Function failed: do_compile (see /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 for further information)
>>>>>>>>> | NOTE: make -j 8
>>>>>>>>> | make[1]: Entering directory `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>>>>>>>>> | Making sources for autoconf
>>>>>>>>> | make[2]: Entering directory `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>>>>>>>>> | make[2]: *** No rule to make target `/build/sugarbay-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/include/stddef.h', needed by
>>>>>>>>> `glapi_dispatch.o'. Stop.
>>>>>>>>> | make[2]: Leaving directory `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>>>>>>>>> | make[1]: *** [subdirs] Error 1
>>>>>>>>> | make[1]: Leaving directory `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>>>>>>>>> | make: *** [default] Error 1
>>>>>>>>> | ERROR: oe_runmake failed
>>>>>>>>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Failed
>>>>>>>>> ERROR: Task 1928 (/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile) failed with exit code '1'
>>>>>>>>
>>>>>>>> What's your build host?
>>>>>>>>
>>>>>>>> Was this build from scratch? There was a discussion of much the
>>>>>>>> same error on the meta-ti list last week where the host GCC was
>>>>>>>> updated between two subsequent builds that gave this error.
>>>>>>>>
>>>>>>> Building on latest release Ubuntu 11.10 (Linux ubuntu-x64 3.0.0-16-generic #29-Ubuntu SMP)
>>>>>>>
>>>>>>> gcc is 4.6.1
>>>>>>>
>>>>>>
>>>>>> Was your build from scratch? Do you use [extant] sstate cache?
>>>>>>
>>>>> I had a preview successful build and just reran that after bitbake -c cleanall core-image-sato
>>>>
>>>> Do you have rm_work in your local.conf?
>>>
>>> No to question on rm_work in local.conf
>>>>
>>>> Try this:
>>>> % bitbake -c cleansstate mesa-dri
>>>> % bitbake mesa-dri
>>>
>>> This work without errors. I'm now doing bitbake core-image-sato to see if it completes.
>>>
>>>>
>>>> BTW, 'bitbake -c cleanall core-image-sato' doesn't really do much - images don't have much (any?)
>>>> stuff that needs to get cleaned. You can run 'bitbake core-image-sato' as many times as you like
>>>> and it will completely rebuild the image every time.
>>>>
>>>>
>>> So if I do a git pull and want to retest with new stuff, just bitbake core-image-sato or should I do something with cleansstate??
>>
>> If you run just 'bitbake core-image-sato', any packages (recipes)
>> which have been changed that are used by the image will be rebuilt.
>> You should not have to clean anything for this to work properly.
>>
>
> After I fixed mesa-dri and started bitbake core-image-sato, it ran for a long time and had a build failure similar to the first one on kexec-tools. I did the bitbake -c cleansstate
> kexec-tools trick again and restarted bitbake core-image-sato. Not sure why this is, but it seems to work.

These errors should not happen - you should be able to update the
yocto meta-data and rebuild an image any time and not suffer such
problems.

Did you change anything else, especially with your host tools,
between the time your previous build completed and you did this
pull and rebuild?  For example, running the Ubuntu package updater?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

