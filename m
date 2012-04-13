Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B439E00747
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 03:09:44 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E842BF8127C; Fri, 13 Apr 2012 04:09:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	PLING_QUERY autolearn=no version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3E8C7F81277;
	Fri, 13 Apr 2012 04:09:43 -0600 (MDT)
Message-ID: <4F87FB67.8030007@mlbassoc.com>
Date: Fri, 13 Apr 2012 04:09:43 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <3d8f8726.e570.136ab20dc74.Coremail.2totoo@163.com>
In-Reply-To: <3d8f8726.e570.136ab20dc74.Coremail.2totoo@163.com>
Subject: Re: When building an image using yocto, I was puzzled by such errors, who can help me? thx!
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Apr 2012 10:09:44 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-04-13 03:55, 云鹤 wrote:
> When building an image using yocto, I was puzzled by such errors, who can help me? thx!
>
> I am new to yocto and I followed "Yocto Project Quick Start" document to start building an image. After typing "$ bitbake -k core-image-sato" ,error :
> jackie@jackie-Lenovo:~/yocto/edison-6.0.1-build$ bitbake -k core-image-minimal
> Loading cache: 100% |###########################################| ETA: 00:00:00
> Loaded 1041 entries from dependency cache.
>
> OE Build Configuration:
> BB_VERSION = "1.13.3"
> TARGET_ARCH = "i586"
> TARGET_OS = "linux"
> MACHINE = "qemux86"
> DISTRO = "poky"
> DISTRO_VERSION = "1.1.1"
> TUNE_FEATURES = "m32 i586"
> TARGET_FPU = ""
> meta
> meta-yocto = "<unknown>:<unknown>"
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 327 of 1827 (ID: 1009, /home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb, do_fetch)
> NOTE: Running task 637 of 1827 (ID: 584, /home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetch)
> NOTE: package linux-libc-headers-2.6.37.2-r2: task do_fetch: Started
> NOTE: package linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+d7e81e7f975c57c581ce13446adf023f95d9fd9f-r3: task do_fetch: Started
> ERROR: Function 'File: '/home/jackie/yocto/edison-6.0.1-build/downloads/linux-2.6.37.2.tar.bz2' has md5 checksum cdc3c12d007a0ff597a34b062907e8f7 when
> 89f681bc7c917a84aa7470da6eed5101 was expected (from URL: 'http://kernel.org/pub/linux/kernel/v2.6/linux-2.6.37.2.tar.bz2')' failed
> ERROR: Logfile of failure stored in: /home/jackie/yocto/edison-6.0.1-build/tmp/work/i586-poky-linux/linux-libc-headers-2.6.37.2-r2/temp/log.do_fetch.3886
> Log data follows:
> | ERROR: Function 'File: '/home/jackie/yocto/edison-6.0.1-build/downloads/linux-2.6.37.2.tar.bz2' has md5 checksum cdc3c12d007a0ff597a34b062907e8f7 when
> 89f681bc7c917a84aa7470da6eed5101 was expected (from URL: 'http://kernel.org/pub/linux/kernel/v2.6/linux-2.6.37.2.tar.bz2')' failed
> NOTE: package linux-libc-headers-2.6.37.2-r2: task do_fetch: Failed
> ERROR: Task 1009 (/home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb, do_fetch) failed with exit code '1'
> ………………
> | ERROR: Function 'Fetcher failure for URL:
> 'git://git.yoctoproject.org/linux-yocto-3.0-1.1.x.git;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta'. Unable to fetch URL
> git://git.yoctoproject.org/linux-yocto-3.0-1.1.x.git;protocol=git;nocheckout=1;branch=yocto/standard/common-pc/base,meta;name=machine,meta from any source.' failed
> |
> NOTE: package linux-yocto-3.0.18+git1+d386e09f316e03061c088d2b13a48605c20fb3a6_1+d7e81e7f975c57c581ce13446adf023f95d9fd9f-r3: task do_fetch: Failed
> ERROR: Task 584 (/home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_fetch) failed with exit code '1'
> ERROR: '/home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux-libc-headers/linux-libc-headers_2.6.37.2.bb' failed
> ERROR: '/home/jackie/yocto/poky-edison-6.0.1/meta/recipes-kernel/linux/linux-yocto_3.0.bb' failed
>
> who can help me? thanks all!

The file downloaded as /home/jackie/yocto/edison-6.0.1-build/downloads/linux-2.6.37.2.tar.bz2 is corrupt.
Try deleting it (and /home/jackie/yocto/edison-6.0.1-build/downloads/linux-2.6.37.2.tar.bz2.done as well)
and start again.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

