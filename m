Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7433EE013A5
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 12:00:00 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so7240998yhf.35
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 11:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=V0BcS+TLrF1IvJva5ht0V63PTq5uaQ9j6O+Rvk+Y/3U=;
	b=srUBg0jOKhaNXCSYU7H2fETeqLyVAfcCysnQcoF1k2NXwydm71OS6lGnI/bO9B5vcN
	0/4SZdeWBYRjLViOBC/Gi7EyaT4CpQ6jxLlCsRTU4Ff5xPZkMXyF9G5ARWmgDiHdf6Nk
	oiWZ0IgrcwhU5CcddWG9svhtKr8Zdi56glM1/wb8hzidBnkENlXNLyzwptyu1+CdcY9G
	Va8unm96x6QBFDD3O39P1SzV3tQSnF3f8hUQeSFbbZOrTwqWb3OTCUPkmc21mrQPzjHC
	rc87ClUSuveN4GZ/ZuUh+FNWTzpX81w9BN/YSwjN/QsYpdz6jQjIZgPLC2tq13ajsPID
	gp3w==
Received: by 10.236.187.5 with SMTP id x5mr13492544yhm.35.1332183598654;
	Mon, 19 Mar 2012 11:59:58 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id v27sm40049453yhi.22.2012.03.19.11.59.57
	(version=SSLv3 cipher=OTHER); Mon, 19 Mar 2012 11:59:58 -0700 (PDT)
Message-ID: <4F67822D.6030700@gmail.com>
Date: Mon, 19 Mar 2012 14:59:57 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F675879.3050304@gmail.com> <4F678139.7020704@mlbassoc.com>
In-Reply-To: <4F678139.7020704@mlbassoc.com>
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
X-List-Received-Date: Mon, 19 Mar 2012 19:00:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/19/2012 02:55 PM, Gary Thomas wrote:
> On 2012-03-19 10:02, jfabernathy wrote:
>> Just did a git pull today on poky and meta-intel. I tried to rebuild 
>> meta-sugarbay again and got a build error. Not sure why yet. Not 
>> critical, just a spot check of things.
>> ------------------
>>
>>
>> NOTE: package mesa-dri-2_7.11-r13.1: task do_configure: Succeeded
>> NOTE: Running task 1723 of 5148 (ID: 1928, 
>> /home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, do_compile)
>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Started
>> ERROR: Function failed: do_compile (see 
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
>> for further information)
>> ERROR: Logfile of failure stored in: 
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'common-linux', 'common-glibc', 
>> 'bit-64', 'x86_64-linux', 'common']
>> | ERROR: Function failed: do_compile (see 
>> /build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/temp/log.do_compile.25687 
>> for further information)
>> | NOTE: make -j 8
>> | make[1]: Entering directory 
>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>> | Making sources for autoconf
>> | make[2]: Entering directory 
>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>> | make[2]: *** No rule to make target 
>> `/build/sugarbay-master/tmp/sysroots/x86_64-linux/usr/lib/x86_64-poky-linux/gcc/x86_64-poky-linux/4.6.3/include/stddef.h', 
>> needed by
>> `glapi_dispatch.o'. Stop.
>> | make[2]: Leaving directory 
>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src/mapi/glapi'
>> | make[1]: *** [subdirs] Error 1
>> | make[1]: Leaving directory 
>> `/build/sugarbay-master/tmp/work/x86_64-poky-linux/mesa-dri-2_7.11-r13.1/Mesa-7.11/src'
>> | make: *** [default] Error 1
>> | ERROR: oe_runmake failed
>> NOTE: package mesa-dri-2_7.11-r13.1: task do_compile: Failed
>> ERROR: Task 1928 
>> (/home/jim/poky/meta/recipes-graphics/mesa/mesa-dri_7.11.bb, 
>> do_compile) failed with exit code '1'
>
> What's your build host?
>
> Was this build from scratch?  There was a discussion of much the
> same error on the meta-ti list last week where the host GCC was
> updated between two subsequent builds that gave this error.
>
Building on latest release Ubuntu 11.10 (Linux ubuntu-x64 
3.0.0-16-generic #29-Ubuntu SMP)

gcc is  4.6.1

Jim A




