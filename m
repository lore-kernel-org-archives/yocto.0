Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A250E003DB;
	Sat, 16 Mar 2013 21:04:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2H447rD010226
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 16 Mar 2013 21:04:08 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.98) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Sat, 16 Mar 2013 21:04:08 -0700
Message-ID: <514540B6.2090307@windriver.com>
Date: Sun, 17 Mar 2013 00:04:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
References: <insop.song@gmail.com> <cover.1363428594.git.insop.song@gmail.com>
In-Reply-To: <cover.1363428594.git.insop.song@gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [linux-yocto] [PATCH 0/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Sun, 17 Mar 2013 04:04:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-16 6:16 AM, Insop Song wrote:
> meta-realtime layer for testing sched_deadline and other real-time applications
>
> Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
>

This looks good to me now, I still think we'll have some confusion
between the core "rt" images and core-image-realtime that we are
introducing here.

I may rename it core-image-realtime-extended as part of the merge,
if that's acceptable to you ? I think it will be something that
we'll need to revisit at some point, but that's not a good reason
to hold this back anymore.

I'll merge, do a quick test and push this out on Monday.

Cheers,

Bruce

> *applications tested are shown below:
>
> 1. rt-app
> - "rt-app" is a test application that starts multiple periodic threads
>    in order to simulate a real-time periodic load
>
> - run example
>
>    root@qemux86:~# rt-app -t 100000:35000:d -D 1
>    [rt-app]<notice>  [0] Using SCHED_DEADLINE policy:
>    [rt-app]<notice>  [0] starting thread with period: 100000, exec:
>    35000,deadline: 100000, priority: 10
>    [rt-app]<notice>  [0] Locking pages in memory
>    idx	period	min_et	max_et	rel_st	start		end
>    deadline	dur.	slack	Budget	Used Budget
>    0	100000	35000	35000	64705	305724113	305759126
>    305824105	35013	64979
>    ...
>    0	100000	35000	35000	965099	306624507	306659526
>    306724105	35019	64578
>    [rt-app]<notice>  [0] Exiting.
>
> 2. schedtool
> - scheduler test tool
> - run example
>    root@qemux86:~# schedtool -E -t 10000:100000 -a 0 -e yes>  /dev/null&
>    root@qemux86:~# schedtool -E -t 30000:100000 -a 0 -e yes>  /dev/null&
>    root@qemux86:~# jobs
>    [1]-  Running                 schedtool -E -t 10000:100000 -a 0 -e yes
>    >  /dev/null&
>    [2]+  Running                 schedtool -E -t 30000:100000 -a 0 -e yes
>    >  /dev/null&
>
>    $ top
>    Mem: 33616K used, 84308K free, 0K shrd, 2684K buff, 13904K cached
>    CPU:  37% usr   5% sys   0% nic  56% idle   0% io   0% irq   0% sirq
>    Load average: 911.65 428.84 84.32 35501/62 715
>    PID  PPID USER     STAT   VSZ %VSZ %CPU COMMAND
>    714   688 root     R     2352   2%  28% yes
>    713   688 root     R     2352   2%   9% yes
>    715   688 root     R     2724   2%   4% top
>
> Insop Song (1):
>    Add rt-app, schedtool, define core-image-realtime, and append
>      recipies-kernel
>
>   recipes-extended/images/core-image-realtime.bb     |   12 +++++++++
>   recipes-kernel/linux/linux-yocto_3.8.bbappend      |    9 +++++++
>   ...adline-as-a-default-to-go-around-yocto-bu.patch |   26 ++++++++++++++++++
>   recipes-tools/rt-app/rt-app.bb                     |   28 ++++++++++++++++++++
>   recipes-tools/schedtool-dl/schedtool-dl.bb         |   23 ++++++++++++++++
>   5 files changed, 98 insertions(+)
>   create mode 100644 recipes-extended/images/core-image-realtime.bb
>   create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend
>   create mode 100644 recipes-tools/rt-app/files/0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch
>   create mode 100644 recipes-tools/rt-app/rt-app.bb
>   create mode 100644 recipes-tools/schedtool-dl/schedtool-dl.bb
>


