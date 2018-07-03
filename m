Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C651CE0135D; Tue,  3 Jul 2018 00:47:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A119FE00CEE
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2018 00:47:15 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w637l9gK003601
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Tue, 3 Jul 2018 08:47:10 +0100
Message-ID: <0dcb209044a4ea457eb2172703f780fc6dc4b61e.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>
Date: Tue, 03 Jul 2018 08:47:09 +0100
In-Reply-To: <9DDD2658D1FE414E99172D2DB1E4D04335E6E78E@PGSMSX109.gar.corp.intel.com>
References: <9DDD2658D1FE414E99172D2DB1E4D04335E6E78E@PGSMSX109.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M1 RC1
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
X-List-Received-Date: Tue, 03 Jul 2018 07:47:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Thanks Ee Peng and team, this release seemed to have a number of issues
and proved challenging to QA. I appreciate the work that goes into
these (particularly given the other releases also queued), this is a
useful QA report and has found some real issues.

On Tue, 2018-07-03 at 07:09 +0000, Yeoh, Ee Peng wrote:
> This is the full report for 2.6 M1 RC1: 
> https://wiki.yoctoproject.org/wiki/WW27_-_2018-07-02_-_Full_Test_Cycl
> e_2.6_M1_rc1
>  
> ======= Summary ========
>  
> 99% of planned tests were executed except automated SDK test for
>  (testrun# 9747-9753) and automated SDK image tests
> for core-image-sato-sdk-qemumips (testrun# 9713-9714), where those
> tests were excluded from the automated test suites and it was still
> under investigation why they were excluded.

I think buildgalculator is excluded simply because it takes so long to
run as the mips emulation in qemu is slow. There might be information
in commit logs about why we did that.
 
> There were zero high milestone defect.  Team had found 9 new defects
> where Edgerouter [1] & Beaglebone Black [3] defects were resolved. 
> Team found that pTest for busybox and valgrind had testcases passed
> in previous 2.5 M4 rc1 but failed during this release [8] [9].  Team
> had also found that existing automated xorg test was passed
> successfully while it was not able to catch matchbox window manager
> issue on qemumips [4], thus team had added manual graphic tests as
> temporary solution.  
>  
> ======= QA-Hints========
>  
> Two medium+ defects where 1 was resolved and 1 under design. 
>  
> ======= Bugs ========
>  
> New Bugs
> [1] Bug 12790 - [2.6 M1] Edgerouter can not boot
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12790

[Fixed in master]
 
> [2] Bug 12804 - [QA 2.6 M1 rc1 ][Build Appliance]: proxy issue in VM
> ware
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12804

[Regression where we understand which change broke things but not fixed
yet]
 
> [3] Bug 12795 - [2.6 M1] gcc/g++ doesn't work on beaglebone black
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12795

[Fixed in master]

> [4] Bug 12806 - [2.6 M1 rc1 ][BSP][Test Run 9708]: Qemuppc image was
> not booting with graphic even though runtime/xorg.py test passed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12806

[Needs further debugging - Ross' comment about arm64 confuses me in a
qemuppc bug :/]
 
> [5] Bug 12832 - [ 2.6 M1 rc1 ][BSP][Test case 267]: audio and video
> does not play in media player[Mturbot x86-64 and NUC7]
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12832

[Not triaged yet]
 
> [6] Bug 12802 - [Yocto-2.6_M1.RC1] Crosstap doesn't work on 2.6 M1
> RC1
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12802

[Unclear if functionality is broken or just a warning message]

> [7] Bug 12813 - [QA 2.6 M1 rc1 ][Toaster]:Build stopped without
> error, to terminate by ctrl+c
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12813

[Valid issue, not release blocker and scheduled for M3]
 
> [8] Bug 12836 - [2.6 M1 RC1] busybox ptest failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12836

[Regression: 4 wget tests that passed now fail]

> [9] Bug 12837 - [2.6 M1 RC1] valgrind ptest failed
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=12837

[Regression: 19 tests started failing, 2 started passing]


My take on this is that we probably should release M1 rc1 and move to
concentrate on M2 but we need to ensure more of the above issued are
fixed before we can build M2. This QA report tells us very clearly
where we need to focus effort on addressing regressions.

Cheers,

Richard


