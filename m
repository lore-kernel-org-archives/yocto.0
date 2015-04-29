Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0342E009AD; Wed, 29 Apr 2015 05:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8BBEE00949
	for <yocto@yoctoproject.org>; Wed, 29 Apr 2015 05:42:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 113EFF811E1; Wed, 29 Apr 2015 06:42:50 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9C2BFF811DE;
	Wed, 29 Apr 2015 06:42:49 -0600 (MDT)
Message-ID: <5540D1DD.9000001@mlbassoc.com>
Date: Wed, 29 Apr 2015 06:43:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
In-Reply-To: <CABNKipL2O7mZgYXSjRPR_Y9wYK4amR_EBVQmkEumXgB30Acvww@mail.gmail.com>
Subject: Re: Yocto linux-kernel
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
X-List-Received-Date: Wed, 29 Apr 2015 12:42:55 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-29 06:38, Parthiban Kandasamy wrote:
> i am using beagleboard-xm like board for my custom use. for my development i am using yocto-dora-1.5 as bsp and kernel-2.6.32(i downgraded).
>           while bitbaking kernel, i got error as follows:
>
> Log data follows:
> | DEBUG: Executing shell function do_kernel_checkout
> | Reinitialized existing Git repository in
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/linux-2.6.32/.git/
> | On branch standard/base
> | nothing to commit, working directory clean
> | ERROR. The branch 'meta' is required and was not
> | found. Ensure that the SRC_URI points to a valid linux-yocto
> | kernel repository
> | WARNING:
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/run.do_kernel_checkout.32588:1
> exit 1 from
> |   exit 1
> | ERROR: Function failed: do_kernel_checkout (log file is located at
> /home/parthiban/UliveSytems/Parthiban/CODE/OpenSource/BSP/beagleboard-dora-10.0.0/BeagleBuild/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto/2.6.32-r0/temp/log.do_kernel_checkout.32588)
>
> due to this error i thought error can be cleared if kernel fetched from yocto git repository, but i cat get from there,  so how do i get kernel-2.6.32 for yocto project.

Why would you want such an old kernel for that board?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

