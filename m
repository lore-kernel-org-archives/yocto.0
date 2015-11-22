Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B413E00ACF; Sun, 22 Nov 2015 14:35:14 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE21E00AB7
	for <yocto@yoctoproject.org>; Sun, 22 Nov 2015 14:35:10 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 22 Nov 2015 14:35:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,334,1444719600"; d="scan'208";a="844885099"
Received: from echoo1-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.170.181])
	by fmsmga001.fm.intel.com with ESMTP; 22 Nov 2015 14:35:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <develone@sbcglobal.net>
Date: Mon, 23 Nov 2015 11:34:57 +1300
Message-ID: <2709775.kpuI3dqQ0L@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.12-101.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1946107905.7106433.1448198721454.JavaMail.yahoo@mail.yahoo.com>
References: <1946107905.7106433.1448198721454.JavaMail.yahoo.ref@mail.yahoo.com>
	<1946107905.7106433.1448198721454.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem using unix source in do_compile
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
X-List-Received-Date: Sun, 22 Nov 2015 22:35:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Edward,

On Sunday 22 November 2015 13:25:21 Edward Vidal wrote:
> Hi all,I am trying to use run the bitbake on  a recipe that in the
> do_compile uses the unix command source.This is the error that I am
> getting. Log data follows:| DEBUG: Executing shell function do_compile
> 
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueab
> | i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492: 112:
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492:
> | source: not found WARNING: exit code 127 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.25492)At
> | github I have the original inc file that is used by the recipe
> | fpga-image-adi.bb
> 87a75850b6f36bf1f09ac0f071587629ba630c1ehttps://github.com/develone/zedboard
> _yocto/commits/master/fpga-image.inc I made some changes which allows me to 
> manually run the Xilinx commands and then re-run the bitbake
> fpga-image-adithe version  e199e9ce0806dc257fcafdda26de29f4cd443e24

If I had to guess I'd say you're on Ubuntu or another system where /bin/sh is 
dash and not bash, is that correct? If so, "source" is a bash-specific command 
- the POSIX standard equivalent is '.' (without quotes), so you'll need to use 
that instead.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

