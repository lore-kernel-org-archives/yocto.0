Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F4FAE0076A; Mon, 23 Nov 2015 11:41:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BB44E00343
	for <yocto@yoctoproject.org>; Mon, 23 Nov 2015 11:41:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 Nov 2015 11:41:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,338,1444719600"; d="scan'208";a="827383535"
Received: from ytham1-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.242])
	by orsmga001.jf.intel.com with ESMTP; 23 Nov 2015 11:41:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <develone@sbcglobal.net>
Date: Tue, 24 Nov 2015 08:41:46 +1300
Message-ID: <7208021.nCsENUAXuj@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <1402232487.1829166.1448305707751.JavaMail.yahoo@mail.yahoo.com>
References: <2709775.kpuI3dqQ0L@peggleto-mobl.ger.corp.intel.com>
	<1402232487.1829166.1448305707751.JavaMail.yahoo@mail.yahoo.com>
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
X-List-Received-Date: Mon, 23 Nov 2015 19:41:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 23 November 2015 19:08:27 Edward Vidal wrote:
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613 wrote:
>     On Sunday, November 22, 2015 3:35 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Sunday 22 November 2015 13:25:21 Edward Vidal wrote:
>> > Hi all,I am trying to use run the bitbake on  a recipe that in the
>> > do_compile uses the unix command source.This is the error that I am
>> > getting. Log data follows:| DEBUG: Executing shell function do_compile
>> > 
>> > | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-
>> > | gnue
>> > | ab/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.25492:
>> > | 112: /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-
>> > | linux-gnueabi/fpga-image-adi/1.AUTOINC-3e6cfd4858-
>> > | r0/temp/run.do_compile.25492:
>> > | source: not found WARNING: exit code 127 from a shell command.
>> > | ERROR: Function failed: do_compile (log file is located at
>> > | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-
>> > | gnueabi/fpga-image-adi/1.AUTOINC-3e6cfd4858-
>> > | r0/temp/log.do_compile.25492)
>> > | At github I have the original inc file that is used by the recipe
>> > | fpga-image-adi.bb
>> > 
>> > 
87a75850b6f36bf1f09ac0f071587629ba630c1ehttps://github.com/develone/zedboa
>> > rd _yocto/commits/master/fpga-image.inc I made some changes which allows
>> > me to manually run the Xilinx commands and then re-run the bitbake
>> > fpga-image-adithe version  e199e9ce0806dc257fcafdda26de29f4cd443e24
>> 
>> If I had to guess I'd say you're on Ubuntu or another system where /bin/sh
>> is dash and not bash, is that correct? If so, "source" is a bash-specific
>> command - the POSIX standard equivalent is '.' (without quotes), so you'll
>> need to use that instead.
>
> Yes, I am running "ubuntu 12.04 x86_64".
> 
> In a shell before  or after  running  ". oe-init-build-env" either of these
> 2 commands below work okay."source /opt/Xilinx/14.6/ISE_DS/settings64.sh"
> or ". /opt/Xilinx/14.6/ISE_DS/settings64.sh"
> 
> I am able to run (Xilinx Platform Studio) "xps"  okay.
> 
> I replaced 4 of source cmds with '.'
> 
> Now I get the following error when I execute "bitbake fpga-image-adi"
>  
> ERROR: Function failed: do_compile (log file is located at
> /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi
> /fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830) ERROR:
> Logfile of failure stored in:
> /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueabi
> /fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnueab
> | i/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 12: [:
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830:
> | unexpected operator 
> | . /opt/Xilinx/14.6/ISE_DS/common/.settings64.sh
> | /opt/Xilinx/14.6/ISE_DS/common .
> | /opt/Xilinx/14.6/ISE_DS/EDK/.settings64.sh /opt/Xilinx/14.6/ISE_DS/EDK .
> | /opt/Xilinx/14.6/ISE_DS/PlanAhead/.settings64.sh
> | /opt/Xilinx/14.6/ISE_DS/PlanAhead .
> | /opt/Xilinx/14.6/ISE_DS/ISE/.settings64.sh /opt/Xilinx/14.6/ISE_DS/ISE
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 113:
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/run.do_compile.12830: 
> | xps: not found 
> | WARNING: exit code 127 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at
> | /home/vidal/POKY/dora_build/poky/build/tmp/work/zedboard-poky-linux-gnuea
> | bi/fpga-image-adi/1.AUTOINC-3e6cfd4858-r0/temp/log.do_compile.12830)
> ERROR: Task 6
> (/home/vidal/POKY/dora_build/poky/meta-topic/recipes-bsp/fpga/fpga-image-ad
> i.bb, do_compile) failed with exit code '1' What is the unexpected
> operator?

No idea I'm afraid. You are putting just one . <scriptfile> on the same line 
right?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

