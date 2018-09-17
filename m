Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63DB9E00B43; Mon, 17 Sep 2018 00:12:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.210.184 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com
	(mailrelay3-1.pub.mailoutpod1-cph3.one.com [46.30.210.184])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C9D7E00AD8
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 00:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	message-id:from:references:to:subject:from;
	bh=7FsTek5CyI8HbAZCvoJ+ZFo1mqAgqtffDJ3m9pHpgFU=;
	b=0ZEqoxmmQLIlEZ7cIQ3YlVe38XlgD1RDEhZFS+ynX+FK/KTiKtlULFou38YGBtRujiJfDEw+6cUOy
	kAcH5DOiciT1AqB7l0ncgY5AqYpAGVr650VbDxzLw8tGIWoAaQ50uY92lyTSZLZN5uR9t+edc7I/DK
	XFb0GHSBpUQQiOx0=
X-HalOne-Cookie: 45f328301424f268cd1060cc99350ead64a3f2b4
X-HalOne-ID: 0a74e643-ba49-11e8-af47-d0431ea8bb03
Received: from [192.168.0.101] (unknown [90.141.192.114])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 0a74e643-ba49-11e8-af47-d0431ea8bb03;
	Mon, 17 Sep 2018 07:12:32 +0000 (UTC)
To: Randy MacLeod <randy.macleod@windriver.com>, yocto@yoctoproject.org
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
Date: Mon, 17 Sep 2018 09:12:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
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
X-List-Received-Date: Mon, 17 Sep 2018 07:12:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Randy,

On 2018-09-17 06:25, Randy MacLeod wrote:
> On 09/16/2018 04:40 PM, Peter Bergin wrote:
>> Hi,
>>
>> during the task do_package_write_rpm I get the error "liblzma: Memory 
>> allocation failed". It happens during packaging of binary RPM 
>> packages. The root cause seems to be the host environment that is 
>> used in our project. We run our builds on a big server with 32 cores 
>> and 256GB of physical RAM but each user has a limit of virtual memory 
>> usage to 32GB (ulimit -v). The packaging in rpm-native has been 
>> parallelized in the commit 
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/rpm?id=84e0bb8d936f1b9094c9d5a92825e9d22e1bc7e3. 
>> What seems to happen is that rpm-native put up 32 parallel tasks with 
>> '#pragma omp', each task is using liblzma that also put up 32 tasks for 
>
> #pragma omp
>
> Tha'ts OpenMP, right? I haven't played with that at all but
> it looks like you can limit the number of threads using an
> environment variable:
>    OMP_NUM_THREADS num
> https://www.openmp.org/wp-content/uploads/OpenMP3.0-SummarySpec.pdf
>
> Doing that would be a little ugly but for now at least, there doesn't
> seem to be that many packages using such a pragma.
>
> Does that work for your case?
>
Yes, it's OpenMP. I tried '#pragma omp parallel num_thread(4)' and it 
worked as a workaround. On the failing server the build succeeded. The 
problem is to get this as a generic solution based on the host settings 
because the #pragma is a compiler directive. But for sure we can make a 
bbappend on this to get it working on our host.

>> the compression work. The memory calculations in liblzma is based on 
>> the amount of physical RAM but as the user is limited by 'ulimit -v' 
>> we get into a OOM situation in liblzma.
>>
>> Here is the code snippet from rpm-native/build/pack.c where it happens:
>>
>>      #pragma omp parallel
>>      #pragma omp single
>>      // re-declaring task variable is necessary, or older gcc 
>> versions will produce code that segfaults
>>      for (struct binaryPackageTaskData *task = tasks; task != NULL; 
>> task = task->next) {
>>          if (task != tasks)
>>          #pragma omp task
>>          {
>>              task->result = packageBinary(spec, task->pkg, cookie, 
>> cheating, &(task->filename), buildTime, buildHost);
>>              rpmlog(RPMLOG_NOTICE, _("Finished binary package job, 
>> result %d, filename %s\n"), task->result, task->filename);
>>          }
>>      }
>>
>>
>> Steps to reproduce is to set 'ulimit -v' in your shell to, for 
>> example, 1/8 of the amount of physical RAM and then build for example 
>> glibc-locale. I have tested this with rocko. If the '#pragma omp' 
>> statements in code snippet above is removed the problem is solved. 
>> But that not good as the parallel processing speed up the process.
>>
>> Is the host environment used here with restricted virtual memory 
>> supported by Yocto? If it is, someone that have any suggestion for a 
>> solution on this issue?
>
>
> This is a little tricky.
>
> From bitbake's point of view, it's almost like you are building
> on a 32 core, 32 GB box and runing out of RAM/swap.
> Clearly we would not fix a build that OOMs in that case
> (it does seem odd that 32 GB isn't enough ...)
>
> Are you sure that there isn't something else going on?
> I have a 24 core machine with 64 GB RAM that never comes
> close to such a problem (so I haven't paid attention to RAM usage).
>
I'm pretty sure I have narrowed down the root cause to the restriction 
of virtual memory and that liblzma base its memory calculations on 
physical RAM.

To prove this I added a printout in rpm-native/rpmio/rpmio.c and the 
function lzopen_internal.

         uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&mt_options);
	rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);


The value of memory_usage is the same regardless of which 'ulimit -v' 
value I set. On the host with 256GB of physical RAM and 32GB of virtual 
memory, memory_usage is ~5.1GB. On another host with 16GB of physical 
RAM I get memory_usage of ~660MB.

I guess you have not seen this kind of failure if you not have 
restricted virutal memory on your host. If you want to try to reproduce 
this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake 
glibc-locale -c package_write_rpm -f'.

Best regards,
/Peter

>
> ../Randy
>
>>
>> Best regards,
>> /Peter
>>
>>
>>
>>
>
>


