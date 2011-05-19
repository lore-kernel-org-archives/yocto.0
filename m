Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 739884C8016A
	for <yocto@yoctoproject.org>; Thu, 19 May 2011 12:41:25 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 May 2011 10:41:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,238,1304319600"; 
   d="scan'208";a="4097675"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by fmsmga002.fm.intel.com with ESMTP; 19 May 2011 10:41:24 -0700
Message-ID: <4DD55643.1090507@intel.com>
Date: Thu, 19 May 2011 10:41:23 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: "Fleischer, Julie N" <julie.n.fleischer@intel.com>
References: <68002A430AC0584FB0A5391B435E93A902AAE3@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <68002A430AC0584FB0A5391B435E93A902AAE3@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Results from Yocto 1.0.1 Go/No-Go meeting: No-Go
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
X-List-Received-Date: Thu, 19 May 2011 17:41:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/19/2011 10:24 AM, Fleischer, Julie N wrote:
> Attendees:  Paul, Tom, Julie, Saul, Darren, Mark, Richard, Dennis, Jessica, Dave, Joshua
>
> The Yocto Technical Team held a Go/No-Go for the current 1.0.1 release.  The decision was "no-go" due to needing to add and test the fix to bug 1029 and needing to investigate and address/test bug 1087.  Both bugs were found during the 1.0.1 test pass.  Details below.
>
> 1)	Review Yocto 1.0.1 Release Criteria
> Team reviewed criteria at:  https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.0.1_Release_Criteria.
>
> Details:
> Bug 909 - Team is comfortable with this issue possibly not being fixed for 1.0.1 (It may be fixed, but we did not run compliance tests to know.)
> Bug 1029 - Darren provided a fix yesterday.  Saul put into a consolidated pull request yesterday afternoon.  Not yet in master.  Once it hits master, Saul will move it into Bernard.  He will create a build for just a Bernard Beagleboard image for QA to test.  QA will run through the full Beagleboard test plan.  No other tests needed for this issue.
> Action Item:  Julie:  Check that uboot is part of the test plan.
>
> 1087 - Saul will investigate.  The fix ranges from documentation to full build.  Tom will help Saul do runtime tests on his Crown Bay.
>
Investigation is complete.

This issue is related to how libzypp constructs a header file in bitbake 
using PACKAGE_EXTRA_ARCHS. In 1.0.1 the PACKAGE_EXTRA_ARCHS was 
cumulative list defined in both crownbay*.conf and tune-atom.inc.  In 
1.1 this was changed to just be set once in the tune-atom.inc.

Because it was a cumulative list, it included x86 twice in 1.0.1 and 
only once and correctly 1.1.

So the fix is in the crownbay BSP, and does not affect the core 1.0.1 
base as we currently have it.  This means no respin or re-test is 
required of the existing bit.

** Is this sufficient information to change to a "GO", pending the 
beagleboard testing at this point? **

Sau!


> Team was okay with the fact that only weekly BSP testing was done for this release.  We may ask for full BSP testing for the next release if the Crown Bay fix warrants it.
>
> Saul will start working on Release Notes for 1.0.1.  They will discuss resolved bugs and open issues remaining.
>
> 2)	Go/No-Go decision - No-Go
> After this email, Richard will send the community a reply with location of current branch in case they want to use the fixes sooner.
>
> 3)	Discuss next steps (either release process or bug fix/rebuild/retest process, depending on results of go/no-go) and timeline
>
> Bug 1029:
> Richard will pull fix into master.
> Saul will pull fix into Bernard.
> Beth will build only Beagleboard for 1.0.1.
> Jiajun will run through Beagleboard testing.
>
> Bug 1087:
> Saul will continue investigating.
> Team will discuss results and next steps via email and finalize during the Technical Team meeting on Tuesday.
>
> 4) Opens
> The QA team needs a Beagleboard XM not just Beagleboard C4.  Darren needs a Beagleboard C4.
>
> Dennis noted that both can be purchased from Digikey.  Jason's program applies to both as well if that becomes an option.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


