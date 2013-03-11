Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81FE9E0070E
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:45:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2BHjfEV013055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Mar 2013 10:45:41 -0700 (PDT)
Received: from [128.224.22.49] (128.224.22.49) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 11 Mar 2013 10:45:40 -0700
Message-ID: <513E1843.3070604@windriver.com>
Date: Mon, 11 Mar 2013 13:45:39 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: David Mulder <dmulder@lasx.com>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
	<CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F52@EXMBX202A.mmeprod.cbeyond>
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501347F52@EXMBX202A.mmeprod.cbeyond>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Mon, 11 Mar 2013 17:45:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-11 01:38 PM, David Mulder wrote:
>> From: Trevor Woerner [mailto:twoerner@gmail.com]
>> You can call sched_setaffinity() before fork()ing your task, or use
>> taskset on the cmdline.
>
> Will that work on a core that's offline?

Nope. Only with an online core controlled by the Linux scheduler.
If you do end up trying to get AMP working, you need to plumbing
to load the other OS/kernel in a reserved memory location, set the
program counter and start the OS.

But that secondary OS has to know how to behave in a system that
it doesn't control, and you'll need ways to communicate with it
from Linux.

remoteproc/rpmsg can solve some of the issues that I mention, but
it is far from out of the box.

That's why there's more interest in running a single task with
exclusive CPU in userspace. The work and scaffolding required to
get an AMP system up and running is non trivial.

Cheers,

Bruce

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


