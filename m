Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DA3CE00992; Thu, 30 Mar 2017 08:56:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 268FBE00826
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 08:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490889397; x=1522425397;
	h=message-id:subject:from:to:cc:date:in-reply-to:
	references:mime-version:content-transfer-encoding;
	bh=ras5Shm8z5WnR13HhHZ/CsPYnsJwx4dvXAblbSar3t8=;
	b=xYLYozprc2wpnvcyYEofOU+/n/ChAAoNH/lX47KUjH+O3PsvX/5++Jhd
	zDyuL+cfFemDe97vUNuV3+vAQF53KA==;
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 08:56:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,247,1486454400"; d="scan'208";a="1113694018"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga001.jf.intel.com with ESMTP; 30 Mar 2017 08:56:35 -0700
Message-ID: <1490889884.17259.54.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>
Date: Thu, 30 Mar 2017 10:04:44 -0600
In-Reply-To: <3e681f5f-430b-5490-148f-d11d303f0a8b@iseg-hv.de>
References: <21d9c51d-9b7b-9504-32e5-1bbec292a549@iseg-hv.de>
	<1490871292.11772.23.camel@collabora.co.uk>
	<4d2de3b6-6427-c5ad-4fe9-165d07cd718e@iseg-hv.de>
	<1490877979.11772.26.camel@collabora.co.uk>
	<3e681f5f-430b-5490-148f-d11d303f0a8b@iseg-hv.de>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 30 Mar 2017 15:56:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-03-30 at 17:25 +0200, Yuvarajesh Valleru wrote:
> Thank you for great help and suggestions. I will go through other 
> recipes and try it again.
> 

Also, you can try the script 'yocto-layer' ('create' subcommand) to
create a layer with a single recipe (the hello world one)

Leo


> Thanks again.
> 
> 
> Am 30.03.2017 um 14:46 schrieb Fabien Lahoudere:
> > Seems to be related to missing CFLAGS to compile.
> > IMO you should look at how other recipe build qt4 apps.
> >
> > On Thu, 2017-03-30 at 14:38 +0200, Yuvarajesh Valleru wrote:
> >> Thanks, It worked. But experienced another error.
> >>
> >> ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log
> >> file is located at
> >> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> >> r0/temp/log.do_compile.31394)
> >> ERROR: Logfile of failure stored in:
> >> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> >> r0/temp/log.do_compile.31394
> >> Log data follows:
> >>> DEBUG: Executing shell function do_compile
> >>>
> >> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> >> r0/helloworld.cpp:1:23:
> >> fatal error: QTextStream: No such file or directory
> >>> compilation terminated.
> >>> WARNING: exit code 1 from a shell command.
> >>> ERROR: Function failed: do_compile (log file is located at
> >> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> >> r0/temp/log.do_compile.31394)
> >> ERROR: Task
> >> (/home/cc/src/oe-core/build/../layers/meta-laye/recipes-
> >> hi/helloworld/helloworld_1.0.bb:do_compile)
> >> failed with exit code '1'
> >> NOTE: Tasks Summary: Attempted 591 tasks of which 590 didn't need to be
> >> rerun and 1 failed.
> >> NOTE: Writing buildhistory
> >>
> >> Summary: 1 task failed:
> >> /home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/helloworld_1.0.bb:do_compile
> >> Summary: There was 1 WARNING message shown.
> >> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >>
> >>
> >> Am 30.03.2017 um 12:54 schrieb Fabien Lahoudere:
> >>> Try
> >>>
> >>> do_compile() {
> >>>             ${CC} ${S}/helloworld.cpp -o ${S}/helloworld
> >>> }
> >>>
> >>> On Thu, 2017-03-30 at 12:43 +0200, Yuvarajesh Valleru wrote:
> >>>> Here is the tree for my recipe and also attached the error.
> >>>>
> >>>> /home/cc/src/oe-core/build/../layers/meta-layer/recipes-hi/helloworld/
> >>>> ├── files
> >>>> │ ├── helloworld.cpp
> >>>> │ └── helloworld.pro
> >>>> └── helloworld_1.0.bb
> >>>>
> >>>> 1 directory, 3 files
> >>>>
> >>>> ERROR: helloworld-1.0-r0 do_compile: Function failed: do_compile (log
> >>>> file is located at
> >>>> /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-
> >>>> gnueabi/helloworld/1.0-
> >>>> r0/temp/log.do_compile.23742)
> >>>>
> >>>> ERROR: Logfile of failure stored in: /home/cc/src/oe-core/build/tmp-glibc/work/armv7at2hf-
> >>>> neon-
> >>>> angstrom-linux-gnueabi/helloworld/1.0-r0/temp/log.do_compile.23742
> >>>> Log data follows:
> >>>>> DEBUG: Executing shell function do_compile
> >>>>> arm-angstrom-linux-gnueabi-gcc: error: helloworld.cpp: No such file or directory
> >>>>> arm-angstrom-linux-gnueabi-gcc: fatal error: no input files
> >>>>> compilation terminated.
> >>>>> WARNING: exit code 1 from a shell command.
> >>>>> ERROR: Function failed: do_compile (log file is located at /home/cc/src/oe-core/build/tmp-
> >>>>> glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/helloworld/1.0-
> >>>>> r0/temp/log.do_compile.23742)
> >>>> ERROR: Task (/home/cc/src/oe-core/build/../layers/meta-layer/recipes-
> >>>> hi/helloworld/helloworld_1.0.bb:do_compile) failed with exit code '1'
> >>>> NOTE: Tasks Summary: Attempted 591 tasks of which 584 didn't need to be rerun and 1 failed.
> >>>> NOTE: Writing buildhistory
> >>>>
> >>>> Summary: 1 task failed:
> >>>>      /home/cc/src/oe-core/build/../layers/meta-layer/recipes-
> >>>> hi/helloworld/helloworld_1.0.bb:do_compile
> >>>> Summary: There was 1 WARNING message shown.
> >>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >>>>
> >>>>
> >>>>
> >>
> 



