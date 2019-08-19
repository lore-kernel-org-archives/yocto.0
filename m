Return-Path: <jaymin.dabhi@vivaldi.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE6F0E00C7D; Sun, 18 Aug 2019 21:33:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [82.221.130.149 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtp.vivaldi.net (smtp.vivaldi.net [82.221.130.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE3E0E00A49
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2019 21:33:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 878B13FAD2;
	Mon, 19 Aug 2019 04:33:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 878B13FAD2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1566189204; bh=8P43ThbEH+10NyO+K6DeDiompfrk+6e+sAvvXnKnfEo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=NIbjdfNd+dGlvZ1c87tpkwe5/c/abYeOr+3URsVD8kkDEB8ol6C7XpcUcJUNO6/V7
	S33et1N+7DkIMVG0ngxQ7rIgt/T00xuFHyAY4P+hFvtIDozeRHnAiqGG7IyMgx76JF
	xiA49Vb7dCFoIE5CUHTwIw1u9TXEgvb6qFDa+7YIZ+NlhhQ1s5L726YOD32D/ixeOf
	8QRgiiks5iu2J6TnIjAj1dbyXlLQQzEUquJM/2Co5y84UDyKWAjluIU6+nDEp0H9/w
	6A/+ZhgC8Wn8r98onJNkXhozGRZNYZqqoUSjGI0KoLYY1z3WhhSUD26/8PbXr2w7nP
	CW6QVqDUxZR9A==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo-new.viv.ext [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p4zIcmtxQJOj; Mon, 19 Aug 2019 04:33:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net AEA653FAC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1566189202; bh=8P43ThbEH+10NyO+K6DeDiompfrk+6e+sAvvXnKnfEo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=GF4trEyp3OptFsE/ehSSBxIfqbuhQ8JvVC90mNaxjRePaNyeJPW7YygaZOsyo5JgP
	s6tShC/4Gv3RN9oHSmsycD/QrRZNR07QFh5j8+4J2ZMQjJzkg+SdCL8+wQbxJs1TZI
	wQ0A8XKp+K3yj3y6mnF5cH13mWtkXe3gqskaDAnW3wGyM/08nVB08njM3w45s/xCXY
	GTnsb6msu5Tgj/PgE8NcEHM9YbpK6eM93G3aQ9Y7bfBMWUPBewpm8RocDqWIhu6TFK
	y+1mVYa3TGb/VxqG22lKSMwY1T2B6EjFmGn3GuN/RYvky7fyeyvZZ0X4AudSvEX8wG
	/+1MgF+6SRKgQ==
Date: Mon, 19 Aug 2019 10:03:20 +0530
From: jaymin.dabhi@vivaldi.net
To: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <581b32aa-8d6e-d6f6-71fe-a71f55354b33@windriver.com>
References: <279ea8172bf6d37d284e8d5cb4efb077@vivaldi.net>
	<1997fc5b-2e25-c56a-c423-dd2c62404971@windriver.com>
	<be9ad8cf60e0401975f8b35bd22944de@vivaldi.net>
	<581b32aa-8d6e-d6f6-71fe-a71f55354b33@windriver.com>
Message-ID: <b59c4408e9bcc0d3d0f9ece1aeda6cd5@vivaldi.net>
X-Sender: jaymin.dabhi@vivaldi.net
User-Agent: Roundcube Webmail/1.3.9
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
X-List-Received-Date: Mon, 19 Aug 2019 04:33:27 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Randy,

Thanks for info.
But, as you can see from previous logs, I was getting core dumped issue 
at the time of bitbake (while building the image).
How can I find the cause of this type of core dumped?


On 16-08-2019 07:11 PM, Randy MacLeod wrote:
> On 8/16/19 12:40 AM, jaymin.dabhi@vivaldi.net wrote:
>> Hi Randy,
>> 
>> Thanks for your information regarding Yocto Jethro branch.
>> 
>> Yes, this core dumped issue is reproducible.
>> When I add python3-pip package in local.conf file and build complete 
>> image, this core dumped is happening.
>> 
>> Randy, it would be much helpful if you explain me how to adjust core 
>> file limits using ulimit, and how get the backtrace?
> 
> Via google:
> https://jvns.ca/blog/2018/04/28/debugging-a-segfault-on-linux/
> 
> ../Randy
> 
>> 
>> I have added python3-pip package in local.conf file, this is the one 
>> change only I did in local.conf.
>> Yes, I am able to generate the image successfully after reverting this 
>> one change.
>> 
>> Please let me know if more information require.
>> 
>> On 15-08-2019 07:30 AM, Randy MacLeod wrote:
>>> On 8/12/19 10:42 AM, jaymin.dabhi@vivaldi.net wrote:
>>>> Hello All,
>>>> 
>>>> Facing segmentation fault (core dumped) while doing bitbake.
>>>> I am using Yocto Jethro branch.
>>> 
>>> Jethro isn't officially supported by the Yocto Project.
>>> The support cycle is ~ 1 year.
>>> 
>>> https://wiki.yoctoproject.org/wiki/Releases
>>> 
>>> Can you reproduce the issue on master or a newer supported branch?
>>> If so you could file a bug in:
>>>    https://wiki.yoctoproject.org/wiki/Releases
>>> 
>>> Also, see below for some tips.
>>> 
>>>> 
>>>> When I added python3-pip recipe (in local.conf) and started building 
>>>> image, segmentation fault occurred.
>>>> Although, I am able to bitbake python3-pip individually (i.e. 
>>>> bitbake python3-pip).
>>>> As per log my assumption is, core dumped is occurring at make_ext4fs 
>>>> execution.
>>>> 
>>>> Following are the error logs:
>>>> 
>>>> ERROR: Function failed: do_makesystem (log file is located at 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>>> ERROR: Logfile of failure stored in: 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059 
>>>> Log data follows:
>>>> | DEBUG: Executing shell function do_makesystem
>>>> | 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059: 
>>>> line 105: 15073 Segmentation fault      (core dumped) make_ext4fs -J 
>>>> -b 1024 -s -a / -S
>>> 
>>> Odd, I've never see that happen before.
>>> Is it reproducible?
>>> 
>>> Can you adjust the core file limits using 'ulimit',
>>> generate a core file and get a backtrace?
>>> 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>>> -l 768000000 
>>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>>> | WARNING: 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059:1 
>>>> exit 139 from
>>>> |   make_ext4fs -J -b 1024 -s -a / -S 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>>> -l 768000000 
>>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>>> | ERROR: Function failed: do_makesystem (log file is located at 
>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>>> ERROR: Task 11 ( 
>>>> poky/meta-qti-bsp/recipes-products/images/machine-image.bb, 
>>>> do_makesystem) failed with exit code '1'
>>>> 
>>>> 
>>>> Whether python3-pip recipe is creating an issue or something else? 
>>>> (attached the python3-pip recipe file)
>>> 
>>> What did you change in your conf/local.conf file?
>>> If you revert that change, then you are able to generate the image
>>> again?
>>> 
>>> ../Randy
>>> 
>>>> Please let me know.
>>>> Any suggestions are welcome.
>>>> 
>>>> Regards,
>>>> Jaymin
>>>> 
>>> 
>>> 
>>> -- # Randy MacLeod
>>> # Wind River Linux
> 
> 
> --
> # Randy MacLeod
> # Wind River Linux

