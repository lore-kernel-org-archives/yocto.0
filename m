Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72213E008D2; Fri, 15 Sep 2017 09:51:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E81CE0078E
	for <yocto@yoctoproject.org>; Fri, 15 Sep 2017 09:51:00 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8FGoobB001251
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Fri, 15 Sep 2017 17:50:51 +0100
Message-ID: <1505494250.18640.102.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Cruz, Libertad" <libertad.cruz@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Zhang, Jessica" <jessica.zhang@intel.com>, "juro.bystricky"
	<juro.bystricky@intel.com>
Date: Fri, 15 Sep 2017 17:50:50 +0100
In-Reply-To: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
References: <58D9E2E50A021A45AD740492365FCDC532A24F9C@fmsmsx107.amr.corp.intel.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Cc: "Cruz Alcaraz, Juan M" <juan.m.cruz.alcaraz@intel.com>, "Jordan,
	Robin L" <robin.l.jordan@intel.com>
Subject: Re: QA cycle report for 2.2.2 rc2
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
X-List-Received-Date: Fri, 15 Sep 2017 16:51:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

This is a tricky one to evaluate. Going through the bugs in the QA
report:

Bug 12075 - think this is ok to fix on the branch and release note
Bug 12080 - we think minimal eSDK never worked in morty therefore this 
            is a QA testing error?
Bug 12073 - we continue to see various gpg errors even with master, 
            propose not to block release on this and only fix master
Bug 12009 - resolved and already fixed in 2.2.2 (I marked it resolved)
Bug 11150 - was a bug with 2.2.1 but should be fixed in 2.2.2?
Bug 11611 - was this found in 2.2.2?
Bug 11064 - marked as resolved as per QA comment, fix was in 2.2.2
Bug 11597 - fix was added to 2.2.2 (marked as resolved)
Bug 10460 - open and unresolved with master but not release blocker IMO
Bug 11797 - can't see any backport but not a release blocker as the 
            source mirrors work
Bug 11109 - No backport afaict but not release blocker

Which leave us with 12081 to understand before we can decide whether to
release this or not.

So the decision to release or not depends on QA agreeing with the resolution of 12080 and figuring out what happened with 12081.

[Thanks to Ross for helping with some of this]

Cheers,

Richard




On Thu, 2017-09-14 at 16:53 -0700, Cruz, Libertad wrote:
> Here is the report for the 2.2.2 point release test cycle.
> Full Report :  https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-13_-
> _Full_Point_Release_Test_Cycle_2.2.2_rc2
> ======= Summary ========
> The QA cycle for point release 2.2.2 rc2 is complete.  There are 3
> new bugs: bug 12080[2]  blocks testing to the eSDK component since
> eSDK functionalities cannot be executed. Bugs 12075[1], 12073[3],
> 12081[4] don’t block full functionalities.
>  
> LPT results are waiting to be updated by Windriver.
>  
> Performance
> Compared with 2.2.2 rc1 there was a regression of 14.71 while
> building rootfs on Ubuntu, there was also a regression on Fedora
> while building sato of 7.46% and a regression on kernel of 12.12%.
>  
>  
> Ubuntu                 Test       2.2.2_rc1            
> 2.2.2_rc2             %
>                               sato       1:00:42             
> 1:01:16               0.93
>                               rootfs    2:16                   
> 2:36                     14.71
>                               rmwork 0:59:29              0:59:51  
>             0.62
>                               kernel    5:01                   
> 5:00                     -0.33
>                               eSDK      3:22                   
> 3:19                     -1.49
>                                                                      
>      
>                                                                      
>      
> Fedora                 Test       2.2.2_rc1            
> 2.2.2_rc2             %
>                               sato       1:01:55             
> 1:06:32               7.46
>                               rootfs    2:49                   
> 2:51                     1.18
>                               rmwork 0:59:52              1:01:32  
>             2.78
>                               kernel    6:03                   
> 6:47                     12.12
>                               eSDK      3:44                   
> 3:54                     4.46
>  
>  
> ptest
> There was an improvement on the pass rate in the following packages
> in comparison with 2.2.2 rc1:
> gdk-pixbuf with 5%
> libxml2 with 4.20%
> lttng-tools with 3.20%
>  
> On the other side there was a regression on the pass rate in
> comparison with 2.2.2 rc1:
> acl with 6.80%
> e2fsprogs with 100% regression
> gawk with .10%
> quilt with 1.80%
> valgrind of 53.10%
>  
>  
> Compliance
> Results are yet to be documented by Windriver.
>  
> ======= QA-Hints========
>  
> There is only one concern on the eSDK component it cannot execute. QA
> recommends an 2.2.2 rc3 to only verify the eSDK component.
>  
> ======= Bugs ========
>  
>        New Bugs
>             -12075[1]  [morty] testimage quemux86/qemux86-64 lsb
> tcgetattr: Input/output error^M
>             -12080[2] [Morty][Test Case 1605]
> TCTEMP_2.3_AUTO_sdkext_eSDK_devtool_build_make
>             -12073[3] selftest: setUpClass failed failing on ubuntu
> 17.04 (oeqa.selftest.signing.Signing)
>             -12081[4] [morty] PTEST: Package Name flex, gzip, slang,
> do not appear in 2.2.2 rc2
>  
> Full Bug Report : https://wiki.yoctoproject.org/wiki/WW37_-_2017-09-1
> 3_-_Full_Point_Release_Test_Cycle_2.2.2_rc2#Bugs_Found_during_QA_Test
>  
>  
> ======== Links =========
>  
>     1.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12075 [1]
>     2.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12080 [2]
>     3.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12073 [3]
>     4.    https://bugzilla.yoctoproject.org/show_bug.cgi?id=12081 [4]
>  
>    
>  
> Regards
> Libertad G.

