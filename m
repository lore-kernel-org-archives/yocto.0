Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D565AE00A73; Sun, 16 Sep 2018 21:25:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30480E00A73
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 21:25:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w8H4PBek028065
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 16 Sep 2018 21:25:11 -0700 (PDT)
Received: from [172.25.44.4] (172.25.44.4) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Sun, 16 Sep 2018 21:25:10 -0700
To: Peter Bergin <peter@berginkonsult.se>, <yocto@yoctoproject.org>
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
Date: Mon, 17 Sep 2018 00:25:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
X-Originating-IP: [172.25.44.4]
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Mon, 17 Sep 2018 04:25:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 09/16/2018 04:40 PM, Peter Bergin wrote:
> Hi,
> 
> during the task do_package_write_rpm I get the error "liblzma: Memory 
> allocation failed". It happens during packaging of binary RPM packages. 
> The root cause seems to be the host environment that is used in our 
> project. We run our builds on a big server with 32 cores and 256GB of 
> physical RAM but each user has a limit of virtual memory usage to 32GB 
> (ulimit -v). The packaging in rpm-native has been parallelized in the 
> commit 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/rpm?id=84e0bb8d936f1b9094c9d5a92825e9d22e1bc7e3. 
> What seems to happen is that rpm-native put up 32 parallel tasks with 
> '#pragma omp', each task is using liblzma that also put up 32 tasks for 

#pragma omp

Tha'ts OpenMP, right? I haven't played with that at all but
it looks like you can limit the number of threads using an
environment variable:
    OMP_NUM_THREADS num
https://www.openmp.org/wp-content/uploads/OpenMP3.0-SummarySpec.pdf

Doing that would be a little ugly but for now at least, there doesn't
seem to be that many packages using such a pragma.

Does that work for your case?

> the compression work. The memory calculations in liblzma is based on the 
> amount of physical RAM but as the user is limited by 'ulimit -v' we get 
> into a OOM situation in liblzma.
> 
> Here is the code snippet from rpm-native/build/pack.c where it happens:
> 
>      #pragma omp parallel
>      #pragma omp single
>      // re-declaring task variable is necessary, or older gcc versions 
> will produce code that segfaults
>      for (struct binaryPackageTaskData *task = tasks; task != NULL; task 
> = task->next) {
>          if (task != tasks)
>          #pragma omp task
>          {
>              task->result = packageBinary(spec, task->pkg, cookie, 
> cheating, &(task->filename), buildTime, buildHost);
>              rpmlog(RPMLOG_NOTICE, _("Finished binary package job, 
> result %d, filename %s\n"), task->result, task->filename);
>          }
>      }
> 
> 
> Steps to reproduce is to set 'ulimit -v' in your shell to, for example, 
> 1/8 of the amount of physical RAM and then build for example 
> glibc-locale. I have tested this with rocko. If the '#pragma omp' 
> statements in code snippet above is removed the problem is solved. But 
> that not good as the parallel processing speed up the process.
> 
> Is the host environment used here with restricted virtual memory 
> supported by Yocto? If it is, someone that have any suggestion for a 
> solution on this issue?


This is a little tricky.

 From bitbake's point of view, it's almost like you are building
on a 32 core, 32 GB box and runing out of RAM/swap.
Clearly we would not fix a build that OOMs in that case
(it does seem odd that 32 GB isn't enough ...)

Are you sure that there isn't something else going on?
I have a 24 core machine with 64 GB RAM that never comes
close to such a problem (so I haven't paid attention to RAM usage).


../Randy

> 
> Best regards,
> /Peter
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

