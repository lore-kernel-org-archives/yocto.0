Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2187CE00EBB; Wed, 20 Apr 2016 14:20:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4224EE00DCB
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 14:20:11 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160420212008245_0486;
	Wed, 20 Apr 2016 21:20:08 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [99.240.204.5] (port=43780 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1aszYz-0007LU-8j; Wed, 20 Apr 2016 17:21:33 -0400
Date: Wed, 20 Apr 2016 17:19:56 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1604201706100.22193@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Wed, 20 Apr 2016 21:20:16 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-247315371-1461187200=:22193"

--8323328-247315371-1461187200=:22193
Content-Type: text/plain; charset=KOI8-R
Content-Transfer-Encoding: 8BIT


  ok, i've narrowed this down to a fairly trivial case, so allow me to
describe it. first, in my kernel recipes directory structure, i have
subdirectories:

linux-windriver-3.14/
linux-windriver-4.1/
linux-windriver/

and that last directory contains:

$ tree linux-windriver
linux-windriver
ÜÄÄ mxeiii            (target board in question)
Åöö ÜÄÄ mm.patch
Åöö ÑÄÄ mm.scc
ÜÄÄ ssd_sil.cfg
ÜÄÄ ssd_sil.patch
ÜÄÄ ssd_sil.scc
ÜÄÄ uio.cfg
ÜÄÄ uio.patch
ÑÄÄ uio.scc

  so, that directory contains two SRC_URI items *immediately*
underneath, and one more further under mxeiii/, which is my target
board.

  first experiment:

SRC_URI += " \
        file://new_board.scc \           (adding this has no effect)
        file://uio.scc \
        file://ssd_sil.scc \
"

so (other than new_board.scc), i am processing only .scc files
immediately under linux-windriver/. and that works fine:

  $ make linux-windriver.configure

and i can list
bitbake_build/tmp/work-shared/mxeiii/kernel-source/.kernel-meta/cfg/standard/mxeiii/config.log:

[INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg
[INFO] Sanitizing
.kernel-meta/cfg/scratch/obj/home/rpjday/swe/recipes-kernel/linux/linux-windriver/uio.cfg
[INFO] Sanitizing
.kernel-meta/cfg/scratch/obj/home/rpjday/swe/recipes-kernel/linux/linux-windriver/ssd_sil.cfg
[INFO] Sanitizing .kernel-meta/cfg/kernel-meta/cfg/systemd.cfg

so far, so good.

  now, let's extend SRC_URI to pick up one more item, but this one
from the lower mxeiii/ directory:

SRC_URI += " \
        file://new_board.scc \
        file://uio.scc \
        file://ssd_sil.scc \
        file://mm.scc \              <----- new item
"

after a clean and configure:


ERROR: Function failed: do_kernel_configme (log file is located at
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work/mxeiii-wrs-linux/linux-windriver/4.1-r0/temp/do_kernel_configme/log.do_kernel_configme.11821)
ERROR: Logfile of failure stored in:
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work/mxeiii-wrs-linux/linux-windriver/4.1-r0/temp/do_kernel_configme/log.do_kernel_configme.11821
Log data follows:
| DEBUG: Executing shell function do_kernel_configme
| NOTE: kernel configme
| [INFO] Configuring target/machine combo: "standard/mxeiii"
| ERROR: could not sanitize configuration fragments
|    errors are logged in
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work-shared/mxeiii/kernel-source/.kernel-meta/cfg/standard/mxeiii/config.log
| WARNING:
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work/mxeiii-wrs-linux/linux-windriver/4.1-r0/temp/do_kernel_configme/run.do_kernel_configme.11821:1
exit 1 from
|   configme ${configmeflags} --reconfig --output
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work/mxeiii-wrs-linux/linux-windriver/4.1-r0/linux-mxeiii-standard-build
standard mxeiii
| ERROR: Function failed: do_kernel_configme (log file is located at
/home/rpjday/Builds/swe/8/m/bitbake_build/tmp/work/mxeiii-wrs-linux/linux-windriver/4.1-r0/temp/do_kernel_configme/log.do_kernel_configme.11821)
ERROR: Task 6
(/home/rpjday/Builds/swe/8/m/layers/wr-kernel/recipes-kernel/linux/linux-windriver_4.1.bb,
do_kernel_configme) failed with exit code '1'

and here's the config.log file from that attempt:

[INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg
[INFO] Sanitizing .kernel-meta/cfg/uio.cfg
[ERROR] Kern frag .kernel-meta/cfg/uio.cfg does not exist

Notice how this differs from the first two lines from the successful
configure before:

[INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg
[INFO] Sanitizing
.kernel-meta/cfg/scratch/obj/home/rpjday/swe/recipes-kernel/linux/linux-windriver/uio.cfg

The pattern appears to be that, once the SRC_URI search is forced to
enter that mxeiii/ subdirectory to find something, the search for
previously found SRC_URI items gets totally borked.

I've tried this several times, and the behaviour is consistent.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-247315371-1461187200=:22193--
