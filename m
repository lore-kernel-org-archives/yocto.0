Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2FDEE00C97; Thu, 30 Nov 2017 11:40:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85D4E00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 11:40:54 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Nov 2017 11:40:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,343,1508828400"; d="scan'208";a="11584928"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 30 Nov 2017 11:40:52 -0800
To: Rail Shafigulin <rail@esenciatech.com>, yocto@yoctoproject.org
References: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <eed2b610-b2af-7ef1-de4d-c92109f1a144@linux.intel.com>
Date: Thu, 30 Nov 2017 21:41:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
Subject: Re: dev package non-sym link
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
X-List-Received-Date: Thu, 30 Nov 2017 19:40:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/30/2017 08:10 PM, Rail Shafigulin wrote:
> Somewhat new to Yocto. Trying to build a library. It compiled but I'm
> having issues during the package task. The error output is
> 
> ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA
> Issue: -dev package contains non-symlink .so: anokiwavelib-dev path
> '/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/packages-split/anokiwavelib-dev/usr/lib/libAnokiWave.so'
> [dev-elf]
> ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA run
> found fatal errors. Please consider fixing them.
> ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa:
> Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/someuser/projects/petalinux-build-system/petalinux-build-env/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/temp/log.do_package_qa.5765
> ERROR: Task (/home/someuser/projects/petalinux-build-system/sources/core/../meta-customlayer/recipes-anokiwave/lib/anokiwavelib_git.bb:do_package_qa)
> failed with exit code '1'
> 
> 
> I do understand the issue. It doesn't create links for libAnokiWave.so
> and libAnokiWave.so.1. I do see the following in
> /home/someuser/projects/petalinux-build-system/petalinux-build-env/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/package/usr/lib

Check whether the situation is the same in .../image/usr/lib. If so, 
then the upstream is installing .so files incorrectly and you need to 
figure out what it does and how to fix it so that it symlinks .so 
instead of copying or hardlinking it.

Alex

