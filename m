Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02214E00828; Tue, 24 Jan 2017 23:05:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7230E0053F
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 23:05:40 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 49D3B68A01C; Wed, 25 Jan 2017 07:05:39 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id F23F968A019;
	Wed, 25 Jan 2017 07:05:38 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 9A52167401D0;
	Wed, 25 Jan 2017 08:05:38 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <cf84e240-78bf-52c7-21d7-20909ce6c472@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <8bf9192b-8a08-7ba2-92bf-2c71e7697845@mlbassoc.com>
Date: Wed, 25 Jan 2017 08:05:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <cf84e240-78bf-52c7-21d7-20909ce6c472@mlbassoc.com>
Subject: Re: Strange bitbake error
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
X-List-Received-Date: Wed, 25 Jan 2017 07:05:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-25 07:50, Gary Thomas wrote:
> For the last couple of days, I've been seeing my bitbake builds
> just shutdown, without actually completing, like this:
>
> Initialising tasks: 100% |###################################################################| Time: 0:00:10
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: Worker process (22132) exited unexpectedly (-9), shutting down...
> ERROR: Worker process (22132) exited unexpectedly (-9), shutting down...
> ERROR: Worker process (22132) exited unexpectedly (-9), shutting down...
> ERROR: Worker process (22132) exited unexpectedly (-9), shutting down...
> WARNING: /local/poky-cutting-edge/bitbake/lib/bb/runqueue.py:1159: ResourceWarning: unclosed file <_io.BufferedWriter
> name=31>
>   self.worker = {}
>
> This happened after completing ~650 out of 5786 tasks.
>
> If I rerun the build it will likely complete without any more errors.
>
> Any clues what might be happening?  Is there any information (logs, etc)
> that might help me understand?
>
> BTW I'm using the latest Poky (62d7d4130202d8ede16abf9e7d779361ca70847e)
> updated just a few hours ago.
>

Sorry for the noise - it looks like my system was out of memory
and the bitbake processes were being killed by the kernel oom :-(

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

