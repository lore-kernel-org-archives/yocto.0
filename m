Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27740E00DA7; Wed, 19 Jun 2019 12:54:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC8BE00CD5
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2019 12:54:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5JJsYRB001059
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 19 Jun 2019 12:54:35 -0700 (PDT)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Wed, 19 Jun 2019 12:54:34 -0700
To: <richard.purdie@linuxfoundation.org>, <yocto@yoctoproject.org>,
	<anibal.limon@linaro.org>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
	<72d23534740d950d79479a4d7953ecbfa9213c4c.camel@linuxfoundation.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <4b739f27-c4e1-2b44-8bd8-009458d0ab34@windriver.com>
Date: Wed, 19 Jun 2019 15:54:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <72d23534740d950d79479a4d7953ecbfa9213c4c.camel@linuxfoundation.org>
X-Originating-IP: [172.25.44.4]
Subject: Re: [ptest-runner][PATCH v2 4/4] utils: ensure child can be session leader
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
X-List-Received-Date: Wed, 19 Jun 2019 19:54:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 6/19/19 3:24 PM, richard.purdie@linuxfoundation.org wrote:
> On Wed, 2019-06-19 at 13:49 -0400, Randy MacLeod wrote:
>> On 6/14/19 10:48 AM, Randy MacLeod wrote:
>>> When running the run-execscript bash ptest as a user rather than
>>> root, a warning:
>>>     bash: cannot set terminal process group (16036): Inappropriate
>>> ioctl for device
>>>     bash: no job control in this shell
>>> contaminates the bash log files causing the test to fail. This
>>> happens only
>>> when run under ptest-runner and not when interactively testing!
>>>
>>> The changes made to fix this include:
>>> 1. Get the process group id (pgid) before forking,
>>> 2. Set the pgid in both the parent and child to avoid a race,
>>> 3. Find, open and set permission on the child tty, and
>>> 4. Allow the child to attach to controlling tty.
>>>
>>> Also add '-lutil' to Makefile. This lib is from libc and provides
>>> openpty.
>>
>> Hmmm, I was making the code compile cleanly under clang using
>>     -Weverything
>> when I noticed:
>>
>> 1. the 'make check' tests. They still work fine.
>> 2. The './ptest-runner -d tests/data -t 1' tests
>>      which now generate loads of error like:
>>       ERROR: Unable to detach from controlling tty, Inappropriate
>> ioctl
>> for device
> 
> Aha.
> 
> Does this mean you get to own:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13409
> 
> :)

Yes, that's likely my fault.
I've taken the defect.

../Randy 'belt and suspenders' MacLeod

> 
>>
>> so while this change fixed the bash-ptest, the ptest-runner self-test
>> it did something wrong.... Ah, I'm calling:
>>      ioctl(0, TIOCNOTTY) == -1)
>> repeatedly in the parent so that's what's generating the extra logs.
>> Fixed locally and I'll send a patch but it's not urgent. Phew! :)
>>
>> Anibal,
>>
>> If you could reply to explain your plans for Richard's patches
>> that would help me figure out when to send the clang warning clean-
>> ups commits and what commit to base my work on.
> 
> I think he believed some of them unnecessary, they were a bit belt and
> brances but I'm not sure that is a bad thing.
> 
> Cheers,
> 
> Richard
> 


-- 
# Randy MacLeod
# Wind River Linux

