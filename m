Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 188C9E00EE7; Fri, 20 May 2016 11:26:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E122E00D02
	for <yocto@yoctoproject.org>; Fri, 20 May 2016 11:26:09 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 May 2016 11:26:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,340,1459839600"; d="scan'208";a="959049177"
Received: from swold-mobl2.jf.intel.com ([10.252.196.127])
	by orsmga001.jf.intel.com with ESMTP; 20 May 2016 11:26:10 -0700
Message-ID: <1463768765.5221.36.camel@intel.com>
From: Saul Wold <saul.wold@intel.com>
To: "Perez Carranza, Jose" <jose.perez.carranza@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 20 May 2016 11:26:05 -0700
In-Reply-To: <0A5D9A624DF90343892F8F3FE7DE525A01F64AC3@fmsmsx101.amr.corp.intel.com>
References: <0A5D9A624DF90343892F8F3FE7DE525A01F64AC3@fmsmsx101.amr.corp.intel.com>
X-Mailer: Evolution 3.18.5.2 (3.18.5.2-1.fc23) 
Mime-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Lock,
	Joshua G" <joshua.g.lock@intel.com>, "Cobbley,
	David A" <david.a.cobbley@intel.com>
Subject: Re: QA Test Report for YP - 1.8.2.rc3 build
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
X-List-Received-Date: Fri, 20 May 2016 18:26:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-05-20 at 11:05 -0700, Perez Carranza, Jose wrote:
> Hello,
>  
> Here is the QA test report for "Yocto Project - 1.8.2.rc3 build"
>  
>  
> Issues Summary:
>  
> -        Install on USB or SD card failed giving “"(sdc): Volume was
> not properly unmounted” :  Bug 9652 [1]
This may be rootwait related, but have not been able to test it yet.

> -        Black screen is displayed when trying to Boot or Install on
> NUC:  Bug 9653 [2]
> -        Media files are not being reproduced on NUC and MMax : Bug
> 9654 [3]

The BSP team has been looking into the 3 above issues as they are
related to the NUC and MMax.  One concern is which hardware is being
used to test, we think in the case of 5653, that using the latest Gen6
NUC with Skylake is just not supported in the 3.19 kernel (which is
what Fido uses).

The media bug seems to be an issue in older versions also, so not a true regression, not to say it should not be looked into, but if it was broken in 1.8.1 and 1.8 not sure it should be a blocker in this case.

> -        Kernel panic is generated trying to do a NFS boot on qemu :
> Bug 9656 [4]
> -        “Eject icon” is displayed as “file icon” on SATO image when
> plug the USB; Bug 9650 [5]
> -        Parse logs bug found on 2.1 was also reproduced on this
> 1.8.2 bug when running test image : Bug 9250 [6]
>  
Is this the correct bug number?  9250 is a closed bug.
>  
> [1] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9652
> [2] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9653
> [3] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9654
> [4] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9656
> [5] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9650
> [6] - https://bugzilla.yoctoproject.org/show_bug.cgi?id=9250
>  
> The full report is available here for review:  https://wiki.yoctoproj
> ect.org/wiki/WW21_-_2016-05-13_-_Full_Pass_1.8.2
>  
>  
> Testing data
>  Test type:  Full Pass Release Test
>  Branch: fido
>  Build name: 1.8.2
>  poky commit: c9f0a99050ec0050f0dbcd55d0cd2ab18848113f 
>  Autobuilder images repository: http://autobuilder.yoctoproject.org/p
> ub/releases/yocto-1.8.2.rc3
>  Distributions tested: CentOS 7 x86 64 bits, Fedora 23 x86 64 bits,
> OpenSuse 13.2 x86 64 bits, Ubuntu 15.04 x86 64 bits  
>  
> Test Run Summary Report
>    Testing Summary Report	   Test Run 	 Test Plan	
>  Environment	 Passed 	 Other issues 	 Failed 	
>  Failing bugs 	 Blocked 	 Blocking bugs 	 Comple
> te 	 5862 5863 	 ADT: fido branch	 Fedora 23
> i686	 100.0% 	 none	 0.0% 	 none	 
> 0.0%	 none	 100.0%	 5859 5860 	 ADT: fido
> branch	 Ubuntu 14.04 x86_64 	 100.0% 	 none	
>  0.0% 	 none	 0.0%	 none	 100.0%	 
> 5864 5865 	 BSP/QEMU: fido branch 	 Beaglebone Black	
>  100.0% 	 none	 0.0% 	 none	 0.0%	
>  none	 100.0%	 5902 5903 	 BSP/QEMU: fido
> branch 	 EdgeRouter	 100.0% 	 none	 0.0% 
> 	 none	 0.0%	 none	 100.0%	 5831 5
> 832 	 BSP/QEMU: fido branch 	 genericx86 - on
> MMAX32bit 	 95.5% 	 none	 4.5% 	 9652 965
> 3 9654 9520 	 0.0%	 none	 100.0%	 5829	
>  BSP/QEMU: fido branch 	 genericx86-64 on MMAX64 	 98.1
> % 	 none	 1.9% 	 9520	 0.0%	 none	
>  100.0%	 5828 5895 	 BSP/QEMU: fido branch 	 gen
> ericx86-64 on NUC 	 96.6% 	 none	 3.4% 	 
> 9520 9650 9654 	 0.0%	 none	 100.0%	 5909
> 	 BSP/QEMU: fido branch 	 genericx86-64-lsb on NUC 	
>  96.2% 	 none	 3.8% 	 9520	 0.0%	 
> none	 100.0%	 5910	 BSP/QEMU: fido branch 	
>  genericx86-lsb on MMAX32bit 	 96.2% 	 none	 3.8
> % 	 9520	 0.0%	 none	 100.0%	 5904
>  5905 	 BSP/QEMU: fido branch 	 MPC8315e-rdb	 10
> 0.0% 	 none	 0.0% 	 none	 0.0%	 no
> ne	 100.0%	 5866 5867 	 BSP/QEMU: fido branch 	
>  P1022ds	 100.0% 	 none	 0.0% 	 none	
>  0.0%	 none	 100.0%	 5834 5897 	 BSP/QEMU
> : fido branch 	 qemu-x86	 98.5% 	 none	 1
> .5% 	 9656	 0.0%	 none	 100.0%	 58
> 37 5838 	 BSP/QEMU: fido branch 	 qemuarm	 100.0
> % 	 none	 0.0% 	 none	 0.0%	 none	
>  100.0%	 5900 5901 	 BSP/QEMU: fido branch 	 qem
> uarm64	 100.0% 	 none	 0.0% 	 none	
>  0.0%	 none	 100.0%	 5839 5840 	 BSP/QEMU
> : fido branch 	 qemumips	 100.0% 	 none	 
> 0.0% 	 none	 0.0%	 none	 100.0%	 5
> 898 5899 	 BSP/QEMU: fido branch 	 qemumips64	 1
> 00.0% 	 none	 0.0% 	 none	 0.0%	 n
> one	 100.0%	 5841 5842 	 BSP/QEMU: fido branch 	
>  qemuppc	 100.0% 	 none	 0.0% 	 none	
>  0.0%	 none	 100.0%	 5836 5896 	 BSP/QEMU
> : fido branch 	 qemux86-64	 98.5% 	 none	
>  1.5% 	 9656	 0.0%	 none	 100.0%	 
> 5856	 Eclipse Plugin: fido branch 	 Kepler - Fedora 22
> x86_64 	 96.4% 	 none	 3.6% 	 7054	
>  0.0%	 none	 100.0%	 5857	 Eclipse
> Plugin: fido branch 	 Luna on Fedora 22 X86_64 	 96.4% 
> 	 none	 3.6% 	 7054	 0.0%	 none	
>  100.0%	 5906 5907 	 Meta-yocto: fido branch 	 U
> buntu 14.04 x86_64 	 100.0% 	 6156	 0.0% 	
>  none	 0.0%	 none	 100.0%	 5874	 O
> E-Core: fido branch	 CentOS 7.1 x86_64 	 100.0% 	
>  none	 0.0% 	 none	 0.0%	 none	 10
> 0.0%	 5872	 OE-Core: fido branch	 Fedora 23
> x86_64	 100.0% 	 none	 0.0% 	 none	
>  0.0%	 none	 100.0%	 5873	 OE-Core: fido
> branch	 OpenSuse 13.2 x86_64 	 100.0% 	 none	
>  0.0% 	 none	 0.0%	 none	 100.0%	 
> 5871	 OE-Core: fido branch	 Ubuntu 15.04 x86_64 	
>  100.0% 	 none	 0.0% 	 none	 0.0%	
>  none	 100.0%	 5845	 BitBake: fido branch	
>  Debian 4.3.5-1~bpo8+1 	 100.0% 	 none	 0.0% 	
>  none	 0.0%	 none	 100.0%	 5850	 A
> utomated Build Testing: fido branch 	 CentOS 7 x86_64	 
> 100.0% 	 none	 0.0% 	 none	 0.0%	 
> none	 100.0%	 5849	 Automated Build Testing:
> fido branch 	 Fedora 23 x86-64	 100.0% 	 none	
>  0.0% 	 none	 0.0%	 none	 100.0%	 
> 5848	 Automated Build Testing: fido branch 	 OpenSuse
> 13.2 x86_64 	 100.0% 	 none	 0.0% 	 none	
>  0.0%	 none	 100.0%	 5847	 Automated
> Build Testing: fido branch 	 Ubuntu 15.04 x86_64 	 100.
> 0% 	 none	 0.0% 	 none	 0.0%	 none
> 	 100.0%	 5908	 Build Appliance: fido branch 	
>  VMWare Player on Ubuntu 	 100.0% 	 none	 0.0% 	
>  none	 0.0%	 none	 100.0%	 Total: 31   
>      Test Case Status Report	   Status 	 Count 	
>  FAILED	 16	 PASSED 	 1840	 Total: 1856  
> 	  
>  
> 
> Bugs Found during QA Test
> New and notable issues Found during QA Test & Community
>  ID 	 Summary (4 tasks) ⇒ 	 P	 Assignee	 
> QA	 Milestone 	 Status 	 Resolution 	 cf_
> regression_type 	 Created 
>  BSPs
>  9520 	 test_parselogs failed on udevd[342] inotify_add_watch
> /dev/loop when running test image 	 Medium+ 	 Saul Wold
> 	 Francisco Pedraza	 2.1.1	 NEW 		
>  Regression (Found by QA test) 	 2016-04-25 
>  9652 	 boot and install from USB failed getting [sdc] error
> message 	 Medium+ 	 Jianxun Zhang 	 Francisco Pe
> draza 	 1.8.2	 NEW 		 Regression (Found
> by QA test) 	 2016-05-17 
>  9653 	 Boot and install from USB failed after GRUB black
> screen is displayed 	 Medium+ 	 Jianxun Zhang 	 
> Francisco Pedraza 	 1.8.2	 NEW 		 Regress
> ion (Found by QA test) 	 2016-05-17 
>  9654 	 Ogg media file audio is not working on NUC and MMax 	
>  Medium+ 	 Saul Wold	 Francisco Pedraza	 1.8.2	
>  NEW 		 Regression (Found by QA test) 	 2016-05-
> 17 
>  
> 
> Other Bugs found during QA Test (including regressions)
>  ID 	 Summary (4 tasks) ⇒ 	 P	 Assignee	 
> QA	 Milestone 	 Status	 Resolution 	 cf_r
> egression_type 	 Created 
>  Regression (Found by QA test)
>  9656 	 NFS boot failed due No working init found kernel panic
> on qemu 	 Medium 	 Alexandru Georgescu 	 Francis
> co Pedraza 	 1.8.2	 NEEDINFO 		 Regressio
> n (Found by QA test) 	 2016-05-18 
>  Manual Testing
>  9650 	 Eject icon is displayed as "file" on SATO sdk NUC when
> plugging USB 	 Medium 	 Jussi Kukkonen	 Francisc
> o Pedraza 	 1.8.3	 NEW		 Regression
> (Found by QA test) 	 2016-05-17 
>  Regression (Used to work)
>  6156 	 [crosstap] no trace message output on qemuarm 	
>  Medium 	 Tom Zanussi	  	 2.2	 ACCEPTED 	
> 	 Regression (Used to work) 	 2014-04-14 
>  OE-Core
>  7054 	 OprofileUI needs to be updated to reflect new oprofile
> functionality 	 Medium 	 Ross Burton	 Valentin H
> angan 	 2.2	 ACCEPTED 		 Regression (Used
> to work) 	 2014-12-09 
>  
>  
>  
> Regards,
> José
>  

