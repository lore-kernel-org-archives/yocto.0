Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E95BE008EC; Thu, 27 Nov 2014 08:43:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA189E008CC
	for <yocto@yoctoproject.org>; Thu, 27 Nov 2014 08:43:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 27 Nov 2014 08:40:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,470,1413270000"; d="scan'208";a="644629951"
Received: from tkkaskin-mobl3.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.21.106])
	by orsmga002.jf.intel.com with ESMTP; 27 Nov 2014 08:43:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: bart.thoelen@telenet.be
Date: Thu, 27 Nov 2014 16:43:17 +0000
Message-ID: <3519242.bp6EKar7DE@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <64061056.59535533.1417105449594.JavaMail.root@telenet.be>
References: <64061056.59535533.1417105449594.JavaMail.root@telenet.be>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: RPATH invalid
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
X-List-Received-Date: Thu, 27 Nov 2014 16:43:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi there,

On Thursday 27 November 2014 17:24:09 bart.thoelen@telenet.be wrote:
> I now the following issue pops up here and there, but I cannot find a proper
> answer on what is wrong.
> 
> I'm trying to build a custom created auto-tools package in yocto (daisy
> release). I get this QA check error:
> 
> 
> 
> ERROR: QA Issue: package logctrl contains bad RPATH
> /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/sysroots/zynq-lc80dx-appl/u
> sr/lib in file
> /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/work/armv7a-vfp-neon-poky-l
> inux-gnueabi/logctrl/1.0.0-r0/packages-split/logctrl/usr/bin/logctrl ERROR:
> QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /mnt/data/sources/dx2/yocto/dx2/yocto/build/tmp/work/armv7a-vfp-neon-poky-l
> inux-gnueabi/logctrl/1.0.0-r0/temp/log.do_package.20691 ERROR: Task 10
> (/mnt/data/sources/dx2/yocto/dx2/yocto/meta-nikon/recipes-core/logctrl/logc
> trl_1.0.0.bb, do_package) failed with exit code '1'
> 
> I guess this must be passed via the configure - see configure log (ignore
> --without-rpath):

It depends entirely on whether the configure script provides an option for
this, it looks like this one either does not, or if it does it isn't called
--without-rpath.

There are some hints here about how to solve this kind of problem in the
general case:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-issue-rpaths

Ultimately you'll need to dig into how this particular software's own
build system is set up with regard to enabling RPATHs when compiling
- usually it's a matter of stopping the appropriate arguments from being
passed to the compiler/linker.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

