Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43A6BE0097C; Thu, 30 Mar 2017 05:40:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.97 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [213.174.32.97 listed in dnsbl.sorbs.net]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout02.ims-firmen.de (mailout02.ims-firmen.de
	[213.174.32.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A7FE00953
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:40:11 -0700 (PDT)
Received: from mailin02.ims-firmen.de ([192.168.1.142])
	by mailout02.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1ctZN4-0002WX-l2; Thu, 30 Mar 2017 14:40:10 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin02.ims-firmen.de with esmtpsa
	(TLSv1.2:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1ctZN4-00019t-4P; Thu, 30 Mar 2017 14:40:10 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id DD5F250E719;
	Thu, 30 Mar 2017 14:40:09 +0200 (CEST)
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <21d9c51d-9b7b-9504-32e5-1bbec292a549@iseg-hv.de>
	<1490871292.11772.23.camel@collabora.co.uk>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <4d2de3b6-6427-c5ad-4fe9-165d07cd718e@iseg-hv.de>
Date: Thu, 30 Mar 2017 14:38:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490871292.11772.23.camel@collabora.co.uk>
Subject: Re: arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
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
X-List-Received-Date: Thu, 30 Mar 2017 12:40:14 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks, It worked. But experienced another error.

ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log 
file is located at 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.31394)
ERROR: Logfile of failure stored in: 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.31394
Log data follows:
| DEBUG: Executing shell function do_compile
| 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/helloworld.cpp:1:23: 
fatal error: QTextStream: No such file or directory
| compilation terminated.
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at 
/home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.31394)
ERROR: Task 
(/home/cc/src/oe-core/build/../layers/meta-laye/recipes-hi/helloworld/helloworld_1.0.bb:do_compile) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 591 tasks of which 590 didn't need to be 
rerun and 1 failed.
NOTE: Writing buildhistory

Summary: 1 task failed:
/home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/helloworld_1.0.bb:do_compile
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Am 30.03.2017 um 12:54 schrieb Fabien Lahoudere:
> Try
>
> do_compile() {
>            ${CC} ${S}/helloworld.cpp -o ${S}/helloworld
> }
>
> On Thu, 2017-03-30 at 12:43 +0200, Yuvarajesh Valleru wrote:
>> Here is the tree for my recipe and also attached the error.
>>
>> /home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/
>> ├── files
>> │ ├── helloworld.cpp
>> │ └── helloworld.pro
>> └── helloworld_1.0.bb
>>
>> 1 directory, 3 files
>>
>> ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log
>> file is located at
>> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
>> r0/temp/log.do_compile.23742)
>>
>> ERROR: Logfile of failure stored in: /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-
>> angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742
>> Log data follows:
>>> DEBUG: Executing shell function do_compile
>>> arm-angstrom-linux-gnueabi-gcc: error: helloworld.cpp: No such file or directory
>>> arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
>>> compilation terminated.
>>> WARNING: exit code 1 from a shell command.
>>> ERROR: Function failed: do_compile (log file is located at /home/cc/src/oe-core/build/tmp-
>>> glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742)
>> ERROR: Task (/home/cc/src/oe-core/build/../layers/meta-layer/recipes-
>> hi/helloworld/helloworld_1.0.bb:do_compile) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 591 tasks of which 584 didn't need to be rerun and 1 failed.
>> NOTE: Writing buildhistory
>>
>> Summary: 1 task failed:
>>     /home/cc/src/oe-core/build/../layers/meta-layer/recipes-
>> hi/helloworld/helloworld_1.0.bb:do_compile
>> Summary: There was 1 WARNING message shown.
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>>
>>


