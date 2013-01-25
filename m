Return-Path: <saul.wold@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B583E00496
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 14:11:24 -0800 (PST)
Received: from mail-da0-f69.google.com ([209.85.210.69])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 25 Jan 2013 14:11:23 -0800
Received: by mail-da0-f69.google.com with SMTP id x4so779190daj.4
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 14:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:message-id:date:from:organization:user-agent
	:mime-version:to:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=4iIfc75wDH4UZ2huNr63kwCrn68+beU1s9dAQCHPOVc=;
	b=G6m1kS0G1dtivgeToNbo6xuJXw8a7aPR4ego9VbsGlcxRKeM1I1h1T0af93xhuQdF/
	qWUW1QgcEE91KQm3338GG82hi5vqW+f24jBDQ8KQ5D2FLPY4KhFTeUJ1fsFuTIrR9niO
	xMIddsU+OaKXUxMioMlyfr/peZyPKhFKaUQFLowpuD2natUXVBXXf0AK9sjnpxeAQqls
	Ab/OiGX1hNe99W4Vkjnimm7/Df9S0b7n/a2eH8tEr2YkysLBR4MKg8JtW7cistBqwoW2
	erKXBmI/AsPaOgJ5wXIz+bPYCal+QOnf16VPpnQNC/nXvqsa13ljRj4aOX5C52JQ5qaf
	70jA==
X-Received: by 10.68.211.102 with SMTP id nb6mr17590816pbc.103.1359151882735; 
	Fri, 25 Jan 2013 14:11:22 -0800 (PST)
X-Received: by 10.68.211.102 with SMTP id nb6mr17590790pbc.103.1359151882524; 
	Fri, 25 Jan 2013 14:11:22 -0800 (PST)
Received: from [10.6.18.24] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id gj1sm1363036pbc.11.2013.01.25.14.11.21
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Fri, 25 Jan 2013 14:11:22 -0800 (PST)
Message-ID: <51030309.3010206@intel.com>
Date: Fri, 25 Jan 2013 14:11:21 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Liu, Song" <song.liu@intel.com>
References: <A45D4FDC92525B4F8A75E1B55399F328C19B00@IRSMSX104.ger.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A598A8581@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A598A8581@ORSMSX101.amr.corp.intel.com>
X-Gm-Message-State: ALoCoQluKDTk8YE7gai1086SBs41uVN8HDlobsNoJ8NozHxE4iyZJPFpq+MWvbAD5qOCBm5C683rYy9fEp8kLV0oSyQzqwfvRL5ccc16vNjGO5qELwH+fRmMqGqMqjogdGuhvCeMfTdOHLAszjbhfHcFFHv4ibF3LQ==
Cc: "Palalau, AlexandruX" <alexandrux.palalau@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fullpass Test Report for Yocto 1.4 20130115 Build
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
X-List-Received-Date: Fri, 25 Jan 2013 22:11:25 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

On 01/25/2013 02:02 PM, Liu, Song wrote:
> Hi Saul/Beth,
> 
> What is the issue for the 3 ‘no image’ issue (marked red) in the report? 
> Do we have a solution now?
> 
That's the preM3 Build.  I am looking back in the AB, and I do not see
the master failure for qemumips, we had a problem with PPC due to
oprofile being broken, that has been fixed for M3rc1.

The P1022DS has been failing for a while, I think Matthew needs to give
it some love to make it better.

Sau!


> Thanks!
> 
> Song
> 
> *From:*Palalau, AlexandruX
> *Sent:* Thursday, January 24, 2013 7:23 AM
> *To:* yocto@yoctoproject.org
> *Cc:* Liu, Song
> *Subject:* Fullpass Test Report for Yocto 1.4 20130115 Build
> 
> Hello,
> Here is the fullpass test report for Yocto 1.4 20130115 build. The 
> testings for qemuppc, mpc8315e, and p1022ds are blocked since the images 
> didn't build out due to some known issues (oprofile and libxml failures).
> 
> We have some new bugs regarding CoreBuildSystem (Bug 3745. 3756, 3757). 
> Also, there are some problems regarding smart (Bug 3768, 3769). No 
> problems under qemu this time.
> 
> Attached you can find the full test result.
> 
> 
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
> BLOCK
> 
> 	
> 
> No image built out
> 
> 	
> 
> P1022DS
> 
> 	
> 
> BLOCK
> 
> 	
> 
> No image built out
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
> **
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
> Everything runs well
> 
> **
> 
> 	
> 
> qemux86-64
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
> BLOCK
> 
> 	
> 
> No image built out
> 
> *Core Build System*
> 
> 		
> 
> BUGGY
> 
> 	
> 
> gtk-directfb image build failed; disk space monitoring gives error 
> ;Bitbake remake/remake-native check; Compile and load kernel; Crosstap 
> script check.
> 
> *ADT Toolchain*
> 
> 		
> 
> BUGGY
> 
> 	
> 
> gtk+-2.0 missing from the userbuilt toolchain; autoreconf run failed
> 
> *Compliance*
> 
> 			
> 
> Not running
> 
> *Stress*
> 
> 	
> 
> Beagleboard
> 
> 		
> 
> Not running
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
> 66
> 
> 	
> 
> 0
> 
> 	
> 
> 66
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
> 43
> 
> 	
> 
> 0
> 
> 	
> 
> 43
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
> 45
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 45
> 
> *P1022DS*
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
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 42 (bug 3476)
> 
> *Qemux86*
> 
> 	
> 
> 82
> 
> 	
> 
> 0
> 
> 	
> 
> 82
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> *Qemux86-64*
> 
> 	
> 
> 82
> 
> 	
> 
> 0
> 
> 	
> 
> 82
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> *Qemuarm Sato*
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
> 42
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
> 47
> 
> 	
> 
> 0
> 
> 	
> 
> 47
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
> 42
> 
> 	
> 
> 0
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
> 0
> 
> *Qemumips Sato-SDK*
> 
> 	
> 
> 47
> 
> 	
> 
> 0
> 
> 	
> 
> 47
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
> 42
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 42
> 
> *Qemuppc Sato-SDK*
> 
> 	
> 
> 47
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 0
> 
> 	
> 
> 47
> 
> *Core Build System*
> 
> 	
> 
> 78
> 
> 	
> 
> 2
> 
> 	
> 
> 72
> 
> 	
> 
> 4 (bug 3523,3745, 3642)
> 
> 	
> 
> 2
> 
> *ADT Toolchain*
> 
> 	
> 
> 22
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
> 2 (bug 3338, 3758)
> 
> 	
> 
> 0
> 
> *HOB*
> 
> 	
> 
> 38
> 
> 	
> 
> 0
> 
> 	
> 
> 37
> 
> 	
> 
> 1(3001)
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
> 	
> 
> 0
> 
> *Total*
> 
> 	
> 
> 769
> 
> 	
> 
> 6
> 
> 	
> 
> 580
> 
> 	
> 
> 7
> 
> 	
> 
> 178
> 
> 
> * You can check the detailed test result in attachment for each target.
> ** The failed/blocked case number is listed with failed cases’ bug number.
> 
> 
> *Commit information
> --------------------------------*
> Location: http://autobuilder.yoctoproject.org/pub/nightly/20130115-2
> Tree/Branch: poky/master
> Commit: 9eb88ceb39b7d0b8ddc6487e61ce8edadef10ec4
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
> New! 3769 smart: some packages can not be reinstalled
> New! 3768 smart: --yaml option doesn't work
> 
> 	
> 
> 1.4
> 1.4
> 
> *Others*
> 
> 	
> 
> Bug 3476 Autobuilder failing on fsl-ppc
> 
> 	
> 
> 1.4 M2
> 
> *Core Build System*
> 
> 	
> 
> Bug 3642 gtk-demo fails to run for gtk-directfb image
> Bug 3523 Disk space monitoring gives error: Unknown event
> New!Bug 3745 Bitbake remake/remake-native check fail
> New!Bug 3757 Compile and load kernel fail
> New!Bug 3756 Crosstap script fail
> 
> 	
> 
> 1.4
> 1.4
> 1.4
> 1.4 M3
> ----
> 
> *ADT Toolchain*
> 
> 	
> 
> Bug 3338 iptables-1.4.15: autoreconf run failed on gmae-toolchain
> Bug 3758 Package gtk+-2.0 missing from the userbuilt toolchain
> 
> 	
> 
> 1.4 M2
> 1.4 M3
> 
> *Compliance*
> 
> 	
> 
> Not running
> 
> 	
> 
> *Stress*
> 
> 	
> 
> Not running
> 
> 	
> 			
> 
> 
> 
> 
> *Verified Bugs
> -----------------------------------
> *1. *[Bug 3643]* <http://bugzilla.pokylinux.org/show_bug.cgi?id=3643>: 
> smart config --help error: Invalid command 'config'
> 2. *[Bug 3646]* <http://bugzilla.pokylinux.org/show_bug.cgi?id=3646>: 
> non GPLv3 build failure with core-image-basic
> 
> 
> Br,
> 
> Alexandru Palalau
> 
> QA contractor Yocto Project
> 


