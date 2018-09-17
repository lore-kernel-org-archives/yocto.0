Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C99E9E00B4C; Sun, 16 Sep 2018 23:08:23 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69825E00AD8
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 23:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	message-id:from:references:to:subject:from;
	bh=SUtLpmvOk3eOeF8v8/623nV7So4XIM5l61P6RNAhVcU=;
	b=pIUcr7eicRvNT0sbBApgwwxPtaENbz+n4hjGPeIjVqt6OqcD8GikCFvlxYaKui+hHHVTe/2ZOI1YA
	0V0oKSbiX05VYVj+TC9t1gJQY43TJCyG1QmtDuvs2WjhtLLYK4So8y4+ixVskZUyAUmug4+qoZ9K3N
	yjuvvQILhwBjEOAM=
X-HalOne-Cookie: 7828576915213badb769718deecaabdb516ce1bc
X-HalOne-ID: 1157988b-ba40-11e8-af47-d0431ea8bb03
Received: from [192.168.0.101] (unknown [90.141.192.114])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 1157988b-ba40-11e8-af47-d0431ea8bb03;
	Mon, 17 Sep 2018 06:08:20 +0000 (UTC)
To: Manjukumar Harthikote Matha <MANJUKUM@xilinx.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<BYAPR02MB458330B7B39EBC615C139D0AB91F0@BYAPR02MB4583.namprd02.prod.outlook.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <382fbd94-7428-06c0-6ff6-2f97b17df4a0@berginkonsult.se>
Date: Mon, 17 Sep 2018 08:08:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <BYAPR02MB458330B7B39EBC615C139D0AB91F0@BYAPR02MB4583.namprd02.prod.outlook.com>
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
X-List-Received-Date: Mon, 17 Sep 2018 06:08:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi Manju,

On 2018-09-17 00:25, Manjukumar Harthikote Matha wrote:
> Hi Peter,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
>> On Behalf Of Peter Bergin
>> Sent: Sunday, September 16, 2018 1:41 PM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] liblzma: memory allocation failed
>>
>> Hi,
>>
>> during the task do_package_write_rpm I get the error "liblzma: Memory
>> allocation failed". It happens during packaging of binary RPM packages.
>> The root cause seems to be the host environment that is used in our
>> project. We run our builds on a big server with 32 cores and 256GB of
>> physical RAM but each user has a limit of virtual memory usage to 32GB
>> (ulimit -v). The packaging in rpm-native has been parallelized in the
>> commit
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-
>> devtools/rpm?id=84e0bb8d936f1b9094c9d5a92825e9d22e1bc7e3.
>> What seems to happen is that rpm-native put up 32 parallel tasks with
>> '#pragma omp', each task is using liblzma that also put up 32 tasks for
>> the compression work. The memory calculations in liblzma is based on the
>> amount of physical RAM but as the user is limited by 'ulimit -v' we get
>> into a OOM situation in liblzma.
>>
>> Here is the code snippet from rpm-native/build/pack.c where it happens:
>>
>>       #pragma omp parallel
>>       #pragma omp single
>>       // re-declaring task variable is necessary, or older gcc versions will produce code
>> that segfaults
>>       for (struct binaryPackageTaskData *task = tasks; task != NULL; task = task->next) {
>>           if (task != tasks)
>>           #pragma omp task
>>           {
>>               task->result = packageBinary(spec, task->pkg, cookie, cheating, &(task-
>>> filename), buildTime, buildHost);
>>               rpmlog(RPMLOG_NOTICE, _("Finished binary package job, result %d, filename
>> %s\n"), task->result, task->filename);
>>           }
>>       }
>>
>>
>> Steps to reproduce is to set 'ulimit -v' in your shell to, for example,
>> 1/8 of the amount of physical RAM and then build for example
>> glibc-locale. I have tested this with rocko. If the '#pragma omp'
>> statements in code snippet above is removed the problem is solved. But
>> that not good as the parallel processing speed up the process.
>>
>> Is the host environment used here with restricted virtual memory
>> supported by Yocto? If it is, someone that have any suggestion for a
>> solution on this issue?
>>
> We had seen this issue as well and concluded that some settings in the server was causing this.
> See http://lists.openembedded.org/pipermail/openembedded-core/2018-January/146705.html

yes , I saw your post also and the cases are related but not exactly the 
same. On our server the  "vm.overcommit_memory = 0". But I think in both 
cases the thing is that liblzma does memory calculations on physical RAM 
but on OS level we fiddle witht he virtual RAM settings. By changing the 
server settings I can avoid this but this is not an easy task as I'm not 
the sysadmin for the host.

Regards,
/Peter
> Thanks,
> Manju


