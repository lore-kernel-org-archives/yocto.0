Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFC9EE013B0
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 05:56:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Jul 2013 05:56:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1036,1363158000"; d="scan'208";a="368015194"
Received: from unknown (HELO helios.localnet) ([10.252.122.25])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jul 2013 05:56:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 10 Jul 2013 13:56:09 +0100
Message-ID: <2373789.m1KKUZrBUI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAAGt+t10y_jTgOue2ZNdVJxwU1zhQDZqHmgVCfXecK-j9YhmLQ@mail.gmail.com>
References: <CAAGt+t10y_jTgOue2ZNdVJxwU1zhQDZqHmgVCfXecK-j9YhmLQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: replace outdated opencv bitbake file
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
X-List-Received-Date: Wed, 10 Jul 2013 12:56:15 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 10 July 2013 13:52:24 Zafrullah Syed wrote:
> How to replace outdated opencv bitbake file?
> 
> When i build image, i get this following error, may be bitbake is unable to
> fetch files. How to update these files?
> 
> WARNING: Failed to fetch URL svn://
> code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 1, output:
> svn: E000002: Unable to connect to a repository at URL '
> http://code.opencv.org/svn/opencv/branches/2.4/opencv'
> svn: E000002: Could not open the requested SVN filesystem
> 
> ERROR: Function failed: Fetcher failure for URL: 'svn://
> code.opencv.org/svn/opencv/branches/2.4;module=opencv;protocol=http'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
> /home/siguser/yocto2013-05-21/build/tmp/work/armv7a-vfp-neon-poky-linux-gnue
> abi/opencv-2.4.2-r1/temp/log.do_fetch.26358 ERROR: Task 565
> (/home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-suppor
> t/opencv/ opencv_2.4.bb, do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2688 tasks of which 2330 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
> 
> Summary: 1 task failed:
> 
> /home/siguser/yocto2013-05-21/poky/meta-openembedded/meta-oe/recipes-support
> /opencv/ opencv_2.4.bb, do_fetch
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

This opencv recipe is from meta-oe, which is not something the Yocto Project
maintains. In any case it looks like you're using an older version of meta-oe
because it has already been updated not to use the svn repository:

http://cgit.openembedded.org/meta-openembedded/log/meta-oe/recipes-support/opencv/opencv_2.4.3.bb

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

