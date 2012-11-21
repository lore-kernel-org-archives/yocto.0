Return-Path: <alexandrux.palalau@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD119E011C0
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 00:32:39 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2012 00:32:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,291,1352102400"; d="scan'208";a="220541608"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2012 00:32:38 -0800
Received: from [10.237.105.31] (apalalax-mobl.ger.corp.intel.com
	[10.237.105.31])
	by linux.intel.com (Postfix) with ESMTP id 91DA52C8001
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 00:32:37 -0800 (PST)
Message-ID: <50AC91A4.7030809@linux.intel.com>
Date: Wed, 21 Nov 2012 10:32:36 +0200
From: Alexandru Palalau <alexandrux.palalau@linux.intel.com>
Organization: Intel OTC
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120907 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <E16513A01CAAFF40B65178C63CE45EEC191AEA63@IRSMSX102.ger.corp.intel.com>
	<A45D4FDC92525B4F8A75E1B55399F328C0BE6C@IRSMSX104.ger.corp.intel.com>
In-Reply-To: <A45D4FDC92525B4F8A75E1B55399F328C0BE6C@IRSMSX104.ger.corp.intel.com>
Subject: Re: Weekly Test Report for Yocto 1.4 20121114 Build on non-x86 platforms
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
X-List-Received-Date: Wed, 21 Nov 2012 08:32:39 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Disregard the "non-x86 platforms" from mail subject :)
Weekly test results.

On 11/21/2012 10:26 AM, Palalau, AlexandruX wrote:
> Hello,
>
> Below are the test results for Yocto 1.4 20121114 build.
>
> There are some bugs for Beagleboard and P1022DS BSPs and two
> CoreBuildSystem multilib bugs.
>
> Other than that, ADT Bug 3338 regarding autoreconf run failing on
> game-toolchain.
>
> *Test Summary
> -------------------------*
>
> *Test Result Summary*
>
> *Component*
>
> 	
>
> *Target*
>
> 	
>
> *Status*
>
> 	
>
> *Comments*
>
> *BSP*
>
> 	
>
> Beagleboard
>
> 	
>
> GOOD
>
> 	
>
> Video: black screen when playing video
>
> 　
>
> 	
>
> Routerstationpro
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> 　
>
> 	
>
> Mpc8315e-rdb
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> 	
>
> P1022DS
>
> 	
>
> BUGGY
>
> 	
>
> Udev error: can not mount harddisk and usb stick; Some error messages
> with dmesg
>
> *QEMU*
>
> 	
>
> qemuarm
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> 　
>
> 	
>
> qemuppc
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> 　
>
> 	
>
> qemumips
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> *Core Build System*
>
> 		
>
> GOOD
>
> 	
>
> *Bug 3440* <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3440> -
> Multilib build triggers warnings
> *Bug 3453* <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3453> -
> Build fails when building multilib with ipk packaging
>
> *ADT Toolchain*
>
> 		
>
> BUGGY
>
> 	
>
> iptables-1.4.15: autoreconf run failed on gmae-toolchain
>
> *HOB*
>
> 	
>
> 	
>
> GOOD
>
> 	
>
> Everything runs well
>
> BLOCK
>
> 	
>
> Critical bugs, more than 50% test cases are blocked
>
> GOOD
>
> 	
>
> Only Normal, Minor or Enhancement bugs, less than 10% test cases failed
>
> BUGGY
>
> 	
>
> Normal, Major and Critical bugs, more than 10% test cases failed
>
> *Detailed Test Result for each component*
>
> *Target*
>
> 	
>
> *Total TCs*
>
> 	
>
> *Not Run*
>
> 	
>
> *Passed*
>
> 	
>
> *Failed*
>
> 	
>
> *Not testable (Blocked)*
>
> *Beagleboard Sato-SDK*
>
> 	
>
> 55
>
> 	
>
> 0
>
> 	
>
> 53
>
> 	
>
> 2 (bug 3458)
>
> 	
>
> 0
>
> *Routerstationpro Sato-SDK*
>
> 	
>
> 32
>
> 	
>
> 0
>
> 	
>
> 32
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Mpc8315e-rdb Sato-SDK*
>
> 	
>
> 34
>
> 	
>
> 0
>
> 	
>
> 34
>
> 	
>
> 0
>
> 	
>
> 0
>
> *P1022DS*
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 26
>
> 	
>
> 5 (bug 3451,3452)
>
> 	
>
> 0
>
> *Qemuarm Sato*
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Qemuarm Sato-SDK*
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Qemumips Sato*
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Qemumips Sato-SDK*
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Qemuppc Sato*
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 31
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Qemuppc Sato-SDK*
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 36
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Core Build System*
>
> 	
>
> 42
>
> 	
>
> 0
>
> 	
>
> 40
>
> 	
>
> 2(bug 3440,bug3453)
>
> 	
>
> 0
>
> *ADT Toolchain*
>
> 	
>
> 52
>
> 	
>
> 0
>
> 	
>
> 51
>
> 	
>
> 1 (bug 3338)
>
> 	
>
> 0
>
> *HOB*
>
> 	
>
> 17
>
> 	
>
> 0
>
> 	
>
> 17
>
> 	
>
> 0
>
> 	
>
> 0
>
> *Total*
>
> 	
>
> 464
>
> 	
>
> 0
>
> 	
>
> 454
>
> 	
>
> 10
>
> 	
>
> 0
>
>
> * You can check the detailed test result in attachment for each target.
> ** The failed/blocked case number is listed with failed cases’ bug number.
>
>
> *Commit information
> --------------------------------*
> Location: http://autobuilder.yoctoproject.org/pub/nightly/20121114-1/
> <http://autobuilder.yoctoproject.org/pub/nightly/20121114-1>
> Tree/Branch: poky/master
> Poky: 1fd9a16d2a4594a4e9179dc7353ac51ce32eb712
>
> *
> Issue Summary
> -----------------------------------*
>
> *Component*
>
> 	
>
> *Bug Number*
>
> 	
>
> *Target Milestone*
>
> *System & Core OS*
>
> 	
>
> *System Usage*
>
> 	
>
> New! Bug 3458 Beagleboard: No pictures shown when playing video
> New! Bug 3452 [p1022ds] udev error: can not mount harddisk and usb stick
> New! Bug 3451 [p1022ds] Some error messages with dmesg
>
> 	
>
> ---
> 1.4
> 1.4 M1
>
> *Others*
>
> 	
>
> Bug 2766 coreutils build error with long TMPDIR: Argument list too long
> Bug 2759 qt4-native-4.8.1-r14.1 build error with long TMPDIR:
> initializer-string for array of chars is too long [-fpermissive]
>
> 	
>
> 1.4 M1
> 1.4
>
> *Core Build System*
>
> 	
>
> Bug 3440 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3440> -
> Multilib build triggers warnings
> Bug 3453 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3453> -
> Build fails when building multilib with ipk packaging
>
> 	
>
> 1.4
> 1.4
>
> *ADT Toolchain*
>
> 	
>
> Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain
>
> 	
>
> 1.4 M1
>
> 			
>
> Best Regards,
>
>
> --
>
> Alexandru Palalau
>
> QA Contractor @ Yocto Project
>
> Open-source Technology Center Romania
>
> System Software Division
>
>
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Alexandru Palalau

