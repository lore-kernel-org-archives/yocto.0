Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0214FE00AD8; Sun, 16 Sep 2018 13:41:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.210.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Sun, 16 Sep 2018 13:41:50 PDT
Received: from mailrelay1-1.pub.mailoutpod1-cph3.one.com
	(mailrelay1-1.pub.mailoutpod1-cph3.one.com [46.30.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7FD4E007B3
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2018 13:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-transfer-encoding:content-type:mime-version:date:message-id:to:
	subject:from:from;
	bh=vIpT89RYnvL1t2ZoPq2/4Af7/aD0KIAactnFJtB6cZw=;
	b=3clJaRUyutJdaOfyfO10jxAjOx5q1K0v43qXh9h4WEY/HOtx26fd+oBJ4Mqz8M+uQ5bthzcHhYwUZ
	jFXz12BxT5/NFAlv7oJV1+PQwaZiC3r1sKDUH83YXpavLjA/Khz//01tKhLPC8O4i/pUbPMUySX//B
	HP/IAIh4fQvDIy4Y=
X-HalOne-Cookie: 7115a1d0635be4816483ce899130740651508f74
X-HalOne-ID: cab3ca61-b9f0-11e8-942c-d0431ea8a283
Received: from [192.168.100.114] (unknown [82.196.108.162])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id cab3ca61-b9f0-11e8-942c-d0431ea8a283;
	Sun, 16 Sep 2018 20:40:48 +0000 (UTC)
From: Peter Bergin <peter@berginkonsult.se>
To: yocto@yoctoproject.org
Message-ID: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
Date: Sun, 16 Sep 2018 22:40:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
Subject: liblzma: memory allocation failed
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
X-List-Received-Date: Sun, 16 Sep 2018 20:41:52 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

during the task do_package_write_rpm I get the error "liblzma: Memory 
allocation failed". It happens during packaging of binary RPM packages. 
The root cause seems to be the host environment that is used in our 
project. We run our builds on a big server with 32 cores and 256GB of 
physical RAM but each user has a limit of virtual memory usage to 32GB 
(ulimit -v). The packaging in rpm-native has been parallelized in the 
commit 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-devtools/rpm?id=84e0bb8d936f1b9094c9d5a92825e9d22e1bc7e3. 
What seems to happen is that rpm-native put up 32 parallel tasks with 
'#pragma omp', each task is using liblzma that also put up 32 tasks for 
the compression work. The memory calculations in liblzma is based on the 
amount of physical RAM but as the user is limited by 'ulimit -v' we get 
into a OOM situation in liblzma.

Here is the code snippet from rpm-native/build/pack.c where it happens:

     #pragma omp parallel
     #pragma omp single
     // re-declaring task variable is necessary, or older gcc versions will produce code that segfaults
     for (struct binaryPackageTaskData *task = tasks; task != NULL; task = task->next) {
         if (task != tasks)
         #pragma omp task
         {
             task->result = packageBinary(spec, task->pkg, cookie, cheating, &(task->filename), buildTime, buildHost);
             rpmlog(RPMLOG_NOTICE, _("Finished binary package job, result %d, filename %s\n"), task->result, task->filename);
         }
     }


Steps to reproduce is to set 'ulimit -v' in your shell to, for example, 
1/8 of the amount of physical RAM and then build for example 
glibc-locale. I have tested this with rocko. If the '#pragma omp' 
statements in code snippet above is removed the problem is solved. But 
that not good as the parallel processing speed up the process.

Is the host environment used here with restricted virtual memory 
supported by Yocto? If it is, someone that have any suggestion for a 
solution on this issue?

Best regards,
/Peter





