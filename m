Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C098E006C6; Fri, 10 Feb 2017 22:14:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF355E0052B
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 22:13:54 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3612168A01C; Sat, 11 Feb 2017 06:13:52 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id CC0CB68A019;
	Sat, 11 Feb 2017 06:13:49 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 7667867401E2;
	Sat, 11 Feb 2017 07:13:49 +0100 (CET)
To: yocto@yoctoproject.org
References: <CAFxSfziYaKn98sUWbUuPbYiXVWXXpqu4vRdbR=BNP8QV2t+yrQ@mail.gmail.com>
	<CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <cf76c5ae-d74b-8edd-65b3-190d2fd1870a@mlbassoc.com>
Date: Sat, 11 Feb 2017 07:13:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srwUOY7VH0S_PfnpbMmr9ONaUrXMHkHcDvUCz+k-0GHyQ@mail.gmail.com>
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
X-List-Received-Date: Sat, 11 Feb 2017 06:14:01 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-11 02:24, Khem Raj wrote:
> On Fri, Feb 10, 2017 at 3:05 PM, Xiaohui Liu <whulxh@gmail.com> wrote:
>> Hi everyone,
>>
>> I tried to disable a setscene task as below:
>>
>> do_populate_lic_setscene () {
>>    exit 1
>> }
>>
>
> you could use something like
>
> deltask  do_populate_lic_setscene
>
>> It works but shows a warning:
>>
>> WARNING: Logfile for failed setscene task is
>> /data/users/xhliu/poky/build-arm/tmp/work/armada39x-poky-linux-gnueabi/linux-terragraph/4.4.8-r0/temp/log.do_populate_lic_setscene.2825388
>> WARNING: Setscene task 1
>> (/data/users/xhliu/poky/meta-terragraph/recipes-kernel/linux/linux-terragraph_4.4.8.bb,
>> do_populate_lic_setscene) failed with exit code '1' - real task will be run
>> instead
>>
>> Any way to disable it without the warning? Thanks in advance.

Why would you want to do this?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

