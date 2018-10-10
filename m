Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3ECA7E00AB3; Wed, 10 Oct 2018 14:31:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8424AE003D9
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2018 14:31:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w9ALVgQW014390
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 10 Oct 2018 14:31:42 -0700 (PDT)
Received: from server.local (147.11.119.206) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 10 Oct 2018 14:31:41 -0700
To: Dimitris Tassopoulos <dimtass@gmail.com>
References: <CACKFPN1c9D=_LUz98vrW+HmGHsqH_2BL-PrchXcv54sgqY5sHQ@mail.gmail.com>
	<CACKFPN2xQWgyzieWEabhZARtYdfXaD3hk78c9rv77-YGZBCsig@mail.gmail.com>
	<cfa153c0-f5b3-439c-b513-05c9fa0f0ef4@windriver.com>
	<CACKFPN1HNacEhpX0ry-3XjqS07xXgu4vrGj3rmH7n56EhbveZg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <3c219e45-b016-cd7a-9fb8-6a3a66dee282@windriver.com>
Date: Wed, 10 Oct 2018 17:31:41 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CACKFPN1HNacEhpX0ry-3XjqS07xXgu4vrGj3rmH7n56EhbveZg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: preempt-rt for 4.14.71 fails to build
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
X-List-Received-Date: Wed, 10 Oct 2018 21:31:44 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Check the list. It never came through. You need to be a subscriber
and would have received a bounce message.

I know that, since I got the bounce as the list admin :D

Bruce

On 2018-10-10 4:03 PM, Dimitris Tassopoulos wrote:
> I've already send this to that list a few days ago, but since I didn't 
> got any reply there I've also asked here in case that someone else 
> shares the same experience.
> 
> Dimitris
> 
> On Wed, 10 Oct 2018, 21:48 Bruce Ashfield, <bruce.ashfield@windriver.com 
> <mailto:bruce.ashfield@windriver.com>> wrote:
> 
>     On 2018-10-10 2:18 PM, Dimitris Tassopoulos wrote:
>      > Hi all!
>      >
>      > I've tried to build the latest preempt-rt kernel from the
>      > `v4.14/standard/preempt-rt/base`
>      > and it fails to build. These are the hashes I've used:
>      >
> 
>     This should go to the linux-yocto list, since that's where
>     people interested in the linux-yocto kernel variants will
>     notice it.
> 
>     In this case, there was a bad merge. If you check the
>     preempt-rt branches of 4.14 there's a fix queued, but I
>     haven't sent SRCREV updates yet.
> 
>     Bruce
> 
>      > ```
>      > LINUX_VERSION = "4.14.71"
>      > SRCREV_machine = "c37a14708f5b618602f84f83f902346e055824c3"
>      > SRCREV_meta = "1fb0b0379fb5883ce5af7485374e3f78ee4272d3"
>      > ```
>      >
>      > And the errors I get are:
>      > ```
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
> 
>      > In function '__rt_mutex_lock':
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:48:
> 
>      > error: passing argument 3 of 'rt_mutex_fastlock' from incompatible
>      > pointer type [-Werror=incompatible-pointer-types]
>      >    rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
>      >                                                  ^~~~~~~~~~~~~~~~~
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
> 
>      > note: expected 'struct ww_acquire_ctx *' but argument is of type
>     'int
>      > (*)(struct rt_mutex *, int,  struct hrtimer_sleeper *, enum
>      > rtmutex_chainwalk,  struct ww_acquire_ctx *)'
>      >   rt_mutex_fastlock(struct rt_mutex *lock, int state,
>      >   ^~~~~~~~~~~~~~~~~
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2044:2:
> 
>      > error: too few arguments to function 'rt_mutex_fastlock'
>      >    rt_mutex_fastlock(lock, TASK_UNINTERRUPTIBLE, rt_mutex_slowlock);
>      >    ^~~~~~~~~~~~~~~~~
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:1935:1:
> 
>      > note: declared here
>      >   rt_mutex_fastlock(struct rt_mutex *lock, int state,
>      >   ^~~~~~~~~~~~~~~~~
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:
> 
>      > In function 'rt_mutex_lock':
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2069:2:
> 
>      > error: too many arguments to function 'rt_mutex_lock_state'
>      >    rt_mutex_lock_state(lock, TASK_UNINTERRUPTIBLE, 0);
>      >    ^~~~~~~~~~~~~~~~~~~
>      >
>     /rnd/yocto/nativeos/build/tmp/work-shared/congatec/kernel-source/kernel/locking/rtmutex.c:2028:20:
> 
>      > note: declared here
>      >   static int __sched rt_mutex_lock_state(struct rt_mutex *lock,
>     int state)
>      > ```
>      >
>      > Is there any change that the latest rt44 patches are nor applied?
>      >
>      > Thanks!
>      > Dimitris
>      >
>      >
> 


