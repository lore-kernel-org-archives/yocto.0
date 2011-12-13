Return-Path: <joshua.lock@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31070E006DF
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 18:00:15 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 12 Dec 2011 18:00:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="46533299"
Received: from unknown (HELO [10.255.12.84]) ([10.255.12.84])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Dec 2011 18:00:13 -0800
Message-ID: <4EE6B1AD.5050302@intel.com>
Date: Mon, 12 Dec 2011 18:00:13 -0800
From: Joshua Lock <joshua.lock@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: "Xu, Jiajun" <jiajun.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBF68FF5@shsmsx501.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A12DBF692DD@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12DBF692DD@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: Fullpass Test Report for Yocto 1.0.2 Build
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
X-List-Received-Date: Tue, 13 Dec 2011 02:00:15 -0000
Content-Type: text/plain; charset=GB2312
Content-Transfer-Encoding: 8bit

I think we should pull in the patch for 1236 from master, update the
DISTRO_VERSION and respin.

Any thoughts?

Joshua

On 11/12/11 19:10, Xu, Jiajun wrote:
> Hi all,
> 
> We have finished qemux86-64 testing. Thanks for Josh¡¯s help on image build.
> 
> There is one bug found with qemux86-64, ¡°Broken ldd due to wrong path
> for ld.so¡±. Detailed test result has been updated as attachment.
> 
>  
> 
> *Detailed Test Result for each component*
> 
> *Target*
> 
> 	
> 
> *Total TCs***
> 
> 	
> 
> *Not Run*
> 
> 	
> 
> *Passed***
> 
> 	
> 
> *Failed***
> 
> 	
> 
> *Not testable (Blocked)***
> 
> *Qemux86-64 Sato*
> 
> 	
> 
> 30
> 
> 	
> 
> 0
> 
> 	
> 
> 28
> 
> 	
> 
> 2 (bug 1174, 1234)
> 
> 	
> 
> 0
> 
> *Qemux86-64 Sato-SDK*
> 
> 	
> 
> 35
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
> 3 (bug 1236, 1174, 1234)
> 
> 	
> 
> 0
> 
>  
> 
>  
> 
> Best Regards,
> 
> Jiajun
> 
>  
> 
> *From:*yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Xu, Jiajun
> *Sent:* Friday, December 09, 2011 5:25 PM
> *To:* poky@pokylinux.org; yocto@yoctoproject.org
> *Subject:* [yocto] Fullpass Test Report for Yocto 1.0.2 Build
> 
>  
> 
> Hi All,
> 
>        This is the fullpass test report for Yocto 1.0.2 build.
> Qemux86-64 image failed on autobuilder due to bintuils compile failed.
> There are 5 old bugs existing with this build, all of them are not
> critical. Rpm/zypper install costs lots of disk space. Install/Remove
> button does not work in sato image. UNFS does not work with qemuppc. CVS
> configure failed with x86_64 toolchain.
> 
>        Another generic bug is that the DISTRO_VERSION is still set to
> 1.0.1, which needs to be updated to 1.0.2.
> 
> Note: The test report is archived @
> https://wiki.yoctoproject.org/wiki/Yocto_1.0.2_Test_Report.  
> 
>  
> 
> *Test Summary:*
> 
> *---------------------------------------*
> 
> *Test Result Summary*
> 
> 	
> 
>  
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
> 	
> 
>  
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
> Everything runs well
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
>  
> 
> *QEMU*
> 
> 	
> 
> qemux86
> 
> 	
> 
> GOOD
> 
> 	
> 
> RPM log costs lots of disk space; Sato desktop includes useless
> 'Install/Remove software' icon
> 
> 	
> 
>  
> 
> qemux86-64
> 
> 	
> 
> BLOCK
> 
> 	
> 
> build failed on autobuilder
> 
> 	
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
> RPM log costs lots of disk space; Sato desktop includes useless
> 'Install/Remove software' icon
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
> RPM log costs lots of disk space;
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
> RPM log costs lots of disk space; Sato desktop includes useless
> 'Install/Remove software' icon
> 
> 	
> 
>  
> 
> *ADT*
> 
> 	
> 
> ¡¡
> 
> 	
> 
> BUGGY
> 
> 	
> 
> unfs does not work with qemuppc; cvs configure fail with no
> cvs_cv_func_printf_ptr set
> 
> 	
> 
>  
> 
> *Core build system*
> 
> 	
> 
> ¡¡
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
> *Compliance*
> 
> 	
> 
> ¡¡
> 
> 	
> 
> GOOD
> 
> 	
> 
> All LTP IPC related cases failed on routerstationpro
> 
> 	
> 
>  
> 
> *Stress*
> 
> 	
> 
> ¡¡
> 
> 	
> 
> GOOD
> 
> 	
> 
> Both Crashme and Helltest on Jasperforest and both Crashme and LTP on
> Beagleboard could pass 24 hours stress testing.
> 
> 	
> 
>  
> 
> 			
> 
> ¡¡
> 
> 	
> 
> Critical bugs, more than 50% test cases are blocked
> 
> ¡¡
> 
> 	
> 
> Only Normal, Minor or Enhancement bugs, or less than 10% test cases failed
> 
> ¡¡
> 
> 	
> 
> Normal, Major and Critical bugs, and more than 10% test cases failed
> 
> 							
> 											
> 
>  
> 
> *Detailed Test Result for each component*
> 
> *Target*
> 
> 	
> 
> *Total TCs***
> 
> 	
> 
> *Not Run*
> 
> 	
> 
> *Passed***
> 
> 	
> 
> *Failed***
> 
> 	
> 
> *Not testable (Blocked)***
> 
> *Beagleboard Sato-SDK*
> 
> 	
> 
> 20
> 
> 	
> 
> 0
> 
> 	
> 
> 20
> 
> 	
> 
> 0
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
> 33
> 
> 	
> 
> 0
> 
> 	
> 
> 33
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> *Qemux86 Sato*
> 
> 	
> 
> 30
> 
> 	
> 
> 0
> 
> 	
> 
> 28
> 
> 	
> 
> 2 (bug 1174, 1234)
> 
> 	
> 
> 0
> 
> *Qemux86 Sato-SDK*
> 
> 	
> 
> 35
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
> 2 (bug 1174, 1234)
> 
> 	
> 
> 0
> 
> *Qemuarm Sato*
> 
> 	
> 
> 30
> 
> 	
> 
> 0
> 
> 	
> 
> 29
> 
> 	
> 
> 1 (bug 1234)
> 
> 	
> 
> 0
> 
> *Qemuarm Sato-SDK*
> 
> 	
> 
> 35
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
> 1 (bug 1234)
> 
> 	
> 
> 0
> 
> *Qemumips Sato*
> 
> 	
> 
> 30
> 
> 	
> 
> 0
> 
> 	
> 
> 29
> 
> 	
> 
> 1 (bug 1234)
> 
> 	
> 
> 0
> 
> *Qemumips Sato-SDK*
> 
> 	
> 
> 35
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
> 1 (bug 1234)
> 
> 	
> 
> 0
> 
> *Qemuppc Sato*
> 
> 	
> 
> 21
> 
> 	
> 
> 0
> 
> 	
> 
> 21
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
> 26
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
> 0
> 
> 	
> 
> 0
> 
> *ADT*
> 
> 	
> 
> 6
> 
> 	
> 
> 0
> 
> 	
> 
> 4
> 
> 	
> 
> 2 (bug 414, 1781)
> 
> 	
> 
> 0
> 
> *Core build system*
> 
> 	
> 
> 8
> 
> 	
> 
> 0
> 
> 	
> 
> 8
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> *Compliance*
> 
> 	
> 
> 2
> 
> 	
> 
> 0
> 
> 	
> 
> 2
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> *Stress*
> 
> 	
> 
> 2
> 
> 	
> 
> 0
> 
> 	
> 
> 2
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
> 345
> 
> 	
> 
> 0
> 
> 	
> 
> 334
> 
> 	
> 
> 11
> 
> 	
> 
> 0
> 
>  
> 
> *Commit Information*
> 
> *---------------------------------------*
> 
> Tree/Branch: josh/bernard
> 
> Poky Commit: 9ee10c93af0ba7a6e0d2154077fddbb4766e6a07
> 
>  
> 
> *Issue summary*
> 
> *--------------------------------------*
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
> Bug 1234 - No response when I click the 'Install/Remove Software' icon
> 
> 	
> 
> 1.1 M4
> 
> Bug 1174 - [zypper/rpm] package install/removal costs lots of disk space
> 
> 	
> 
> 1.2
> 
> *Compliance*
> 
> 	
> 
> Bug 1161: [LTP] All IPC related cases failed with Yocto 1.1 M1 build on
> routerstationpro
> LTP test result is on https://wiki.pokylinux.org/wiki/LTP_result
> POSIX test result is on https://wiki.pokylinux.org/wiki/Posix_result
> 
> 	
> 
> 1.1 M3
> 
> *Stress*
> 
> 	
> 
> Crashme and LTP stress could pass 24 hours testing on beagleboard.
> 
> 	
> 
> ¡¡
> 
> *ADT*
> 
> 	
> 
> Bug 414: [PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS
> 
> 	
> 
> 1.2
> 
> Bug 1781: [x86/x86_64 toolchain] cvs configure fail with no
> cvs_cv_func_printf_ptr set
> 
> 	
> 
> 1.2
> 
>  
> 
>  
> 
> Best Regards,
> 
> Jiajun
> 

-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

