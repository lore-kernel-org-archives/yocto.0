Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADF8AE00307
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 09:48:16 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2011 09:48:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,306,1320652800"; d="scan'208";a="82833364"
Received: from unknown (HELO [10.255.12.199]) ([10.255.12.199])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2011 09:48:15 -0800
Message-ID: <4EDE555F.3070802@linux.intel.com>
Date: Tue, 06 Dec 2011 09:48:15 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<4EDE465E.4000800@linux.intel.com>
In-Reply-To: <4EDE465E.4000800@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Technical Team Meeting - Tuesday, December 06, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Tue, 06 Dec 2011 17:48:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2011 08:44 AM, Saul Wold wrote:
> Attendees:
> Beth, Darren, Tom, Matthew, Scott R., Sean, Richard, Paul, Jeff, Denys,
> Bruce, Mark, Dave, Song
>
> New Action Item List:
> * Action item Review - 5 min
> 1. Mark will review unsorted features from Wind River team and try to
> have them scheduled (WIP)
>
> Focus of the current week:
> M1 development and bug fixing, keep features on schedule, get patches
> reviewed or pre-reviewed as soon as possible.
>
> Agenda:
>
> * Opens collection - 5 min (Song)
>
>
> * Opens - 10 min
> - Tested Distro - Paul requested that people review the Tested Distro
> list and send updates.
>
Sorry folks, I did not edit this section below correctly, hit the send 
button too quickly.

> * Yocto 1.0.2 and 1.1.1 point release update - 10 min (Josh/Beth)
1.0.2 is on QA now, there was a problem with the x86-64 build the 
OpenSuSE 11.4 Autobuilder machines, we tracked it down to an 
LD_LIBRARY_PATH issue inside of binutils. Briefly, binutils builds a 
host binary which seems to pick up some target based libraries (since on 
an x86-64 host the target x86-64 libraries match), we are still 
investigating why this only occurs on OpenSuSE 11.4, so this will be 
release note item.

> * Yocto 1.2 M1 Status (features development) - 10 min (Song/Beth)
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.2_Status . We are in
> the 5th week of M1. Feature complete coming this weekend

Saul Completely forget to use the Status page, partly because it was not 
updated since last week!

A couple of notes
  * The build is stable and almost green, issues are identified and 
being worked
  * P1 Features (Package History & Initial Self-Hosted Minimal Build) 
are in, Some P2 work is in also.
  * We had 46 packages updated, which should allow us to reach the 50% 
goal for M1

>
> * Action item Review - 5 min
> 1. Mark will review unsorted features from Wind River team and try to
> have them scheduled (WIP)
>
> * Weekly team sharing (20 min)
> Dave: Manager and
> Mark: Internal WR stuff, Bitbake runtask work - mechanism to call into
> bitbake, prelinker maybe ARM-eabi prevents linkage
> Bruce: Traveling, M2 dev on schedule dev kernel 3.2rc4, Tracking Stable
> 3.0rt, Main RT at 3.2, kernel updating and BSP refreshes 1.2 will be at
> least 3.2
> Denys: Nothing
> Jeff: Nothing
> Paul: Finished BuildHistory - enable on AB?, QT 4.8.0 release, bugfixing
> no blockers
> Richard: Patch pulling, slowed down by HW issue, moving forward to
> address M1 and master updating.
> Sean: Nothing
> Scott R: Cleaning up Doc Bugs 1773, 1500, continuing with bugs and
> working on Website doc pages, no blockers
> Matthew: Nothing
> Tom: Finished off M1 Intel video acceleration, internal bsp and support
> Darren: EFI Support (pounding head on desk), looking into other odd
> behavior, internal BSP work.
> Beth: License M1 task - custom license, license manifest, license
> cleanup, License Audit (team effort in the future), Gearing up for M1
> Saul: Recovering from Sick, Pull wrangling, helping Joshua out with
> 1.0.2 debugging, selfhosted image work
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

