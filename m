Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CFE2E00A0C; Sun, 12 Feb 2017 22:06:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF631E0082E
	for <yocto@yoctoproject.org>; Sun, 12 Feb 2017 22:06:13 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id AAD5568A01A; Mon, 13 Feb 2017 06:06:12 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2C8FF68A019;
	Mon, 13 Feb 2017 06:06:10 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id E38B96740322;
	Mon, 13 Feb 2017 07:06:09 +0100 (CET)
To: Xiaohui Liu <whulxh@gmail.com>
References: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
	<CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
	<cf76c5ae-d74b-8edd-65b3-190d2fd1870a@mlbassoc.com>
	<CAFxSfziow5fS_zFMQ2n4fBus4+RMBQbbP21t1DYj_RC6hHu1+A@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <0eae669f-e20b-7abe-09e7-6f4be136bb92@mlbassoc.com>
Date: Mon, 13 Feb 2017 07:06:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAFxSfziow5fS_zFMQ2n4fBus4+RMBQbbP21t1DYj_RC6hHu1+A@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to gracefully disable a setscene task?
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
X-List-Received-Date: Mon, 13 Feb 2017 06:06:21 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-13 07:02, Xiaohui Liu wrote:
> Hi Gary,
>
> Some tasks depend on do_populate_lic, which requires kernel source. But when do_populate_lic_setscene is called instead
> of do_populate_lic, it does not populate kernel source and leads to those tasks complain missing kernel source. That's
> why I want to disable do_populate_lic_setscene. Thanks.

That sounds like some other dependency is broken and disabling this task
is just side-stepping around that issue.

>
> On Fri, Feb 10, 2017 at 10:13 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     On 2017-02-11 02:24, Khem Raj wrote:
>
>         On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu <whulxh@gmail.com <mailto:whulxh@gmail.com>> wrote:
>
>             Hi everyone,
>
>             I tried to disable a setscene task as below:
>
>             do_populate_lic_setscene () {
>                exit 1
>             }
>
>
>         you could use something like
>
>         deltask  do_populate_lic_setscene
>
>             It works but shows a warning:
>
>             WARNING: Logfile for failed setscene task is
>             /data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic_setscene.2825388
>             WARNING: Setscene task 1
>             (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/linux-terragraph_4.4.8.bb
>             <http://linux-terragraph_4.4.8.bb>,
>             do_populate_lic_setscene) failed with exit code '1' - real task will be run
>             instead
>
>             Any way to disable it without the warning? Thanks in advance.
>
>
>     Why would you want to do this?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

